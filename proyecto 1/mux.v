`timescale 100ps / 100ps

// delay máximo: 500 ps
module mux_4x1(s, a, b, c, d, Y);
    input [1:0] s;
    input a, b, c, d;
    output Y;
    wire notS0, notS1, out1, out2, out3, out4;

    not #(2) not1(notS0, s[0]);
    not #(2) not2(notS1, s[1]);

    and #(2) and1(out1, a, notS1, notS0);
    and #(2) and2(out2, b, notS1, s[0]);
    and #(2) and3(out3, c, s[1], notS0);
    and #(2) and4(out4, d, s[1], s[0]);

    or #(1) or1(Y, out1, out2, out3, out4);

endmodule

// delay máximo: 500 ps 
module mux_4x1_32b (s, A, B, C, D, Y);
    input [1:0] s;
    input [31:0] A, B, C, D;
    output [31:0] Y;

    mux_4x1 mux31(s, A[31], B[31], C[31], D[31], Y[31]);
    mux_4x1 mux30(s, A[30], B[30], C[30], D[30], Y[30]);
    mux_4x1 mux29(s, A[29], B[29], C[29], D[29], Y[29]);
    mux_4x1 mux28(s, A[28], B[28], C[28], D[28], Y[28]);
    mux_4x1 mux27(s, A[27], B[27], C[27], D[27], Y[27]);
    mux_4x1 mux26(s, A[26], B[26], C[26], D[26], Y[26]);
    mux_4x1 mux25(s, A[25], B[25], C[25], D[25], Y[25]);
    mux_4x1 mux24(s, A[24], B[24], C[24], D[24], Y[24]);
    mux_4x1 mux23(s, A[23], B[23], C[23], D[23], Y[23]);
    mux_4x1 mux22(s, A[22], B[22], C[22], D[22], Y[22]);
    mux_4x1 mux21(s, A[21], B[21], C[21], D[21], Y[21]);
    mux_4x1 mux20(s, A[20], B[20], C[20], D[20], Y[20]);
    mux_4x1 mux19(s, A[19], B[19], C[19], D[19], Y[19]);
    mux_4x1 mux18(s, A[18], B[18], C[18], D[18], Y[18]);
    mux_4x1 mux17(s, A[17], B[17], C[17], D[17], Y[17]);
    mux_4x1 mux16(s, A[16], B[16], C[16], D[16], Y[16]);
    mux_4x1 mux15(s, A[15], B[15], C[15], D[15], Y[15]);
    mux_4x1 mux14(s, A[14], B[14], C[14], D[14], Y[14]);
    mux_4x1 mux13(s, A[13], B[13], C[13], D[13], Y[13]);
    mux_4x1 mux12(s, A[12], B[12], C[12], D[12], Y[12]);
    mux_4x1 mux11(s, A[11], B[11], C[11], D[11], Y[11]);
    mux_4x1 mux10(s, A[10], B[10], C[10], D[10], Y[10]);
    mux_4x1 mux09(s, A[9], B[9], C[9], D[9], Y[9]);
    mux_4x1 mux08(s, A[8], B[8], C[8], D[8], Y[8]);
    mux_4x1 mux07(s, A[7], B[7], C[7], D[7], Y[7]);
    mux_4x1 mux06(s, A[6], B[6], C[6], D[6], Y[6]);
    mux_4x1 mux05(s, A[5], B[5], C[5], D[5], Y[5]);
    mux_4x1 mux04(s, A[4], B[4], C[4], D[4], Y[4]);
    mux_4x1 mux03(s, A[3], B[3], C[3], D[3], Y[3]);
    mux_4x1 mux02(s, A[2], B[2], C[2], D[2], Y[2]);
    mux_4x1 mux01(s, A[1], B[1], C[1], D[1], Y[1]);
    mux_4x1 mux00(s, A[0], B[0], C[0], D[0], Y[0]);
endmodule