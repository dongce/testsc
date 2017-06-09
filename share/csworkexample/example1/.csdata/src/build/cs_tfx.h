/** 
 * sm/cs_tfx.h        V1.0    2010.03.24.
 *
 * Copyright SureSoftTech, Inc. All Rights Reserved.
 *
 * @brief This software is the proprietary information of SureSoftTech, Inc.
 * Use is subject to license terms.
 *
 */

#if !defined __cs_tfx_h__
#define __cs_tfx_h__

#if defined __cplusplus
#define CSUT_FRIEND_DECL friend class ::CodeScrollTest;
#define CS_TEST		CodeScrollTest::
#else
#define CS_TEST
#endif

#define CODESCROLL_MCDC_EVALUATION

#include "cs_tfx_types.h"
#include "cs_build_macro.h"
#include "cs_test_function.h"
#include "cs_stub_key.h"

#define CS_TOSTRING(_s)				#_s
#define CS_ASSERT_MSG(_b,_m)		do { codescroll_assert(0, (_b), _m, 0x0, 0); } while(0)
#define CS_ASSERT(_b)				CS_ASSERT_MSG((_b), CS_TOSTRING(_b))
#define CS_LOG(_m)					codescroll_out_message(_m)
#define CS_TESTCASENO()				codescroll_testcase_number
#define CS_TEST_PARAMETER(_f)		codescroll_int codescroll_test_parameter = 0

#define CS_INT_INPUT_INDEX(_t,_s,_i)	((_t)codescroll_get_int(_s, __FILE__, _i))
#define CS_UINT_INPUT_INDEX(_t,_s,_i)	((_t)codescroll_get_uint(_s, __FILE__, _i))
#define CS_FLT_INPUT_INDEX(_t,_s,_i)	((_t)codescroll_get_flt(_s, __FILE__, _i))
#define CS_STR_INPUT_INDEX(_t,_s,_i)	((codescroll_byte*)codescroll_get_str(_s, __FILE__, _i))

#define CS_INT_OUTPUT_INDEX(_v,_s,_i)	codescroll_set_int(_s, __FILE__, _i,(codescroll_int)(_v))
#define CS_UINT_OUTPUT_INDEX(_v,_s,_i)	codescroll_set_uint(_s, __FILE__, _i,(codescroll_uint)(_v))
#define CS_FLT_OUTPUT_INDEX(_v,_s,_i)	codescroll_set_flt(_s, __FILE__, _i,(codescroll_flt)(_v),(codescroll_int)sizeof(_v))
#define CS_STR_OUTPUT_INDEX(_v,_s,_i)	codescroll_set_str(_s, __FILE__, _i,(codescroll_byte*)(_v))

#define CS_INT_INPUT(_t,_s)			CS_INT_INPUT_INDEX(_t,_s,++codescroll_symbol_index)
#define CS_UINT_INPUT(_t,_s)		CS_UINT_INPUT_INDEX(_t,_s,++codescroll_symbol_index)
#define CS_FLT_INPUT(_t,_s)			CS_FLT_INPUT_INDEX(_t,_s,++codescroll_symbol_index)
#define CS_STR_INPUT(_t,_s)			CS_STR_INPUT_INDEX(_t,_s,++codescroll_symbol_index)

#define CS_INT_OUTPUT(_v,_s)		CS_INT_OUTPUT_INDEX(_v,_s,++codescroll_symbol_index)
#define CS_UINT_OUTPUT(_v,_s)		CS_UINT_OUTPUT_INDEX(_v,_s,++codescroll_symbol_index)
#define CS_FLT_OUTPUT(_v,_s)		CS_FLT_OUTPUT_INDEX(_v,_s,++codescroll_symbol_index)
#define CS_STR_OUTPUT(_v,_s)		CS_STR_OUTPUT_INDEX(_v,_s,++codescroll_symbol_index)
 
#define CS_ADDR_ASSIGN(_t,_a,_v)	*((_t*)(codescroll_get_virtual_addr(_a,sizeof(_t)))) = (_v)
#define CS_ADDR_GET(_t,_a)			*((_t*)(codescroll_get_virtual_addr(_a,sizeof(_t))))
#define CS_ADDR_SET(_t,_a,_v)		*((_t*)(codescroll_get_virtual_addr(_a,sizeof(_t)))) = (_v)
#define CS_ADDR_PTR(_a)				codescroll_get_virtual_addr(_a,0)
#define CS_VIRTUAL_ADDR(_b,_e)		codescroll_add_virtual_addr(_b,_e)
#define CS_VIRTUAL_ADDR_CLEAR()		codescroll_clear_virtual_addr()

#define CS_STRNCPY(_d,_s,_n)		codescroll_strncpy(_d,_s,_n)
#define CS_ATOI(_s)					codescroll_atoi(_s)
#define CS_ITOA(_i,_s)				codescroll_itoa(_i,_s)
#define CS_FOPEN(_f,_m)				codescroll_fopen(_f,_m)
#define CS_FCLOSE()					codescroll_fclose()
#define CS_FPUTS(_s)				codescroll_fputs(_s)

#if defined _MSC_VER
#define CS_DEBUG_BREAK()			do { __asm { int 3 } } while(0)
#else
#define CS_DEBUG_BREAK()
#endif

#if defined __cplusplus
extern "C" {
#endif

extern codescroll_byte* cs_TFX_CoverageBuffer;
extern codescroll_int* cs_TFX_LastProbe;
extern codescroll_int codescroll_testcase_number;
extern codescroll_int codescroll_symbol_index;

void codescroll_assert (codescroll_int iscontinue, codescroll_int assertchk, codescroll_byte* message, codescroll_byte* source, codescroll_int line);
codescroll_int cs_TFX_getTestcaseNumber();
void codescroll_out_message(codescroll_byte* message);
codescroll_int codescroll_get_int (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index);
codescroll_uint codescroll_get_uint (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index);
codescroll_flt codescroll_get_flt (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index);
const codescroll_byte* codescroll_get_str (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index);
void codescroll_set_int (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_int value);
void codescroll_set_uint (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_uint value);
void codescroll_set_flt (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_flt value, codescroll_int size);
void codescroll_set_str (codescroll_byte* symbol, codescroll_byte* file, codescroll_int index, codescroll_byte* value);
int codescroll_atoi (codescroll_byte* str);
void codescroll_itoa (codescroll_int value, codescroll_byte* outstr);
void codescroll_fopen (codescroll_byte* file, codescroll_byte* mode);
void codescroll_fclose ();
void codescroll_fputs (codescroll_byte* str);
void codescroll_memcpy (void *dst, void *src, int size);
codescroll_byte* codescroll_strncpy (codescroll_byte* dst, codescroll_byte *src, int size);
void *codescroll_get_virtual_addr (unsigned int addr, unsigned int size);
int  codescroll_add_virtual_addr (unsigned int begin, unsigned int end);
void codescroll_clear_virtual_addr ();

void cs_TFX_memcpy (void *dst, void *src, int size);
void *CS_UT_get_host_addr(unsigned int addr, unsigned int size);

void codescroll_strcpy(char *dst, const char *src);
int codescroll_strcmp(const char *s1, const char *s2);

#if defined __cplusplus
}
#endif

#endif /*!defined __cs_tfx_h__*/
