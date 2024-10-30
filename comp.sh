#!/bin/bash
nasm -felf64 -o asm.o myASM.asm
ld -o your_program asm.o myLib.o -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2
