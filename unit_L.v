module unit_L(f1,f0,a,b,out);
    // S (selection)
    input  f1,f0;
    //32bits c/u (total 64)
    input [31:0] a,b;
    //Output 32bits
    output wire [31:0] out;
    //Wires   
    wire [31:0] xorOutput,orOutput,andOutput;
    //Gates AND-OR-XOR
    andGate  andValue(.a(a),.b(b),.out(andOutput));

    orGate  orValue(.a(a),.b(b),.out(orOutput));

    xorGate  xorValue(.a(a),.b(b),.out(xorOutput));

    //MUX selector
    mux_unit_L  MUXUL(
        .f1(f1),
        .f0(f0),
        .a(andOutput),
        .b(orOutput),
        .c(xorOutput),
        .out(out));
    
endmodule


module andGate(a,b,out);
    input [31:0] a,b;
    output [31:0] out; 
    //Bit by bit
    and gate0(out[0], a[0], b[0]);
    and gate1(out[1], a[1], b[1]);
    and gate2(out[2], a[2], b[2]);
    and gate3(out[3], a[3], b[3]);
    and gate4(out[4], a[4], b[4]);
    and gate5(out[5], a[5], b[5]);
    and gate6(out[6], a[6], b[6]);
    and gate7(out[7], a[7], b[7]);
    and gate8(out[8], a[8], b[8]);
    and gate9(out[9], a[9], b[9]);
    and gate10(out[10], a[10], b[10]);
    and gate11(out[11], a[11], b[11]);
    and gate12(out[12], a[12], b[12]);
    and gate13(out[13], a[13], b[13]);
    and gate14(out[14], a[14], b[14]);
    and gate15(out[15], a[15], b[15]);
    and gate16(out[16], a[16], b[16]);
    and gate17(out[17], a[17], b[17]);
    and gate18(out[18], a[18], b[18]);
    and gate19(out[19], a[19], b[19]);
    and gate20(out[20], a[20], b[20]);
    and gate21(out[21], a[21], b[21]);
    and gate22(out[22], a[22], b[22]);
    and gate23(out[23], a[23], b[23]);
    and gate24(out[24], a[24], b[24]);
    and gate25(out[25], a[25], b[25]);
    and gate26(out[26], a[26], b[26]);
    and gate27(out[27], a[27], b[27]);
    and gate28(out[28], a[28], b[28]);
    and gate29(out[29], a[29], b[29]);
    and gate30(out[30], a[30], b[30]);
    and gate31(out[31], a[31], b[31]);
endmodule

module orGate(a,b,out);
    input [31:0] a,b;
    output [31:0] out;
    //Bit by bit
    or gate0(out[0], a[0], b[0]);
    or gate1(out[1], a[1], b[1]);
    or gate2(out[2], a[2], b[2]);
    or gate3(out[3], a[3], b[3]);
    or gate4(out[4], a[4], b[4]);
    or gate5(out[5], a[5], b[5]);
    or gate6(out[6], a[6], b[6]);
    or gate7(out[7], a[7], b[7]);
    or gate8(out[8], a[8], b[8]);
    or gate9(out[9], a[9], b[9]);
    or gate10(out[10], a[10], b[10]);
    or gate11(out[11], a[11], b[11]);
    or gate12(out[12], a[12], b[12]);
    or gate13(out[13], a[13], b[13]);
    or gate14(out[14], a[14], b[14]);
    or gate15(out[15], a[15], b[15]);
    or gate16(out[16], a[16], b[16]);
    or gate17(out[17], a[17], b[17]);
    or gate18(out[18], a[18], b[18]);
    or gate19(out[19], a[19], b[19]);
    or gate20(out[20], a[20], b[20]);
    or gate21(out[21], a[21], b[21]);
    or gate22(out[22], a[22], b[22]);
    or gate23(out[23], a[23], b[23]);
    or gate24(out[24], a[24], b[24]);
    or gate25(out[25], a[25], b[25]);
    or gate26(out[26], a[26], b[26]);
    or gate27(out[27], a[27], b[27]);
    or gate28(out[28], a[28], b[28]);
    or gate29(out[29], a[29], b[29]);
    or gate30(out[30], a[30], b[30]);
    or gate31(out[31], a[31], b[31]);
