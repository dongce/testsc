#line 2 "cs_test%example1_get_sec_surf_ampl_test0%cs_error"
/* example1_get_sec_surf_ampl_test0.c */
#ifndef __example1_get_sec_surf_ampl_test0__
#define __example1_get_sec_surf_ampl_test0__

#include "example1_get_sec_surf_ampl_test0.h"

#line 1 "cs_test%example1_get_sec_surf_ampl_test0%USER_CODE_GLOBAL_KEY"
#include "testsc.h"
#line 11 "cs_test%example1_get_sec_surf_ampl_test0%cs_error"

void CS_TEST example1_get_sec_surf_ampl_test0()
{
	/*Do not modify CS_TEST_PARAMETER()*/
	CS_TEST_PARAMETER(example1_get_sec_surf_ampl_test0);
	/*Do not remove connect_stub_configuration()*/
	int cs_stub_connect_function_call = connect_example1_get_sec_surf_ampl_test0_stub_configuration();
	{/*<START TEST>*/

#line 1 "cs_test%example1_get_sec_surf_ampl_test0%User code start"
testsc_init(CS_TESTCASENO(), "(testsc-require ex/t-1)",  "/testsc/home") ; 

printf("printf\n") ; 
std::cout<<"cout test"<<std::endl ; 
#line 26 "cs_test%example1_get_sec_surf_ampl_test0%cs_error"
	/*Declaration (parameter/return/target object) variables*/
	enum primary_surface_id_ampl_e priampl ; 
	enum secondary_surface_id_ampl_e secampl ; 
	int returnVar = 0; 

	/*Input*/
	priampl = (enum primary_surface_id_ampl_e)CS_INT_INPUT(enum primary_surface_id_ampl_e,"priampl");
	secampl = (enum secondary_surface_id_ampl_e)CS_INT_INPUT(enum secondary_surface_id_ampl_e,"secampl");


#line 1 "cs_test%example1_get_sec_surf_ampl_test0%BEFORE_CALL_CODE_KEY_get_sec_surf_ampl28983194"
	priampl = (enum primary_surface_id_ampl_e)testsc_ivalue("priampl");
	secampl = (enum secondary_surface_id_ampl_e)testsc_ivalue("secampl");
#line 40 "cs_test%example1_get_sec_surf_ampl_test0%cs_error"
	/* int example1::get_sec_surf_ampl(primary_surface_id_ampl_e, secondary_surface_id_ampl_e) */
	returnVar = example1::get_sec_surf_ampl(priampl,secampl);




	/*Output*/
	CS_INT_OUTPUT(returnVar, "returnVar");

	/*<END TEST>*/}
	/*<CS_DISCONNECT_CODE_START>*/
	/*Do not remove disConnect_stub_configuration()*/
	disConnect_example1_get_sec_surf_ampl_test0_stub_configuration();
	/*<CS_DISCONNECT_CODE_END>*/
}

#endif
