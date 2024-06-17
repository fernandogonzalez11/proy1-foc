`include "unit_A.v"
`timescale 100ps / 100ps

module unit_A_testbench;
    reg [31:0] A, B;
    reg [1:0] f;
    wire [31:0] S;
    wire c_out, O;

    unit_A uA(A, B, f, S, c_out, O);

    initial begin
        $dumpfile("out/unitA-dump.vcd");
        $dumpvars(0, unit_A_testbench);

        // pruebas de operaciones y carry out
        $display("A = 6, B = 6, f = 00 (sum)");
        A = 32'h00000006;
        B = 32'h00000006;
        f = 2'b00;

        #200;
        $display("A = 6, B = 6, f = 01 (sub) -> c_out = 1");
        f = 2'b01;

        #200
        $display("A = 0, B = 6, f = 10 (ainv)");
        A = 32'h00000000;
        f = 2'b10;

        #200
        $display("A = 0, B = 6, f = 11 (inc)");
        f = 2'b11;

        // pruebas de overflow
        #200
        $display("A = +MAX, B = 1, f = 00 (sum) -> overflow");
        A = 32'h7FFFFFFF;
        B = 32'h00000001;
        f = 2'b00;

        #200
        $display("A = +MAX, B = 1, f = 01 (sub)");
        f = 2'b01;

        #200
        $display("A = +MAX, B = -1, f = 01 (sub) -> overflow");
        B = 32'hFFFFFFFF;

        #200
        $display("A = +MAX, B = -MAX, f = 10 (ainv) -> overflow");
        B = 32'h80000000;
        f = 2'b10;

        #200
        $finish;
    end
endmodule