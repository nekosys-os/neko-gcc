#!/bin/bash

wget https://ftp.gnu.org/gnu/gcc/gcc-7.5.0/gcc-7.5.0.tar.xz
wget https://ftp.gnu.org/gnu/binutils/binutils-2.34.tar.xz

echo "Extracting GCC..."
tar xf gcc-7.5.0.tar.xz

echo "Extracting Binutils..."
tar xf binutils-2.34.tar.xz

echo "Cleaning up"
rm gcc-7.5.0.tar.xz
rm binutils-2.34.tar.xz
