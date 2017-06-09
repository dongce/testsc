/** 
 * sm/cs_tfx_sm.h        V1.0    2013.09.16
 *
 * Copyright SureSoftTech, Inc. All Rights Reserved.
 *
 * @brief This software is the proprietary information of SureSoftTech, Inc.
 * Use is subject to license terms.
 *
 */

#ifndef __cs_tfx_sm_h
#define __cs_tfx_sm_h__

#if defined _MSC_VER
#include <windows.h>
#endif
#include "cs_tfx_types.h"

#if defined _WIN32 || defined WIN32
#define DLL_PUBLIC	__declspec(dllexport)
#else
#define DLL_PUBLIC	__attribute__((visibility("default")))
#endif

/* exit status */
#define CS_ES_NOTRUN				(0)
#define CS_ES_NORMAL				(1)
#define CS_ES_ASSERT				(2)
#define CS_ES_EXIT					(3)
#define CS_ES_SIGNAL				(4)
#define CS_ES_TIMEOUT				(5)
#define CS_ES_NOTTERMINAT			(6)		/* = NORMAL */
#define CS_ES_NOINTERNALDATA		(7)	
#define CS_ES_ERROR					(8)
#define CS_ES_ABNORMAL				(9)

struct cs_TFX_TestScenario_t {
	codescroll_int	kind;
	void (*testFunction)();
	char* name;
	codescroll_int	dataCount;
};

#ifdef CS_TEST
#undef CS_TEST
#endif
#define CS_TEST_SCENARIO_BEGIN()	struct cs_TFX_TestScenario_t	cs_TFX_TestScenario[] = {
#define CS_SUITE_SETUP(_f)			{ 0, _f, 0x0, 0 },
#define CS_TEST_SETUP(_f)			{ 1, _f, 0x0, 0 },
#define CS_TEST(_f)					{ 2, _f, #_f, 0 },
#define CS_TEST_INTERNAL(_f,_p)		{ 2, _f, #_f, 0 },
#define CS_TEST_TEARDOWN(_f)		{ 4, _f, 0x0, 0 },
#define CS_SUITE_TEARDOWN(_f)		{ 5, _f, 0x0, 0 },
#define CS_TEST_SCENARIO_END()		{-1,0x0, 0x0, 0} };

#if defined _MSC_VER
#define CS_DEBUG_BREAK()			do { __asm { int 3 } } while(0)
#else
#define CS_DEBUG_BREAK()
#endif

#define RUNFLAG_PILOT			0
#define RUNFLAG_KEEPCONTEXT		1
#define RUNFLAG_FIRSTTESTCASE	2
#define RUNFLAG_LASTTESTCASE	3
#define RUNFLAG_NEWPROCESS		4
#define ISFALG(_v,_f)			(((_v) & (0x0001<<_f))?1:0)

#define TRL_FOPEN_MODE	"a"
#define TRLERR0(_m)				codescrollib_testrun_log(2,TRL_FOPEN_MODE,_m)
#define TRLERR1(_m,_1)			codescrollib_testrun_log(2,TRL_FOPEN_MODE,_m,_1)
#define TRLERR2(_m,_1,_2)		codescrollib_testrun_log(2,TRL_FOPEN_MODE,_m,_1,_2)
#define TRLINFO0(_m)			codescrollib_testrun_log(0,TRL_FOPEN_MODE,_m)
#define TRLINFO1(_m,_1)			codescrollib_testrun_log(0,TRL_FOPEN_MODE,_m,_1)
#define TRLINFO2(_m,_1,_2)		codescrollib_testrun_log(0,TRL_FOPEN_MODE,_m,_1,_2)
#ifdef TR_DEBUG
#define TRLDBG0(_m)				codescrollib_testrun_log(1,TRL_FOPEN_MODE,_m)
#define TRLDBG1(_m,_1)			codescrollib_testrun_log(1,TRL_FOPEN_MODE,_m,_1)
#define TRLDBG2(_m,_1,_2)		codescrollib_testrun_log(1,TRL_FOPEN_MODE,_m,_1,_2)
#define TRLDBG3(_m,_1,_2,_3)	codescrollib_testrun_log(1,TRL_FOPEN_MODE,_m,_1,_2,_3)
#else
#define TRLDBG0(_m)
#define TRLDBG1(_m,_1)
#define TRLDBG2(_m,_1,_2)
#define TRLDBG3(_m,_1,_2,_3)
#endif

