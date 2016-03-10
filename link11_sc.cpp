#include "scheme.h"
#include "scheme-private.h"
#include <stdarg.h>
#include <string.h>
#include <strings.h>
#define tinyscheme_list4(sc , a , b , c , d) cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , cons((sc) , (d) , (sc)->NIL))))


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


void testsc_load(scheme*sc , const char*filename )
{
  FILE* fin=fopen(filename,"r");
  if( NULL != fin ){
    scheme_load_named_file(sc,fin,filename);
    fclose(fin) ;
  }

}

pointer
foreign_testsc_load(scheme*sc , pointer args )
{
  testsc_load(sc, string_value(pop_args(args))) ;
  return sc->NIL ; 
}

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



scheme g_sc ; 
void testsc_init(int testnum , const char* cmd)
{
  g_testnum = testnum ;

  scheme_init(&g_sc) ; 
  foreign_symbol symbols [] = {
    {"mmsg-set"         , foreign_mmsg_set}, 
    {"testsc-load"      , foreign_testsc_load},
    {"testsc-set-debug" , foreign_testsc_set_debug},
    {"testsc-debug"     , foreign_testsc_debug}, 
    {"testsc-get-testnum", foreign_testsc_get_testnum   } 
  } ;

  for(foreign_symbol *s = symbols ;
      s < symbols + sizeof(symbols)/sizeof(foreign_symbol) ;
      s++) {

    scheme_define(&g_sc ,
                  g_sc.global_env ,
                  mk_symbol(&g_sc , s->name ) ,
                  mk_foreign_func(&g_sc , s->fun)) ;
  }

  testsc_load(&g_sc, "t:/ts/init.scm") ; 
  testsc_load(&g_sc, "t:/ts/util.scm") ; 
  if( NULL != cmd ){
    scheme_load_string(&g_sc, cmd) ;
  }
  testsc_load(&g_sc, "t:/ts/temp.scm") ;
  
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




