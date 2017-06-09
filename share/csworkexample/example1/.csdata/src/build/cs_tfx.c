/** 
 * sm/cs_tfx.c        V1.0    2010.03.24.
 *
 * Copyright SureSoftTech, Inc. All Rights Reserved.
 *
 * @brief This software is the proprietary information of SureSoftTech, Inc.
 * Use is subject to license terms.
 *
 */

#define TR_DEBUG

#include "cs_tfx_sm.h"
#include "cs_test_function.h"
#include "cs_test_scenario.c"
#include "cs_build_macro.h"
 // Stub Keys Definition
#define INVALID_SYMBOL_INDEX (1000000)
#define EXTERN						/* empty */
#define VAR_INIT(initial_value)		=initial_value
#include "cs_stub_key.h"

#ifndef CS_COVERAGE_BUFFER_SIZE
#define CS_COVERAGE_BUFFER_SIZE		(1024*1024)
#endif

static codescroll_byte	codescroll_probe_buffer[CS_COVERAGE_BUFFER_SIZE];
static codescroll_int	codescroll_lastprobe;
codescroll_byte*		cs_TFX_CoverageBuffer = codescroll_probe_buffer;
codescroll_int*			cs_TFX_LastProbe = &codescroll_lastprobe;
codescroll_int			codescroll_testcase_number;
codescroll_int			codescroll_symbol_index = 0;
static char* _gtest_name = 0x0;
static void (*_gsuite_setup)();
static void (*_gtest_setup)();
static void (*_gtest_function)();
static void (*_gtest_teardown)();
static void (*_gsuite_teardown)();
static int _ghas_external_data = 0;

static void redirectStdout();
static void getTestFunction (int sindex, int tindex);
static int testrun(char* env);

#if defined CS_START_FROM_IUT

int codescroll_main(void)
{
	char env[50];

	codescrollib_get_testrun_env (env);
	codescrollib__exit (testrun(env));

	return 0;
}

#else

#if defined main /* normal */
#undef main
#endif

int main (int argc, char* argv[])
{
	/*{
		int i;
		for (i = 0; i < argc; ++i) TRLDBG2 ("%d. %s", i, argv[i]);
	}*/
	
	if (argc < 2) {
		TRLERR0 ("invalid testrun argument");
		return 100;
	}

	codescrollib__exit(testrun(argv[1]));
	return 0;
}

#endif	/* CS_START_FROM_IUT */


