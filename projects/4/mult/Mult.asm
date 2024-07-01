// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.


// --- initialise variables ---

// acc = 0
@acc
M=0

// increment = RAM[0]
@R0
D=M
@increment
M=D

// n = RAM[1]
@R1
D=M
@n
M=D

(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JEQ

@increment
D=M
@acc
M=D+M
@i
M=M+1

@LOOP
0;JMP


(STOP)
@acc
D=M
@R2
M=D
@acc
M=0
@i
M=0
@n
M=0




(END)
@END
0;JMP

