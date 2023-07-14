// Q2.	Design a combinational circuit with four inputs and four outputs that converts a 4bit binary number into the equivalent 4bit Gray code.


// Gate-Level
module Lab2(w, x, y, z, A, B, C, D);
  input    w, x, y, z;
  output   A, B, C, D;
  xor      G1(B, w, x);
  xor      G2(C, x, y);
  xor      G3(D, y, z);
endmodule

// Data-Flow
module Lab2(w, x, y, z, A, B, C, D);
  input    w, x, y, z;
  output   A, B, C, D;
  assign   A = w;
  assign   B = w ^ x;
  assign   C = x ^ y;
  assign   D = y ^ z;
endmodule
