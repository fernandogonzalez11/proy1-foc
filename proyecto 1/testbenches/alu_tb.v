`include "alu.v"

module ALU_testbench;
    reg [31:0] A, B;
    reg [3:0] f;
    wire [31:0] S;
    wire sig_Z, sig_O, sig_C;

    ALU alu(A, B, f, S, sig_Z, sig_C, sig_O);

    initial begin
        $dumpfile("out/alu-dump.vcd");
        $dumpvars(0, ALU_testbench);

        // pruebas de todas las operaciones
        $display("A = 6, B = 7, f = 4 (sum)");
        A = 32'h00000006;
        B = 32'h00000007;
        f = 4;

        #200
        $display("A = 6, B = 7, f = 5 (sub)");
        f = 5;

        #200
        $display("A = 6, B = 7, f = 6 (ainv de B)");
        f = 6;
        
        #200
        $display("A = 6, B = 7, f = 7 (inc de B)");
        f = 7;

        #200
        $display("A = 6, B = 7, f = 9 (and)");
        f = 9;

        #200
        $display("A = 6, B = 7, f = 10 (or)");
        f = 10;

        #200
        $display("A = 6, B = 7, f = 11 (xor)");
        f = 11;

        // código desusado como separador
        #200
        f = 0;

        // pruebas de señales
        #200
        $display("A = 6, B = 6, f = 5 (sub) -> sig_Z = 1");
        B = 32'h00000006;
        f = 5;

        #200
        $display("A = 6, B = 6, f = 5 (sub) -> sig_C = 1");
        // misma operación que la pasada

        #200
        $display("A = 6, B = +MAX, f = 7 (inc de B) -> sig_O = 1");
        B = 32'h7FFFFFFF;
        f = 7;

        // separador de fin de pruebas
        #200
        $finish;
        
        
    end

endmodule