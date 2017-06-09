/* *@(#) codescroll_common_probe_macro.h        V1.0
 *
 * Copyright SureSoft, Inc. All Rights Reserved.
 *
 * This software is the proprietary information of SureSoft, Inc.
 * Use is subject to license terms.
 *
 */

/* This file provides common probe macro definitions */


#ifndef __CODESCROLL_COMMON_PROBE_MACRO_H__
#define __CODESCROLL_COMMON_PROBE_MACRO_H__

#ifdef _MSC_VER
#pragma warning(disable:4101) /* unreferenced variable */
#pragma warning(disable:4102) /* unreferenced label */
#endif /* _MSC_VER */

#ifdef CSTM_TARGETLIB_IS_DLL
#define CODESCROLL_TARGETLIB_IS_DLL
#endif /* CSTM_TARGETLIB_IS_DLL */
#ifdef __CSTM_DLL
#define CODESCROLL_DLL
#endif /* __CSTM_DLL */

#ifdef __cplusplus
#define CODESCROLL_EXTERN_C		extern "C"
#define CODESCROLL_LANG_LINKAGE	"C"
#else /* C */
#define CODESCROLL_EXTERN_C		/* empty */
#define CODESCROLL_LANG_LINKAGE	/* empty */
#endif /* __cplusplus */

/* extern varaible declarations */
#ifdef CODESCROLL_TARGETLIB_IS_DLL
#ifdef __cplusplus
#ifdef CODESCROLL_DLL
#define CODESCROLL_EXTERN_GLOBAL_VAR_DECL(decl) 	extern "C" { __declspec(dllexport) decl; }
#else /* CODESCROLL_DLL */
#define CODESCROLL_EXTERN_GLOBAL_VAR_DECL(decl) 	extern "C" { __declspec(dllimport) decl; }
#endif /* CODESCROLL_DLL */
#else /* !__cplusplus */
#ifdef CODESCROLL_DLL
#define CODESCROLL_EXTERN_GLOBAL_VAR_DECL(decl) 	__declspec(dllexport) decl;
#else /* CODESCROLL_DLL */
#define CODESCROLL_EXTERN_GLOBAL_VAR_DECL(decl) 	__declspec(dllimport) decl;
#endif /* CODESCROLL_DLL */
#endif /* __cplusplus */
#else /* !CODESCROLL_TARGELIB_IS_DLL */
#define CODESCROLL_EXTERN_GLOBAL_VAR_DECL(decl) 	extern CODESCROLL_LANG_LINKAGE decl;
#endif /* CODESCROLL_TARGETLIB_IS_DLL */

/* probe as a declaration */
#define CS_DECL_PROBE(id,probe)		int codescroll_##id = (probe, 0);

/* for PA RT(internal use only) */
#ifdef CODESCROLL_TMPA_RT
static int CS_FUNC_BEGIN(void) { return 1; }
static int CS_FUNC_END(void) { return 1; }
#endif /* CODESCROLL_TMPA_RT */

#define CODESCROLL_REMOVE(x)	/* empty */

#endif /* __CODESCROLL_COMMON_PROBE_MACRO_H__ */

