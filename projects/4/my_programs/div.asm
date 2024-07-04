// Integer divides R0 by R1 and stores the result in R2 and stores remainder in R3
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive subtraction.
//
// Step1 Determine sign of the result
//  Step1.1 Store isPos(R0) in sign0
//  Step1.2 Store isPos(R1) in sign1
//  Step1.3 Store sign0 XOR sign1 in signRes
//
// Step2 Do absolute multiplcation
//  Step2.1 Store abs(R0) in R0
//  Step2.2 Store abs(R1) in R1
//
// Step3 Give sign to the result from signRes

// --- store the signs in sign0 and sign1  ---
// --- Convert R1 and R0 to their absolute values ---

@R0
D=M
@R0NEG
D;JLT

@R0POS
0;JMP

(R0NEG)
@sign0
M=0
@R0
M=-M
@SKIP0
0;JMP

(R0POS)
@sign0
M=1

(SKIP0)
@R1
D=M
@R1NEG
D;JLT
@R1POS
0;JMP
(R1NEG)
@sign1
M=0
@R1
M=-M
@SKIP1
0;JMP
(R1POS)
@sign1
M=1
(SKIP1)


// --- Take xor of sign0 and sign1 and store it in signRes ---
// store sign0 AND !sign1 in temp0
// store !sign0 AND sign1 in temp1
// store temp0 OR temp1 in singRes

@sign1
D=!M     // D = !sign1
@temp
M=D
@sign0
D=M
@temp
D=M&D
@temp0
M=D

@sign0
D=!M     // D = !sign1
@temp
M=D
@sign1
D=M
@temp
D=M&D
@temp1
M=D

@temp0
D=M
@temp1
D=D|M
@signRes
M=D


// --- initialise variables ---
// quotient = 0
@1
D=A
@quotient
M=-D

// divisor = RAM[1]
@R1
D=M
@divisor
M=D

// dividend = RAM[0]
@R0
D=M
@dividend
M=D

(LOOP)
// if divided in less than zero goto END




@dividend
D=M
@STOP
D;JLT

@divisor
D=M
@dividend
M=M-D
// quotient++
@quotient
M=M+1

@LOOP
0;JMP


(STOP)
@quotient
D=M
@R2
M=D

// --- if signRes == 1 flip the sign of res---
@signRes
D=M
@END
D;JEQ


@R2
M=-M


(END)
@END
0;JMP
