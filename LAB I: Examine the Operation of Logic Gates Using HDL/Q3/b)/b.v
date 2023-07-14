// Q3. Construct & record the output of circuit using HDL that implements the Boolean function:
         // F=A (B+C)
         // b) Construct the circuit using NAND gates 



// Gate-Level
module 3b(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1, w2;
  nand   G1(w1, A, B);
  nand   G2(w2, A, C);
  nand   G3(F, w1, w2);
endmodule

// Data-Flow
  module 3b(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1, w2;
    assign  w1 = !(A && B);
    assign  w2 = !(A && C);
    assign  F  = !(w1 && w2); 
  endmodule
