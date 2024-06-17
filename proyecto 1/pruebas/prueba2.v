`timescale 100ps / 100ps

module andgate(a, b, s);
    input a, b;
    output s;

    and #(2) and_g1(s, a, b);
endmodule

module testbench1;
    reg a, b;
    wire s;

    andgate ag(a, b, s);

    initial begin
        $dumpfile("out/prueba2.vcd");
        $dumpvars(0, testbench1, testbench2);
        a = 1;
        b = 0;

        #5;

        a = 1;
        b = 1;

        #5;     
    end
endmodule

module testbench2;
    reg a, b;
    wire s;

    initial begin
        a = 0;
        b = 0;

        #5;

        a = 1;
        b = 1;

        #5;
    end
endmodule