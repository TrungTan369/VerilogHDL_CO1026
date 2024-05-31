module compare_2bit(
    input [1:0] a, b,
    output lt, eq, gt
    );
    wire not_a0, not_a1;
    wire w1, w2, w3, w4, w5;
    not (not_a1, a[1]);
    not (not_a0, a[0]);
    and u1(w1, not_a1, b[1]);
    and u2(w2, not_a1, not_a0, b[0]);
    and u3(w3, not_a0, b[1], b[0]);
    xnor u4(w4, a[1], b[1]);
    xnor u5(w5, a[0], b[0]);
    or (lt, w1, w2, w3);
    and (eq, w4, w5);
    nor (gt, lt, eq);
endmodule
