`timescale 1ns/1ps

module tb_or_gate_mux;

    reg A;
    reg B;
    wire Y;


    or_gate_mux DUT(
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin

        
        $dumpfile("or_gate_mux.vcd");
        $dumpvars(0, tb_or_gate_mux);

        
        $display("Time\tA\tB\tY");
        $monitor("%0t\t%b\t%b\t%b", $time, A, B, Y);

        

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