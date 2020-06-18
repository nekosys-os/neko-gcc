# neko-gcc
This is the GCC cross-compiler used for the nekosys Operating System.

## Prerequisites
Being an advanced build system, GCC has many dependencies. Therefore, it is required to have them when building a GCC cross compiler for nekosys. For more information, visit [this](https://wiki.osdev.org/Building_GCC#Preparing_for_the_build) page

- Linux environment
- GCC 7.5.0
- Binutils 2.34
- Make
- Bison
- Flex
- GMP
- MPFR
- MPC
- Texinfo

## Installing
Run the following command in your shell:
```
chmod +x ./auto-install.sh && ./auto-install.sh
```

You may also want to add the following to your `~/.profile` for easy access:
```
export PATH=$PATH:$HOME/opt/neko-gcc/bin
```

Now you can access your new compiler from everywhere by just calling `neko-gcc`. Verify that everything is working using `neko-gcc --version` and see that it shows neko-gcc as GCC 7.5.0.