static int testrun(char* env)
{
	int sindex = 0, tindex = 0, flag = 0;

#ifdef CS_CODE_CONVERTED
	CS_GLOBAL_VAR_INIT();
#endif /*CS_CODE_CONVERTED*/
	TRLINFO0("\n\n\n=======>Test Start");
	flag = codescrollib_init_iohandle(env, &cs_TFX_CoverageBuffer, &cs_TFX_LastProbe);
	if (flag != 1) {
		TRLERR1 ("fail to init iohandle(%d)",flag);
		return flag;
	}
	_ghas_external_data = codescrollib_has_external_data();

	/*{
		int i = 0;
		TRLDBG0 ("test scenario");
		for (i = 0; cs_TFX_TestScenario[i].kind >= 0; ++i) 
			TRLDBG3 ("%d. kind(%d), fptr(%p)\n", i, (int)cs_TFX_TestScenario[i].kind, cs_TFX_TestScenario[i].testFunction);
	}*/

#if defined (_MSC_VER)
	codescrollib_set_hook();
#endif

	if (_ghas_external_data) {

		codescrollib_get_testcase(&sindex, &tindex, &flag, &codescroll_testcase_number);
		redirectStdout();

		for(;;) {

			if (sindex < 0 || ISFALG(flag,RUNFLAG_PILOT)) {
				codescrollib_set_exitstatus (CS_ES_NORMAL);
				break;
			}

			getTestFunction (sindex, tindex);
			if (_gtest_function == 0x0) {
				codescrollib_set_exitstatus (CS_ES_ERROR);
				TRLERR0 ("test function pointer is null");
				break;
			}

			TRLINFO1 ("\"%s\" has external data", _gtest_name ? _gtest_name : "unknown");
			if(codescrollib_open_external_data (_gtest_name, 0) != 1) {
				TRLERR0 ("cannot open external data(no external data, invalid format, too large)");
				codescrollib_set_exitstatus (CS_ES_ERROR);
				codescrollib_set_endtestcase(1);
				break;
			}
			codescrollib_set_exitstatus (CS_ES_ABNORMAL);

			codescrollib_execute_tfunction(_gsuite_setup);
			while(codescrollib_get_external_testcase(codescroll_testcase_number)) {
				/*TRLDBG1 ("testcase %d", codescroll_testcase_number);*/
				codescrollib_execute_tfunction(_gtest_setup);
				codescroll_symbol_index = 0;
				codescrollib_execute_tfunction(_gtest_function);
				codescrollib_execute_tfunction(_gtest_teardown);
				codescrollib_set_external_testcase(CS_ES_NORMAL,0x0);
				++codescroll_testcase_number;
			}
			codescrollib_execute_tfunction(_gsuite_teardown);

			TRLINFO0 ("end of external data");
			codescrollib_set_exitstatus (CS_ES_NORMAL);
			codescrollib_set_endtestcase(1);
			codescrollib_close_external_data();
			break;
		}
	}
	else {
		int psindex = -1, ptindex = -1;
		int redirect = 0;

		for (;;) {			
			codescrollib_get_testcase(&sindex, &tindex, &flag, &codescroll_testcase_number);
			if (!redirect) {
				redirectStdout();
				redirect = 1;
			}			
			if (sindex < 0 || ISFALG(flag,RUNFLAG_PILOT)) {
				codescrollib_set_exitstatus (CS_ES_NORMAL);
				break;
			}			
			if (psindex != sindex || ptindex != tindex) {
				getTestFunction (sindex, tindex);
				psindex = sindex;
				ptindex = tindex;
			}			
			if (_gtest_function == 0x0) {
				codescrollib_set_exitstatus (CS_ES_ERROR);
				TRLERR0 ("test function pointer is null. error status");
				break;
			}			
			codescrollib_set_exitstatus (CS_ES_ABNORMAL);

			if (ISFALG(flag,RUNFLAG_FIRSTTESTCASE)) {
				codescrollib_execute_tfunction(_gsuite_setup);
			}			
			codescrollib_execute_tfunction(_gtest_setup);			
			codescroll_symbol_index = 0;
			codescrollib_execute_tfunction(_gtest_function);			
			codescrollib_execute_tfunction(_gtest_teardown);			
			if (ISFALG(flag,RUNFLAG_LASTTESTCASE)) {
				codescrollib_execute_tfunction(_gsuite_teardown);
			}			
			if (ISFALG(flag,RUNFLAG_KEEPCONTEXT))  {
				codescrollib_set_exitstatus (CS_ES_NOTTERMINAT);
				codescrollib_set_endtestcase(0);
			}			
			else {
				codescrollib_set_exitstatus (CS_ES_NORMAL);
				codescrollib_set_endtestcase(0);
				break;
			}			
		}
	}

	codescrollib_release_iohandle ();

	return 0;
}



void codescroll_assert (codescroll_int iscontinue, codescroll_int assertchk, codescroll_byte* message, codescroll_byte* source, codescroll_int line)
{
	if (assertchk) {
		return;
	}
	codescrollib_assert_message (message, source, line);
	codescrollib_assert_signal(message, 0);
}


void codescroll_out_message(codescroll_byte* message)
{
	codescrollib_out_message (message);
}


codescroll_int codescroll_get_int (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index)
{
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
#if 1
	return codescrollib_get_int (symbol, file, (unsigned int)index);
#else
	codescroll_int r = codescrollib_get_int (symbol, file, (unsigned int)index);
	TRLDBG3("get int : %s(%d) = %I64d", symbol, index, r);
	return r;
#endif
}


codescroll_uint codescroll_get_uint (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index)
{
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	return codescrollib_get_uint (symbol, file, (unsigned int)index);
}


codescroll_flt codescroll_get_flt (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index)
{
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	return codescrollib_get_flt (symbol, file, (unsigned int)index);
}


const codescroll_byte* codescroll_get_str (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index)
{
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	return codescrollib_get_str (symbol, file, (unsigned int)index);
}


void codescroll_set_int (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_int value)
{
#if 0
	TRLDBG3("set int : %s(%d) = %I64d", symbol, index, value);
#endif
	char message[512];
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	if (codescrollib_set_int (symbol, file, (unsigned int)index, value, message) == 0 && _ghas_external_data) {
		codescrollib_assert_signal(message,1);
	}
}


void codescroll_set_uint (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_uint value)
{
	char message[512];
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	if (codescrollib_set_uint (symbol, file, (unsigned int)index, value, message) == 0 && _ghas_external_data) {
		codescrollib_assert_signal(message,1);
	}
}


