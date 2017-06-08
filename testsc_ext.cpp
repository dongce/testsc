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
#include "opspec_types.h"
#include "sntds.h"
#include "testsc.h"
#include <algorithm>
#include <cctype>
#include "nfields.h"
#include "ew_intelligence_types.h"
#include "opspec_types.h"
#include "sntds.h"
//#include <unistd.h>



scheme* g_sc_ext = NULL ; 

pointer pop_args(pointer & args )
{
  pointer c = pair_car(args) ;
  args = pair_cdr(args) ;
  return c ;
}

bool is_nil(pointer it)
{
  return g_sc_ext->NIL == it;
}



typedef struct cdo_check_t 
{
  uint32_t  counter;
  uint32_t  network ; 
  uint32_t  pu_address ; 
} cdo_check_t ; 
struct admin_t {
  union {
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
    cdo_check_t            _cdo_check ;
    cdo_check_t            _cdo_check_array[3] ;
    network_assignment_t   _network_assignment ; 
    opspec_types::opnote_t _opnote ; 
    ew_intelligence_types::ew_intelligence_request_record _ew_request;
    sntds_MEM              _sntds ; 
    uint8_t _buff[204800] ; 
  } ;
} ;


typedef std::map<std::string, uint32_t>           fieldmap_t ; 
typedef std::pair<std::string, uint32_t>          fieldpair_t ; 
typedef std::map<uint32_t, admin_t*> adminmap_t ;
typedef std::pair<uint32_t, admin_t*> adminpair_t ; 

fieldmap_t g_fieldmap ;
adminmap_t g_adminmap ; 


admin_t              g_admindefault ; 

uint32_t field_id(scheme* sc ,std::string fieldname)
{
  static uint32_t fieldid = 1000U ;
  testsc_debug("field id %s ", fieldname.c_str() ) ; 

  fieldname.erase(std::remove(fieldname.begin(), fieldname.end() , ' ')) ; 
  fieldname.erase(std::remove(fieldname.begin(), fieldname.end() , '\f')) ; 
  fieldname.erase(std::remove(fieldname.begin(), fieldname.end() , '\n')) ; 
  fieldname.erase(std::remove(fieldname.begin(), fieldname.end() , '\r')) ; 
  fieldname.erase(std::remove(fieldname.begin(), fieldname.end() , '\t')) ; 
  fieldname.erase(std::remove(fieldname.begin(), fieldname.end() , '\v')) ; 

  
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
void FIELD_NSET(TYPE& a, pointer arg)
{
  num b = nvalue(arg) ; 

  if(b.is_fixnum){
    a = static_cast<TYPE>(b.value.ivalue) ;
  }
  else{
    a = static_cast<TYPE>(b.value.rvalue) ;
  }

}

template< typename TYPE, size_t N>
void FIELD_NSET(TYPE (&args)[N], pointer b )
{
  int i = 0 ; 
  for(pointer it = b ; !is_nil(it)  ; it = pair_cdr(it) ){
    FIELD_NSET(args[i++], pair_car(it)) ;
  }
}



void FIELD_NSET_LOG(const char* fname ,  pointer a)
{
  if(is_pair(a)){
    testsc_debug("field array set %s", fname ) ; 
  }
  else{
    num b = nvalue(a) ; 
    
    if(b.is_fixnum){
      testsc_debug("field set %s, %d done", fname , b.value.ivalue) ; 
    }
    else{
      testsc_debug("field set %s, %f done", fname , b.value.rvalue) ; 
    }
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
pointer vit = (v) ;                                                     \
FIELD_NSET((i)->second->f , (vit)) ;                                    \
FIELD_NSET_LOG(#f, (vit)) ;                                             \
break; }

#define FIELD_NGET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ \
(v) = cons(sc, FIELD_NGET(sc, (i)->second->f ), v) ;                    \
FIELD_NGET_LOG(#f, (i)->second->f) ;                                    \
break; }



pointer foreign_testsc_ext_nset(scheme *sc , pointer args)
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
    // const num         fieldnum   = nvalue( pop_args(field)) ;

    FOR_FIELD_ID(fieldname){
      ADMIN_FIELDS(FIELD_NSET_VALUE, it, pop_args(field)) ;
      FIELD_NSET_VALUE(_buff, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check_array[0].network, it, pop_args(field)) ; 
    }
  }
  
  return mk_integer(sc, g_adminmap.size()); ; 
}

pointer foreign_testsc_ext_strset(scheme *sc , pointer args)
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

    pointer sit = pop_args(field) ;

    if( is_string(sit)){
      const char* fieldstr =  string_value( sit ) ;

      FOR_FIELD_ID(fieldname){
        FIELD_STRSET_VALUE(_buff , it, fieldstr) ; 
      }
    }
    else{
      int counter = 0 ; 
      while(is_pair(sit)){
        it->second->_buff[counter++] = static_cast<uint8_t>(ivalue(pop_args(sit) ));
      }
    }

    testsc_debug("admin_strset %x %x %s:%d" ,
                 it->second->_buff[0] ,
                 it->second->_buff[1],
                 __FILE__,
                 __LINE__) ; 
  }
  
  return mk_integer(sc, g_adminmap.size()); ; 
}

pointer foreign_testsc_ext_length(scheme *sc , pointer args)
{
  return mk_integer(sc, g_adminmap.size()) ; 
}

pointer foreign_testsc_ext_erase(scheme *sc , pointer args)
{
  const int length = g_adminmap.size() ; 
  const int index  = ivalue(pop_args(args)) ;
  g_adminmap.erase(index) ; 
  return args ; 
}



pointer foreign_testsc_ext_nget(scheme *sc , pointer args)
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





char* testsc_ext_get( int i )
{

  adminmap_t::iterator it = g_adminmap.find(i) ; 

  if( g_adminmap.end() ==  it){
    testsc_debug("admin get not exist %d" , i) ; 
    return NULL ;
  }
  testsc_debug("admin get exist %d" , i) ; 
  return reinterpret_cast<char*>( (it->second) ) ; 
}

int testsc_ext_length( void )
{
  return g_adminmap.size() ; 
}


void testsc_ext_erase(int index )
{
  g_adminmap.erase(index) ;
}


void testsc_ext_init(scheme* sc)
{

  g_sc_ext = sc ; 
  memset(&g_admindefault, 0, sizeof(g_admindefault)) ; 


  foreign_symbol symbols [] = {
    {"testsc-ext-nset" , foreign_testsc_ext_nset   }, 
    {"testsc-ext-strset" , foreign_testsc_ext_strset   }, 
    {"testsc-ext-nget" , foreign_testsc_ext_nget   }, 
    {"testsc-ext-length", foreign_testsc_ext_length  }, 
    {"testsc-ext-erase" , foreign_testsc_ext_erase  }, 
  } ;

  for(foreign_symbol *s = symbols ;
      s < symbols + sizeof(symbols)/sizeof(foreign_symbol) ;
      s++) {

    scheme_define(sc ,
                  sc->global_env ,
                  mk_symbol(sc , s->name ) ,
                  mk_foreign_func(sc , s->fun)) ;
  }

}
