// Q3. Design, construct, and test a circuit that generates an even parity bit from four message bits.


// Gate-Level
module Exp5(A, B, C, D, F);
  input    A, B, C, D;
  output   F;
  wire     w1, w2;
  xor      G1(w1, A, B);
  xor      G2(w2, C, D);
  xor      G3(F, w1, w2);
endmodule

// Data-Flow
module Exp5(A, B, C, D, F);
  input    A, B, C, D;
  output   F;
  assign   F = (A ^ B ^ C ^ D);
endmodule
