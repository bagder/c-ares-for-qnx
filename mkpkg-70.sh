#!/bin/sh

buildver=$1

if [ -z "$buildver" ]; then
  echo "Provide build version string: x.y.z-n"
  exit
fi

tarball="`pwd`/_tarball"
build="_build"
install="$PWD/_install"

mkdir -p $tarball

###
### 7.0 section
###

## 7.0 aarch64

aprefix="$install/aarch64-7.0.0"
atargetlibdir="$build/target/qnx7/aarch64le/usr/lib/wolfssl"
atargetincdir="$build/target/qnx7/aarch64le/usr/include/wolfssl"
astrip="aarch64-unknown-nto-qnx7.0.0-strip"

mkdir -p $atargetlibdir
cp -p $aprefix/lib/libcares.a $aprefix/lib/libcares.so* $atargetlibdir
cp -p $aprefix/lib/libcares.so.21 $atargetlibdir/libcares.so.21.sym
$astrip $atargetlibdir/libcares.so.21 $atargetlibdir/libcares.so

mkdir -p $atargetincdir
cp -p $aprefix/include/*.h $atargetincdir

## 7.0 armle-v7

aprefix="$install/armle-v7-7.0.0"
atargetlibdir="$build/target/qnx7/armle-v7le/usr/lib/wolfssl"
atargetincdir="$build/target/qnx7/armle-v7le/usr/include/wolfssl"
astrip="arm-unknown-nto-qnx7.0.0eabi-strip"

mkdir -p $atargetlibdir
cp -p $aprefix/lib/libcares.a $aprefix/lib/libcares.so* $atargetlibdir
cp -p $aprefix/lib/libcares.so.21 $atargetlibdir/libcares.so.21.sym
$astrip $atargetlibdir/libcares.so.21 $atargetlibdir/libcares.so

mkdir -p $atargetincdir
cp -p $aprefix/include/*.h $atargetincdir

## 7.0 x86_64

aprefix="$install/x86_64-7.0.0"
atargetlibdir="$build/target/qnx7/x86_64/usr/lib/wolfssl"
atargetincdir="$build/target/qnx7/x86_64/usr/include/wolfssl"
astrip="x86_64-pc-nto-qnx7.0.0-strip"

mkdir -p $atargetlibdir
cp -p $aprefix/lib/libcares.a $aprefix/lib/libcares.so* $atargetlibdir
cp -p $aprefix/lib/libcares.so.21 $atargetlibdir/libcares.so.21.sym
$astrip $atargetlibdir/libcares.so.21 $atargetlibdir/libcares.so

mkdir -p $atargetincdir
cp -p $aprefix/include/*.h $atargetincdir

## 7.0 documentation

cp README-QNX.md "$build/target/qnx7/"

## build the 7.0 package

cd $build
tar czf c-ares-$buildver-qnxsdp7.0.tar.gz target/qnx7
mv *tar.gz $tarball
