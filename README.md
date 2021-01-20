# neko-gcc
This is the GCC cross-compiler used for the nekosys Operating System.

## Prerequisites
Being an advanced build system, GCC has many dependencies. Therefore, it is required to have them when building a GCC cross compiler for nekosys. For more information, visit [this](https://wiki.osdev.org/Building_GCC#Preparing_for_the_build) page

- Linux environment
- Make
- Bison
- Flex
- GMP
- MPFR
- MPC
- Texinfo

Debian command: 
```
sudo apt install build-essential bison flex libgmp3-dev libmpc-dev libmpfr-dev texinfo
```

## Installing
Run the following command in your shell:
```
chmod +x ./build.sh && sudo ./build.sh
```

This creates a `i686-neko-*` toolchain at `~/opt/neko-gcc`
