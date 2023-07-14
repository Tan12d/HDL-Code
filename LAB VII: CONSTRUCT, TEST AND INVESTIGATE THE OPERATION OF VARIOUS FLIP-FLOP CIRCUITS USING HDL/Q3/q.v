// Q3. Design and test JK flip-flop.


// design.sv

// Data-Flow
module circuit3(J, K, Q, T);
  input    J, K, Q;
  output   T;
  assign   T = ((!(Q)) && J) || (Q && (!(K)));
endmodule
