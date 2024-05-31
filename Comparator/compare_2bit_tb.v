`timescale 1ns / 1ps
module compare_2bit_tb();
    reg [1:0] a_tb, b_tb;
    wire lt_tb, gt_tb, eq_tb;
    compare_2bit dut(.a(a_tb), .b(b_tb), .eq(eq_tb), .lt(lt_tb), .gt(gt_tb));
    initial begin
        a_tb = 2'b00; b_tb = 2'b00;
    #10 a_tb = 2'b00; b_tb = 2'b01;
    #10 a_tb = 2'b00; b_tb = 2'b10;
    #10 a_tb = 2'b00; b_tb = 2'b11;
    #10 a_tb = 2'b01; b_tb = 2'b00;
    #10 a_tb = 2'b01; b_tb = 2'b01;
    #10 a_tb = 2'b01; b_tb = 2'b10;
    #10 a_tb = 2'b01; b_tb = 2'b11;
    #10 a_tb = 2'b10; b_tb = 2'b00;
    #10 a_tb = 2'b10; b_tb = 2'b01;
    #10 a_tb = 2'b10; b_tb = 2'b10;
    #10 a_tb = 2'b10; b_tb = 2'b11;
    #10 a_tb = 2'b11; b_tb = 2'b00;
    #10 a_tb = 2'b11; b_tb = 2'b01;
    #10 a_tb = 2'b11; b_tb = 2'b10;
    #10 a_tb = 2'b11; b_tb = 2'b11;
    #10 $finish;
    end
endmodule
