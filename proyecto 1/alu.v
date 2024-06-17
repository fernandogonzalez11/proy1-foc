`timescale 100ps / 100ps
`include "unit_A.v"
`include "unit_L.v"
// aparentemente, no hay que incluir a mux.v porque unit_L.v ya lo hace

// delay máximo: 16900 ps + 500 ps + 100 ps =  17500 ps
module ALU(A, B, f, S, sig_Z, sig_C, sig_O);
    input [31:0] A, B;
    input [3:0] f;
    output [31:0] S;
    output sig_O, sig_Z, sig_C;
    wire [31:0] s_unit_A, s_unit_L, unused;

    unit_A uA(A, B, {f[1], f[0]}, s_unit_A, sig_C, sig_O);
    unit_L uL(A, B, {f[1], f[0]}, s_unit_L);

    mux_4x1_32b selector({f[3], f[2]}, unused, s_unit_A, s_unit_L, unused, S);
    Cero sig_cero(S, sig_Z);
endmodule

// para comprobar que el resultado es cero, se tiene que todos los bits de resultado deben ser 0
// a' * b' * c' * ... => (a + b + c + ... )' (NOR)
module Cero(s, sig_Z);
    input [31:0] s;
    output sig_Z;

    nor #(1) g_nor1(
        sig_Z,
        s[31], s[30], s[29], s[28], s[27], s[26], s[25], s[26], s[27], s[26], s[25], s[24], s[23], s[22], s[21], s[20], s[19],
        s[18], s[17], s[16], s[15], s[14], s[13], s[12], s[11], s[10], s[9], s[8], s[7], s[6], s[5], s[4], s[3], s[2], s[1], s[0]
    );
endmodule