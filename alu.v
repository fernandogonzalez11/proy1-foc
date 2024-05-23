`timescale 100ps / 100ps

module overflowR(a,b,s,sig_O);
    input [31:0] a, b, s;
    output sig_O;
    wire c00,c01,c02,c03,c04;
    //si a[31] y b[31] son 1, ambos A y B son negativos. Si se suman y da positivo (s[31] = 0) entonces hay overflow
    //si a[31] y b[31] son 0, ambos A y B son positivos. Si se suman y da negativo (s[31] = 1) entonces hay overflow
    //(a[31]*b[31]*s[31]')+(a[31]'*b[31]'*s[31])
    not #(1) g_not2 (c00,s[31]);
    and #(3) g_and4 (c01,a[31],b[31],c00);
    not #(1) g_not3 (c02,a[31]);
    not #(1) g_not4 (c03,b[31]);
    and #(3) g_and5 (c04,s[31],c02,c03);
    or  #(1) g_or2  (sig_O,c04,c01);
endmodule