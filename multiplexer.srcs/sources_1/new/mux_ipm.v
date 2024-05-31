module top(
    input wire clk,
    input wire [1:0] btn,   // in1 and in2
    input wire [1:0] sw,    // sel
    output wire [1:0] led   // out
    );
    
    wire in1, in2, sel, out;

    assign in1 = btn[0];
    assign in2 = btn[1];
    assign sel = sw[0];
    assign led[0] = out;

    // Instantiate the 2-to-1 multiplexer
    multiplexer_2to1 mux (
        .in1(in1),
        .in2(in2),
        .sel(sel),
        .out(out)
    );
endmodule