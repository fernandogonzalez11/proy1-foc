`include "unit_A.v"

module FullAdder_delay;
    reg A, B, c_in;
    wire S, c_out;

    FullAdder F0(A, B, c_in, c_out, S);

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, FullAdder_delay);

        $display("A = 1, B = 0, c_in = 0");
        A = 0;
        B = 0;
        c_in = 1;

        #20;
        $display("A = 1, B = 1, c_in = 0");
        A = 1;
        B = 1;
        c_in = 0;

        #20;
        $finish;
    end
endmodule