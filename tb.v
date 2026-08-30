`timescale 1ns/1ps

module tb_encoder4to2;

    reg I0;
    reg I1;
    reg I2;
    reg I3;

    wire Y1;
    wire Y0;

    
    encoder4to2 DUT(
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .Y1(Y1),
        .Y0(Y0)
    );

    initial begin

        
        $dumpfile("encoder4to2.vcd");
        $dumpvars(0, tb_encoder4to2);

        
        $display("Time\tI0 I1 I2 I3\tY1 Y0");
        $monitor("%0t\t%b  %b  %b  %b\t %b  %b",
                 $time, I0, I1, I2, I3, Y1, Y0);

        
        I0 = 1'b1; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0;
        #10;

        
        I0 = 1'b0; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0;
        #10;

        
        I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0;
        #10;

        
        I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b1;
        #10;

        $finish;

    end

endmodule