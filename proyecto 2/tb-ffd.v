`include "proyecto-2.v"

module FFD_testbench;

    reg D, enable;
    wire clk, Q, Q_comp;

    Clock clk1(clk);
    FlipFlopD FFD(D, clk, enable, Q, Q_comp);

    initial begin
        $dumpfile("ffd-dump.vcd");
        $dumpvars(0, FFD_testbench);

        D = 0;
        enable = 0;

        #14
        enable = 1;

        #14
        D = 1;
        enable = 0;
        
        #14
        enable = 1;

        #28
        $finish;
    end
endmodule