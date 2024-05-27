`include "mux.v"

module mux_testbench;
    reg s1, s0;
    reg [31:0] a, b, c, d;
    wire [31:0] Y;

    mux_4x1_32b muxmux(s1, s0, a, b, c, d, Y);

    initial begin
        $dumpfile("out/mux_32b_dump.vcd");
        $dumpvars(0, mux_testbench);

        a = 32'h00000001;
        b = 32'h00000002;
        c = 32'h00000003;
        d = 32'h00000004;
        s1 = 0;
        s0 = 0;

        #100
        s0 = 1;

        #100
        s1 = 1;
        s0 = 0;

        #100
        s0 = 1;

        #100
        $finish;
    end
endmodule