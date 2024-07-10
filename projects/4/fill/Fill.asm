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
// i = 0 
@0
D=A
@color
M=D

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

(LOOP)
// if (limit - addr = 0) goto RESETADDR
@addr
D=M
@limit 
D=M-D
@RESETADDR
D;JEQ

// if key pressed color = -1 else color = 0  
@KBD
D=M 
@WHITE
D;JEQ
@BLACK
0;JMP

(WHITE)
@color
M=0
@PAINT
0;JMP  

(BLACK)
@color
M=-1

@PAINT
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

@LOOP
0;JMP


(END)
@END
0;JMP
