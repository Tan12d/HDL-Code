// Q3. Construct & record the output of circuit using HDL that implements the Boolean function:
         // F=A (B+C)
         // c) Construct the circuit using NOR gates 



// Gate-Level
module 3c(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1, w2;
  nor    G1(w1, A, B);
  nor    G2(w2, A, C);
  nor    G3(F, w1, w2);
endmodule

// Data-Flow
  module 3c(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1, w2;
    assign  w1 = !(A || A);
    assign  w2 = !(B || C);
    assign  F  = !(w1 || w2); 
  endmodule
