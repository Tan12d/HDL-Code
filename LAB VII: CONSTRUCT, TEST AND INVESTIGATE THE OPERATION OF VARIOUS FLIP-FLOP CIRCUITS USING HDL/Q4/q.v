// Q4.	Realize the function of T flip flop using JK flip-flop. 


// design.sv

// Data-Flow
module circuit4(Q, T, X);
  input     Q, T;
  output    X;
  assign    X = Q ^ T;
endmodule;

  
