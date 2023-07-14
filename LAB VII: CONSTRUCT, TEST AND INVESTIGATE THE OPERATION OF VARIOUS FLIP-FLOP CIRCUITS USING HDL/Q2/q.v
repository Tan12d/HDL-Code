// Q2. Design and test SR flip-flop.



// design.sv

// Data-Flow
module circuit2(S, R, Q, T);
  input     S, R;
  output    Q, T;
  assign    T = S || (Q && (!(R)));
endmodule
