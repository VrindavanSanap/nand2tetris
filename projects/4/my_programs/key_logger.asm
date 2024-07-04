(LOOP)
@24576
D=M 
@addr
D=D-M 
@INC
D;JEQ
(RET)
@24576
D=M
@addr
A=M
M=D

@LOOP
0;JMP

(INC)
@addr
D=M
@RET
D;JEQ
@addr
M=M+1
@LOOP
0;JMP
