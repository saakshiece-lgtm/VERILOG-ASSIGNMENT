`timescale 1ns/1ps

module tb_decoder2to4;

    reg A;
    reg B;
    reg En;

    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    
    decoder2to4 DUT(
        .A(A),
        .B(B),
        .En(En),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin

        
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0, tb_decoder2to4);

        
        $display("Time\tEn\tA\tB\tY0\tY1\tY2\tY3");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, En, A, B, Y0, Y1, Y2, Y3);

        
        En = 1'b0; A = 1'b0; B = 1'b0;
        #10;

        
        En = 1'b1; A = 1'b0; B = 1'b0;
        #10;

    
        En = 1'b1; A = 1'b0; B = 1'b1;
        #10;

        
        En = 1'b1; A = 1'b1; B = 1'b0;
        #10;

        
        En = 1'b1; A = 1'b1; B = 1'b1;
        #10;

        $finish;

    end

endmodule