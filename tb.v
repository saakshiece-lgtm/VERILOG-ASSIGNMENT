`timescale 1ns/1ps

module tb_mux8to1;

reg [7:0] D;
reg [2:0] S;
wire Y;

mux8to1 DUT (
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin

    // VCD generation
    $dumpfile("mux8to1.vcd");
    $dumpvars(0, tb_mux8to1);

    // Input data
    D = 8'b10101010;

    // Select 000 -> D[0]
    S = 3'b000;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 001 -> D[1]
    S = 3'b001;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 010 -> D[2]
    S = 3'b010;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 011 -> D[3]
    S = 3'b011;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 100 -> D[4]
    S = 3'b100;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 101 -> D[5]
    S = 3'b101;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 110 -> D[6]
    S = 3'b110;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    // Select 111 -> D[7]
    S = 3'b111;
    #10;
    $display("S=%b D=%b Y=%b", S, D, Y);

    $finish;

end

endmodule
