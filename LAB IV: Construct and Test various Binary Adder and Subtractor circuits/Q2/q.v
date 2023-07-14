// Q2. Design, construct, and test a Half Subtractor circuit using two ICs, 7486(XOR) and 7400(NAND).


// Gate-Level
module Exp2(x, Y, D, B);
  input    X, Y;
  output   D, B;
  wire     w1, w2;
  xor      G1(D, X, Y);
  nand     G2(w1, X, Y);
  nand     G3(w2, w1, Y);
  nand     G4(B, w1, w2);
endmodule

// Data-Flow
module Exp2(x, Y, D, B);
  input    X, Y;
  output   D, B;
  wire     w1, w2;
  assign   D  = (X ^ Y);
  assign   w1 = !(X && Y);
  assign   w2 = !(w1 && Y);
  assign   B  = !(w2 && W2);
endmodule
