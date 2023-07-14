// Q1.	Design a combinational circuit with four input lines that represent a decimal digit in BCD and four output lines that generate the 9’s complement of the input digit.


// Gate-Level
module Lab1(w, x, y, z, A, B, C, D);
  input    w, x, y, z;
  output   A, B, C, D;
  wire     w1, w2, w3, w4, w5;
  not      G1(w1, w);
  not      G2(w2, x);
  not      G3(w3, y);
  not      G4(D, z);
  and      G5(w5, w1, w2);
  and      G6(A, w5, w3);
  xor      G7(B, x, y);
endmodule

// Data-Flow
module Lab1(w, x, y, z, A, B, C, D);
  input    w, x, y, z;
  output   A, B, C, D;
  wire     w1;
  assign   w1 = !(w) &&  !(x);
  assign   A  = !(y) && w1;
  assign   B  = x ^ y;
  assign   C  = y;
  assign   D  = !(z);
endmodule
