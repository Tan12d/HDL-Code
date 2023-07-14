// Q1. Design, construct and test a Full Adder circuit using two ICs, 7486(XOR) and 7400(NAND).


// Gate-Level
module Exp1(A, B, D, S, C);
  input    A, B, D;
  output   S, C;
  wire     w1, w2, w3;
  xor      G1(w1, A, B);
  xor      G2(S, w1, D);
  nand     G3(w2, w1, D);
  nand     G4(w3, A, B);
  nand     G5(C, w2, w3);
endmodule

// Data-Flow
module Exp1(A, B, D, S, C);
  input    A, B, D;
  output   S, C;
  wire     w1, w2, w3;
  assign   w1 = (A ^ B);
  assign   S  = (w1 ^ D);
  assign   w2 = !(w1 && D);
  assign   w3 = !(A && B);
  assign   C  = !(w2 && w3);
endmodule
