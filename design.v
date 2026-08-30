

module mux2to1(
    input I0,
    input I1,
    input S,
    output Y
);

    assign Y = S ? I1 : I0;

endmodule




module mux4to1(
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

    wire w0;
    wire w1;

    
    mux2to1 M0(
        .I0(I0),
        .I1(I1),
        .S(S0),
        .Y(w0)
    );

    mux2to1 M1(
        .I0(I2),
        .I1(I3),
        .S(S0),
        .Y(w1)
    );

    mux2to1 M2(
        .I0(w0),
        .I1(w1),
        .S(S1),
        .Y(Y)
    );

endmodule