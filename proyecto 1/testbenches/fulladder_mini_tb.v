`include "unit_A.v"

module FullAdder_mini_testbench;
    reg A, B, c_in;
    wire S, c_out;

    FullAdder F0(A, B, c_in, c_out, S);

    initial begin
        $dumpfile("out/fulladder-mini-dump.vcd");
        $dumpvars(0, FullAdder_mini_testbench);

        $display("A = 0, B = 0, c_in = 0");
        A = 0;
        B = 0;
        c_in = 0;
 
        #20;
        $display("A = 1, B = 0, c_in = 0");
        A = 1;

        #20;
        $display("A = 1, B = 1, c_in = 0");
        B = 1;

        #20;
        $display("A = 1, B = 1, c_in = 1");
        c_in = 1;

        #20;
        $finish;
    end
endmodule