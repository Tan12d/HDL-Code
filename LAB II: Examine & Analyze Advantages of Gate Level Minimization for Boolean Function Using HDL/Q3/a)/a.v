// Q3. Consider two Boolean functions in sum-of-min terms form:
        // F1 (A, B, C, D) = (0, 1, 2, 3, 4, 6, 8, 9, 10, 11) 
        // F2 (A, B, C, D) = (3, 5, 7, 8, 10, 11, 13, 15) 
        // a. Implement both the functions using a minimum number of NAND ICs


// F1 =  B' + A'D'

// Gate-Level
module circuit4(F1, A, B, D);
  input    A, B, D;
  output   F1;
  wire     w1, w2, w3, w4;
  not      G1(w1, A);
  not      G2(w2, B);
  not      G3(w3, D);
  and      G4(w4, w1, w3);
  or       G5(F1, w2, w4);
endmodule

// Data-Flow
module circuit4(F1, A, B, D);
  input    A, B, D;
  output   F1;
  wire     w1, w2, w3, w4;
  assign   w1 = !(A);
  assign   w2 = !(B);
  assign   w3 = !(D);
  assign   w4 = (w1 && w3);
  assign   F1 = (w2 || w4);
endmodule



// F2 = BD + CD + AB'D'

// Gate-Level
module circuit5(F1, A, B, C, D);
  input    A, B, C, D;
  output   F2;
  wire     w1, w2, w3, w4;
  not      G1(w1, B);
  not      G2(w2, D);
  and      G3(w3, B, D);
  and      G4(w4, C, D);
  and      G5(w5, w1, w2, A);
  or       G6(F2, w3, w4, w5);
endmodule

// Data-Flow
module circuit5(F1, A, B, c, D);
  input    A, B, c, D;
  output   F2;
  wire     w1, w2, w3, w4, w5;
  assign   w1 = !(B);
  assign   w2 = !(D);
  assign   w3 = (B && D);
  assign   w4 = (C && D);
  assign   w5 = (A && w1 && w2);
  assign   F2 = (w3 || w4 || w5);
endmodule
