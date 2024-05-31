module full_adder( a, b, c_in, c_out, sum);
  input a, b, c_in;
  output c_out, sum ;
  wire c1,c2, s1;
  half_adder ha1(.a(a), .b(b), .carry(c1), .sum(s1));
  half_adder ha2(.a(s1), .b(c_in), .carry(c2), .sum(sum));
  or u1(c_out, c1, c2);
endmodule
