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
#include <unistd.h>




FILE* g_debug = stdout ;
char* g_buffer = (char*)malloc(409600) ; 


void testsc_debug(const char*format ...) ; 


int     g_testnum = 0;
int     g_testsc_debug = 1 ; 

pointer
foreign_testnum_set(scheme *sc , pointer args)
{
  g_testnum = ivalue(args) ; 
  return args ; 
}


void testsc_load(scheme*sc , const char* filename , const char *homepath = NULL)
{
  static const char* TINYSCHEME_HOME =(  NULL == getenv("TINYSCHEME_HOME") ? "/testsc/home/"  : getenv("TINYSCHEME_HOME")  );

  char absfilename[1024] ;
  sprintf(absfilename, "%s/%s" , (NULL != homepath && strlen(homepath) > 0 ? homepath: TINYSCHEME_HOME) , filename ) ;
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
foreign_testsc_set_testnum(scheme* sc, pointer args)
{
  g_testnum = ivalue(pop_args(args)) ; 
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


//deprecated//extern "C" pointer
//deprecated//foreign_testsc_interactive(scheme* sc , pointer args)
//deprecated//{
//deprecated//  if(file_interactive(sc)){
//deprecated//    return sc->T ; 
//deprecated//  }
//deprecated//  return sc->NIL; 
//deprecated//}

#if !STANDALONE
scheme* g_sc  = reinterpret_cast<scheme*>(malloc(sizeof(scheme)) );
#else
// come from main 
scheme* g_sc = NULL ; 
#endif


extern "C" pointer
foreign_testsc_init(scheme* sc , pointer args)
{

  if(g_sc != sc){
    g_sc = sc; 
  }

  g_testnum            = ivalue(pop_args(args)) ;

  foreign_symbol symbols [] = {
    //deprecated//{"mmsg-set"         , foreign_mmsg_set}, 
    // {"testsc-load"      , foreign_testsc_load},
    {"testsc-set-debug" , foreign_testsc_set_debug},
    {"testsc-debug"     , foreign_testsc_debug}, 
    {"testsc-get-testnum", foreign_testsc_get_testnum   },
    {"testsc-set-testnum", foreign_testsc_set_testnum   },
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

  testsc_ext_init(sc) ; 

  return sc->NIL ;
}

//////////////TEST CASE 에서 호출할 수 있는 함수들 ////////////////
void testsc_init(int testnum , const char* cmd, const char* home)
{

  scheme_init(g_sc) ;

  char homepath[1024] ;

  
  if(0 == home){
    home = (  NULL == getenv("TINYSCHEME_HOME") ? "/testsc/home/"  : getenv("TINYSCHEME_HOME")  );
  }
  sprintf(homepath, "%s/", home) ; 

  
  scheme_define(g_sc ,
                g_sc->global_env ,
                mk_symbol(g_sc , "*testsc-home*" ) ,
                mk_string(g_sc , homepath)) ;

  char absfilename[1024] ;
  sprintf(absfilename,
          "%s/testsc-stderr.txt" ,
          homepath ) ;
  for(FILE* f = fopen(absfilename, "ab") ;
      NULL !=f ;
      f = NULL){
    dup2(fileno(f) , STDERR_FILENO) ;
  }

  fflush(stderr) ;

  sprintf(absfilename,
          "%s/testsc-stdout.txt" ,
          homepath ) ;


  g_debug = fopen(absfilename, "ab") ;

  dup2(fileno(g_debug) , STDOUT_FILENO) ;
  
  scheme_set_output_port_file(g_sc, g_debug);
  
  
  foreign_testsc_init(g_sc,
                      tinyscheme_list2(g_sc,
                                       mk_integer(g_sc, testnum) ,
                                       mk_string(g_sc, NULL != homepath ? homepath : ""))) ;
  testsc_load(g_sc, "init.scm", homepath) ;
  
  if( NULL != cmd ){
    scheme_load_string(g_sc, cmd) ;
  }

  // testsc_load(g_sc, "post.scm", homepath) ;

  testsc_debug("testsc initalize done") ; 
}



#if !STANDALONE

inline long testsc_eval_ivalue(pointer x)
{
  if(is_symbol(x)){
    return ivalue(scheme_eval(g_sc ,x)) ;
  }
  return ivalue(x) ; 
}

inline double testsc_eval_dvalue(pointer x)
{
  if(is_symbol(x)){
    x = scheme_eval(g_sc ,x) ; 
  }

  if(is_integer(x)){
    return ivalue(x) ; 
  }

  return rvalue(x) ; 
}

long testsc_ivalue( const char *name )
{
  if( 0 == g_sc->NIL ){
    return 0 ;
  }

  
  pointer args = scheme_eval(g_sc, mk_symbol(g_sc, name) );

  if( NULL != args && g_sc->NIL != args  && ( is_integer(args) || is_symbol(args)) ){
    long value = testsc_eval_ivalue(args) ; 
    // long value = ivalue(args) ; 
    testsc_debug("testsc_ivalue %s is %d" , name, value) ;
    return value ;
  }
  return 0 ; 
}

double testsc_dvalue( const char *name )
{
  if( 0 == g_sc->NIL ){
    return 0 ;
  }

  
  pointer args = scheme_eval(g_sc, mk_symbol(g_sc, name) );

  if( NULL != args && g_sc->NIL != args  && (is_real(args) || is_integer(args) || is_symbol(args))){
    double value = testsc_eval_dvalue(args) ; 
    // double value = rvalue(args) ; 
    testsc_debug("testsc_dvalue %s is %f" , name, value) ;
    return value ;
  }
  return 0 ; 
}


// long testsc_setenv( const char *name , const char *value)
// {
//   return setenv(name, value, 1 ) ; 
// }



char* testsc_strvalue( const char *name )
{
  if( 0 == g_sc->NIL ){
    return 0 ;
  }

  
  pointer args = scheme_eval(g_sc, mk_symbol(g_sc, name) );

  if( NULL != args && g_sc->NIL != args  && is_string(args)){
    char *strvalue = string_value(args) ; 
    testsc_debug("testsc_ivalue %s is %d" , name, strvalue) ;
    return strvalue ;
  }
  return 0 ; 
}

#endif

void testsc_eval(const char *cmd)
{
  testsc_debug("testsc eval %s" , cmd) ; 
  scheme_load_string(g_sc, cmd) ;
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

void testsc_deinit()
{
  scheme_deinit(g_sc);
}

