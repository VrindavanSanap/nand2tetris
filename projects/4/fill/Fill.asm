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
@8192
D=A
@n
M=D

// i = 0
@i
M=0

@1
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

//RAM[arr] = -1
//arr=arr+1
@addr
A=M
M=-1
@increment
D=M
@addr
M=D+M

//
@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP

