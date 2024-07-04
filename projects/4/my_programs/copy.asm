// copy.asm
// copies what ever is in R10 to R0


(LOOP)
@R10
D = M 
@R0
M = D

@LOOP
0;JMP
