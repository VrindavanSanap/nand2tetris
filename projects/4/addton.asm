// addton.asm
// R1 = 1 + 2 + 3 + R0

// initialise variables
//  n = R0
//  i = 1
 
//  sum = 0
@R0
D=M 
@n 
M=D 
@i
M=1 
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
@STOP
D;JGT

// sum = sum + i
// i = i + 1
@sum
D=M 
@i
D=D+M 
@sum
M=D 
@i
M=M+1
@LOOP
0;JMP




// sum = R1
(STOP)
@sum
D = M 
@R1
M = D 



// END(Infinite loop)
(END)
@END
0;JMP
