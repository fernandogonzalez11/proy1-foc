module unit_L(
    // S (instructions)
    input [1:0] f1f0,
    //32bits c/u (total 64)
    input [31:0] a,b,
    //Output 32bits
    output wire [31:0] out ); 
    //Wires   
    wire [31:0] xorOutput,orOutput,andOutput;
    //modules
    andGate andValue(
        .a(a),
        .b(b),
        .out(andOutput)
    );
    orGate orValue(
        .a(a),
        .b(b),
        .out(orOutput)
    );
    xorGate xorValue(
        .a(a),
        .b(b),
        .out(xorOutput)
    );

    mux_unit_L MUX1(
        .f1f0(f1f0),
        .xorValue(xorOutput),
        .orValue(orOutput),
        .andValue(andOutput),
        .out(out)
    );
    
endmodule


module andGate(
    input [31:0] a,b,
    output [31:0] out);

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

module orGate(
    input [31:0] a,b,
    output [31:0] out);

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

module xorGate(
    input [31:0] a,b,
    output [31:0] out);

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
    
    
module mux_unit_L (
    input [1:0] f1f0, // S (instructions)
    input [31:0] xorValue,
    input [31:0] orValue,
    input [31:0] andValue,
    output reg [31:0] out);

    always @* 
    begin
        case(f1f0)
            2'b11: out = xorValue;
            2'b01: out = andValue;
            2'b10: out = orValue;
            
        endcase
    end
    

endmodule 

    
    
    
    
        
`timescale 1ns / 100ps 

module testbench;

    //Inputs
    reg [1:0] S;
    reg [31:0] a, b;
    // Ouput
    wire [31:0] out;
    // ouput L
    unit_L outputL(
        .f1f0(S),
        .a(a),
        .b(b),
        .out(out));

    initial 
    begin
        a = 32'b11011100011101010100110011010010; 
        b = 32'b01000001001001001111000001010101; 

        // AND
        S = 2'b01;
        #5; // 1ns delay
        $display("S = %b, a = %b, b = %b, out = %b", S, a, b, out);

        // OR
        S = 2'b10;
        #5; // 1ns delay
        $display("S = %b, a = %b, b = %b, out = %b", S, a, b, out);

        // XOR
        S = 2'b11;
        #1; // 1ns delay
        $display("S = %b, a = %b, b = %b, out = %b", S, a, b, out);

        $finish;
    end

endmodule
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

