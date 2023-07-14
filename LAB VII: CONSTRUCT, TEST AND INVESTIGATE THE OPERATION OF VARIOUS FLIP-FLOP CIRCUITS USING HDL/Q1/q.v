// Q1. Design and test SR latch.


// design.sv

// Data-Flow

module circuit1(S, R, Q, T);
  input     S, R;
  output    Q, T;
  nand      G1(Q, S, T);
  nand      G2(T, R, Q);
endmodule
  
