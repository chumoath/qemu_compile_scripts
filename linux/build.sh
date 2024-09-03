#!/bin/sh

mkdir build
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build defconfig
#make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build menuconfig
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build vmlinux -j6
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build Image.gz -j6
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build modules -j6
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build scripts_gdb
