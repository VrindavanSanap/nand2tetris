// Created by Vrindava Sanap
// Tells the sign of RAM[0]
// RAM[1] = 0 
// if (RAM[0] >= 0){
//  
//  RAM[1] = 1 
//  
// }else{
//  
//  RAM[1] = 0  
//  
// }

@R0
D=M

@NEGATIVE
D;JLT

@R1
M=1

@END
0;JMP

(NEGATIVE)
@R1
M=0


(END)
@END
0;JMP
  
