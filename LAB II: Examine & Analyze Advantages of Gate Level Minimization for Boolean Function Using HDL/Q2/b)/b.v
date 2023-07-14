// Q2. Simplify the following Boolean functions to a minimum number of literals and write HDL program for each functions.
        // b) F= (X′Y′ + Z)′ + Z + XY + WZ 



// Simplified- A = X + Y + Z

// Gate-Level
module circuit4(A, X, Y, Z)
  input     X, Y, Z;
  output    A;
  wire      w1;
  or        G1(w1, X, Y);
  or        G2(A, w1, Z);
endmodule

//Data-Flow
module circuit4(A, X, Y, Z)
  input     X, Y, Z;
  output    A;
  wire      w1;
  assign    w1 = (X || Y);
  assign    A  = (w1 || Z);
endmodule
