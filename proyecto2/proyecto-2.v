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

module FlipFlopD (D,clk,enable,Q,Q_comp);
    input D, clk, enable;
    output Q, Q_comp;
    wire D_comp;

    not #(1) not1(D_comp,D);

    FlipFlopRS FFRS(D,D_comp,clk,enable,Q, Q_comp);
endmodule

module Register32bits (clk,enable,D,Q,Q_comp);
    input clk,enable;        
    input [31:0] D;      
    output [31:0] Q,Q_comp;    

    FlipFlopD flip_flop0  (D[0], clk, enable, Q_comp[0], Q[0]);
    FlipFlopD flip_flop1  (D[1], clk, enable, Q_comp[1], Q[1]);
    FlipFlopD flip_flop2  (D[2], clk, enable, Q_comp[2], Q[2]);
    FlipFlopD flip_flop3  (D[3], clk, enable, Q_comp[3], Q[3]);
    FlipFlopD flip_flop4  (D[4], clk, enable, Q_comp[4], Q[4]);
    FlipFlopD flip_flop5  (D[5], clk, enable, Q_comp[5], Q[5]);
    FlipFlopD flip_flop6  (D[6], clk, enable, Q_comp[6], Q[6]);
    FlipFlopD flip_flop7  (D[7], clk, enable, Q_comp[7], Q[7]);
    FlipFlopD flip_flop8  (D[8], clk, enable, Q_comp[8], Q[8]);
    FlipFlopD flip_flop9  (D[9], clk, enable, Q_comp[9], Q[9]);
    FlipFlopD flip_flop10 (D[10], clk, enable, Q_comp[10], Q[10]);
    FlipFlopD flip_flop11 (D[11], clk, enable, Q_comp[11], Q[11]);
    FlipFlopD flip_flop12 (D[12], clk, enable, Q_comp[12], Q[12]);
    FlipFlopD flip_flop13 (D[13], clk, enable, Q_comp[13], Q[13]);
    FlipFlopD flip_flop14 (D[14], clk, enable, Q_comp[14], Q[14]);
    FlipFlopD flip_flop15 (D[15], clk, enable, Q_comp[15], Q[15]);
    FlipFlopD flip_flop16 (D[16], clk, enable, Q_comp[16], Q[16]);
    FlipFlopD flip_flop17 (D[17], clk, enable, Q_comp[17], Q[17]);
    FlipFlopD flip_flop18 (D[18], clk, enable, Q_comp[18], Q[18]);
    FlipFlopD flip_flop19 (D[19], clk, enable, Q_comp[19], Q[19]);
    FlipFlopD flip_flop20 (D[20], clk, enable, Q_comp[20], Q[20]);
    FlipFlopD flip_flop21 (D[21], clk, enable, Q_comp[21], Q[21]);
    FlipFlopD flip_flop22 (D[22], clk, enable, Q_comp[22], Q[22]);
    FlipFlopD flip_flop23 (D[23], clk, enable, Q_comp[23], Q[23]);
    FlipFlopD flip_flop24 (D[24], clk, enable, Q_comp[24], Q[24]);
    FlipFlopD flip_flop25 (D[25], clk, enable, Q_comp[25], Q[25]);
    FlipFlopD flip_flop26 (D[26], clk, enable, Q_comp[26], Q[26]);
    FlipFlopD flip_flop27 (D[27], clk, enable, Q_comp[27], Q[27]);
    FlipFlopD flip_flop28 (D[28], clk, enable, Q_comp[28], Q[28]);
    FlipFlopD flip_flop29 (D[29], clk, enable, Q_comp[29], Q[29]);
    FlipFlopD flip_flop30 (D[30], clk, enable, Q_comp[30], Q[30]);
    FlipFlopD flip_flop31 (D[31], clk, enable, Q_comp[31], Q[31]);
endmodule

module tb_Register32bits();
    //Signals
    wire clk;
    reg enable;
    reg [31:0] D;
    
    // Using register module
    Register32bits registro (clk,enable,D,Q,Q_comp);

    // Outputs
    wire [31:0] Q,Q_comp;

    // Using clock module
    Clock clk_gen (clk);

    // Testbench 
    initial begin
        $dumpfile("registro-dump.vcd");
        $dumpvars(0, tb_Register32bits);

        $display("Valores iniciales:\nD = %b, Q = %b,  Q_comp= %b, enable = %b, clk = %b", D, Q, Q_comp, enable,clk);
        
        
        D = 32'b11111111111111111111111111111111; 
        $display("Nuevo valor: D = %b", D);
        enable = 1;
        #12;//1200ps, clock=1
        $display(" Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);
        
        
        
        D = 32'b10000000000000000000100000000001;
        $display("Nuevo valor: D = %b", D);
        #12;//1200ps
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);


        
        enable = 0;
        D = 32'b10101010101010101010101010101010; // Cambia el valor de entrada D
        $display("Nuevo valor: D = %b", D);
        #12;//1200ps, clock=1
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);
        
        
        enable = 1;
        D = 32'b1000000000111111111100000000101; // Cambia el valor de entrada D
        $display("Nuevo valor: D = %b", D);
        #6;//600ps, clk=0
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);

        #6;//600ps, clock=1
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b", Q, Q_comp, enable,clk);

        $finish;
    end

endmodule
// module clk_testbench;
//     initial begin
//         $dumpfile("testbench-dump.vcd");
//         $dumpvars;

//         #100
//         $finish;
//     end
// endmodule

// module FFRS_testbench;
//     reg R, S, enable;
//     wire clk, Q, Q_comp;

//     Clock clk1(clk);
//     FlipFlopRS FFRS(R, S, clk, enable, Q, Q_comp);

//     initial begin
//         $dumpfile("testbench-dump.vcd");
//         $dumpvars;

//         enable = 0;
//         R = 0;
//         S = 1;

//         #12
//         enable = 1;

//         #12
//         enable = 0;

//         #12
//         R = 0;
//         S = 0;

//         #12
//         enable = 1;

//         #12
//         enable = 0;

//         #12
//         R = 1;
//         S = 0;

//         #12
//         enable = 1;

//         #12
//         enable = 0;

//         #24
//         $finish;
//     end
// endmodule