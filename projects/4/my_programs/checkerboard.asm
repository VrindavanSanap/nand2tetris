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
@1
D=A
@color
M=-D

@8192
D=A
@registerCount
M=D                 //registerCount = 8192


@SCREEN
D=A
@addr
M=D                 //addr = SCREEN

@limit
M=D                 //limit = SCREEN (initially)


@registerCount
D=M
@limit
M=M+D               //limit = SCREEN + registerCount

(RESETADDR)
@SCREEN
D=A
@addr
M=D
@OUTERLOOP
0;JMP


(FLIPCOLOR)
@1
D=-A
@color
D=D-M
M=D
@PAINT
0;JMP

(FLIPCOLOR2)
@1
D=-A
@color
D=D-M
M=D
@counter
M=0
@OUTERLOOP
0;JMP


@counter
M=0

(OUTERLOOP)
// if (counter = 32){
//  counter = 0
// }

@512
D=A
@counter
D=D-M
@FLIPCOLOR2
D;JLE

// if (limit - addr = 0) goto RESETADDR
@addr
D=M
@limit
D=M-D
@RESETADDR
D;JLE

@FLIPCOLOR
0;JMP

//RAM[addr] = color
(PAINT)
@color
D=M
@addr
A=M
M=D


//addr = addr + 1
@addr
M=M+1


//couter = counter + 1
@counter
M=M+1


@OUTERLOOP
0;JMP

(END)
@END
0;JMP
