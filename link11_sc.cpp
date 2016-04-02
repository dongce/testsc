#include "scheme.h"
#include "scheme-private.h"
#include <stdarg.h>
#include <string.h>
#include <strings.h>
#include <stdlib.h>
#include <system_types.h>
#include <dlp_link11_types.h>
#include <map>
#include <string>
#include <typeinfo>
#include <locale>
#include "nfields.h"
#include "ew_intelligence_types.h"

#define tinyscheme_list4(sc , a , b , c , d) cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , cons((sc) , (d) , (sc)->NIL))))
#define tinyscheme_list3(sc , a , b , c)     cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , (sc)->NIL)))
#define tinyscheme_list2(sc , a , b )        cons((sc) , (a) , cons((sc) , (b) , (sc)->NIL))

#define testsc_car(x) pair_car((x))
#define testsc_cadr(x) pair_car(pair_cdr((x)))
#define testsc_caddr(x) pair_car(pair_cdr(pair_cdr((x))))

typedef std::map<uint32_t, network_track_data_ptr>  trackmap_t ; 
typedef std::map<std::string, uint32_t>           fieldmap_t ; 

typedef std::pair<uint32_t, network_track_data_ptr> trackpair_t ; 
typedef std::pair<std::string, uint32_t>          fieldpair_t ; 

struct admin_t {
  union{
    wipe_proposal_t        _wipe_proposal ; 
    network_track_number_t _network_track_number ;
    pair_assoc_t           _pair_assoc ;
    monitor_t              _monitor ;
    aircraft_control_t     _aircraft_control ;
    command_order_t        _command_order ;
    // emitter_eval_info_type _emitter_eval_info ;
    // ew_coord_info_type     _ew_coord_info ;
    link_pointer_t         _link_pointer ; 
    depromotion_t          _depromotion ; 
    update_request_t       _update_request ; 
    weapon_engagement_t    _weapon_engagement ;
    new_assignment_t       _assign_request ;
    track_alert_report_t   _alert_report ; 
    ew_intelligence_types::ew_intelligence_request_record _ew_request; 
  } ; 
} ;

typedef std::map<uint32_t, admin_t*> adminmap_t ;
typedef std::pair<uint32_t, admin_t*> adminpair_t ; 


trackmap_t g_trackmap ;
fieldmap_t g_fieldmap ;
adminmap_t g_adminmap ; 


network_track_data_t g_trackdefault ; 
admin_t              g_admindefault ; 

FILE* g_debug = 0 ;
char* g_buffer = 0 ; 
struct foreign_symbol
{
  char *name ;
  foreign_func fun ;
} ;

pointer
pop_args(pointer & args )
{
  pointer c = pair_car(args) ;
  args = pair_cdr(args) ;
  return c ;
}

void testsc_debug(const char*format ...) ; 


pointer g_mmsg    = 0;
int     g_testnum = 0;
int     g_testsc_debug = 1 ; 

uint32_t field_id(scheme* sc ,const std::string& fieldname)
{
  static uint32_t fieldid = 1000U ;
  // testsc_debug("field id %s ", fieldname.c_str() ) ; 

  fieldmap_t::iterator it = g_fieldmap.find(fieldname) ;

  // testsc_debug("field id %s %s:%d", fieldname.c_str() , __FILE__, __LINE__) ; 
  
  if( g_fieldmap.end() == it ){
    g_fieldmap.insert(fieldpair_t(fieldname, ++fieldid )) ;
    // testsc_debug("field id %s %s:%d", fieldname.c_str() , __FILE__, __LINE__) ; 
    it = g_fieldmap.find(fieldname) ;
    // testsc_debug("field id %s %s:%d", fieldname.c_str() , __FILE__, __LINE__) ; 
  }
  // testsc_debug("field id %s, %d", fieldname.c_str() , it->second) ; 
  return it->second ;
}

template<typename TYPE>
void FIELD_NSET(TYPE& a, const num& b)
{
  if(b.is_fixnum){
    a = static_cast<TYPE>(b.value.ivalue) ;
  }
  else{
    a = static_cast<TYPE>(b.value.rvalue) ;
  }

    
}