void codescroll_set_flt (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_flt value, codescroll_int size)
{
	char message[512];
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	if (codescrollib_set_flt (symbol, file, (unsigned int)index, value, (unsigned int)size, message) == 0 && _ghas_external_data) {
		codescrollib_assert_signal(message,1);
	}
}

void codescroll_set_str (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_byte* value)
{
	char message[512];
	TRLDBG2(__FILE__ ":%d: codescroll_symbol_index: %d\n", __LINE__, index);
	if (codescrollib_set_str (symbol, file, (unsigned int)index, value, message) == 0 && _ghas_external_data) {
		codescrollib_assert_signal(message,1);
	}
}


int codescroll_atoi (codescroll_byte* str)
{
	return codescrollib_atoi((const char*)str);
}


void codescroll_itoa (codescroll_int value, codescroll_byte* outstr)
{
	codescrollib_itoa((int)value, (char*)outstr);
}


void codescroll_fopen (codescroll_byte* file, codescroll_byte* mode)
{
	codescrollib_fopen ((const char*)file, (const char*)mode);
}


void codescroll_fclose ()
{
	codescrollib_fclose();
}


void codescroll_fputs (codescroll_byte* str)
{
	codescrollib_fputs((const char*)str);
}


void codescroll_memcpy (void *dst, void *src, int size)
{
	codescrollib_memcpy (dst, src, size);
}


codescroll_byte* codescroll_strncpy (codescroll_byte* dst, codescroll_byte *src, int size)
{
	return codescrollib_strncpy (dst, (const char*)src, size);
}


void *codescroll_get_virtual_addr (unsigned int addr, unsigned int size)
{
	return codescrollib_get_virtual_addr (addr, size);
}


int  codescroll_add_virtual_addr (unsigned int begin, unsigned int end)
{
	return codescrollib_add_virtual_addr (begin, end);
}


void codescroll_clear_virtual_addr ()
{
	codescrollib_clear_virtual_addr ();
}


void cs_TFX_memcpy (void *dst, void *src, int size)
{
	codescrollib_memcpy (dst, src, size);
}

void *CS_UT_get_host_addr(unsigned int addr, unsigned int size)
{
	return codescrollib_get_virtual_addr(addr, size);
}

void codescroll_strcpy(char *dst, const char *src){
	return strcpy(dst, src);
}

int codescroll_strcmp(const char *s1, const char *s2){
	return strcmp(s1, s2);
}

static void getTestFunction (int sindex, int tindex)
{
	extern struct cs_TFX_TestScenario_t cs_TFX_TestScenario[];
	struct cs_TFX_TestScenario_t* ts = &cs_TFX_TestScenario[0];

	if (ts[tindex].kind != 2 || ts[sindex].kind != 0) {
		TRLERR2 ("invalid suite/test index(%d,%d)", sindex,tindex);
		_gtest_function = 0x0;
		return;
	}

	_gsuite_setup    = ts[sindex].testFunction;
	_gtest_setup     = ts[tindex-1].testFunction;
	_gtest_function  = ts[tindex].testFunction;
	_gtest_teardown  = ts[tindex+1].testFunction;
	_gsuite_teardown = (ts[tindex+2].kind==5?ts[tindex+2].testFunction:0x0);
	_gtest_name      = ts[tindex].name; 
}


#if defined CS_REDIRECT_STDOUT
#include <stdio.h>
static void redirectStdout()
{
	const char* stdoutfile = codescrollib_get_stdoutfile();
	if (!stdoutfile)
		return;
	
	/* redirect stdout to output file */
	if ( freopen(stdoutfile, "a", stdout) == 0x0 )
		return ;

	/* redirect stderr to error file */
	if ( freopen(stdoutfile, "a", stderr) == 0x0 )
		return ;

#if defined (_MSC_VER)
#if (_MSC_VER > 1310)
	setvbuf( stdout, (char*)0x0, _IONBF, 0 );
	setvbuf( stderr, (char*)0x0, _IONBF, 0 );
#else
	setvbuf( stdout, (char*)0x0, _IOLBF, 0 );
	setvbuf( stderr, (char*)0x0, _IOLBF, 0 );
#endif
#else
	setvbuf( stdout, (char*)0x0, _IONBF, 0 );
	setvbuf( stderr, (char*)0x0, _IONBF, 0 );
#endif
}
#else
static void redirectStdout() {}
#endif /* CS_REDIRECT_STDOUT */

