// Created by Vrindava Sanap
// add2.asm 
// Adds up two numbers
// RAM[2] = RAM[0] + RAM[1]


// addton.asm
// R1 = 1 + 2 + 3 + R0

// initialise variables
// n = R0
// i = 1
// sum = 0

//n = RAM[0]
@R0
D=M 
@n 
M=D 

// i = 1
@i
M=1 

// sum = 0
@sum 
M=0 

// if ((i - n) > 0){
//   goto STOP
// }
// if (i > n){
//   goto STOP
// }

(LOOP)
@i
D=M 
@n 
D=D-M 
// if (i > n) goto stop
@STOP
D;JGT

// sum = sum + i
@sum
D=M 
@i
D=D+M 
@sum
M=D 

// i = i + 1
@i
M=M+1
@LOOP
0;JMP


// R1 = sum
(STOP)
@sum
D = M 
@R1
M = D 


// END(Infinite loop)
(END)
@END
0;JMP