endmodule

module xorGate(a,b,out);
    input [31:0] a,b;
    output [31:0] out;
    //Bit by bit
    xor gate0(out[0], a[0], b[0]);
    xor gate1(out[1], a[1], b[1]);
    xor gate2(out[2], a[2], b[2]);
    xor gate3(out[3], a[3], b[3]);
    xor gate4(out[4], a[4], b[4]);
    xor gate5(out[5], a[5], b[5]);
    xor gate6(out[6], a[6], b[6]);
    xor gate7(out[7], a[7], b[7]);
    xor gate8(out[8], a[8], b[8]);
    xor gate9(out[9], a[9], b[9]);
    xor gate10(out[10], a[10], b[10]);
    xor gate11(out[11], a[11], b[11]);
    xor gate12(out[12], a[12], b[12]);
    xor gate13(out[13], a[13], b[13]);
    xor gate14(out[14], a[14], b[14]);
    xor gate15(out[15], a[15], b[15]);
    xor gate16(out[16], a[16], b[16]);
    xor gate17(out[17], a[17], b[17]);
    xor gate18(out[18], a[18], b[18]);
    xor gate19(out[19], a[19], b[19]);
    xor gate20(out[20], a[20], b[20]);
    xor gate21(out[21], a[21], b[21]);
    xor gate22(out[22], a[22], b[22]);
    xor gate23(out[23], a[23], b[23]);
    xor gate24(out[24], a[24], b[24]);
    xor gate25(out[25], a[25], b[25]);
    xor gate26(out[26], a[26], b[26]);
    xor gate27(out[27], a[27], b[27]);
    xor gate28(out[28], a[28], b[28]);
    xor gate29(out[29], a[29], b[29]);
    xor gate30(out[30], a[30], b[30]);
    xor gate31(out[31], a[31], b[31]);
endmodule
    
// Check the drawing of the mux circuit 
//mux selects one of the 3 results to send 
module mux_unit_L (f1,f0,a,b,c,out);
    input  f1,f0; // S (selection)
    input [31:0] a; // andOutput
    input [31:0] b; // orOutput
    input [31:0] c; // xorOutput
    output wire [31:0] out;

    //wire
    wire [31:0] and1Out, and2Out, and3Out; 
    wire f1not,f0not;

    //not (S)
    not  (f1not,f1);
    not  (f0not,f0);

    //and1 -> andValue and not(f0) and f1
    andGateMux  andValueSelected(
        .value(a),
        .f0(f0),
        .f1(f1not),
        .out(and1Out));

    //and2 -> orValue and f0 and not(f1)
    andGateMux  orValueSelected(
        .value(b),
        .f0(f0not),
        .f1(f1),
        .out(and2Out));

    //and3 -> xorValue and f0 and f1
    andGateMux  xorValueSelected(
        .value(c),
        .f0(f0),
        .f1(f1),
        .out(and3Out));
    
    //At this time, only one is diferent to 0
    //Or -> and1Out or and2Out or and3Out
    orGateMux  orOut(
        .and1(and1Out),
        .and2(and2Out),
        .and3(and3Out),
        .out(out));
endmodule 

module andGateMux(value,f1,f0, out);
    input [31:0] value; 
    input  f1,f0; 
    output wire [31:0] out;

    and gate0(out[0], f1, f0,value[0]);
    and gate1(out[1], f1, f0,value[1]);
    and gate2(out[2], f1, f0,value[2]);
    and gate3(out[3], f1, f0,value[3]);
    and gate4(out[4], f1, f0,value[4]);
    and gate5(out[5], f1, f0,value[5]);
    and gate6(out[6], f1, f0,value[6]);
    and gate7(out[7], f1, f0,value[7]);
    and gate8(out[8], f1, f0,value[8]);
    and gate9(out[9], f1, f0,value[9]);
    and gate10(out[10], f1, f0,value[10]);
    and gate11(out[11], f1, f0,value[11]);
    and gate12(out[12], f1, f0,value[12]);
    and gate13(out[13], f1, f0,value[13]);
    and gate14(out[14], f1, f0,value[14]);
    and gate15(out[15], f1, f0,value[15]);
    and gate16(out[16], f1, f0,value[16]);
    and gate17(out[17], f1, f0,value[17]);
    and gate18(out[18], f1, f0,value[18]);
    and gate19(out[19], f1, f0,value[19]);
    and gate20(out[20], f1, f0,value[20]);
    and gate21(out[21], f1, f0,value[21]);
    and gate22(out[22], f1, f0,value[22]);
    and gate23(out[23], f1, f0,value[23]);
    and gate24(out[24], f1, f0,value[24]);
    and gate25(out[25], f1, f0,value[25]);
    and gate26(out[26], f1, f0,value[26]);
    and gate27(out[27], f1, f0,value[27]);
    and gate28(out[28], f1, f0,value[28]);
    and gate29(out[29], f1, f0,value[29]);
    and gate30(out[30], f1, f0,value[30]);
    and gate31(out[31], f1, f0,value[31]);
