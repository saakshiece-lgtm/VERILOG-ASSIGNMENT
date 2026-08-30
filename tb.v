`timescale 1ns/1ps

module tb_comparator4bit;

    reg [3:0] A;
    reg [3:0] B;

    wire A_greater;
    wire A_equal;
    wire A_less;

    
    comparator4bit DUT(
        .A(A),
        .B(B),
        .A_greater(A_greater),
        .A_equal(A_equal),
        .A_less(A_less)
    );

    initial begin

        
        $dumpfile("comparator4bit.vcd");
        $dumpvars(0, tb_comparator4bit);

        
        $display("Time\tA\tB\tA>B\tA=B\tA<B");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, A_greater, A_equal, A_less);

        
        A = 4'b0101;
        B = 4'b0101;
        #10;

        
        A = 4'b1010;
        B = 4'b0110;
        #10;

        
        A = 4'b0011;
        B = 4'b1100;
        #10;

        
        A = 4'b1111;
        B = 4'b0000;
        #10;

        A = 4'b0000;
        B = 4'b1111;
        #10;

        $finish;

    end

endmodule