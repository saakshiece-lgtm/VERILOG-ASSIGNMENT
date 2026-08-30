`timescale 1ns/1ps

module tb_half_adder;

    reg A;
    reg B;

    wire Sum;
    wire Carry;

    half_adder DUT(
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin

        
        $dumpfile("half_adder.vcd");
        $dumpvars(0, tb_half_adder);

        
        $display("Time\tA\tB\tSum\tCarry");
        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, A, B, Sum, Carry);

        
        A = 1'b0;
        B = 1'b0;
        #10;

        A = 1'b0;
        B = 1'b1;
        #10;

        A = 1'b1;
        B = 1'b0;
        #10;

        A = 1'b1;
        B = 1'b1;
        #10;

        $finish;

    end

endmodule