void FIELD_NSET_LOG(const char* fname ,  const num& b)
{
  if(b.is_fixnum){
    testsc_debug("field set %s, %d done", fname , b.value.ivalue) ; 
  }
  else{
    testsc_debug("field set %s, %f done", fname , b.value.rvalue) ; 
  }
}

template<typename TYPE>
void FIELD_NGET_LOG(const char* fname ,  const TYPE& b)
{
  testsc_debug("field get %s, %d done", fname , b) ; 
}


template<typename TYPE>
pointer FIELD_NGET(scheme*sc, const TYPE& a)
{
  if(typeid(TYPE) == typeid(double) ||
     typeid(TYPE) == typeid(float)){
    return mk_real(sc, a ) ;
  }
  return mk_integer(sc, a) ; 
}



#define FOR_FIELD_ID(f) for(uint32_t ___field_id = field_id(sc, (f)) ; ___field_id > 0 ; ___field_id = 0 )
#define FIELD_STRSET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ strcpy((char*)(i)->second->f , (v)) ; break; }

#define FIELD_NSET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ \
FIELD_NSET((i)->second->f , (v)) ;                                      \
FIELD_NSET_LOG(#f, (v)) ;                                               \
break; }

#define FIELD_NGET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ \
(v) = cons(sc, FIELD_NGET(sc, (i)->second->f ), v) ;                    \
FIELD_NGET_LOG(#f, (i)->second->f) ;                                    \
break; }


pointer
foreign_testsc_track_strset(scheme *sc , pointer args)
{
  uint32_t trackid = ivalue(pop_args(args)) ;

  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    network_track_data_ptr nit = reinterpret_cast<network_track_data_ptr>(malloc( sizeof(network_track_data_t)) );
    *nit = g_trackdefault ; 
    g_trackmap.insert(trackpair_t(trackid, nit)) ;
    it = g_trackmap.find(trackid) ;
  }
    
  for (pointer field = pop_args(args); is_pair(field); field = pop_args(args)) {
    const char *sym = symname(pop_args(field) ); 
    const std::string fieldname(sym);
    const char*fieldstr   = string_value(pop_args(field)) ;

    FOR_FIELD_ID(fieldname){
      
      FIELD_STRSET_VALUE(general.mission_nr.text   , it, fieldstr) ; 
      FIELD_STRSET_VALUE(general.call_sign.text    , it, fieldstr) ; 
      FIELD_STRSET_VALUE(general.nineteen_bit_TN_number.text, it, fieldstr) ; 
      FIELD_STRSET_VALUE(general.tag , it, fieldstr) ; 
      FIELD_STRSET_VALUE(_track_name , it, fieldstr) ;
    }
  }
}


pointer
foreign_testsc_track_nset(scheme *sc , pointer args)
{
  uint32_t trackid = ivalue(pop_args(args)) ;

  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    network_track_data_ptr nit = reinterpret_cast<network_track_data_ptr>(malloc( sizeof(network_track_data_t)) );
    *nit = g_trackdefault ; 
    g_trackmap.insert(trackpair_t(trackid, nit)) ;
    it = g_trackmap.find(trackid) ;
  }
  else if( 0 == it->second ){
    network_track_data_ptr nit = reinterpret_cast<network_track_data_ptr>(malloc( sizeof(network_track_data_t)) );
    *nit = g_trackdefault ; 
    g_trackmap[trackid] = nit ; 
    it = g_trackmap.find(trackid) ;
  }
    
    
  for (pointer field = pop_args(args); is_pair(field); field = pop_args(args)) {
    const char *sym = symname(pop_args(field) ); 
    const std::string fieldname(sym);
    const num         fieldnum   = nvalue(pop_args(field)) ;

    FOR_FIELD_ID(fieldname){
      TRACK_FIELDS(FIELD_NSET_VALUE, it, fieldnum) ; 
    }
  }
  
  return mk_integer(sc, g_trackmap.size()); ; 
}

