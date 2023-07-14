// Q1. Investigation of the logic behavior of various gates using HDL:
 	  // c) 7404 hex inverters 

// Gate-Level
module circuit3(A, X)
  input   (A);
  output  X;
  not     G1(X, A);
endmodule

// Data-Flow
  module circuit3(A, B, X)
  input     (A, B);
  output    X;
    assign  X = !(A);
  endmodule
