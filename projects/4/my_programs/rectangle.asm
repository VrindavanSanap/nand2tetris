// Program rectangle.asm
// Draw a rectangle of width=16px, height=RAM[0]px

// for(i=0; i<n; i++){
//  Draw 16 black pixels at the start of row i 
// }
//
// ------PSEUDOCODE--------
//
// addr = SCREEN
// n = RAM[0]
// i = 0
//
// LOOP:
//  if i > n goto END
//  RAM[addr] = -1 // 1111111111111111
//  // get next row
//  i = i + 1
//  goto LOOP
//
// END:
//  goto END








//  Base address ie start of screen memory map
@SCREEN
D=A
@addr
M=D

// n = RAM[0]
@0
D=M
@n
M=D

// i = 0
@i
M=0

@32
D=A
@increment
M=D

(LOOP)
// if ((n-i)<0) goto END
@n
D=M 
@i
D=D-M 
@END
D;JEQ

//RAM[arr+i] = -1
@increment
D=M
@addr
M=D+M
A=M 
M=-1

//
@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP



