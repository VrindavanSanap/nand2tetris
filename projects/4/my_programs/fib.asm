// Created by Vrindava Sanap
// fib.asm 
// RAM[1] = RAM[0]th fibonachi number 

// ----Pseudo code----
// a = 0
// b = 1 
// i = 0
// n = RAM[0]
//
// (LOOP)
// temp = a 
// a = a + b
// b = temp
// goto LOOP
// if ((n - i) > 0) goto LOOP
//
// (END)
// goto END
//
// ----initialise variables----

@R0
D=M 
@n
M=D  

// a = 0
@a
M = 0
// b = 1
@b
M = 1

(LOOP)
// i++
@i
M=M+1

// temp = a 
@a
D=M
@temp
M=D

// a = a + b
@b
D=M 
@a
M=M+D

// b = temp
@temp
D=M
@b
M=D

// if ((n - i) > 0) goto LOOP
@n
D=M
@i
D=D-M
@LOOP
D;JGT

(STOP)
//RAM[1] = b
@b
D=M
@R1
M=D

(END)
@END
0;JMP










