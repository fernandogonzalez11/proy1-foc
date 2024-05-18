module FullAdder (a, b, c_in, c_out, n);
    input a, b, c_in;
    output c_out, s;
    wire c1, c2, c3, c4;

    and #(2) g_and1(c1, a, c_in);
    and #(2) g_and2(c2, b, c_in);
    not #(1) g_not1(c3, c_in);
    and #(2) g_and3(c4, a, b, c3);

    // c_out
    or  #(1) g_or1(c_out, c1, c2, c4);

    // s
    xor #(3) g_xor1(n, a, b, c_in);

endmodule

module FullAdder_32b (a, b, c_in, s, c_out, N, Z, C, O);
    input [31:0] a, b;
    input c_in;
    output [31:0] s;
    output c_out, N_out, Z_out, C_out, O_out;

    wire c30, c29, c28, c27, c26, c25, c24, c23, c22, c21, c20, c19, c18, c17, c16,
         c15, c14, c13, c12, c11, c10, c09, c08, c07, c06, c05, c04, c03, c02, c01, c00;

    FullAdder(a[0], b[0], c_in, c00, s[0]);
    FullAdder(a[1], b[1], c00, c01, s[1]);
    FullAdder(a[2], b[2], c01, c02, s[2]);
    FullAdder(a[3], b[3], c02, c03, s[3]);
    FullAdder(a[4], b[4], c03, c04, s[4]);
    FullAdder(a[5], b[5], c04, c05, s[5]);
    FullAdder(a[6], b[6], c05, c06, s[6]);
    FullAdder(a[7], b[7], c06, c07, s[7]);
    FullAdder(a[8], b[8], c07, c08, s[8]);
    FullAdder(a[9], b[9], c08, c09, s[9]);
    FullAdder(a[10], b[10], c09, c10, s[10]);
    FullAdder(a[11], b[11], c10, c11, s[11]);
    FullAdder(a[12], b[12], c11, c12, s[12]);
    FullAdder(a[13], b[13], c12, c13, s[13]);
    FullAdder(a[14], b[14], c13, c14, s[14]);
    FullAdder(a[15], b[15], c14, c15, s[15]);
    FullAdder(a[16], b[16], c15, c16, s[16]);
    FullAdder(a[17], b[17], c16, c17, s[17]);
    FullAdder(a[18], b[18], c17, c18, s[18]);
    FullAdder(a[19], b[19], c18, c19, s[19]);
    FullAdder(a[20], b[20], c19, c20, s[20]);
    FullAdder(a[21], b[21], c20, c21, s[21]);
    FullAdder(a[22], b[22], c21, c22, s[22]);
    FullAdder(a[23], b[23], c22, c23, s[23]);
    FullAdder(a[24], b[24], c23, c24, s[24]);
    FullAdder(a[25], b[25], c24, c25, s[25]);
    FullAdder(a[26], b[26], c25, c26, s[26]);
    FullAdder(a[27], b[27], c26, c27, s[27]);
    FullAdder(a[28], b[28], c27, c28, s[28]);
    FullAdder(a[29], b[29], c28, c29, s[29]);
    FullAdder(a[30], b[30], c29, c30, s[30]);
    FullAdder(a[31], b[31], c30, c_out, s[31]);

    assign N = a[31];
    nor #(3) g_nor1(
        Z,
        s[31], s[30], s[29], s[28], s[27], s[26], s[25], s[26], s[27], s[26], s[25], s[24], s[23], s[22], s[21], s[20], s[19],
        s[18], s[17], s[16], s[15], s[14], s[13], s[12], s[11], s[10], s[9], s[8], s[7], s[6], s[5], s[4], s[3], s[2], s[1], s[0]
    );
    assign C = c_out;

    // TODO: O_out

endmodule
