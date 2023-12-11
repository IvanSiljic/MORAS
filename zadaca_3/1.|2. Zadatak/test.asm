@3
D = A;
@R2
M = D;

@2
D = A;
@R1
M = D;

$WHILE(R2)

@R2
M = M - 1;
   $WHILE(R1)
       @R1
       M = M - 1;

       @K 
       M = M + 1; 
    $END

    @2
    D = A;
    @R1
    M = D;

$END

(END)
@END
0; JMP
