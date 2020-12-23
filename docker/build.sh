#!/bin/sh
git clone --depth 1 https://github.com/skbeh/mpv-winbuild-cmake.git                                                   cd mpv-winbuild-cmake
mkdir build64                                              cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..
ninja gcc
ninja mpv

