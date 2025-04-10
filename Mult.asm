(BEGIN)
    // Initialize product to 0.
    @R2
    M=0

(LOOP)
    // If R1 <= 0, terminate.
    @R1
    D=M //R1=D
    @END
    D;JLE

    // Add R0 to R2.
    @R0
    D=M //R0=D
    @R2
    M=D+M   //R2=R0+R2  

    // Decrement R1.
    @R1
    M=M-1

    // Loop again.
    @LOOP
    0;JMP 

(END)
    // Terminate.
    @END
    0;JMP
