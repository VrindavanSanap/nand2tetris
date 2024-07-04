// copy.asm
// copies what ever is in Keyboard input to R0


(LOOP)
@24576
D = M 
@R0
M = D

@LOOP
0;JMP
