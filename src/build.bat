
set PATH=C:\toolchain\gnutoolchain\gcc-4.7.2\bin;%PATH%

del ..\scheme.exe *.o

rem make scheme.exe 
set CFLAGS=-w -fpic -pedantic -I. -c  -Wno-char-subscripts -O  -DUSE_INTERFACE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0

set EXTRAINCLUDE=-It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/ICMS/devenv/icmsdlpcachelib/include -It:\gitdir\DLP_LINK11\src\ntds_drv -It:\ICMS\devenv\icmslib\include

gcc %CFLAGS% -DSTANDALONE=1 scheme.c

g++ %CFLAGS% -DSTANDALONE=1 testsc.cpp 
g++ %CFLAGS% -DSTANDALONE=1 %EXTRAINCLUDE%  testsc_ext.cpp 

g++ -w -fpic -pedantic -o ../scheme  -Wno-char-subscripts  scheme.o testsc.o testsc_ext.o -lm


rem make libtestsc.a

del ..\libtestsc.a *.o

gcc %CFLAGS% -DSTANDALONE=0 scheme.c
g++ %CFLAGS% -DSTANDALONE=0 testsc.cpp
g++ %CFLAGS% -DSTANDALONE=0 %EXTRAINCLUDE% testsc_ext.cpp


ar crs ../libtestsc.a scheme.o testsc.o testsc_ext.o
