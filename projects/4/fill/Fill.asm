// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
@SCREEN
D=A
@addr
M=D

// n = RAM[0]
@0
D=M
@n
M=D

// i = 0
@i
M=0

@32
D=A
@increment
M=D

(LOOP)
// if ((n-i)<0) goto END
@n
D=M 
@i
D=D-M 
@END
D;JEQ

//RAM[arr+i] = -1
@increment
D=M
@addr
M=D+M
A=M 
M=-1

//
@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP


