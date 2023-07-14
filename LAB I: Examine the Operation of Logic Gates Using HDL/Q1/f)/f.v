// Q1. Investigation of the logic behavior of various gates using HDL:
     // f) 7486 quadruple two-input XOR gates



// Gate-Level
module circuit6(A, B, X)
  input    (A, B);
  output   X;
  xor      G1(X, A, B);
endmodule

// Data-Flow
  module circuit6(A, B, X)
  input     (A, B);
  output    X;
    assign  X = (A ^ B);
  endmodule
