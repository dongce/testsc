#if !defined(__LINK11_SC_H__)
#define __LINK11_SC_H__
typedef struct network_track_data_t* network_track_data_ptr ; 
long testsc_ivalue(const char* name) ; 
double testsc_dvalue(const char* name) ; 
char* testsc_strvalue(const char* name) ; 
int testsc_admin_length( void ) ;
void testsc_admin_erase(int index ) ;
void testsc_track_set(uint32_t id , network_track_data_ptr t ) ;
void testsc_eval(const char *cmd) ; 
void testsc_init(int testnum, const char *cmd, const char *homepath = 0 ) ; 

long mmsg_get_field_value( int a, int b ) ; 
long mmsg_get_field_value_with_name( int a, int b , const char* name) ; 
char* testsc_admin_get( int i ) ; 
network_track_data_ptr  testsc_track_get(uint32_t id ) ;
void testsc_debug(const char*format ...) ;
#define UINT32 uint32_t
#define IFTN(x) if((x) == CS_TESTCASENO())
#define SCT try{
#define SCC }catch(...){}
#define SCTHROW(x) if(testsc_ivalue(#x)) throw link_exception(#x)  
#endif