pointer
foreign_testsc_admin_nset(scheme *sc , pointer args)
{
  uint32_t adminid = ivalue(pop_args(args)) ;

  adminmap_t::iterator it = g_adminmap.find(adminid) ; 
  if( g_adminmap.end() == it ){
    admin_t* nit = reinterpret_cast<admin_t*>(malloc(sizeof(admin_t)));
    memcpy(nit, &g_admindefault, sizeof(g_admindefault)) ; 
    g_adminmap.insert(adminpair_t(adminid, nit)) ;
    it = g_adminmap.find(adminid) ;
  }
    
  for (pointer field = pop_args(args); is_pair(field); field = pop_args(args)) {
    const char *sym = symname(pop_args(field) ); 
    const std::string fieldname(sym);
    const num         fieldnum   = nvalue(pop_args(field)) ;

    FOR_FIELD_ID(fieldname){
      ADMIN_FIELDS(FIELD_NSET_VALUE, it, fieldnum) ; 
    }
  }
  
  return mk_integer(sc, g_adminmap.size()); ; 
}


pointer
foreign_testsc_admin_length(scheme *sc , pointer args)
{
  return mk_integer(sc, g_adminmap.size()) ; 
}

pointer
foreign_testsc_admin_erase(scheme *sc , pointer args)
{
  const int length = g_adminmap.size() ; 
  const int index  = ivalue(pop_args(args)) ;
  g_adminmap.erase(index) ; 
  return args ; 
}



pointer
foreign_testsc_admin_nget(scheme *sc , pointer args)
{
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t adminid = ivalue(pop_args(args)) ;

  pointer result = sc->NIL ; 
  adminmap_t::iterator it = g_adminmap.find(adminid) ; 
  if( g_adminmap.end() == it ){
    admin_t* nit = reinterpret_cast<admin_t*>(malloc(sizeof(admin_t)));
    memcpy(nit, &g_admindefault, sizeof(g_admindefault)) ; 
    g_adminmap.insert(adminpair_t(adminid, nit)) ;
    it = g_adminmap.find(adminid) ;
  }
    
  for (pointer field = pop_args(args); is_symbol(field); field = pop_args(args)) {
    const std::string fieldname(symname(field));

    FOR_FIELD_ID(fieldname){
      ADMIN_FIELDS(FIELD_NGET_VALUE, it, result) ; 
    }
  }
  
  return result ; 
}




pointer
foreign_testsc_track_nget(scheme *sc , pointer args)
{
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t trackid = ivalue(pop_args(args)) ;

  pointer result = sc->NIL ; 
  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    network_track_data_ptr nit = reinterpret_cast<network_track_data_ptr>(malloc( sizeof(network_track_data_t)) );
    *nit = g_trackdefault ; 
    g_trackmap.insert(trackpair_t(trackid, nit)) ;
    it = g_trackmap.find(trackid) ;
  }
    
  for (pointer field = pop_args(args); is_symbol(field); field = pop_args(args)) {
    const std::string fieldname(symname(field));

    FOR_FIELD_ID(fieldname){
      TRACK_FIELDS(FIELD_NGET_VALUE, it, result) ; 
    }
  }
  
  return result ; 
}







//deprecated//pointer
//deprecated//foreign_mmsg_set(scheme *sc , pointer args)
//deprecated//{
//deprecated//  g_mmsg = args ;
//deprecated//  testsc_debug(__PRETTY_FUNCTION__) ; 
//deprecated//
//deprecated//  for (pointer it = args; it != sc->NIL; it = pair_cdr(it)) {
//deprecated//    pointer x = pair_car(it) ;
//deprecated//    const long field  = ivalue(testsc_car(x)) ; 
//deprecated//    const long offset = ivalue(testsc_cadr(x)) ; 
//deprecated//    const long value  = ivalue(testsc_caddr(x)) ; 
//deprecated//    testsc_debug("%s %d %d %d" ,
//deprecated//                 __PRETTY_FUNCTION__,
//deprecated//                 field ,
//deprecated//                 offset ,
//deprecated//                 value) ; 
//deprecated//  }
//deprecated//  
//deprecated//  return args ; 
//deprecated//}

pointer
foreign_testnum_set(scheme *sc , pointer args)
{
  g_testnum = ivalue(args) ; 
  return args ; 
}


void testsc_load(scheme*sc , const char* filename , const char *homepath = NULL)
{

  static const char* TINYSCHEME_HOME =(  NULL == getenv("TINYSCHEME_HOME") ? "t:/ts"  : getenv("TINYSCHEME_HOME")  );

  char absfilename[1024] ;
  sprintf(absfilename, "%s/%s" , (NULL != homepath && strlen(homepath) > 0 ? homepath: TINYSCHEME_HOME) , filename ) ;
  testsc_debug("tetsc-load %s", absfilename) ; 
  FILE* fin=fopen(absfilename,"r");
  if( NULL != fin ){
    scheme_load_named_file(sc,fin,filename);
    fclose(fin) ;
  }

}

