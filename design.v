

module decoder2to4(
    input A,
    input B,
    input En,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

    wire nA;
    wire nB;

    
    not (nA, A);
    not (nB, B);

    
    and (Y0, En, nA, nB);
    and (Y1, En, nA, B);
    and (Y2, En, A, nB);
    and (Y3, En, A, B);

endmodule