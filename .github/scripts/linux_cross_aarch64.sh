#!/usr/bin/env bash

# https://gist.github.com/benesch/c49d8a7992a2575ab79acbb82db88c42

sudo apt-get install -qy binutils-aarch64-linux-gnu gcc-aarch64-linux-gnu g++-aarch64-linux-gnu

export CMAKE_SYSTEM_NAME=Linux
export TARGET=aarch64-linux-gnu
export TARGET_AR=aarch64-linux-gnu-ar
export TARGET_CC=aarch64-linux-gnu-gcc
export TARGET_CXX=aarch64-linux-gnu-g++
export TARGET_RANLIB=aarch64-linux-gnu-ranlib
export TARGET_CPP=aarch64-linux-gnu-cpp
export TARGET_LD=aarch64-linux-gnu-ld
export CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_LINKER=$TARGET_CC
cargo +nightly build --target aarch64-unknown-linux-gnu --release -Zbuild-std

