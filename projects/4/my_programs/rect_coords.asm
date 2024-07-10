// Created by Vrindava Sanap
// checkboard.asm
// Creates a checkerboard pattern on the screen
//
//
//
// Screen (width=512px height=256px)
// Each regiter has 16px
// Memory mapped in row major order
// It takes (512/16)=32registers to map a row
// There are 256 rows so
// Total Registers = 32*256 = 8192
//
// Screen memory map starts at 16384
// Ends at 16384 + 8192 = 24576
//
// color = -1
