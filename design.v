
module mux4to1(
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

    
    assign Y = (S1 == 1'b0 && S0 == 1'b0) ? I0 :
               (S1 == 1'b0 && S0 == 1'b1) ? I1 :
               (S1 == 1'b1 && S0 == 1'b0) ? I2 :
                                              I3;

endmodule


module xor_gate_mux(
    input A,
    input B,
    output Y
);

    

    mux4to1 M1(
        .I0(1'b0),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .S1(A),
        .S0(B),
        .Y(Y)
    );

endmodule