#!/bin/bash
echo "Cleaning installed neko-gcc"
rm -rf ~/opt/neko-gcc
echo "Cleaning binutils..."
rm -rf build-binutils/
echo "Cleaning gcc..."
rm -rf build-gcc/
echo "Done"
