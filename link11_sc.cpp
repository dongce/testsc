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

#define tinyscheme_list4(sc , a , b , c , d) cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , cons((sc) , (d) , (sc)->NIL))))
#define tinyscheme_list3(sc , a , b , c)     cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , (sc)->NIL)))
#define tinyscheme_list2(sc , a , b )        cons((sc) , (a) , cons((sc) , (b) , (sc)->NIL))

typedef std::map<uint32_t, network_track_data_t>  trackmap_t ; 
typedef std::map<std::string, uint32_t>           fieldmap_t ; 

typedef std::pair<uint32_t, network_track_data_t> trackpair_t ; 
typedef std::pair<std::string, uint32_t>          fieldpair_t ; 

union admin_t {
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
} ;

typedef std::map<uint32_t, admin_t> adminmap_t ;
typedef std::pair<uint32_t, admin_t> adminpair_t ; 


trackmap_t g_trackmap ;
fieldmap_t g_fieldmap ;
adminmap_t g_adminmap ; 


network_track_data_t g_trackdefault ; 
admin_t              g_admindefault ; 

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



pointer g_mmsg    = 0;
pointer g_adminindex = 0 ; 
int     g_testnum = 0;
int     g_testsc_debug = 1 ; 

void testsc_debug(const char*format ...)
{

  if(g_testsc_debug > 0 ){
    va_list vlist;
	
    char buffer[1024] ; 
    memset(buffer, 0x00, 1024) ; 
	
	
	
    va_start(vlist, format);
    int formatsize = vsprintf(buffer, format, vlist);
    va_end(vlist);

    buffer[formatsize]= '\n' ;
    buffer[formatsize+1]= NULL ; 
  
    FILE* debug = fopen("t:/ts/debug.txt", "ab") ; 
    fwrite(buffer , formatsize + 1 , 1 , debug) ;
    fclose(debug) ;
  }
} 

