// Q1. Investigation of the logic behavior of various gates using HDL:
 		// e) 7432 quadruple two-input OR gates 



// Gate-Level
module circuit5(A, B, X)
  input    (A, B);
  output   X;
  or       G1(X, A, B);
endmodule

// Data-Flow
  module circuit5(A, B, X)
  input     (A, B);
  output    X;
    assign  X = (A || B);
  endmodule
