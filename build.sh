#! /bin/bash

export ARCH=arm
export CROSS_COMPILE=arm-xilinx-linux-gnueabi- 
make zynq_zturn_defconfig
make clean
make  -j12 UIMAGE_LOADADDR=0x8000  uImage zynq-zturn.dtb
