#!/bin/sh

mkdir gcc-5.4.0-build
cd gcc-5.4.0-build
../gcc-5.4.0/configure --enable-languages=c,c++,fortran --disable-multilib
make -j$(nproc) && sudo make install

#sudo vim /etc/profile
export PATH=/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH
