#!/bin/bash
export PREFIX="$HOME/opt/neko-gcc"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

echo "Building binutils..."
mkdir build-binutils
cd build-binutils
../binutils-2.34/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
cd ..

echo "Building GCC..."
# The $PREFIX/bin dir _must_ be in the PATH. We did that above.
which -- $TARGET-as || echo $TARGET-as is not in the PATH

mkdir build-gcc
cd build-gcc
../gcc-7.5.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc

echo "Making symlink..."
ln -s "$HOME/opt/neko-gcc/bin/i686-elf-gcc" "$HOME/opt/neko-gcc/bin/neko-gcc"

echo "Use neko-GCC with $PREFIX/bin/neko-gcc"
echo "Done"
