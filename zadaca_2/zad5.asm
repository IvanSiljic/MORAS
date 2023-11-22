@i     // Prati stupac
M = 0;
@k     // Prati red
M = 0;
@n     // Prati ako je ekran pun
M = 0;

// Infinite loop
(PROGRAM_START)
    @KBD
    D = M;
    @PROGRAM_START
    D; JEQ

    // NEW LINE
    @i
    D = M;
    @32
    D = D - A
    @NEW_LINE
    D; JEQ
    
    // Upisi KBD input u key
    @KBD
    D = M;
    @key
    M = D;


    // Ako je KBD A ispisi A
    (INPUT_STOP_LOOP)
        @KBD
        D = M;
        @key
        D = D - M;
        @INPUT_STOP_LOOP
        D; JEQ
        
        @key
        D = M;
        @48
        D = D - A;
        @DELETE
        D; JEQ

        @n
        D = M
        @15
        D = D - A;
        @PROGRAM_START
        D; JEQ

        @key
        D = M;
        @65
        D = D - A;
        @DRAW_A
        D; JEQ

        @key
        D = M;
        @69
        D = D - A;
        @DRAW_E
        D; JEQ

        @key
        D = M;
        @73
        D = D - A;
        @DRAW_I
        D; JEQ

        @key
        D = M;
        @79
        D = D - A;
        @DRAW_O
        D; JEQ

        @key
        D = M;
        @85
        D = D - A;
        @DRAW_U
        D; JEQ

        @PROGRAM_START
        0; JMP

    @PROGRAM_START
    0; JMP


// NEW LINE
(NEW_LINE)
    @544
    D = A;
    @k
    M = M + D;
    @i
    M = 0;

    @n
    M = M + 1;

    @PROGRAM_START
    0; JMP


// Ispisi a
(DRAW_A)
@SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @32
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @64
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @96
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @128
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @160
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @192
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @224
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @256
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @288
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @320
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @352
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @384
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @416
    D = D + A;
    @j
    M = D;
    @32382
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @448
    D = D + A;
    @j
    M = D;
    @32382
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @480
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    // Pomjeri Cursor za jedan desno
    @i
    M = M + 1;

    @PROGRAM_START
    0; JMP

(DRAW_E)
@SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @32
    D = D + A;
    @j
    M = D;
    @32766
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @64
    D = D + A;
    @j
    M = D;
    @32766
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @96
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @128
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @160
    D = D + A;
    @j
    M = D;
    @32742
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @192
    D = D + A;
    @j
    M = D;
    @32742
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @224
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @256
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @288
    D = D + A;
    @j
    M = D;
    @32742
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @320
    D = D + A;
    @j
    M = D;
    @32742
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @352
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @384
    D = D + A;
    @j
    M = D;
    @24582
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @416
    D = D + A;
    @j
    M = D;
    @32766
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @448
    D = D + A;
    @j
    M = D;
    @32766
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @480
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    // Pomjeri Cursor za jedan desno
    @i
    M = M + 1;

    @PROGRAM_START
    0; JMP

(DRAW_I)
@SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @32
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @64
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @96
    D = D + A;
    @j
    M = D;
    @6168
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @128
    D = D + A;
    @j
    M = D;
    @6168
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @160
    D = D + A;
    @j
    M = D;
    @7800
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @192
    D = D + A;
    @j
    M = D;
    @7800
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @224
    D = D + A;
    @j
    M = D;
    @1632
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @256
    D = D + A;
    @j
    M = D;
    @1632
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @288
    D = D + A;
    @j
    M = D;
    @7800
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @320
    D = D + A;
    @j
    M = D;
    @7800
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @352
    D = D + A;
    @j
    M = D;
    @6168
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @384
    D = D + A;
    @j
    M = D;
    @6168
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @416
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @448
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @480
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    // Pomjeri Cursor za jedan desno
    @i
    M = M + 1;

    @PROGRAM_START
    0; JMP

(DRAW_O)
@SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @32
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @64
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @96
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @128
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @160
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @192
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @224
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @256
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @288
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @320
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @352
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @384
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @416
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @448
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @480
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    // Pomjeri Cursor za jedan desno
    @i
    M = M + 1;

    @PROGRAM_START
    0; JMP

(DRAW_U)
@SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @32
    D = D + A;
    @j
    M = D;
    @32382
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @64
    D = D + A;
    @j
    M = D;
    @32382
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @96
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @128
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @160
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @192
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @224
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @256
    D = D + A;
    @j
    M = D;
    @26214
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @288
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @320
    D = D + A;
    @j
    M = D;
    @26598
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @352
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @384
    D = D + A;
    @j
    M = D;
    @30750
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @416
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @448
    D = D + A;
    @j
    M = D;
    @8184
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @480
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    // Pomjeri Cursor za jedan desno
    @i
    M = M + 1;

    @PROGRAM_START
    0; JMP

(PRAZAN_RED)
    @n
    D = M;
    @PROGRAM_START // Ako nema nista napisano vrati se u main
    D; JEQ
    
    @n
    M = M - 1;

    @32
    D = A;
    @i
    M = D;

    @544
    D = A;
    @k
    M = M - D;

    @DELETE
    0; JMP

(DELETE)
    @SCREEN
    @i
    D = M;
    @PRAZAN_RED
    D; JEQ

    @i
    M = M - 1;

    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @32
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @64
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @96
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @128
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @160
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @192
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @224
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @256
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @288
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @320
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @352
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @384
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @416
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @448
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @SCREEN
    D = A;
    @i
    D = D + M;
    @k
    D = D + M;
    @480
    D = D + A;
    @j
    M = D;
    @0
    D = A;
    @j
    A = M;
    M = D;

    @PROGRAM_START
    0; JMP

(END)
@END
0; JMP