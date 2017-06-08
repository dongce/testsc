#if !defined(__TESTSC_EXT_H_DEFINED__)
#define __TESTSC_EXT_H_DEFINED__

struct scheme ; 
typedef struct cell* pointer;
typedef pointer (*foreign_func)(scheme *, pointer);

struct foreign_symbol
{
  char *name ;
  foreign_func fun ;
} ;


// C interface 
char* testsc_ext_get( int i ) ; 
int   testsc_ext_length( void ) ; 
void  testsc_ext_erase(int index ) ; 

void testsc_ext_init(scheme* sc) ; 

// tinyscheme helper 
pointer pop_args(pointer & args ) ;
bool is_nil(pointer it) ;

#define tinyscheme_list4(sc , a , b , c , d) cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , cons((sc) , (d) , (sc)->NIL))))
#define tinyscheme_list3(sc , a , b , c)     cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , (sc)->NIL)))
#define tinyscheme_list2(sc , a , b )        cons((sc) , (a) , cons((sc) , (b) , (sc)->NIL))

#define tinyscheme_car(x) pair_car((x))
#define tinyscheme_cadr(x) pair_car(pair_cdr((x)))
#define tinyscheme_caddr(x) pair_car(pair_cdr(pair_cdr((x))))


#endif
