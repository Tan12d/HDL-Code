// Q3. Construct & record the output of circuit using HDL that implements the Boolean function:
        // F=A (B+C)
        // a) Construct the circuit using Logic gates.



// Gate-Level
module 3a(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1;
  or     G1(w1, B, C);
  and    G2(F, A, w1);
endmodule

// Data-Flow
  module 3a(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1;
    assign  w1 = (B || C);
    assign  F  = (A && w1);
  endmodule
