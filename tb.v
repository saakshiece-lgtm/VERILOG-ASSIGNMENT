`timescale 1ns/1ps

module tb_full_subtractor;

    reg A;
    reg B;
    reg Bin;

    wire Diff;
    wire Bout;

    
    full_subtractor DUT(
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin

        
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, tb_full_subtractor);

        
        $display("Time\tA\tB\tBin\tDiff\tBout");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, Bin, Diff, Bout);

        

        A = 1'b0; B = 1'b0; Bin = 1'b0;
        #10;

        A = 1'b0; B = 1'b0; Bin = 1'b1;
        #10;

        A = 1'b0; B = 1'b1; Bin = 1'b0;
        #10;

        A = 1'b0; B = 1'b1; Bin = 1'b1;
        #10;

        A = 1'b1; B = 1'b0; Bin = 1'b0;
        #10;

        A = 1'b1; B = 1'b0; Bin = 1'b1;
        #10;

        A = 1'b1; B = 1'b1; Bin = 1'b0;
        #10;

        A = 1'b1; B = 1'b1; Bin = 1'b1;
        #10;

        $finish;

    end

endmodule