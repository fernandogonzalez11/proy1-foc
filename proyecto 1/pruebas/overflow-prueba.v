`include "unit_A.v"
`timescale 100ps / 100ps

/* module overflow(a, b, s, O);
    input [31:0] a, b, s;
    output O;

    wire not_a31, not_b31, not_s31, conn1, conn2;

    not #2 not1(not_a31, a[31]);
    not #2 not2(not_b31, b[31]);
    not #2 not3(not_s31, s[31]);

    and #2 and1(conn1, not_a31, not_b31, s[31]);
    and #2 and2(conn2, not_a31, b[31], not_s31);
    or #1 or1(O, conn1, conn2);
endmodule */

module test;
    reg [31:0] a, b;
    reg [3:0] f;
    wire [31:0] s;
    wire O, c_out;

    unit_A uA(a, b, {f[1], f[0]}, s, c_out, O);
    // overflow sigO(a, b, s, O);

    initial begin
        $dumpfile("out/overflow-dump.vcd");
        $dumpvars(0, test);

        a = 32'h7FFFFFFF;
        b = 32'h00000001;
        f = 4'b0100;

        #200
        f = 4'b0101;

        #200
        b = 32'hFFFFFFFF;

        #200
        $finish;
    end
endmodule