module mux_4x1(s, a, b, c, d, Y);
    input [1:0] s;
    input a, b, c, d;
    output Y;
    wire notS0, notS1, out1, out2, out3, out4;

    not not1(notS0, s0);
    not not2(notS1, s1);

    and and1(out1, a, notS1, notS0);
    and and2(out2, b, notS1, s0);
    and and3(out3, c, s1, notS0);
    and and4(out4, d, s1, s0);

    or or1(Y, out1, out2, out3, out4);

endmodule