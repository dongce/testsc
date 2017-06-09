#if !defined(__TESTSC_H__)
#define __TESTSC_H__
#include <stdio.h>
#include <iostream>

#include "testsc_ext.h"

// C interface - 테스트 변수
long testsc_ivalue(const char* name) ;
double testsc_dvalue(const char* name) ; 
char* testsc_strvalue(const char* name) ; 

void testsc_eval(const char *cmd) ;
void testsc_init(int testnum, const char *cmd, const char *homepath = "/testsc/home/" ) ; 
void testsc_deinit(void) ; 



void testsc_debug(const char*format ...) ;


#define TESTSC_INIT(x) testsc_init(CS_TESTCASENO(), #x)

#define UINT32 uint32_t
#define IFTN(x) if((x) == CS_TESTCASENO())
#define SCT try{
#define SCC }catch(...){}
#define SCTHROW(x) if(testsc_ivalue(#x)) throw link_exception(#x)  

#endif
