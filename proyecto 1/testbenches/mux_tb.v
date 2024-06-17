`include "mux.v"

module mux_testbench;
    reg [1:0] s;
    reg a, b, c, d;
    wire Y;

    mux_4x1 muxmux(s, a, b, c, d, Y);

    initial begin
        $dumpfile("out/mux_dump.vcd");
        $dumpvars(0, mux_testbench);

        a = 1;
        b = 0;
        c = 0;
        d = 0;
        s = 00;

        #20
        a = 0;
        b = 1;

        #20
        s = 01;

        #20
        b = 0;
        c = 1;

        #20
        s = 10;

        #20
        c = 0;
        d = 1;

        #20
        s = 11;

        #20
        d = 0;

        #20
        $finish;
    end
endmodule