#!/bin/sh

cd warpx_directory/WarpX

make -j

cd -

ls -l warpx_directory/WarpX/Bin
rm -rf warpx_run/*
cp warpx_directory/WarpX/Bin/main3d.gnu.TPROF.MPI.OMP.ex warpx_run/warpx_3d

ls -l warpx_run/warpx_3d
