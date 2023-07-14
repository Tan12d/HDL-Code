// Q1. Design a combinational circuit with four inputs A, B, C, and D and one output F. F is to be equal to 1 when (A = 1 and B = 0), or when (A=0, B = 1, provided that 
// either C or D is equal to 1). F is also equal to 1 when (A=0, B=1, C=1 and D=1). Otherwise, the output is to be equal to 0.

// Gate-Level
module exp3(A, B, C, D, F);
  input   A, B, C, D;
  output  F;
  wire    w1, w2, w3, w4, w5;
  not     G1(w1, A);
  not     G2(w2, B);
  or      G3(w3, C, D);
  and     G4(w4, w1, B, w3);
  and     G5(w5, A, w2);
  or      G6(F, w4, w5);
endmodule

// Data-Flow
module exp3(A, B, C, D, F);
  input   A, B, C, D;
  output  F;
  assign  F = ((!(A)) && B && (C || D)) || (A && (!(B)));
endmodule
