#!/bin/sh

unset PATH
unset LD_LIBRARY_PATH
export PATH=/usr/bin:/home/cc/.local/bin:/home/cc/bin:
export LD_LIBRARY_PATH=/home/cc/mvapich2-2.2/lib/.libs/:

curl https://ftp.gnu.org/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.bz2 -O
tar jxvf gcc-5.4.0.tar.bz2
sudo yum install -y gmp-devel mpfr-devel libmpc-devel

mkdir gcc-5.4.0-build
cd gcc-5.4.0-build
../gcc-5.4.0/configure --enable-languages=c,c++,fortran --disable-multilib
make -j$(nproc) && sudo make install

#sudo vim /etc/profile
export PATH=/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH
