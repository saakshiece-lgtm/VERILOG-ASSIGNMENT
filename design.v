

module bcd_to_7segment(
    input  [3:0] bcd,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
);

    
    assign a = (~bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] & ~bcd[1] & ~bcd[0]) |
               ( bcd[3] & ~bcd[2] &  bcd[1] &  bcd[0]) |
               ( bcd[3] &  bcd[2] & ~bcd[1] &  bcd[0]);

    
    assign b = (~bcd[3] &  bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] &  bcd[1] & ~bcd[0]) |
               ( bcd[3] & ~bcd[2] &  bcd[1] &  bcd[0]) |
               ( bcd[3] &  bcd[2] & ~bcd[1] & ~bcd[0]) |
               ( bcd[3] &  bcd[2] &  bcd[1] &  bcd[0]);

    
    assign c = (~bcd[3] & ~bcd[2] &  bcd[1] & ~bcd[0]) |
               ( bcd[3] &  bcd[2] & ~bcd[1] & ~bcd[0]) |
               ( bcd[3] &  bcd[2] &  bcd[1] & ~bcd[0]) |
               ( bcd[3] &  bcd[2] &  bcd[1] &  bcd[0]);

    
    assign d = (~bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] & ~bcd[1] & ~bcd[0]) |
               (~bcd[3] &  bcd[2] &  bcd[1] &  bcd[0]) |
               ( bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]) |
               ( bcd[3] & ~bcd[2] &  bcd[1] & ~bcd[0]);

    
    assign e = (~bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] & ~bcd[2] &  bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] & ~bcd[1] & ~bcd[0]) |
               (~bcd[3] &  bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] &  bcd[1] &  bcd[0]) |
               ( bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]);

    
    assign f = (~bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] & ~bcd[2] &  bcd[1] & ~bcd[0]) |
               (~bcd[3] & ~bcd[2] &  bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] &  bcd[1] &  bcd[0]) |
               ( bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]);

    
    assign g = (~bcd[3] & ~bcd[2] & ~bcd[1] & ~bcd[0]) |
               (~bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]) |
               (~bcd[3] &  bcd[2] &  bcd[1] &  bcd[0]) |
               ( bcd[3] & ~bcd[2] & ~bcd[1] &  bcd[0]);

endmodule