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
### 8.0 section
###

# start a clean slate
rm -rf $build

## 8.0 aarch64

aprefix="$install/aarch64-8.0.0"
atargetlibdir="$build/target/qnx/aarch64le/usr/lib/wolfssl"
atargetincdir="$build/target/qnx/aarch64le/usr/include/wolfssl"
astrip="aarch64-unknown-nto-qnx8.0.0-strip"

mkdir -p $atargetlibdir
cp -p $aprefix/lib/libcares.a $aprefix/lib/libcares.so* $atargetlibdir
cp -p $aprefix/lib/libcares.so.21 $atargetlibdir/libcares.so.21.sym
$astrip $atargetlibdir/libcares.so.21 $atargetlibdir/libcares.so

mkdir -p $atargetincdir
cp -p $aprefix/include/*.h $atargetincdir

## 8.0 x86_64

xprefix="$install/x86_64-8.0.0"
xtargetlibdir="$build/target/qnx/x86_64/usr/lib/wolfssl"
xtargetincdir="$build/target/qnx/x86_64/usr/include/wolfssl"
xstrip="x86_64-pc-nto-qnx8.0.0-strip"

mkdir -p $xtargetlibdir
cp -p $xprefix/lib/libcares.a $xprefix/lib/libcares.so* $xtargetlibdir
cp -p $xprefix/lib/libcares.so.21 $xtargetlibdir/libcares.so.21.sym
$xstrip $xtargetlibdir/libcares.so.21 $xtargetlibdir/libcares.so

mkdir -p $xtargetincdir
cp -p $xprefix/include/*.h $xtargetincdir

## 8.0 documentation

cp README-QNX.md "$build/target/qnx/"

## build the 8.0 package

cd $build
tar czf c-ares-$buildver-qnxsdp8.0.tar.gz target/qnx
mv *tar.gz $tarball
