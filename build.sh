#!/bin/bash
export PREFIX="$HOME/opt/neko-gcc"
export PATH="$PREFIX/bin:$PATH"
export TARGET=i686-neko
export SYSROOT = "../nekosys/sysroot"

echo "Building binutils..."
mkdir build-binutils
cd build-binutils
../binutils-2.34/configure --target="$TARGET" --prefix="$PREFIX" --with-sysroot="$SYSROOT" --disable-nls --disable-werror
make
make install
cd ..

echo "Building GCC..."
# The $PREFIX/bin dir _must_ be in the PATH. We did that above.
which -- $TARGET-as || echo $TARGET-as is not in the PATH

mkdir build-gcc
cd build-gcc
../gcc-7.5.0/configure --target="$TARGET" --prefix="$PREFIX" --with-sysroot="$SYSROOT" --disable-nls --enable-languages=c,c++
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc

echo "Done"
