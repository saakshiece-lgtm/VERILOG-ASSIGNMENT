`timescale 1ns/1ps

module tb_half_subtractor;

    reg A;
    reg B;

    wire Diff;
    wire Borrow;

    
    half_subtractor DUT(
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin

        
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, tb_half_subtractor);

        
        $display("Time\tA\tB\tDiff\tBorrow");
        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, A, B, Diff, Borrow);

        

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