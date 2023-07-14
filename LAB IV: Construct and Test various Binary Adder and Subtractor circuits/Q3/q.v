// Q3. Design, construct, and test a 2 bit Parallel Adder circuit.


// Gate-Level
module Exp3(A0, A1, B0, B1, S0, S1, C1);
  input    A0, A1, B0, B1;
  output   S0, S1, C1;
  wire     w1, w2;
  xor      G1(S0, A0, B0);
  nand     G2(w1, A0, B0);
  nand     G3(w2, w1, w1);
  xor      G4(w3, A1, B1);
  xor      G5(S1, w2, w3);
  nand     G6(w4, w2, w3);
  nand     G7(w5, A1, B1);
  nand     G8(C1, w4, w5);
endmodule

// Data-Flow
module Exp3(A0, A1, B0, B1, S0, S1, C1);
  input    A0, A1, B0, B1;
  output   S0, S1, C1;
  wire     w1, w2;
  assign   S0 = (A0 ^ B0);
  assign   w1 = !(A0 && B0);
  assign   w2 = !(w1 && w1);
  assign   w3 = (A1 ^ B1);
  assign   S1 = (w2 ^ w3);
  assign   w4 = !(w2 && w3);
  assign   w5 = !(A1 && B1);
  assign   C1 = !(w4 && w5);
endmodule
