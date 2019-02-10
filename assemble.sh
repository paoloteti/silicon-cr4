#!/bin/bash

set -euxo pipefail

main() {
    local crate=silicon-cr4

    rm -f bin/*.a

    arm-none-eabi-as -march=armv7-r -mlittle-endian asm.s -o bin/$crate.o
    ar crs bin/armv7r-none-eabi.a bin/$crate.o

    arm-none-eabi-as -march=armv7-r -mbig-endian asm.s -o bin/$crate.o
    ar crs bin/armebv7r-none-eabi.a bin/$crate.o

    rm bin/$crate.o
}

main
