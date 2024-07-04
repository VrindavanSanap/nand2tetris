// Created by Vrindava Sanap
// alt_rows.asm
// Alternatively colors rows black and white 
// Using nested loops
// Screen (width=512px height=256px)
// Each regiter has 16px
// Memory mapped in row major order
// It takes (512/16) = 32registers to map a row
// There are 256 rows so
// Total Registers = 32*256 = 8192
//
// Screen memory map starts at 16384
// Ends at 16384 + 8192 = 24576
//

@32
D=A
@rowSize
M=D                 //rowSize = 32
  
@256
D=A
@totalRows
M=D                 //totalRows = 256



@8192
D=A
@registerCount
M=D                 //registerCount = 8192

@SCREEN
D=A
@addr
M=D                //addr = SCREEN

@limit
M=D                 //limit = SCREEN (initially)

@registerCount
D=M
@limit
M=M+D               //limit = SCREEN + registerCount



(RESET)
@SCREEN
D=A
@addr
M=D                //addr = SCREEN

@32
D=A
@increment
M=D




(OUTERLOOP)
@i
M=0
// addr = addr + increment // ie skip row
@increment
D=M
@addr
M=D+M

@limit
D=M 
@addr
D=D-M
@RESET
D;JLE // if (limit-addr) <= 0 goto end

  (LOOP)
  // if i == rowSize goto Outerloop
  @rowSize
  D=M
  @i
  D=M-D
  @OUTERLOOP
  D;JEQ

  // i++
  @i
  M=M+1
 
  //M[addr] = -1
  @addr
  A=M
  M=-1




  // addr++
  @addr
  M=M+1
 
  @LOOP
  0;JMP

@OUTERLOOP
0;JMP



(END)
@END
0;JMP
