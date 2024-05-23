`timescale 100ps / 100ps

module FullAdder (a, b, c_in, c_out, s);
    input a, b, c_in;
    output c_out, s;
    wire c1, c2, c3, c4;

    // c_out
    and g_and1(c1, a, c_in);
    and g_and2(c2, b, c_in);
    not g_not1(c3, c_in);
    and g_and3(c4, a, b, c3);
    or g_or1(c_out, c1, c2, c4);

    // s
    xor #(3) g_xor1(s, a, b, c_in);

endmodule

/*
señal N: ¿el resultado fue negativo?
señal Z: ¿el resultado fue cero?
señal C: ¿el resultado produjo un acarreo no nulo?
señal O: ¿el resultado produjo un overflow?
*/
module FullAdder_32b (a, b, c_in, s, c_out);
    input [31:0] a, b;
    input c_in;
    output [31:0] s;
    output c_out, sig_Z, sig_C, sig_O;

    wire c30, c29, c28, c27, c26, c25, c24, c23, c22, c21, c20, c19, c18, c17, c16,
         c15, c14, c13, c12, c11, c10, c09, c08, c07, c06, c05, c04, c03, c02, c01, c00;

    FullAdder F00(a[0], b[0], c_in, c00, s[0]);
    FullAdder F01(a[1], b[1], c00, c01, s[1]);
    FullAdder F02(a[2], b[2], c01, c02, s[2]);
    FullAdder F03(a[3], b[3], c02, c03, s[3]);
    FullAdder F04(a[4], b[4], c03, c04, s[4]);
    FullAdder F05(a[5], b[5], c04, c05, s[5]);
    FullAdder F06(a[6], b[6], c05, c06, s[6]);
    FullAdder F07(a[7], b[7], c06, c07, s[7]);
    FullAdder F08(a[8], b[8], c07, c08, s[8]);
    FullAdder F09(a[9], b[9], c08, c09, s[9]);
    FullAdder F10(a[10], b[10], c09, c10, s[10]);
    FullAdder F11(a[11], b[11], c10, c11, s[11]);
    FullAdder F12(a[12], b[12], c11, c12, s[12]);
    FullAdder F13(a[13], b[13], c12, c13, s[13]);
    FullAdder F14(a[14], b[14], c13, c14, s[14]);
    FullAdder F15(a[15], b[15], c14, c15, s[15]);
    FullAdder F16(a[16], b[16], c15, c16, s[16]);
    FullAdder F17(a[17], b[17], c16, c17, s[17]);
    FullAdder F18(a[18], b[18], c17, c18, s[18]);
    FullAdder F19(a[19], b[19], c18, c19, s[19]);
    FullAdder F20(a[20], b[20], c19, c20, s[20]);
    FullAdder F21(a[21], b[21], c20, c21, s[21]);
    FullAdder F22(a[22], b[22], c21, c22, s[22]);
    FullAdder F23(a[23], b[23], c22, c23, s[23]);
    FullAdder F24(a[24], b[24], c23, c24, s[24]);
    FullAdder F25(a[25], b[25], c24, c25, s[25]);
    FullAdder F26(a[26], b[26], c25, c26, s[26]);
    FullAdder F27(a[27], b[27], c26, c27, s[27]);
    FullAdder F28(a[28], b[28], c27, c28, s[28]);
    FullAdder F29(a[29], b[29], c28, c29, s[29]);
    FullAdder F30(a[30], b[30], c29, c30, s[30]);
    FullAdder F31(a[31], b[31], c30, c_out, s[31]);

    // note lo siguiente:

    // si se tomase s como un número con signo complemento 2,
    // su bit de más a la izquierda sería 1 si fuese negativo, 0 si fuese positivo
    // por tanto, la señal N es equivalente al bit más a la izquierda de s (s[31])

    // asimismo, la existencia (o no) de un acarreo es equivalente al mismo bit de acarreo
    // por tanto, la señal C es equivalente a c_out

    // para comprobar que el resultado es cero, se tiene que todos los bits de resultado deben ser 0
    // a' * b' * c' * ... => (a + b + c + ... )' (NOR)

endmodule