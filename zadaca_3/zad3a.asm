@1
D = M;
@j
M = D;

@2
M = 1;
@END
D; JEQ

(EXP_LOOP)
    @j
    D = M;
    @END
    D; JEQ

    @MULTIPLY
    0; JMP
    (MULTIPLY_END)

    @j
    M = M - 1;

    @EXP_LOOP
    0; JMP


(MULTIPLY)
@2
D = M;
@k
M = D;
@2
M = 0;

@0
D = M;
@i
M = D;
(MULTIPLY_LOOP_START)
    @i
    D = M;
    @MULTIPLY_END
    D; JEQ

    @k
    D = M;
    @2
    M = M + D;

    @i
    M = M - 1;
    
    @MULTIPLY_LOOP_START
    0; JMP

(END)
@END
0; JMP
