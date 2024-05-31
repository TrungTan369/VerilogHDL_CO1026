`timescale 1ns / 1ps
module ripple_adder_4bit_tb();
    reg [3:0] a_tb, b_tb;
    reg c_in_tb;
    wire c_out_tb;
    wire [3:0] sum_tb;
    ripple_carry_adder_4bit add4bit(.a(a_tb), .b(b_tb), .c_in(c_in_tb), .c_out(c_out_tb), .sum(sum_tb));
    
    initial 
        begin
        a_tb = 4'b0000; b_tb = 4'b0000; c_in_tb = 0;
    #10 a_tb = 4'b0010; b_tb = 4'b0001; c_in_tb = 0;
    #10 a_tb = 4'b0001; b_tb = 4'b0001; c_in_tb = 0;
    #10 a_tb = 4'b0100; b_tb = 4'b0001; c_in_tb = 0;
    #10 a_tb = 4'b0100; b_tb = 4'b1010; c_in_tb = 0;
    #10 a_tb = 4'b0010; b_tb = 4'b0001; c_in_tb = 0;
    #10 a_tb = 4'b1000; b_tb = 4'b1001; c_in_tb = 0;
    #10 a_tb = 4'b0010; b_tb = 4'b0100; c_in_tb = 0;
    #10 a_tb = 4'b0100; b_tb = 4'b1010; c_in_tb = 1;
    #10 a_tb = 4'b0010; b_tb = 4'b1001; c_in_tb = 1;
    #10 a_tb = 4'b0100; b_tb = 4'b0010; c_in_tb = 1;
    #10 a_tb = 4'b1010; b_tb = 4'b1101; c_in_tb = 1;
    #10 a_tb = 4'b0101; b_tb = 4'b0011; c_in_tb = 1;
    #10 a_tb = 4'b1111; b_tb = 4'b0010; c_in_tb = 1;
    #10 a_tb = 4'b1010; b_tb = 4'b1000; c_in_tb = 1;
    #10 a_tb = 4'b1111; b_tb = 4'b0001; c_in_tb = 1;
    #10 $finish;
    end
endmodule