// Flip.asm
// Flip RAM[0] and RAM[1]

@R1
D = M 
@R2
M = D
@R0
D = M 
@R1
M = D
@R2
D = M 
@R0
M = D
@12
0;JMP

