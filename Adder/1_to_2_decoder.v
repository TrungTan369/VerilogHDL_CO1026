`timescale 1ns / 1ps
module a1_to_2_decoder(a, b, sum, carry);
input a, b;
output sum, carry;

assign sum = a ^ b;
assign carry = a & b;
endmodule
