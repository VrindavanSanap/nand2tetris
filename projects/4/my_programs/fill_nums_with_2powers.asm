// Created by Vrindavan Sanap

//
// for (i = arr; i< n;i++){
//    RAM[i] = 2**i;
// }

// arr = 100
@100
D=A
@arr
M=D

// n = 10
@1000
D=A
@n
M=D

// i = 0
@i
M=0

@power
M=1

(LOOP)
// if (i ==n ) goto END
@i
D=M 
@n
D=D-M 
@END
D;JEQ

//addr = arr + i
//RAM[arr+i] = i

@power
D=M
M=M+D

@arr
D=M
@addr
M=D
@i
D=M
@addr
M=M+D

@power
D=M
@addr
A=M
M=D
//
@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP



