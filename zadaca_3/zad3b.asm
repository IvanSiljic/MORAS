@i
M = 0;

(LOOP_START_1)
    @0
    D = M;
    @i
    D = D - M;
    @END
    D; JEQ

    @i
    D = M;
    @j
    M = D;

    // Postavljamo min element na i-ti element
    @i
    D = M;
    @100
    A = D + A
    D = M;
    @min
    M = D;

    (LOOP_START_2)
        @0
        D = M;
        @j
        D = D - M;
        @LOOP_END_2
        D; JEQ

        // Logika trazenja min elementa
        @j
        D = M;
        @100
        A = D + A;
        D = M;
        @min
        D = D - M;
        @CHANGE_MIN
        D; JLE
        (RETURN_MIN)

        @j
        M = M + 1;

        @LOOP_START_2
        0; JMP
    (LOOP_END_2)

    // Logika zamjene i-tog elementa sa min
    @i
    D = M;
    @100
    A = A + D;
    D = M;
    @minIndex
    M = D;

    @i
    D = M;
    @100
    D = A + D;
    @k
    M = D;
    @min
    D = M;
    @k
    A = M;
    M = D;
    

    @i
    M = M + 1;

    @LOOP_START_1
    0; JMP

(CHANGE_MIN)
    @j
    D = M;
    @100
    A = A + D;
    D = M;
    @min
    M = D;

    @j
    D = M;
    @100
    D = A + D;
    @minIndex
    M = D;

    @RETURN_MIN
    0; JMP


(END)
@END
0; JMP
