// Q2. Using a single 7400 IC, connect and implement a circuit using HDL that   produces
     // c) A two-input OR.



// Gate-Level
module Or(A, B, X)
  input  (A, B);
  output X;
  wires  w1,w2;
  nand   G1(w1, A, A);
  nand   G2(w2, B, B);
  nand   G3(X, w1, w2);
endmodule

// Data-Flow
  module Or(A, B, X)
  input     (A, B);
  output    X;
  wires     w1,w2;
    assign  w1 = !(A && A);
    assign  w2 = !(A && B);
    assign  X  = !(w1 && w2);
  endmodule
