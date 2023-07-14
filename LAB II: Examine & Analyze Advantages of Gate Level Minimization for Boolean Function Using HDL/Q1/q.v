// Q1.  Write HDL code for the function F and for the simplified expression.
       // 𝐹 = 𝐴𝐵 + 𝐴𝐵′𝐶




// Gate-Level
module circuit1(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1, w2, w3;
  and    G1(w1, A, B);
  not    G2(w2, B);
  and    G3(w3, w2, A, C);
  or     G4(F, w1, w3);
endmodule

// Data-Flow
  module circuit1(A, B, C, F)
  input  (A, B, C);
  output F;
  wires  w1, w2, w3;
    assign  w1 = (A && B);
    assign  w2 = (!B);
    assign  w3 = (A && w2 && c);
    assign  F  = (w1 || w3)
  endmodule



// Simplified-  F = A ( B + C ) 


// Gate-Level
module circuit2(A, B, C, F)
  input  (A, B, C);
  output F;
  wire   w1;
  or     G1(w1, B, C);
  and    G2(F, w1, A);
endmodule

// Data-Flow
  module circuit2(A, B, C, F)
  input  (A, B, C);
  output F;
  wire   w1;
    assign  w1 = (B || C);
    assign  F  = (A && w1)
  endmodule

      

      
