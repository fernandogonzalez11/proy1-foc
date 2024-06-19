`include "proyecto-2.v"

module tb_Register32bits;
    //Signals
    wire clk;
    reg enable;
    reg [31:0] D;
    
    // Using register module
    Register32bits registro (clk, enable, D, Q, Q_comp);

    // Outputs
    wire [31:0] Q, Q_comp;

    // Using clock module
    Clock clk_gen (clk);

    // Testbench 
    initial begin
        $dumpfile("registro-dump.vcd");
        $dumpvars(1, tb_Register32bits);

        $display("Valores iniciales:\nD = %b, Q = %b,  Q_comp= %b, enable = %b, clk = %b", D, Q, Q_comp, enable,clk);
        
        
        D = 32'b11111111111111111111111111111111; 
        $display("Nuevo valor: D = %b", D);
        enable = 1;
        #14//1200ps, clock=1
        $display(" Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);
        
        
        
        D = 32'b10000000000000000000100000000001;
        $display("Nuevo valor: D = %b", D);
        #14//1200ps
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);


        
        enable = 0;
        D = 32'b10101010101010101010101010101010; // Cambia el valor de entrada D
        $display("Nuevo valor: D = %b", D);
        #14//1200ps, clock=1
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);
        
        
        enable = 1;
        D = 32'b1000000000111111111100000000101; // Cambia el valor de entrada D
        $display("Nuevo valor: D = %b", D);
        #7//600ps, clk=0
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b\n", Q, Q_comp, enable,clk);

        #7//600ps, clock=1
        $display("Q = %b,  Q_comp= %b, enable = %b, clk = %b", Q, Q_comp, enable,clk);

        #28
        $finish;
    end
endmodule