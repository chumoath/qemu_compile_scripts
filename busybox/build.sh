#!/bin/sh

rm -rf build
mkdir build
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build defconfig
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build menuconfig
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build -j6
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=build install

cp -rfa initrd/* build/_install

cd build/_install
find . | cpio -H newc -o | gzip -c9 > ../initrd_boot.cpio.gz
