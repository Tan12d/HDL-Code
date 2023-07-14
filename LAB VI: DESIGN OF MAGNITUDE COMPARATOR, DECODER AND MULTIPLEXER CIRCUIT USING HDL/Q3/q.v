// Q3. Design a combinational circuit for a full adder using 3 to 8 line decoder and external OR gates.


// design.sv

// Data-Flow
module circuit3(x, y, z, D0, D1, D2, D3, D4, D5, D6, D7, S, C);
  input     x, y, z;
  output    D0, D1, D2, D3, D4, D5, D6, D7, S, C;
  assign    D0 = (!(x)) && (!(y)) && (!(z));
  assign    D1 = (!(x)) && (!(y)) && (z);
  assign    D2 = (!(x)) && (y) && (!(z));
  assign    D3 = (!(x)) && (y) && (z);
  assign    D4 = (x) && (!(y)) && (!(z));
  assign    D5 = (x) && (!(y)) && (z);
  assign    D6 = (x) && (y) && (!(z));
  assign    D7 = (x) && (y) && (z);
  assign    S = D1 || D2 || D4 || D7;
  assign    C = D3 || D5 || D6 || D7;
endmodule
