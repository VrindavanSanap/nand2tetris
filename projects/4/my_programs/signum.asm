@R0
D = M  // D = R0
@8
D;JGT // if R0 > 0 goto 8
@R1
M=0
@10
0;JMP
@R1
M=1
@10
0;JMP


// signum.asm 
// if R0 > 0 : R1 = 1 
// else : R1 = 0