// pointer
// foreign_testsc_load(scheme*sc , pointer args )
// {
//   testsc_load(sc, string_value(pop_args(args))) ;
//   return sc->NIL ; 
// }

pointer
foreign_testsc_set_debug(scheme*sc , pointer args )
{
  g_testsc_debug = ivalue(pop_args(args)) ;

  return args ; 
}

pointer
foreign_testsc_get_testnum(scheme* sc, pointer args)
{
  return mk_integer(sc, (long) g_testnum); 
}
pointer
foreign_testsc_debug(scheme*sc , pointer args )
{
  testsc_debug(string_value(pop_args(args))) ;
  
  return args ; 
}

pointer
foreign_testsc_numtest(scheme*sc , pointer args )
{
  pointer ar = pop_args( args ) ; 

  if( is_number(ar) ){
    num n = nvalue(ar) ; 
    printf("number is %d %d %f\n" , n.is_fixnum , n.value.ivalue , n.value.rvalue) ;
  }
    
  return args ; 
}


// pointer
// foreign_testsc_ivalue(scheme*sc , pointer args )
// {
//   return sc->vptr->scheme_eval(sc, mk_string(sc, string_value(pop_args(args)))) ;
// }

extern "C" pointer
foreign_testsc_init(scheme* sc , pointer args)
{
  const char* TINYSCHEME_HOME =
    (  NULL == getenv("TINYSCHEME_HOME") ? "t:/ts"  : getenv("TINYSCHEME_HOME")  );

  char absfilename[1024] ;
  sprintf(absfilename,
          "%s/testsc-error.txt" ,
          TINYSCHEME_HOME ) ;
  for(FILE* f = fopen(absfilename, "ab") ;
      NULL !=f ;
      f = NULL){
    dup2(fileno(f) , STDERR_FILENO) ;
  }
          
  fprintf(stderr,"Errors encountered reading %s\n",absfilename);
  fflush(stderr) ;

  sprintf(absfilename,
          "%s/debug.txt" ,
          TINYSCHEME_HOME ) ;
  
  g_debug = fopen(absfilename, "ab") ; 
  g_buffer = reinterpret_cast<char*>(malloc(10240) ); 

  
  g_testnum            = ivalue(pop_args(args)) ;
  memset(&g_trackdefault, 0, sizeof(g_trackdefault)) ; 
  memset(&g_admindefault, 0, sizeof(g_admindefault)) ; 
    
  foreign_symbol symbols [] = {
    //deprecated//{"mmsg-set"         , foreign_mmsg_set}, 
    // {"testsc-load"      , foreign_testsc_load},
    {"testsc-set-debug" , foreign_testsc_set_debug},
    {"testsc-debug"     , foreign_testsc_debug}, 
    {"testsc-get-testnum", foreign_testsc_get_testnum   },
    {"testsc-track-strset" , foreign_testsc_track_strset   }, 
    {"testsc-track-nset" , foreign_testsc_track_nset   }, 
    {"testsc-track-nget" , foreign_testsc_track_nget   }, 
    {"testsc-admin-nset" , foreign_testsc_admin_nset   }, 
    {"testsc-admin-nget" , foreign_testsc_admin_nget   }, 
    {"testsc-admin-length", foreign_testsc_admin_length  }, 
    {"testsc-admin-erase" , foreign_testsc_admin_erase  }, 
    {"testsc-numtest" , foreign_testsc_numtest  }, 
    // {"testsc-ivalue" ,      foreign_testsc_ivalue  }, 
  } ;

  for(foreign_symbol *s = symbols ;
      s < symbols + sizeof(symbols)/sizeof(foreign_symbol) ;
      s++) {

    scheme_define(sc ,
                  sc->global_env ,
                  mk_symbol(sc , s->name ) ,
                  mk_foreign_func(sc , s->fun)) ;
  }


  return sc->NIL ; 
}

