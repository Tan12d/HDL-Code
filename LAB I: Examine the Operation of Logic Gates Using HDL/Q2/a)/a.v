// Q2. Using a single 7400 IC, connect and implement a circuit using HDL that   produces
     // a) An inverter.



// Gate-Level
module Not(A, X)
  input  (A);
  output X;
  nand   G1(X, A, A);
endmodule

// Data-Flow
  module Not(A, X)
  input     (A);
  output    X;
    assign  X = !(A && A);
  endmodule
