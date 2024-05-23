`include "unit_A.v"

module FullAdder_testbench;
    reg [31:0] A, B;
    reg c_in;
    wire [31:0] S;
    wire c_out;

    FullAdder_32b F0(A, B, c_in, S, c_out);

    initial begin
        $dumpfile("out/fulladder-dump.vcd");
        $dumpvars(0, FullAdder_testbench);

        $display("A = 0, B = 0, c_in = 0");
        A = 32'h00000000;
        B = 32'h00000000;
        c_in = 1'b0;
 
        #150;
        $display("A = 1, B = 0, c_in = 0");
        A = 32'h00000001;

        #150;
        $display("A = 1, B = 1, c_in = 0");
        B = 32'h00000001;

        #150;
        $display("A = 1, B = 1, c_in = 1");
        c_in = 1'b1;
        
        // test de negativo (señal N)
        #150;
        $display("A = 0, B = -1, c_in = 0");
        A = 32'h00000000;
        B = 32'hFFFFFFFF;
        c_in = 1'b0;

        // test de cero (señal Z)
        #150;
        $display("A = 0, B = 0, c_in = 0");
        B = 32'h00000000;

        // test de acarreo final (señal C)
        #150;
        $display ("A = 3, B = -1, c_in = 0");
        A = 32'h00000003;
        B = 32'hFFFFFFFF;

        #150;
        $dumpoff;
        $finish;
    end
endmodule