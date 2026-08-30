`timescale 1ns/1ps

module tb_mux4to1;

    reg I0;
    reg I1;
    reg I2;
    reg I3;
    reg S1;
    reg S0;

    wire Y;

    
    mux4to1 DUT(
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin

        
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, tb_mux4to1);

        
        $display("Time\tI0 I1 I2 I3\tS1 S0\tY");
        $monitor("%0t\t%b  %b  %b  %b\t %b  %b\t%b",
                 $time, I0, I1, I2, I3, S1, S0, Y);

        
        I0 = 1'b0;
        I1 = 1'b1;
        I2 = 1'b0;
        I3 = 1'b1;

        
        S1 = 1'b0;
        S0 = 1'b0;
        #10;

        
        S1 = 1'b0;
        S0 = 1'b1;
        #10;

        
        S1 = 1'b1;
        S0 = 1'b0;
        #10;

        
        S1 = 1'b1;
        S0 = 1'b1;
        #10;

        $finish;

    end

endmodule