endmodule

module orGateMux(and1,and2,and3,out);
    input [31:0] and1,and2,and3;
    output wire [31:0] out;

    or gate0(out[0], and1[0], and2[0], and3[0]);
    or gate1(out[1], and1[1], and2[1], and3[1]);
    or gate2(out[2], and1[2], and2[2], and3[2]);
    or gate3(out[3], and1[3], and2[3], and3[3]);
    or gate4(out[4], and1[4], and2[4], and3[4]);
    or gate5(out[5], and1[5], and2[5], and3[5]);
    or gate6(out[6], and1[6], and2[6], and3[6]);
    or gate7(out[7], and1[7], and2[7], and3[7]);
    or gate8(out[8], and1[8], and2[8], and3[8]);
    or gate9(out[9], and1[9], and2[9], and3[9]);
    or gate10(out[10], and1[10], and2[10], and3[10]);
    or gate11(out[11], and1[11], and2[11], and3[11]);
    or gate12(out[12], and1[12], and2[12], and3[12]);
    or gate13(out[13], and1[13], and2[13], and3[13]);
    or gate14(out[14], and1[14], and2[14], and3[14]);
    or gate15(out[15], and1[15], and2[15], and3[15]);
    or gate16(out[16], and1[16], and2[16], and3[16]);
    or gate17(out[17], and1[17], and2[17], and3[17]);
    or gate18(out[18], and1[18], and2[18], and3[18]);
    or gate19(out[19], and1[19], and2[19], and3[19]);
    or gate20(out[20], and1[20], and2[20], and3[20]);
    or gate21(out[21], and1[21], and2[21], and3[21]);
    or gate22(out[22], and1[22], and2[22], and3[22]);
    or gate23(out[23], and1[23], and2[23], and3[23]);
    or gate24(out[24], and1[24], and2[24], and3[24]);
    or gate25(out[25], and1[25], and2[25], and3[25]);
    or gate26(out[26], and1[26], and2[26], and3[26]);
    or gate27(out[27], and1[27], and2[27], and3[27]);
    or gate28(out[28], and1[28], and2[28], and3[28]);
    or gate29(out[29], and1[29], and2[29], and3[29]);
    or gate30(out[30], and1[30], and2[30], and3[30]);
    or gate31(out[31], and1[31], and2[31], and3[31]);
endmodule

    
//mini testbench
       
`timescale 1ns / 100ps 

module testbench;
    //Inputs
    reg [1:0] S;
    reg [31:0] a, b;

    // Ouput
    wire [31:0] out;

    // ouput unit_L
    unit_L output_unit_L(
        .f1(S[1]),
        .f0(S[0]),
        .a(a),
        .b(b),
        .out(out));

    initial 
    begin
        a = 32'b11011100011101010100110011010010; 
        b = 32'b01000001001001001111000001010101; 

        // AND
        S=01;
        #1; // 1ns delay
        $display("S = %b(AND), a = %b, b = %b, out = %b", S, a, b, out);

        // OR
        S=10;
        #0; // 1ns delay
        $display("S = %b(OR), a = %b, b = %b, out = %b", S, a, b, out);

        // XOR
        S=11;
        #1; // 1ns delay
        $display("S = %b(XOR), a = %b, b = %b, out = %b", S, a, b, out);
        $finish;
    end
endmodule
