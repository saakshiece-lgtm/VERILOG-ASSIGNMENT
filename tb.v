`timescale 1ns/1ps

module tb_binary_to_gray2bit;

    reg  [1:0] B;
    wire [1:0] G;

    
    binary_to_gray2bit DUT(
        .B(B),
        .G(G)
    );

    initial begin

        
        $dumpfile("binary_to_gray2bit.vcd");
        $dumpvars(0, tb_binary_to_gray2bit);

        
        $display("Time\tBinary\tGray");
        $monitor("%0t\t%b\t%b", $time, B, G);

        

        B = 2'b00;
        #10;

        B = 2'b01;
        #10;

        B = 2'b10;
        #10;

        B = 2'b11;
        #10;

        $finish;

    end

endmodule