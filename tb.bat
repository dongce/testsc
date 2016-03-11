gcc -fpic -pedantic -I. -c -g -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_STRLWR=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  scheme.c
gcc -fpic -pedantic -I. -c -g -Wno-char-subscripts -O -DSTANDALONE=1 -DUSE_STRLWR=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  link11_sc.cpp
g++ -fpic -pedantic -o scheme -g -Wno-char-subscripts link11_sc.o scheme.o -lm
gcc -fpic -pedantic -I. -c -g -Wno-char-subscripts -O -DSTANDALONE=0 -DUSE_STRLWR=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  scheme.c
gcc -fpic -pedantic -I. -c -g -Wno-char-subscripts -O -DSTANDALONE=0 -DUSE_STRLWR=0 -DUSE_DL=0 -DUSE_MATH=1 -DUSE_ASCII_NAMES=0  link11_sc.cpp
ar crs libtinyscheme.a scheme.o link11_sc.o