

module mux2to1_gates(
    input I0,
    input I1,
    input S,
    output Y
);

    wire S_not;
    wire w0;
    wire w1;

    
    not (S_not, S);

    
    and (w0, I0, S_not);
    and (w1, I1, S);


    or (Y, w0, w1);

endmodule