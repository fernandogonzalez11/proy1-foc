`include "unit_L.v"

module unit_L_testbench;
    //Inputs
    reg [1:0] S;
    reg [31:0] a, b;

    // Output
    wire [31:0] out;

    // output unit_L
    unit_L output_unit_L(a, b, S, out);

    initial begin
        $dumpfile("out/unitL-dump.vcd");
        $dumpvars(0, unit_L_testbench);

        a = 32'b11011100011101010100110011010010; 
        b = 32'b01000001001001001111000001010101; 

        // AND
        S=01;
        #10; // 1ns delay
        $display("S = %b(AND), a = %b, b = %b, out = %b", S, a, b, out);

        // OR
        S=10;
        #10; // 1ns delay
        $display("S = %b(OR), a = %b, b = %b, out = %b", S, a, b, out);

        // XOR
        S=11;
        #10; // 1ns delay
        $display("S = %b(XOR), a = %b, b = %b, out = %b", S, a, b, out);
        $finish;
    end
endmodule