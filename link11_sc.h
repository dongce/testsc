#if !defined(__LINK11_SC_H__)
#define __LINK11_SC_H__

long testsc_ivalue(const char* name) ; 
double testsc_dvalue(const char* name) ; 
char* testsc_strvalue(const char* name) ; 
int testsc_admin_length( void ) ;
void testsc_admin_erase(int index ) ;
void testsc_track_set(uint32_t id , network_track_data_ptr t ) ;
void testsc_eval(const char *cmd) ; 
void testsc_init(int testnum, const char *cmd, const char *homepath ) ; 

long mmsg_get_field_value( int a, int b ) ; 
long mmsg_get_field_value_with_name( int a, int b , const char* name) ; 
char* testsc_admin_get( int i ) ; 

#endif
