`timescale 1ns / 1ps
module one_to_2_decoder_tb();
reg t_a, t_b;
wire SUM, CARRY;
one_to_2_decoder dut(.a(t_a), .b(t_b), .sum(SUM), .carry(CARRY));
initial
    begin
    t_a = 0; t_b = 0;
    #10
    
    t_a = 0; t_b = 1;
    #10
    
    t_a = 1; t_b = 0;
    #10
    
    t_a = 1; t_b = 1;
    #10
    $stop;
    end
endmodule
