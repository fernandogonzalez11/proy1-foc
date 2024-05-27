`timescale 100ps / 100ps
`include "mux.v"

module unit_L(a, b, f, out);
    // S (selection)
    input [1:0] f;
    //32bits c/u (total 64)
    input [31:0] a, b;
    //Output 32bits
    output [31:0] out;
    //Wires   
    wire [31:0] xorOutput, orOutput, andOutput, unused;
    //Gates AND-OR-XOR
    andGate andValue(a, b, andOutput);

    orGate  orValue(a, b, orOutput);

    xorGate  xorValue(a, b, xorOutput);

    //MUX selector
    mux_4x1_32b MUXUL(f[1], f[0], unused, andOutput, orOutput, xorOutput, out);
    
endmodule


module andGate(a, b, out);
    input [31:0] a, b;
    output [31:0] out; 
    //Bit by bit
    and #(2) gate0(out[0], a[0], b[0]);
    and #(2) gate1(out[1], a[1], b[1]);
    and #(2) gate2(out[2], a[2], b[2]);
    and #(2) gate3(out[3], a[3], b[3]);
    and #(2) gate4(out[4], a[4], b[4]);
    and #(2) gate5(out[5], a[5], b[5]);
    and #(2) gate6(out[6], a[6], b[6]);
    and #(2) gate7(out[7], a[7], b[7]);
    and #(2) gate8(out[8], a[8], b[8]);
    and #(2) gate9(out[9], a[9], b[9]);
    and #(2) gate10(out[10], a[10], b[10]);
    and #(2) gate11(out[11], a[11], b[11]);
    and #(2) gate12(out[12], a[12], b[12]);
    and #(2) gate13(out[13], a[13], b[13]);
    and #(2) gate14(out[14], a[14], b[14]);
    and #(2) gate15(out[15], a[15], b[15]);
    and #(2) gate16(out[16], a[16], b[16]);
    and #(2) gate17(out[17], a[17], b[17]);
    and #(2) gate18(out[18], a[18], b[18]);
    and #(2) gate19(out[19], a[19], b[19]);
    and #(2) gate20(out[20], a[20], b[20]);
    and #(2) gate21(out[21], a[21], b[21]);
    and #(2) gate22(out[22], a[22], b[22]);
    and #(2) gate23(out[23], a[23], b[23]);
    and #(2) gate24(out[24], a[24], b[24]);
    and #(2) gate25(out[25], a[25], b[25]);
    and #(2) gate26(out[26], a[26], b[26]);
    and #(2) gate27(out[27], a[27], b[27]);
    and #(2) gate28(out[28], a[28], b[28]);
    and #(2) gate29(out[29], a[29], b[29]);
    and #(2) gate30(out[30], a[30], b[30]);
    and #(2) gate31(out[31], a[31], b[31]);
endmodule

module orGate(a, b, out);
    input [31:0] a, b;
    output [31:0] out;
    //Bit by bit
    or #(1) gate0(out[0], a[0], b[0]);
    or #(1) gate1(out[1], a[1], b[1]);
    or #(1) gate2(out[2], a[2], b[2]);
    or #(1) gate3(out[3], a[3], b[3]);
    or #(1) gate4(out[4], a[4], b[4]);
    or #(1) gate5(out[5], a[5], b[5]);
    or #(1) gate6(out[6], a[6], b[6]);
    or #(1) gate7(out[7], a[7], b[7]);
    or #(1) gate8(out[8], a[8], b[8]);
    or #(1) gate9(out[9], a[9], b[9]);
    or #(1) gate10(out[10], a[10], b[10]);
    or #(1) gate11(out[11], a[11], b[11]);
    or #(1) gate12(out[12], a[12], b[12]);
    or #(1) gate13(out[13], a[13], b[13]);
    or #(1) gate14(out[14], a[14], b[14]);
    or #(1) gate15(out[15], a[15], b[15]);
    or #(1) gate16(out[16], a[16], b[16]);
    or #(1) gate17(out[17], a[17], b[17]);
    or #(1) gate18(out[18], a[18], b[18]);
    or #(1) gate19(out[19], a[19], b[19]);
    or #(1) gate20(out[20], a[20], b[20]);
    or #(1) gate21(out[21], a[21], b[21]);
    or #(1) gate22(out[22], a[22], b[22]);
    or #(1) gate23(out[23], a[23], b[23]);
    or #(1) gate24(out[24], a[24], b[24]);
    or #(1) gate25(out[25], a[25], b[25]);
    or #(1) gate26(out[26], a[26], b[26]);
    or #(1) gate27(out[27], a[27], b[27]);
    or #(1) gate28(out[28], a[28], b[28]);
    or #(1) gate29(out[29], a[29], b[29]);
    or #(1) gate30(out[30], a[30], b[30]);
    or #(1) gate31(out[31], a[31], b[31]);
endmodule

module xorGate(a, b, out);
    input [31:0] a, b;
    output [31:0] out;
    //Bit by bit
    xor #(3) gate0(out[0], a[0], b[0]);
    xor #(3) gate1(out[1], a[1], b[1]);
    xor #(3) gate2(out[2], a[2], b[2]);
    xor #(3) gate3(out[3], a[3], b[3]);
    xor #(3) gate4(out[4], a[4], b[4]);
    xor #(3) gate5(out[5], a[5], b[5]);
    xor #(3) gate6(out[6], a[6], b[6]);
    xor #(3) gate7(out[7], a[7], b[7]);
    xor #(3) gate8(out[8], a[8], b[8]);
    xor #(3) gate9(out[9], a[9], b[9]);
    xor #(3) gate10(out[10], a[10], b[10]);
    xor #(3) gate11(out[11], a[11], b[11]);
    xor #(3) gate12(out[12], a[12], b[12]);
    xor #(3) gate13(out[13], a[13], b[13]);
    xor #(3) gate14(out[14], a[14], b[14]);
    xor #(3) gate15(out[15], a[15], b[15]);
    xor #(3) gate16(out[16], a[16], b[16]);
    xor #(3) gate17(out[17], a[17], b[17]);
    xor #(3) gate18(out[18], a[18], b[18]);
    xor #(3) gate19(out[19], a[19], b[19]);
    xor #(3) gate20(out[20], a[20], b[20]);
    xor #(3) gate21(out[21], a[21], b[21]);
    xor #(3) gate22(out[22], a[22], b[22]);
    xor #(3) gate23(out[23], a[23], b[23]);
    xor #(3) gate24(out[24], a[24], b[24]);
    xor #(3) gate25(out[25], a[25], b[25]);
    xor #(3) gate26(out[26], a[26], b[26]);
    xor #(3) gate27(out[27], a[27], b[27]);
    xor #(3) gate28(out[28], a[28], b[28]);
    xor #(3) gate29(out[29], a[29], b[29]);
    xor #(3) gate30(out[30], a[30], b[30]);
    xor #(3) gate31(out[31], a[31], b[31]);
endmodule
