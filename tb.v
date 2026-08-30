module tb_decoder3to8;

reg en;
reg [2:0] in;
wire [7:0] y;

decoder3to8 DUT(
    .en(en),
    .in(in),
    .y(y)
);

initial begin

    
    $dumpfile("decoder3to8.vcd");
    $dumpvars(0, tb_decoder3to8);

    
    $display("Time\tEnable\tInput\tOutput");
    $monitor("%0t\t%b\t%b\t%b", $time, en, in, y);

    
    en = 1'b1;

    
    in = 3'b000;
    #10;

    in = 3'b001;
    #10;

    in = 3'b010;
    #10;

    in = 3'b011;
    #10;

    in = 3'b100;
    #10;

    in = 3'b101;
    #10;

    in = 3'b110;
    #10;

    in = 3'b111;
    #10;

    $finish;

end

endmodule