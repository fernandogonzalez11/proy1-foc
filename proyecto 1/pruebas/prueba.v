module hello(A, B);
    input A;
    output B;
    
    assign B = A;

endmodule

/* module hello_testbench;
    reg A;
    wire B;

    hello tester(A, B);

    initial begin
        $dumpfile("prueba.vcd");
        $dumpvars(0, hello_testbench);

        A = 0;
        #20;
        A = 1;
        #20;
        A = 0;
        #20;

        $display("test complete");
    end
endmodule */

module hello_testbench;
    reg A;
    wire B;

    hello tester(A, B);

    initial begin
        $dumpvars(0, A, B);
        
        $display("A = 1");
        A = 1;

        #20;
        $display("A = 0");
        A = 0;

        #20;
        $display("A = 1");
        A = 1;

        #700;
        $finish;
    end

    initial $monitor("En %2t, B = %b", $time, B);
endmodule