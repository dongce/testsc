#include "stdio.h"
#include "testsc.h"

int main(int argc, char **argv)
{
  testsc_init(1 , "(testsc-require ex/t-2)", "/testsc/home/") ; 

  printf("%d\n", testsc_ivalue("pampl")) ; 

}