uint32_t field_id(scheme* sc ,const std::string& fieldname)
{
  static uint32_t fieldid = 1000U ;

  std::locale loc  ; 
  fieldmap_t::iterator it = g_fieldmap.find(fieldname) ;
  
  if( g_fieldmap.end() == it ){
    g_fieldmap.insert(fieldpair_t(fieldname, ++fieldid )) ;
    it = g_fieldmap.find(fieldname) ;
  }
  testsc_debug("field id %s, %d", fieldname.c_str() , it->second) ; 
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
#define FIELD_STRSET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ strcpy((char*)(i)->second.f , (v)) ; break; }

#define FIELD_NSET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ FIELD_NSET((i)->second.f , (v)) ; break; }
#define FIELD_NGET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ (v) = cons(sc, FIELD_NGET(sc, (i)->second.f ), v) ; break; }


pointer
foreign_testsc_track_strset(scheme *sc , pointer args)
{
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t trackid = ivalue(pop_args(args)) ;

  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    g_trackmap.insert(trackpair_t(trackid, g_trackdefault)) ;
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
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t trackid = ivalue(pop_args(args)) ;

  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    g_trackmap.insert(trackpair_t(trackid, g_trackdefault)) ;
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
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t adminid = ivalue(pop_args(args)) ;

  adminmap_t::iterator it = g_adminmap.find(adminid) ; 
  if( g_adminmap.end() == it ){
    g_adminmap.insert(adminpair_t(adminid, g_admindefault)) ;
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
foreign_testsc_admin_index(scheme *sc , pointer args)
{
  g_adminindex = pop_args(args) ;
  return g_adminindex ; 
}

pointer
foreign_testsc_admin_length(scheme *sc , pointer args)
{
  return mk_integer(sc, sc->vptr->vector_length(g_adminindex)); 
}

pointer
foreign_testsc_admin_erase(scheme *sc , pointer args)
{
  const int length = sc->vptr->vector_length(g_adminindex) ;
  const int index  = ivalue(pop_args(args)) ; 
  if(length > index ){
    pointer newindex = sc->vptr->mk_vector(sc, length-1);
    
    for(int it = 0 , i = 0 ; i < length ; i++){
      if( i == index ){
        continue ;
      }
      sc->vptr->set_vector_elem(newindex, it++ , sc->vptr->vector_elem(g_adminindex, i )) ;
    }

    return newindex ; 
  }

  return g_adminindex ;
}



pointer
foreign_testsc_admin_nget(scheme *sc , pointer args)
{
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t adminid = ivalue(pop_args(args)) ;

  pointer result = sc->NIL ; 
  adminmap_t::iterator it = g_adminmap.find(adminid) ; 
  if( g_adminmap.end() == it ){
    g_adminmap.insert(adminpair_t(adminid, g_admindefault)) ;
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
    g_trackmap.insert(trackpair_t(trackid, g_trackdefault)) ;
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







pointer
foreign_mmsg_set(scheme *sc , pointer args)
{
  g_mmsg = args ;
  testsc_debug(__PRETTY_FUNCTION__) ; 

  for (pointer it = args; it != sc->NIL; it = pair_cdr(it)) {
    pointer x = pair_car(it) ;
    testsc_debug("%s %d %d %d" ,
                 __PRETTY_FUNCTION__, 
                 ivalue(pop_args(x)), 
                 ivalue(pop_args(x)), 
                 ivalue(pop_args(x))) ;
  }
  
  return args ; 
}

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


// pointer
// foreign_testsc_ivalue(scheme*sc , pointer args )
// {
//   return sc->vptr->scheme_eval(sc, mk_string(sc, string_value(pop_args(args)))) ;
// }

extern "C" pointer
foreign_testsc_init(scheme* sc , pointer args)
{
  g_testnum            = ivalue(pop_args(args)) ;
  memset(&g_trackdefault, 0, sizeof(g_trackdefault)) ; 
  memset(&g_admindefault, 0, sizeof(g_admindefault)) ; 
    
  foreign_symbol symbols [] = {
    {"mmsg-set"         , foreign_mmsg_set}, 
    // {"testsc-load"      , foreign_testsc_load},
    {"testsc-set-debug" , foreign_testsc_set_debug},
    {"testsc-debug"     , foreign_testsc_debug}, 
    {"testsc-get-testnum", foreign_testsc_get_testnum   },
    {"testsc-track-strset" , foreign_testsc_track_strset   }, 
    {"testsc-track-nset" , foreign_testsc_track_nset   }, 
    {"testsc-track-nget" , foreign_testsc_track_nget   }, 
    {"testsc-admin-nset" , foreign_testsc_admin_nset   }, 
    {"testsc-admin-nget" , foreign_testsc_admin_nget   }, 
    {"testsc-admin-index", foreign_testsc_admin_index  }, 
    {"testsc-admin-length", foreign_testsc_admin_length  }, 
    {"testsc-admin-erase" , foreign_testsc_admin_erase  }, 
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
scheme g_sc ; 
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


int mmsg_get_field_value( int a, int b )
{

  for (pointer it = g_mmsg ; NULL != it && it != g_sc.NIL; it = pair_cdr(it)) {
    pointer x = pair_car(it) ;

    if( a == ivalue(pop_args(x)) &&
        b == ivalue(pop_args(x))) {
      testsc_debug("testnum(%d)%s:%d, get_field_value debug %d, %d",
                   g_testnum,
                   __FILE__,
                   __LINE__,
                   a,
                   b ) ; 
        
      return ivalue(pop_args(x)) ;
    }
  }
  
  return 0 ; 
}

#if STANDALONE
long testsc_ivalue( const char *name )
{
  pointer args = scheme_eval(&g_sc, mk_symbol(&g_sc, name) );

  if(is_integer(args)){
    long value = ivalue(args)) ; 
    testsc_debug("testsc_ivalue when integer is %d" , value) ;
    return value ;
  }
  return 0 ; 
}
#endif
char* admin_get( int i )
{

  adminmap_t::iterator it = g_adminmap.find(ivalue(g_sc.vptr->vector_elem(g_adminindex, i ))) ;
  
  reinterpret_cast<char*>( &(it->second) ) ; 
}

int admin_length( void )
{

  return ivalue(g_adminindex) ;

}


void admin_erase(int index )
{
  const int length = g_sc.vptr->vector_length(g_adminindex) ;
  if(length > index ){
    pointer newindex = g_sc.vptr->mk_vector(&g_sc, length-1);
    
    for(int it = 0 , i = 0 ; i < length ; i++){
      if( i == index ){
        continue ;
      }
      g_sc.vptr->set_vector_elem(newindex, it++ , g_sc.vptr->vector_elem(g_adminindex, i )) ;
    }

    g_adminindex = newindex ; 
  }
}


