module multiplexer_2to1(
    input in1,
    input in2,
    input sel,
    output out
    );
    wire a, b, c, d;
    decoder_1to2 de(.in(sel), .out1(c), .out2(d));
    and u1(a, in1, c);
    and u2(b, in2, d);
    or (out, a, b);
endmodule
