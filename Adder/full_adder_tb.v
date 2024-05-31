`timescale 1ns / 1ps

module full_adder_tb();
    reg a_tb, b_tb, c_in_tb;
    wire c_out_tb, sum_tb;
    full_adder dut(.a(a_tb), .b(b_tb), .c_in(c_in_tb), .c_out(c_out_tb), .sum(sum_tb)); 
    initial begin
        a_tb = 0; b_tb = 0; c_in_tb = 0;
    #10 a_tb = 0; b_tb = 0; c_in_tb = 1;
    #10 a_tb = 0; b_tb = 1; c_in_tb = 0;
    #10 a_tb = 0; b_tb = 1; c_in_tb = 1;
    #10 a_tb = 1; b_tb = 0; c_in_tb = 0;
    #10 a_tb = 1; b_tb = 0; c_in_tb = 1;
    #10 a_tb = 1; b_tb = 1; c_in_tb = 0;
    #10 a_tb = 1; b_tb = 1; c_in_tb = 1;
    #10 $finish;
    end
endmodule
