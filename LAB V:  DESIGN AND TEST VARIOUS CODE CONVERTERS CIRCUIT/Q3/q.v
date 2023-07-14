// Q3.	Design a combinational circuit that accepts a 2-bit number and generates an output binary number equal to the square of the input number.


// Gate-Level
module Lab3(x, y, A, B, C, D);
  input    x, y;
  output   A, B, C, D;
  wire     w1;
  not      G1(w1, y);
  and      G2(A, x, y);
  and      G3(B, x, w1);
endmodule

// Data-Flow
module Lab3(x, y, A, B, C, D);
  input    x, y;
  output   A, B, C, D;
  wire     w1;
  assign   w1 = !(y);
  assign   A  = x && y;
  assign   B  = x && w1;
  assign   D  = y;
endmodule
