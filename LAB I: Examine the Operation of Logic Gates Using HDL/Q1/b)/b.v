//  1. Investigation of the logic behavior of various gates using HDL:
   // b) 7402 quadruple two-input NOR gates 



// Gate-Level
module circuit2(A, B, X)
  input  (A, B);
  output X;
  nor    G1(X, A, B);
endmodule

// Data-Flow
  module circuit2(A, B, X)
  input     (A, B);
  output    X;
    assign  X = !(A || B);
  endmodule
