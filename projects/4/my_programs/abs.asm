// Created by Vrindava Sanap
// abs.asm 
// store the absolute value of RAM[0] in RAM[1]
// RAM[1] = abs(RAM[0])
//

//
// if (RAM[0] < 0){
//  RAM[1] = - RAM[0]
// }else{
//  RAM[1] = RAM[0]
// }
//
//

@R0
D=M 

@NEGATE
D;JLT 

@R1
M=D
@END
0;JMP
(NEGATE)
@R1
M=-D

(END)
@END
0;JMP
