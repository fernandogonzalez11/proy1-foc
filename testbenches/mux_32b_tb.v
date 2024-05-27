`include "mux.v"

module mux_testbench;
    reg [1:0] s;
    reg [31:0] a, b, c, d;
    wire [31:0] Y;

    mux_4x1_32b muxmux(s, a, b, c, d, Y);

    initial begin
        $dumpfile("out/mux_32b_dump.vcd");
        $dumpvars(0, mux_testbench);

        a = 32'h01234567;
        b = 32'h89ABCDEF;
        c = 32'hFEDCBA98;
        d = 32'h76543210;
        s = 00;

        #100
        s = 01;

        #100
        s = 10;

        #100
        s = 11;

        #100
        $finish;
    end
endmodule