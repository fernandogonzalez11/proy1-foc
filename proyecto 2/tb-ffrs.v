`include "proyecto-2.v"

module FFRS_testbench;

    reg R, S, enable;
    wire clk, Q, Q_comp;

    Clock clk1(clk);
    FlipFlopRS FFRS(R, S, clk, enable, Q, Q_comp);

    initial begin
        $dumpfile("ffrs-dump.vcd");
        $dumpvars(1, FFRS_testbench);

        enable = 0;
        R = 0;
        S = 1;

        #18
        enable = 1;

        #18
        enable = 0;

        #18
        R = 0;
        S = 0;

        #18
        enable = 1;

        #18
        enable = 0;

        #18
        R = 1;
        S = 0;

        #18
        enable = 1;

        #18
        enable = 0;

        #36
        $finish;
    end
endmodule