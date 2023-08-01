#!/bin/bash

mkdir -p out
export PATH="/home/v3rb0se/Documents/bluel/clang/clang-r487747b-main/bin:/home/v3rb0se/Documents/bluel/arch/arch/bin:/home/v3rb0se/Documents/bluel/arm/arm/bin:$PATH"
export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH=/home/v3rb0se/Documents/bluel/clang/clang-r487747b-main/bin
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-
export LD_LIBRARY_PATH=/home/v3rb0se/Documents/bluel/clang/clang-r487747b-main/lib64:$LD_LIBRARY_PATH
export DTC=/home/v3rb0se/Documents/bluel/tools/dtc-aosp

make CC=clang O=out nethunter_defconfig
make CC=clang O=out menuconfig
make CC=clang O=out -j24
