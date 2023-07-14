// Q2.	Design a combinational circuit for a 2 X 1 Multiplexer that will select the binary information from one of the two input lines and direct it to a single output
// line based on the value of a selection line.



// design.sv

// Data-Flow
module circuit2(S, I0, I1, Y);
  input   S, I0, I1;
  output  Y;
  assign  Y = ((!(S)) && I0) || (S && I1);
endmodule
