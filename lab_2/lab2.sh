#!/bin/sh

#
# Creates the static library file from inc.c
#
gcc -c inc.c #create object file from the inc.c library
ar rv libinc.a *.o #create the static library from the object file
ranlib libinc.a #add an index to the object file
nm -s libinc.a


#
# Creates the shared library from the inc.c
#
rm *.o
gcc -fPIC -c inc.c
ld -shared -soname=libinc.so.1 *.o -o libinc.so.1.0 -lc
ln -s libinc.so.1.0 libinc.so
ln -s libinc.so.1.0 libinc.so.1

export LD_LIBRARY_PATH=$(pwd)

gcc -o static_lab2 -Wl,-static,--verbose main.c -L./ -linc


gcc -o shared_lab2 -Wl,-verbose main.c -L./ -linc
