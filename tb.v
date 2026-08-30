`timescale 1ns/1ps

module tb_comparator1bit;

    reg A;
    reg B;

    wire A_gt_B;
    wire A_eq_B;
    wire A_lt_B;

    
    comparator1bit DUT(
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin

        
        $dumpfile("comparator1bit.vcd");
        $dumpvars(0, tb_comparator1bit);

        
        $display("Time\tA\tB\tA_gt_B\tA_eq_B\tA_lt_B");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        
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