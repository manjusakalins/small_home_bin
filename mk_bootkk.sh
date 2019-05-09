#!/bin/bash
DIRCOMP=$(pwd)
cd $DIRCOMP;
echo $DIRCOMP;
PROJECT=$(cat makeMtk.ini | grep project | awk '{print $3}')
./makeMtk $PROJECT r kernel
#echo mkbootimg --kernel kernel/out/kernel_$PROJECT.bin --ramdisk ./out/target/product/$PROJECT/ramdisk.img -o ./out/target/product/$PROJECT/boot.img
echo mkbootimg --kernel ./out/target/product/$PROJECT/obj/KERNEL_OBJ/kernel_$PROJECT.bin --ramdisk ./out/target/product/$PROJECT/ramdisk.img -o ./out/target/product/$PROJECT/boot.img
 mkbootimg --kernel ./out/target/product/$PROJECT/obj/KERNEL_OBJ/kernel_$PROJECT.bin --ramdisk ./out/target/product/$PROJECT/ramdisk.img -o ./out/target/product/$PROJECT/boot.img
