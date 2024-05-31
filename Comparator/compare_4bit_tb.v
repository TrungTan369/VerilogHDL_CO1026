`timescale 1ns / 1ps
module compare_4bit_tb(  );
    reg [3:0] a_tb, b_tb;
    wire lt_tb, gt_tb, eq_tb;
    
    compare_4bit dut(.a(a_tb), .b(b_tb), .lt(lt_tb), .gt(gt_tb), .eq(eq_tb));
    initial begin
            a_tb = 4'b0000; b_tb = 4'b0000;
        #10 a_tb = 4'b0001; b_tb = 4'b1010;
        #10 a_tb = 4'b1111; b_tb = 4'b1101;
        #10 a_tb = 4'b1001; b_tb = 4'b1110;
        #10 a_tb = 4'b0101; b_tb = 4'b1010;
        #10 a_tb = 4'b1110; b_tb = 4'b0000;
        #10 a_tb = 4'b0001; b_tb = 4'b0000;
        #10 a_tb = 4'b1111; b_tb = 4'b1111;
        #10 $finish;
    end
endmodule
