`timescale 100ps/100ps

module Clock(clk);
    output reg clk;
    
    initial clk = 0;

    always #6 clk = ~clk;
endmodule

module FlipFlopRS(R, S, clk, enable, Q, Q_comp);
    input R, S, clk, enable;
    output Q, Q_comp;
    wire R_clk, S_clk;

    and #(3) g_clk1(R_clk, R, clk, enable);
    and #(3) g_clk2(S_clk, S, clk, enable);

    nor #(1) g1(Q, R_clk, Q_comp);
    nor #(1) g2(Q_comp, S_clk, Q);
endmodule

module FlipFlopD (D,clk,enable,Q,Q_comp)
    input D, clk, enable;
    output Q, Q_comp;
    wire D_comp;

    not #(1) not1(D_comp,D)

    FlipFlopRS FFRS(D,D_comp,clk,enable,Q, Q_comp)
endmodule

module clk_testbench;
    initial begin
        $dumpfile("testbench-dump.vcd");
        $dumpvars;

        #100
        $finish;
    end
endmodule

module FFRS_testbench;
    reg R, S, enable;
    wire clk, Q, Q_comp;

    Clock clk1(clk);
    FlipFlopRS FFRS(R, S, clk, enable, Q, Q_comp);

    initial begin
        $dumpfile("testbench-dump.vcd");
        $dumpvars;

        enable = 0;
        R = 0;
        S = 1;

        #12
        enable = 1;

        #12
        enable = 0;

        #12
        R = 0;
        S = 0;

        #12
        enable = 1;

        #12
        enable = 0;

        #12
        R = 1;
        S = 0;

        #12
        enable = 1;

        #12
        enable = 0;

        #24
        $finish;
    end
endmodule