//////////////TEST CASE 에서 호출할 수 있는 함수들 ////////////////
scheme g_sc  = {0, }; 
void testsc_init(int testnum , const char* cmd, const char* homepath)
{

  scheme_init(&g_sc) ;
  foreign_testsc_init(&g_sc,
                      tinyscheme_list3(&g_sc,
                                       mk_integer(&g_sc, testnum) ,
                                       mk_string(&g_sc, NULL != cmd? cmd : ""),
                                       mk_string(&g_sc, NULL != homepath ? homepath : ""))) ;

  testsc_load(&g_sc, "init.scm", homepath) ; 
  testsc_load(&g_sc, "util.scm", homepath) ;
  if( NULL != cmd ){
    scheme_load_string(&g_sc, cmd) ;
  }
  testsc_load(&g_sc, "temp.scm", homepath) ;

}



#if !STANDALONE

inline long tests_eval_ivalue(pointer x)
{
  if(is_symbol(x)){
    return ivalue(scheme_eval(&g_sc ,x)) ;
  }
  return ivalue(x) ; 
}

int mmsg_get_field_value( int a, int b , const char* name)
{
  for (pointer it = scheme_eval(&g_sc, mk_symbol(&g_sc, name) ) ;
       NULL != it && it != g_sc.NIL;
       it = pair_cdr(it)) {
    pointer x = pair_car(it) ;
    const long field  = testsc_eval_ivalue(testsc_car(x)) ; 
    const long offset = testsc_eval_ivalue(testsc_cadr(x)) ; 
    const long value  = testsc_eval_ivalue(testsc_caddr(x)) ; 

    
    if( ( a == field  ) &&
        ( b == offset ) ) {

      testsc_debug("testnum(%d)%s:%d, get_field_value debug (%d, %d, %d) , %d, %d",
                 g_testnum,
                 __FILE__,
                 __LINE__,
                 field,
                 offset,
                 value,
                 a,
                 b ) ; 
        
      return value ; 
    }
  }
  
  return 0 ; 
}

int mmsg_get_field_value( int a, int b )
{
  return mmsg_get_field_value(a, b, "*mmsg*") ; 
}

long testsc_ivalue( const char *name )
{
  if( 0 == g_sc.NIL ){
    return 0 ;
  }

  
  pointer args = scheme_eval(&g_sc, mk_symbol(&g_sc, name) );

  if( NULL != args && g_sc.NIL != args  && is_integer(args)){
    long value = ivalue(args) ; 
    testsc_debug("testsc_ivalue %s is %d" , name, value) ;
    return value ;
  }
  return 0 ; 
}
#endif

char* testsc_admin_get( int i )
{

  adminmap_t::iterator it = g_adminmap.find(i) ; 

  if( g_adminmap.end() ==  it){
    return NULL ;
  }
  return reinterpret_cast<char*>( (it->second) ) ; 
}

int testsc_admin_length( void )
{

  return g_adminmap.size() ; 

}


void testsc_admin_erase(int index )
{
  g_adminmap.erase(index) ;
}

void testsc_track_set(uint32_t id , network_track_data_ptr t )
{
  g_trackmap[id] = t ; 
}

void testsc_track_clear_set(uint32_t id , network_track_data_ptr t )
{
  g_trackmap[id] = t ; 
}

network_track_data_ptr  testsc_track_get(uint32_t id )
{
  trackmap_t::iterator it =  g_trackmap.find(id) ;

  testsc_debug("%s with id %d" ,  __FUNCTION__ ,  id) ;
   
  if(g_trackmap.end() ==  it){
    return NULL ;
  }

  return it->second ;
}
void testsc_eval(const char *cmd)
{
  testsc_debug("testsc eval %s" , cmd) ; 
  scheme_load_string(&g_sc, cmd) ;
}



void testsc_debug(const char*format ...)
{
  va_list vlist;
	
  // memset(g_buffer, 0x00, 1024) ; 
	
	
  va_start(vlist, format);
  int formatsize = vsprintf(g_buffer, format, vlist);
  va_end(vlist);

  g_buffer[formatsize]= '\n' ;
  g_buffer[formatsize+1]= NULL ; 

  if(g_testsc_debug > 0 ){
    fwrite(g_buffer , formatsize + 1 , 1 , g_debug) ;
    fflush(g_debug) ;
  }
} 

void testsc_close()
{
  scheme_deinit(&g_sc);
}
