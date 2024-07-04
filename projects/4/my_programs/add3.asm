// Created by Vrindava Sanap
// add2.asm 
// Adds up two numbers
// RAM[2] = RAM[0] + RAM[1]

@R0
D = M 

@R1
D = D + M 

@R2
D = D + M 

@R3
M = D

(END)
@END
0;JMP
