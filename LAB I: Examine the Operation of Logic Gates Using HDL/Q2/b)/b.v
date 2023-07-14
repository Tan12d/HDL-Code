// Q2. Using a single 7400 IC, connect and implement a circuit using HDL that   produces
     // b) A two-input AND. 



// Gate-Level
module And(A, B, X)
  input  (A, B);
  output X;
  wire  w1;
  nand   G1(w1, A, B);
  nand   G2(X, w1, w1);
endmodule

// Data-Flow
  module And(A, B, X)
  input     (A, B);
  output    X;
    wire   w1;
    assign  w1 = !(A && B);
    assign  X  = !(w1 && w1);
  endmodule
