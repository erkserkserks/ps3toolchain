#!/bin/sh -e
# gdb-SPU.sh by Dan Peori (dan.peori@oopo.net)

GDB="gdb-7.11"

if [ ! -d ${GDB} ]; then

  ## Download the source code.
  if [ ! -f ${GDB}.tar.xz ]; then wget --continue ftp://ftp.gnu.org/gnu/gdb/${GDB}.tar.xz; fi

  ## Unpack the source code.
  tar xfvJ ${GDB}.tar.xz

fi

if [ ! -d ${GDB}/build-spu ]; then

  ## Create the build directory.
  mkdir ${GDB}/build-spu

fi

## Enter the build directory.
cd ${GDB}/build-spu

## Configure the build.
../configure --prefix="$PS3DEV/spu" --target="spu" \
    --disable-nls \
    --disable-sim \
    --disable-werror

## Compile and install.
${MAKE:-make} -j 4 && ${MAKE:-make} install
