@i
M = 0;

(LOOP_START1)
    @i
    D = M;
    @0
    D = D - M;
    @END
    D; JEQ

    @i
    D = M;
    @j
    M = D;
    @100
    A = D + A;
    D = M;
    @min
    M = D;


    (LOOP_START2)
        @j
        D = M;
        @0
        D = D - M;
        @LOOP_END
        D; JEQ

        @j
        D = M;
        @100
        A = A + D;
        D = M;
        @k
        M = D;
        
        A = M;
        D = M;
        @min
        D = D - M;
        @CHANGE_MIN
        D; JGE
        (RETURN_MIN)

        @j
        M = M + 1;
        @LOOP_START2
        0; JMP
    (LOOP_END)

    @SWAP
    0; JMP
    (RETURN_SWAP)

    @i
    M = M + 1;
    @LOOP_START1
    0; JMP

(CHANGE_MIN)
    @k
    A = M;
    D = M;
    @min
    M = D;
    
    @k
    D = M;
    @min_index
    M = D;

    @RETURN_MIN
    0; JMP

(SWAP)
    @i
    D = M;
    @100
    A = D + A;
    D = M;
    @min_index
    M = D;

    
    @i
    D = M;
    @100
    D = D + A;
    @k
    M = D;

    @min
    D = M;
    @k
    M = D;

    @RETURN_SWAP
    0; JMP

(END)
@END
0; JMP