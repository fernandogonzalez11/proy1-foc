`include "proyecto-2.v"

module FFRS_testbench;

    reg R, S, enable;
    wire clk, Q, Q_comp;

    Clock clk1(clk);
    FlipFlopRS FFRS(R, S, clk, enable, Q, Q_comp);

    initial begin
        $dumpfile("ffrs-dump.vcd");
        $dumpvars(0, FFRS_testbench);

        enable = 0;
        R = 0;
        S = 1;

        #20
        enable = 1;

        #20
        enable = 0;

        #20
        R = 0;
        S = 0;

        #20
        enable = 1;

        #20
        enable = 0;

        #20
        R = 1;
        S = 0;

        #20
        enable = 1;

        #20
        enable = 0;

        #40
        $finish;
    end
endmodule