// RAM[0] + RAM[1] + RAM[2] + RAM[3] + RAM[4] i spremanje u D registar
@0
D = M;
@1
D = D + M;
@2
D = D + M;
@3
D = D + M;
@4
D = D + M;

// Spremanje u RAM[5]
@5
M = D;

(END)
@END
0; JMP