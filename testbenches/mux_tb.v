`include "mux.v"

module mux_testbench;
    reg s1, s0, a, b, c, d;
    wire Y;

    mux_4x1 muxmux(s1, s0, a, b, c, d, Y);

    initial begin
        $dumpfile("out/mux_dump.vcd");
        $dumpvars(0, mux_testbench);

        a = 1;
        b = 0;
        c = 0;
        d = 0;
        s1 = 0;
        s0 = 0;

        #20
        a = 0;
        b = 1;

        #20
        s0 = 1;

        #20
        b = 0;
        c = 1;

        #20
        s1 = 1;
        s0 = 0;

        #20
        c = 0;
        d = 1;

        #20
        s0 = 1;

        #20
        d = 0;

        #20
        $finish;
    end
endmodule