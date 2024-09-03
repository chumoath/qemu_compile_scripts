#!/bin/sh

rm -rf build
mkdir build && cd build

../configure               \
--enable-debug             \
--enable-sdl               \
--disable-werror           \
--enable-virtfs            \
--enable-plugins           \
--disable-stack-protector  \
--extra-cflags="-O3"       \
--target-list=aarch64-softmmu,avr-softmmu

make -j6

cd contrib/plugins && make -j6
