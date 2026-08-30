`timescale 1ns/1ps

module tb_full_subtractor;

reg A;
reg B;
reg Bin;

wire Diff;
wire Bout;

full_subtractor DUT (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);

initial begin

    
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, tb_full_subtractor);

    
    A = 1'b0; B = 1'b0; Bin = 1'b0;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    
    A = 1'b0; B = 1'b0; Bin = 1'b1;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    A = 1'b0; B = 1'b1; Bin = 1'b0;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    
    A = 1'b0; B = 1'b1; Bin = 1'b1;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    
    A = 1'b1; B = 1'b0; Bin = 1'b0;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    
    A = 1'b1; B = 1'b0; Bin = 1'b1;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    
    A = 1'b1; B = 1'b1; Bin = 1'b0;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    
    A = 1'b1; B = 1'b1; Bin = 1'b1;
    #10;
    $display("A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             A, B, Bin, Diff, Bout);

    $finish;

end

endmodule
