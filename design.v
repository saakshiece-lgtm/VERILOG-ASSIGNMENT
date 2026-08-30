

module half_subtractor(
    input A,
    input B,
    output Diff,
    output Borrow
);

    
    xor (Diff, A, B);
    and (Borrow, B, ~A);

endmodule