#if defined __cplusplus 
extern "C" {
#endif
DLL_PUBLIC int codescrollib_init_iohandle (const char* env, char** cbuf, codescroll_int** lastprobe);
DLL_PUBLIC void codescrollib_release_iohandle ();
DLL_PUBLIC int codescrollib_has_external_data ();
DLL_PUBLIC void codescrollib_get_testcase (int* suite_index, int* test_index, int* run_flag, codescroll_int* testcaseno);
DLL_PUBLIC int codescrollib_open_external_data (const char* test_name, int isdebugmode);
DLL_PUBLIC void codescrollib_close_external_data ();
DLL_PUBLIC int codescrollib_get_external_testcase (unsigned int testcaseno);
DLL_PUBLIC void codescrollib_set_external_testcase (int exitStatus, const char* message);
DLL_PUBLIC codescroll_int codescrollib_get_int (const char* symbol, const char* file, unsigned int index);
DLL_PUBLIC codescroll_uint codescrollib_get_uint (const char* symbol, const char* file, unsigned int index);
DLL_PUBLIC codescroll_flt codescrollib_get_flt (const char* symbol, const char* file, unsigned int index);
DLL_PUBLIC const char* codescrollib_get_str (const char* symbol, const char* file, unsigned int index);
DLL_PUBLIC int codescrollib_set_int (const char* symbol, const char* file, unsigned int index, codescroll_int value, char* assert_message);
DLL_PUBLIC int codescrollib_set_uint (const char* symbol, const char* file, unsigned int index, codescroll_uint value, char* assert_message);
DLL_PUBLIC int codescrollib_set_flt (const char* symbol, const char* file, unsigned int index, codescroll_flt value, unsigned int size, char* assert_message);
DLL_PUBLIC int codescrollib_set_str (const char* symbol, const char* file, unsigned int index, const char* value, char* assert_message);
DLL_PUBLIC void codescrollib_out_message(const char* message);
DLL_PUBLIC void codescrollib_assert_message (const char* msg, const char* src, int line);
DLL_PUBLIC void codescrollib_set_endtestcase (int end_of_test);
DLL_PUBLIC void codescrollib_set_exitstatus (int status);
DLL_PUBLIC const char* codescrollib_get_stdoutfile ();
DLL_PUBLIC void *codescrollib_get_virtual_addr (unsigned int addr, unsigned int size);
DLL_PUBLIC int codescrollib_add_virtual_addr (unsigned int begin, unsigned int end);
DLL_PUBLIC void codescrollib_clear_virtual_addr ();
DLL_PUBLIC int codescrollib_atoi (const char* str);
DLL_PUBLIC void codescrollib_itoa (int value, char* outstr);
DLL_PUBLIC void codescrollib_fopen (const char* file, const char* mode);
DLL_PUBLIC void codescrollib_fclose ();
DLL_PUBLIC void codescrollib_fputs (const char* str);
DLL_PUBLIC void codescrollib_memcpy (void *dst, void *src, int size);
DLL_PUBLIC char* codescrollib_strncpy (char *dst, const char *src, int size);
DLL_PUBLIC void codescrollib__exit (int status);
DLL_PUBLIC void codescrollib_testrun_log (int kind, const char* open_mode, const char *fmt, ...);
DLL_PUBLIC void codescrollib_assert_signal(const char* message, int out);
DLL_PUBLIC void codescrollib_execute_tfunction (void (*fptr)());
DLL_PUBLIC void codescrollib_get_testrun_env (char* env);
#if defined __cplusplus 
}
#endif

#endif /* __cs_tfx_sm_h__ */
