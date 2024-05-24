`include "alu.v"


module ALU_tb1;

    // Inputs
    reg [31:0] a;
    reg [31:0] b;
    reg [3:0] S;//Selection

    // Outputs
    wire [31:0] out;
    wire Zero;

    // Instantiate the ALU
    ALU uut (
        A(a),
        B(b),
        ALU_Sel(S),
        ALU_Result(out),
        Zero(Zero)
    );

    initial begin
        $dumpfile("out/ALU-dump.vcd");
        $dumpvars(0, ALU_testbench);
        a=32'hAF554D4E;
        b=32'h87AA9777;

        // AND
        S=1001;
        #10; //  delay
        $display("S = %b(AND), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        // OR
        S=1010;
        #10; //  delay
        $display("S = %b(OR), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        // XOR
        S=1011;
        #10; //  delay
        $display("S = %b(AND), a = %h, b = %h, outh= %h, Zero=%b", S, a, b, out,Zero);
        // ADD
        S=0100;
        #10; //  delay
        $display("S = %b(ADD), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        // SUB
        S=0101;
        #10; //  delay
        $display("S = %b(SUB), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        
        // AINV - h87AA9777
        S=0110;
        #10; //  delay
        $display("S = %b(AINV), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        
        // INC - h87AA9777
        S=0111;
        #10; //  delay
        $display("S = %b(INC), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        
        #10; //  delay
        a=32'h87AA9777;
        b=32'hAF554D4E;
        // AINV - hAF554D4E
        S=0110;
        #10; //  delay
        $display("S = %b(AINV), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        
        
        // INC - hAF554D4E
        S=0111;
        #10; //  delay
        $display("S = %b(INC), a = %h, b = %h, out = %h, Zero=%b", S, a, b, out,Zero);
        

        

        $finish;
    end

endmodule