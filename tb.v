`timescale 1ns/1ps

module tb_ripple_carry_adder_4bit;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

ripple_carry_adder_4bit DUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    // Create VCD file
    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(0, tb_ripple_carry_adder_4bit);

    // Test 1: No carry propagation
    A = 4'b0011;
    B = 4'b0100;
    Cin = 1'b0;
    #10;

    // Test 2: Carry propagation
    A = 4'b0111;
    B = 4'b0001;
    Cin = 1'b0;
    #10;

    // Test 3: Carry out
    A = 4'b1111;
    B = 4'b0001;
    Cin = 1'b0;
    #10;

    // Test 4: Carry input
    A = 4'b0101;
    B = 4'b0010;
    Cin = 1'b1;
    #10;

    $finish;

end

endmodule
