

module decoder_1to2(
    input in,
    output out1,
    output out2
    );
    not (out1, in);
    and (out2, in, 1);
    
endmodule
