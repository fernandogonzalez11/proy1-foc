`include "unit_A.v"
`timescale 100ps / 100ps

module unit_A_testbench;
    reg [31:0] A, B;
    reg [3:0] f;
    wire [31:0] S;
    wire c_out, O;

    unit_A uA(A, B, f, S, c_out, O);

    initial begin
        $dumpfile("out/unit-A-dump.vcd");
        $dumpvars(0, unit_A_testbench);

        // pruebas de operaciones y carry out
        $display("A = 6, B = 6, f = 0100 (sum)");
        A = 32'h00000006;
        B = 32'h00000006;
        f = 4'b0100;

        #200;
        $display("A = 6, B = 6, f = 0101 (sub) -> c_out = 1");
        f = 4'b0101;

        #200
        $display("A = 0, B = 6, f = 0110 (ainv)");
        A = 32'h00000000;
        f = 4'b0110;

        #200
        $display("A = 0, B = 6, f = 0111 (inc)");
        f = 4'b0111;

        // pruebas de overflow
        #200
        $display("A = +MAX, B = 1, f = 0100 (sum) -> overflow");
        A = 32'h7FFFFFFF;
        B = 32'h00000001;
        f = 4'b0100;

        #200
        $display("A = +MAX, B = 1, f = 0101 (sub)");
        f = 4'b0101;

        #200
        $display("A = +MAX, B = -1, f = 0101 (sub) -> overflow");
        B = 32'hFFFFFFFF;

        #200
        $finish;
    end
endmodule