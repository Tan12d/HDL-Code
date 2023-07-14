// Q4. Design a combinational circuit that compares two 2 bit numbers A and B to check if they are equal or not.


// Gate-Level
module Exp6(A0, B0, A1, B1, F);
  input    A0, B0, A1, B1;
  output   F;
  wire     w1, w2, w3, w4;
  xor      G1(w1, A1, B1);
  xor      G2(w2, A0, B0);
  not      G3(w3, w1);
  not      G4(w4, w2);
  not      G5(F, w3, w34;
endmodule

// Data-Flow
module Exp6(A0, B0, A1, B1, F);
  input    A0, B0, A1, B1;
  output   F;
  assign   F = !(A1 ^ B1) && !(A0 ^ B0);
endmodule
