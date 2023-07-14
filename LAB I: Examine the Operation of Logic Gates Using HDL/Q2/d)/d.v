// Q2. Using a single 7400 IC, connect and implement a circuit using HDL that   produces
       // d) A two-input XOR.



// Gate-Level
module Xor(A, B, X)
  input  (A, B);
  output X;
  wire  w1, w2, w3;
  nand   G1(w1, A, B);
  nand   G2(w2, A, w1);
  nand   G3(w3, B, w1);
  nand   G4(X, w2, w3);
endmodule

// Data-Flow
  module circuit1(A, B, X)
  input     (A, B);
  output    X;
  wire     w1, w2, w3;
    assign  w1 = !(A && B);
    assign  w2 = !(A && w1);
    assign  w3 = !(B && w1);
    assign  X  = !(w2 && w3);
  endmodule
