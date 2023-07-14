// 1. Investigation of the logic behavior of various gates using HDL:
 	// a) 7400 quadruple two-input NAND gates 


// Gate-Level
module circuit1(A, B, X)
  input  (A, B);
  output X;
  nand   G1(X, A, B);
endmodule

// Data-Flow
  module circuit1(A, B, X)
  input     (A, B);
  output    X;
    assign  X = !(A && B);
  endmodule
