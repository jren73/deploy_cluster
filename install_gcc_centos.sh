#!/bin/sh

unset PATH
unset LD_LIBRARY_PATH
export PATH=/usr/bin:/home/cc/.local/bin:/home/cc/bin:
export LD_LIBRARY_PATH=/home/cc/mvapich2-2.2/lib/.libs/:

mkdir gcc-5.4.0-build
cd gcc-5.4.0-build
../gcc-5.4.0/configure --enable-languages=c,c++,fortran --disable-multilib
make -j$(nproc) && sudo make install

#sudo vim /etc/profile
export PATH=/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH
