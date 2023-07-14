// Q1.	Design a combinational circuit for a 1 bit magnitude comparator.


// design.sv

// Gate-Level
// Gate-Level
module Lab1(A, B, x, y, z);
  input    A, B;
  output   x, y, z;
  wire     w1, w2;
  not      G1(w1, A);
  not      G2(w2, B);  
  and      G3(x, A, w2);  
  xnor     G4(y, A, B);
  and      G5(z, w1, B);
endmodule

// Data-Flow
module Lab1(A, B, x, y, z);
  input    A, B;
  output   x, y, z;
  assign   x = A && !(B);
  assign   y = !(A ^ B);
  assign   z = !(A) && (B);
endmodule
