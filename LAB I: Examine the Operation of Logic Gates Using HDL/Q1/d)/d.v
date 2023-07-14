// Q1. Investigation of the logic behavior of various gates using HDL:
 	  // d) 7408 quadruple two-input AND gates



// Gate-Level
module circuit4(A, B, X)
  input  (A, B);
  output X;
  and   G1(X, A, B);
endmodule

// Data-Flow
  module circuit4(A, B, X)
  input     (A, B);
  output    X;
    assign  X = (A && B);
  endmodule
