`include "unit_A.v"

module unit_A_testbench;
    reg [31:0] A, B;
    reg [3:0] f;
    wire [31:0] S;
    wire c_out;

    unit_A uA(A, B, f, S, c_out);

    initial begin
        $dumpfile("out/unit-A-dump.vcd");
        $dumpvars(0, unit_A_testbench);

        $display("A = 6, B = 6, f = 0100 (sum)");
        A = 32'h00000006;
        B = 32'h00000006;
        f = 4'b0100;

        #150;
        $display("A = 6, B = 6, f = 0101 (sub)");
        f = 4'b0101;

        #150
        $display("A = 0, B = 6, f = 0110 (ainv)");
        A = 32'h00000000;
        f = 4'b0110;

        #150
        $display("A = 0, B = 6, f = 0111 (inc)");
        f = 4'b0111;
    end
endmodule