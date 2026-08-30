`timescale 1ns/1ps

module tb_mux2to1_gates;

    reg I0;
    reg I1;
    reg S;

    wire Y;

    
    mux2to1_gates DUT(
        .I0(I0),
        .I1(I1),
        .S(S),
        .Y(Y)
    );

    initial begin

        
        $dumpfile("mux2to1_gates.vcd");
        $dumpvars(0, tb_mux2to1_gates);

        
        $display("Time\tI0\tI1\tS\tY");
        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, I0, I1, S, Y);


        I0 = 1'b0; I1 = 1'b0; S = 1'b0;
        #10;

        I0 = 1'b0; I1 = 1'b1; S = 1'b0;
        #10;

        I0 = 1'b1; I1 = 1'b0; S = 1'b0;
        #10;

        I0 = 1'b1; I1 = 1'b1; S = 1'b0;
        #10;

        I0 = 1'b0; I1 = 1'b0; S = 1'b1;
        #10;

        I0 = 1'b0; I1 = 1'b1; S = 1'b1;
        #10;

        I0 = 1'b1; I1 = 1'b0; S = 1'b1;
        #10;

        I0 = 1'b1; I1 = 1'b1; S = 1'b1;
        #10;

        $finish;

    end

endmodule