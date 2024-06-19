`timescale 100ps/100ps

module Clock(clk);
    output reg clk;
    
    initial clk = 0;

    always #10 clk = ~clk;
endmodule

module FlipFlopRS(R, S, clk, enable, Q, Q_comp);
    input R, S, clk, enable;
    output Q, Q_comp;
    wire R_clk, S_clk;

    and #(2) g_clk1(R_clk, R, clk, enable);
    and #(2) g_clk2(S_clk, S, clk, enable);

    nor #(1) g1(Q, R_clk, Q_comp);
    nor #(1) g2(Q_comp, S_clk, Q);
endmodule

module FlipFlopD (D, clk, enable, Q, Q_comp);
    input D, clk, enable;
    output Q, Q_comp;
    wire D_comp;

    not #(2) not1(D_comp, D);

    FlipFlopRS FFRS(D_comp, D, clk, enable, Q, Q_comp);
endmodule

module Register32bits (clk, enable, D, Q, Q_comp);
    input clk, enable;        
    input [31:0] D;      
    output [31:0] Q, Q_comp;

    FlipFlopD flip_flop0  (D[0], clk, enable, Q[0], Q_comp[0]);
    FlipFlopD flip_flop1  (D[1], clk, enable, Q[1], Q_comp[1]);
    FlipFlopD flip_flop2  (D[2], clk, enable, Q[2], Q_comp[2]);
    FlipFlopD flip_flop3  (D[3], clk, enable, Q[3], Q_comp[3]);
    FlipFlopD flip_flop4  (D[4], clk, enable, Q[4], Q_comp[4]);
    FlipFlopD flip_flop5  (D[5], clk, enable, Q[5], Q_comp[5]);
    FlipFlopD flip_flop6  (D[6], clk, enable, Q[6], Q_comp[6]);
    FlipFlopD flip_flop7  (D[7], clk, enable, Q[7], Q_comp[7]);
    FlipFlopD flip_flop8  (D[8], clk, enable, Q[8], Q_comp[8]);
    FlipFlopD flip_flop9  (D[9], clk, enable, Q[9], Q_comp[9]);
    FlipFlopD flip_flop10 (D[10], clk, enable, Q[10], Q_comp[10]);
    FlipFlopD flip_flop11 (D[11], clk, enable, Q[11], Q_comp[11]);
    FlipFlopD flip_flop12 (D[12], clk, enable, Q[12], Q_comp[12]);
    FlipFlopD flip_flop13 (D[13], clk, enable, Q[13], Q_comp[13]);
    FlipFlopD flip_flop14 (D[14], clk, enable, Q[14], Q_comp[14]);
    FlipFlopD flip_flop15 (D[15], clk, enable, Q[15], Q_comp[15]);
    FlipFlopD flip_flop16 (D[16], clk, enable, Q[16], Q_comp[16]);
    FlipFlopD flip_flop17 (D[17], clk, enable, Q[17], Q_comp[17]);
    FlipFlopD flip_flop18 (D[18], clk, enable, Q[18], Q_comp[18]);
    FlipFlopD flip_flop19 (D[19], clk, enable, Q[19], Q_comp[19]);
    FlipFlopD flip_flop20 (D[20], clk, enable, Q[20], Q_comp[20]);
    FlipFlopD flip_flop21 (D[21], clk, enable, Q[21], Q_comp[21]);
    FlipFlopD flip_flop22 (D[22], clk, enable, Q[22], Q_comp[22]);
    FlipFlopD flip_flop23 (D[23], clk, enable, Q[23], Q_comp[23]);
    FlipFlopD flip_flop24 (D[24], clk, enable, Q[24], Q_comp[24]);
    FlipFlopD flip_flop25 (D[25], clk, enable, Q[25], Q_comp[25]);
    FlipFlopD flip_flop26 (D[26], clk, enable, Q[26], Q_comp[26]);
    FlipFlopD flip_flop27 (D[27], clk, enable, Q[27], Q_comp[27]);
    FlipFlopD flip_flop28 (D[28], clk, enable, Q[28], Q_comp[28]);
    FlipFlopD flip_flop29 (D[29], clk, enable, Q[29], Q_comp[29]);
    FlipFlopD flip_flop30 (D[30], clk, enable, Q[30], Q_comp[30]);
    FlipFlopD flip_flop31 (D[31], clk, enable, Q[31], Q_comp[31]);
endmodule