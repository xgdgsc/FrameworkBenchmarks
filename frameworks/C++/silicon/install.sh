#!/bin/bash

DIR=`pwd`
rm -fr silicon;
git clone https://github.com/matt-42/silicon.git
cd silicon;
CXX=/usr/bin/g++-4.9 ./install.sh $IROOT

cd $DIR
wget http://mirror.ibcp.fr/pub/gnu/libmicrohttpd/libmicrohttpd-0.9.39.tar.gz
tar xvf libmicrohttpd-0.9.39.tar.gz
cd libmicrohttpd-0.9.39
./configure --prefix=$IROOT


cd $TROOT
mkdir -p build
cd build; cmake .. -DCMAKE_CXX_COMPILER=g++-4.9 && make silicon_app
