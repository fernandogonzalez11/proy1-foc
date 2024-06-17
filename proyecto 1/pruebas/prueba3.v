`timescale 100ps / 100ps

module and2(bb, r);
    input [1:0] bb;
    output r;

    and(r, bb[1], bb[0]);
endmodule

module test;
    reg [3:0] a;
    wire res1, res2;

    and2 aa({a[3], a[2]}, res1);
    and2 ab({a[1], a[0]}, res2);

    initial begin
        $dumpfile("out/prueba.vcd");
        $dumpvars(0, test);

        a = 4'b0000;

        #20
        a = 4'b0011;

        #20
        a = 4'b1100;

        #20
        $finish;
    end
endmodule