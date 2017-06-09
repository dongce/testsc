/* *@(#) codescroll_cvrg_probe_macro.h        V1.0
 *
 * Copyright SureSoft, Inc. All Rights Reserved.
 *
 * This software is the proprietary information of SureSoft, Inc.
 * Use is subject to license terms.
 *
 */

/* This file provides coverage probe macro definitions */


#ifndef __CODESCROLL_CVRG_PROBE_MACRO_H__
#define __CODESCROLL_CVRG_PROBE_MACRO_H__
/* if this macro enabled, the codescroll_cvrg and codescroll_cvrg_dyn will be allocated when build IUT */
#ifndef __CODESCROLL_ALLOC_FOR_TEST__
CODESCROLL_EXTERN_GLOBAL_VAR_DECL(unsigned char* codescroll_cvrg)
CODESCROLL_EXTERN_GLOBAL_VAR_DECL(unsigned char* codescroll_cvrg_dyn)
#else
CODESCROLL_EXTERN_GLOBAL_VAR_DECL(unsigned char codescroll_cvrg[100000])
CODESCROLL_EXTERN_GLOBAL_VAR_DECL(unsigned char codescroll_cvrg_dyn[100000])
#endif

#ifndef CS_CMM_MARK_CHAR
#define CS_CMM_MARK_CHAR	(1)
#endif

#ifndef CS_CMM_POST_PROCESSING
#define CS_CMM_POST_PROCESSING(n) 	0
#endif /* CS_CMM_POST_PROCESSING */

#ifndef CS_CVRG_STMT_OFF
#define CS_CMM_C1_MARK_DEF(buf,n)	((CS_CMM_POST_PROCESSING(n)), (buf[n] = CS_CMM_MARK_CHAR))
#else
#define CS_CMM_C1_MARK_DEF(buf,n) CS_CMM_MARK_CHAR
#endif /* CS_CVRG_STMT_OFF */

#if (! defined(CS_CVRG_MCDC_OFF)) || (! defined(CS_CVRG_DECISION_OFF)) /* MCDC_ON || DECISION_ON */
#define CS_CMM_MCDC_MARK_DEF(buf,n) (buf[n] = CS_CMM_MARK_CHAR)
#else /* MCDC_OFF && DECISION_OFF */
#define CS_CMM_MCDC_MARK_DEF(buf,n) CS_CMM_MARK_CHAR
#endif // (! defined(CS_CVRG_MCDC_OFF)) || (! defined(CS_CVRG_DECISION_OFF))

#if ! defined(CS_CVRG_STMT_OFF)	/* STMT_ON */
#define CS_CMM_C1_IS_MARKED(buf,n)	(buf[n] == CS_CMM_MARK_CHAR)
#define CS_CMM_CX_IS_MARKED(buf,n)	(buf[n] == CS_CMM_MARK_CHAR)
#else /* STMT_OFF */
#define CS_CMM_C1_IS_MARKED(buf,n)	(0)
#define CS_CMM_CX_IS_MARKED(buf,n)	(0)
#endif

#endif /* __CODESCROLL_CVRG_PROBE_MACRO_H__ */

