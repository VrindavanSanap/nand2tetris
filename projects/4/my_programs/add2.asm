// created by vrindava sanap
// add2.asm 
// adds up two numbers
// ram[2] = ram[0] + ram[1]

@R0
D = M 

@R1
D = D + M 

@R2
M = D

(END)
@END
0;JMP
