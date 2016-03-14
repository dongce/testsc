
set PATH=C:\toolchain\gnutoolchain\gcc-4.7.2\bin;%PATH%
gcc -fpic -pedantic -I. -c -g -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  scheme.c
gcc -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/FFX-II/devenv/icmsdlpcachelib/include -It:\FFX-II\devenv\icmslib\include -c -g -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  link11_sc.cpp

g++ -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/csds_manager -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/FFX-II/devenv/icmsdlpcachelib/include -It:/FFX-II/devenv/icmslib/include -c -g -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0 -DSTC_WIN32  t:/gitdir/DLP_LINK11/src/common/utility.cpp

g++ -fpic -pedantic -o scheme -g -Wno-char-subscripts utility.o link11_sc.o scheme.o -lm
gcc -fpic -pedantic -I. -c -g -Wno-char-subscripts -O -DSTANDALONE=0 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  scheme.c
gcc -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/FFX-II/devenv/icmsdlpcachelib/include -It:\FFX-II\devenv\icmslib\include -c -g -Wno-char-subscripts -O -DSTANDALONE=1  -DSTANDALONE=1 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  link11_sc.cpp
g++ -fpic -pedantic -I. -It:/gitdir/DLP_LINK11/src/csds_manager -It:/gitdir/DLP_LINK11/src/include -It:/gitdir/DLP_LINK11/src/common -It:/FFX-II/devenv/icmsdlpcachelib/include -It:/FFX-II/devenv/icmslib/include -c -g -Wno-char-subscripts -O -DSTANDALONE=0 -DUSE_STRLWR=0 -DUSE_STRCASECMP=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0 -DSTC_WIN32  t:/gitdir/DLP_LINK11/src/common/utility.cpp

ar crs libtinyscheme.a scheme.o link11_sc.o
