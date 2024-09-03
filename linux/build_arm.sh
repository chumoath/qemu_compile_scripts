#!/bin/sh

# mkdir build

#make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm O=build.arm defconfig
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm O=build.arm menuconfig
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm O=build.arm vmlinux -j6
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm O=build.arm zImage -j6
#make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm O=build.arm modules -j6
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm O=build.arm scripts_gdb
