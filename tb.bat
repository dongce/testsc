
set PATH=C:\toolchain\gnutoolchain\gcc -w-4.7.2\bin;%PATH%

rem scheme.exe 
rem g++ -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/csds_manager -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/ICMS/devenv/icmsdlpcachelib/include -It:/ICMS/devenv/icmslib/include -c  -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_INTERFACE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0 -DSTC_WIN32  t:/gitdir/DLP_LINK11/src/common/utility.cpp

gcc -w -fpic -pedantic -I. -c  -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_INTERFACE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  scheme.c

g++ -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/ICMS/devenv/icmsdlpcachelib/include -It:\ICMS\devenv\icmslib\include -c  -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_INTERFACE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  link11_sc.cpp


g++ -fpic -pedantic -o scheme  -Wno-char-subscripts  link11_sc.o scheme.o -lm


rem libtinyscheme.a

rem g++ -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/csds_manager -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/FFX-II/devenv/icmsdlpcachelib/include -It:/FFX-II/devenv/icmslib/include -c  -Wno-char-subscripts -O -DSTANDALONE=0 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0 -DSTC_WIN32  t:/gitdir/DLP_LINK11/src/common/utility.cpp


gcc -w -fpic -pedantic -I. -c  -Wno-char-subscripts -O  -DSTANDALONE=0 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  scheme.c
g++ -w -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/ICMS/devenv/icmsdlpcachelib/include -It:\gitdir\DLP_LINK11\src\ntds_drv -It:\ICMS\devenv\icmslib\include -c  -Wno-char-subscripts -O -DSTANDALONE=0 -DUSE_INTERFACE=1  -DUSE_INTERFACE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  link11_sc.cpp


ar crs libtinyscheme.a scheme.o link11_sc.o 
