`timescale 1ns / 1ps
module multiplexer_2to1_tb();
    reg in1_tb, in2_tb, sel_tb;
    wire out_tb;
    multiplexer_2to1 dut(.in1(in1_tb), .in2(in2_tb), .sel(sel_tb), .out(out_tb));
    initial begin 
        $monitor("%t: in_1: %b, in_2: %b, select: %b,  -> output: %b",
                             $time, in1_tb, in2_tb, sel_tb, out_tb);
        end
        
    initial begin
        in1_tb =0; in2_tb =0; sel_tb = 0;
    #10 in1_tb =0; in2_tb =0; sel_tb = 1;
    #10 in1_tb =0; in2_tb =1; sel_tb = 0;
    #10 in1_tb =0; in2_tb =1; sel_tb = 1;
    #10 in1_tb =1; in2_tb =0; sel_tb = 0;
    #10 in1_tb =1; in2_tb =0; sel_tb = 1;
    #10 in1_tb =1; in2_tb =1; sel_tb = 0;
    #10 in1_tb =1; in2_tb =1; sel_tb = 1;
    #10 $finish; 
    end
endmodule
