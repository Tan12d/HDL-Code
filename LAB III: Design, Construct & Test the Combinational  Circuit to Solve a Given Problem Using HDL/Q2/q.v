// Q2. Design and test a 3 input majority circuit using NAND gates with a minimum number of ICs. A majority logic is a digital circuit whose output is equal to 1 if 
// the majority of the inputs are 1’s. The output is 0 otherwise.

// Gate-Level
module Exp4(A, B, C, F);
  input    A, B, C;
  output   F;
  wire     w1, w2, w3;
  nand     G1(w1, A, B);
  nand     G2(w2, B, C);
  nand     G3(w3, A, C);
  nand     G4(F, w1, w2, w3);
endmodule

// Data-Flow
module Exp4(A, B, C, F);
  input    A, B, C;
  output   F;
  assign   F = !((!(A && B)) && (!(B && C)) && (!(A && C)));
endmodule
