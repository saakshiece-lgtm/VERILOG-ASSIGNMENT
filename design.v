
module decoder2to4(
    input en,
    input [1:0] in,
    output reg [3:0] y
);

always @(*) begin
    if (en == 1'b1) begin
        case (in)
            2'b00: y = 4'b0001;
            2'b01: y = 4'b0010;
            2'b10: y = 4'b0100;
            2'b11: y = 4'b1000;
            default: y = 4'b0000;
        endcase
    end
    else begin
        y = 4'b0000;
    end
end

endmodule



module decoder3to8(
    input en,
    input [2:0] in,
    output [7:0] y
);

wire en0;
wire en1;
wire [3:0] y0;
wire [3:0] y1;


assign en0 = en & ~in[2];
assign en1 = en & in[2];


decoder2to4 D0(
    .en(en0),
    .in(in[1:0]),
    .y(y0)
);


decoder2to4 D1(
    .en(en1),
    .in(in[1:0]),
    .y(y1)
);


assign y = {y1, y0};

endmodule
