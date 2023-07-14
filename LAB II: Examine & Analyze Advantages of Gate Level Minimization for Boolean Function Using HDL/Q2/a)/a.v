// Q2. Simplify the following Boolean functions to a minimum number of literals and write HDL program for each functions.
     // a) F= XY +X′Z+YZ


// Simplified: A = X'Z + XY

// Gate-Level
module circuit3(A, X, Y, Z)
     input      X, Y, Z;
     output     A;
     wire       w1, w2, w3;
     and        G1(w1, X, Y);
     not        G2(w2, X);
     and        G3(w3, w2, Z);
     or         G4(A, w1, w3);
endmodule

// Data-Flow
module circuit3(A, X, Y, Z)
     input      X, Y, Z;
     output     A;
     wire       w1, w2, w3;
     assign     w1 = (X && Y);
     assign     w2 = !(X);
     assign     w3 = (w2 && Z);
     assign     A  = (w1 || w3);
endmodule
