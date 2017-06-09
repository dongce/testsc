/** 
 * sm/cs_tfx_types.h        V1.0    2010.03.24.
 *
 * Copyright SureSoftTech, Inc. All Rights Reserved.
 *
 * @brief This software is the proprietary information of SureSoftTech, Inc.
 * Use is subject to license terms.
 *
 */

#ifndef __cs_tfx_types_h__
#define __cs_tfx_types_h__

typedef char 				codescroll_byte;
typedef char* 				codescroll_string;
#if defined(_MSC_VER)
typedef __int64				codescroll_int;
typedef unsigned __int64	codescroll_uint;
#else
typedef long long			codescroll_int;
typedef unsigned long long	codescroll_uint;
#endif

#if defined(_MSC_VER)
typedef double				codescroll_flt;
#else
typedef double				codescroll_flt;
#endif

#if defined _MSC_VER
#define CS_U64_SUFFIX(key_) key_##i64
#else
#define CS_U64_SUFFIX(key_) key_##ULL
#endif

#endif /* __cs_tfx_types_h__ */
