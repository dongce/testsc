#include "scheme.h"
#include "scheme-private.h"
#include <stdarg.h>
#include <string.h>
#include <strings.h>
#include <stdlib.h>
#include <map>
#include <string>
#include <typeinfo>
#include <locale>
#include "testsc.h"
#include <algorithm>
#include <cctype>
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
  char      cdoname[1023] ; 
} cdo_check_t ; 



struct admin_t {
  union {
    cdo_check_t            _cdo_check ;
    cdo_check_t            _cdo_check_array[3] ;
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


#define FOR_FIELD_ID(f) for(uint32_t ___field_id = field_id(sc, (f)) ; ___field_id > 0 ; ___field_id = 0 ) 

#define FIELD_STRSET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ \
char* vitstr = string_value((v)) ;                                       \
strcpy((char*)(i)->second->f , vitstr) ;                                \
testsc_debug("field set %s, %s done", #f , vitstr) ;                    \
break; }

#define FIELD_NSET_VALUE(f, i, v ) if(field_id(sc, #f) == ___field_id){ \
pointer vit = (v) ;                                                     \
FIELD_NSET((i)->second->f , (vit)) ;                                    \
FIELD_NSET_LOG(#f, (vit)) ;                                             \
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

    FOR_FIELD_ID(fieldname){

      FIELD_NSET_VALUE(_buff, it, pop_args(field)) ; 

      FIELD_NSET_VALUE(_cdo_check.counter, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check.network, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check.pu_address, it, pop_args(field)) ; 

      FIELD_NSET_VALUE(_cdo_check_array[0].counter, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check_array[0].network, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check_array[0].pu_address, it, pop_args(field)) ; 

      FIELD_NSET_VALUE(_cdo_check_array[1].counter, it, pop_args(field)) ;
      FIELD_NSET_VALUE(_cdo_check_array[1].network, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check_array[1].pu_address, it, pop_args(field)) ; 

      FIELD_NSET_VALUE(_cdo_check_array[2].counter, it, pop_args(field)) ;
      FIELD_NSET_VALUE(_cdo_check_array[2].network, it, pop_args(field)) ; 
      FIELD_NSET_VALUE(_cdo_check_array[2].pu_address, it, pop_args(field)) ; 

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


    FOR_FIELD_ID(fieldname){
      FIELD_STRSET_VALUE(_cdo_check.cdoname,          it, pop_args(field)) ; 
      FIELD_STRSET_VALUE(_cdo_check_array[0].cdoname, it, pop_args(field)) ; 
      FIELD_STRSET_VALUE(_cdo_check_array[1].cdoname, it, pop_args(field)) ; 
      FIELD_STRSET_VALUE(_cdo_check_array[2].cdoname, it, pop_args(field)) ; 
    }
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
