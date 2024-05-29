`timescale 100ps / 100ps

module unit_A (a, b, f, s, c_out, O);
    input [31:0] a, b;
    input [1:0] f;
    output [31:0] s;
    output c_out, O;
    wire [31:0] a_FA, b_FA;
    wire c_in_inicial, not_f1;

    // cada bit de a va con un and de él y ¬f1
    not #(2) not_g1(not_f1, f[1]);
    and #(2) and_g31(a_FA[31], a[31], not_f1);
    and #(2) and_g30(a_FA[30], a[30], not_f1);
    and #(2) and_g29(a_FA[29], a[29], not_f1);
    and #(2) and_g28(a_FA[28], a[28], not_f1);
    and #(2) and_g27(a_FA[27], a[27], not_f1);
    and #(2) and_g26(a_FA[26], a[26], not_f1);
    and #(2) and_g25(a_FA[25], a[25], not_f1);
    and #(2) and_g24(a_FA[24], a[24], not_f1);
    and #(2) and_g23(a_FA[23], a[23], not_f1);
    and #(2) and_g22(a_FA[22], a[22], not_f1);
    and #(2) and_g21(a_FA[21], a[21], not_f1);
    and #(2) and_g20(a_FA[20], a[20], not_f1);
    and #(2) and_g19(a_FA[19], a[19], not_f1);
    and #(2) and_g18(a_FA[18], a[18], not_f1);
    and #(2) and_g17(a_FA[17], a[17], not_f1);
    and #(2) and_g16(a_FA[16], a[16], not_f1);
    and #(2) and_g15(a_FA[15], a[15], not_f1);
    and #(2) and_g14(a_FA[14], a[14], not_f1);
    and #(2) and_g13(a_FA[13], a[13], not_f1);
    and #(2) and_g12(a_FA[12], a[12], not_f1);
    and #(2) and_g11(a_FA[11], a[11], not_f1);
    and #(2) and_g10(a_FA[10], a[10], not_f1);
    and #(2) and_g09(a_FA[9], a[9], not_f1);
    and #(2) and_g08(a_FA[8], a[8], not_f1);
    and #(2) and_g07(a_FA[7], a[7], not_f1);
    and #(2) and_g06(a_FA[6], a[6], not_f1);
    and #(2) and_g05(a_FA[5], a[5], not_f1);
    and #(2) and_g04(a_FA[4], a[4], not_f1);
    and #(2) and_g03(a_FA[3], a[3], not_f1);
    and #(2) and_g02(a_FA[2], a[2], not_f1);
    and #(2) and_g01(a_FA[1], a[1], not_f1);
    and #(2) and_g00(a_FA[0], a[0], not_f1);

    // cada bit de b va con un xor de él, f1 y f0
    xor #(3) xor_g31(b_FA[31], b[31], f[1], f[0]);
    xor #(3) xor_g30(b_FA[30], b[30], f[1], f[0]);
    xor #(3) xor_g29(b_FA[29], b[29], f[1], f[0]);
    xor #(3) xor_g28(b_FA[28], b[28], f[1], f[0]);
    xor #(3) xor_g27(b_FA[27], b[27], f[1], f[0]);
    xor #(3) xor_g26(b_FA[26], b[26], f[1], f[0]);
    xor #(3) xor_g25(b_FA[25], b[25], f[1], f[0]);
    xor #(3) xor_g24(b_FA[24], b[24], f[1], f[0]);
    xor #(3) xor_g23(b_FA[23], b[23], f[1], f[0]);
    xor #(3) xor_g22(b_FA[22], b[22], f[1], f[0]);
    xor #(3) xor_g21(b_FA[21], b[21], f[1], f[0]);
    xor #(3) xor_g20(b_FA[20], b[20], f[1], f[0]);
    xor #(3) xor_g19(b_FA[19], b[19], f[1], f[0]);
    xor #(3) xor_g18(b_FA[18], b[18], f[1], f[0]);
    xor #(3) xor_g17(b_FA[17], b[17], f[1], f[0]);
    xor #(3) xor_g16(b_FA[16], b[16], f[1], f[0]);
    xor #(3) xor_g15(b_FA[15], b[15], f[1], f[0]);
    xor #(3) xor_g14(b_FA[14], b[14], f[1], f[0]);
    xor #(3) xor_g13(b_FA[13], b[13], f[1], f[0]);
    xor #(3) xor_g12(b_FA[12], b[12], f[1], f[0]);
    xor #(3) xor_g11(b_FA[11], b[11], f[1], f[0]);
    xor #(3) xor_g10(b_FA[10], b[10], f[1], f[0]);
    xor #(3) xor_g09(b_FA[9], b[9], f[1], f[0]);
    xor #(3) xor_g08(b_FA[8], b[8], f[1], f[0]);
    xor #(3) xor_g07(b_FA[7], b[7], f[1], f[0]);
    xor #(3) xor_g06(b_FA[6], b[6], f[1], f[0]);
    xor #(3) xor_g05(b_FA[5], b[5], f[1], f[0]);
    xor #(3) xor_g04(b_FA[4], b[4], f[1], f[0]);
    xor #(3) xor_g03(b_FA[3], b[3], f[1], f[0]);
    xor #(3) xor_g02(b_FA[2], b[2], f[1], f[0]);
    xor #(3) xor_g01(b_FA[1], b[1], f[1], f[0]);
    xor #(3) xor_g00(b_FA[0], b[0], f[1], f[0]);
    

    // el c_in del primer FullAdder es un or de f1 y f0
    or #(2) or_g1(c_in_inicial, f[1], f[0]);

    // llamar al full adder con los valores modificados
    FullAdder_32b FA_32b(a_FA, b_FA, c_in_inicial, s, c_out);

    // manejo de overflow
    Overflow sig_O(a_FA[31], b_FA[31], s[31], O);
endmodule

module FullAdder (a, b, c_in, c_out, s);
    input a, b, c_in;
    output c_out, s;
    wire c1, c2, c3, c4;

    // c_out
    and #(2) g_and1(c1, a, c_in);
    and #(2) g_and2(c2, b, c_in);
    not #(2) g_not1(c3, c_in);
    and #(2) g_and3(c4, a, b, c3);
    or  #(1) g_or1(c_out, c1, c2, c4);

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

// recibe los bits más significativos del primer y segundo operando que irán como entradas al Full Adder
module Overflow (a_FA, b_FA, s, O);
    input a_FA, b_FA, s;
    output O;
    wire not_a, not_b, not_s, m1, m6;

    not #(2) not_g1(not_a, a_FA);
    not #(2) not_g2(not_b, b_FA);
    not #(2) not_g3(not_s, s);

    and #(3) and_g1(m1, not_a, not_b, s);
    and #(3) and_g2(m6, a_FA, b_FA, not_s);
    or  #(1) or_g1(O, m1, m6);
endmodule