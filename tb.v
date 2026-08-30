`timescale 1ns/1ps

module tb_bcd_to_7segment;

    reg [3:0] bcd;

    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;

    
    bcd_to_7segment DUT(
        .bcd(bcd),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g)
    );

    initial begin

        
        $dumpfile("bcd_to_7segment.vcd");
        $dumpvars(0, tb_bcd_to_7segment);

        
        $display("Time\tBCD\tabcdefg");
        $monitor("%0t\t%b\t%b%b%b%b%b%b%b",
                 $time, bcd, a, b, c, d, e, f, g);


        bcd = 4'b0000; #10;  // 0
        bcd = 4'b0001; #10;  // 1
        bcd = 4'b0010; #10;  // 2
        bcd = 4'b0011; #10;  // 3
        bcd = 4'b0100; #10;  // 4
        bcd = 4'b0101; #10;  // 5
        bcd = 4'b0110; #10;  // 6
        bcd = 4'b0111; #10;  // 7
        bcd = 4'b1000; #10;  // 8
        bcd = 4'b1001; #10;  // 9

        $finish;

    end

endmodule