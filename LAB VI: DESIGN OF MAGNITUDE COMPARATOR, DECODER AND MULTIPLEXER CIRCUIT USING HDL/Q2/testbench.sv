module testbench_2X1MUX;
  reg  s,i0,i1;
  wire y;
  circuit2 dut(s, i0, i1, y);

  initial
    begin
      $dumpfile("dump.vcd")
      $dumpvars(0, dut);

      #1
      s  <= 0;
      i0 <= 0;
      i1 <= 0;

      #1
      s  <= 0;
      i0 <= 0;
      i1 <= 1;
      
      #1
      s  <= 0;
      i0 <= 1;
      i1 <= 0;

      #1
      s  <= 0;
      i0 <= 1;
      i1 <= 1;

      #1
      s  <= 1;
      i0 <= 0;
      i1 <= 0;

      #1
      s  <= 1;
      i0 <= 0;
      i1 <= 1;

      #1
      s  <= 1;
      i0 <= 1;
      i1 <= 0;

      #1
      s  <= 1;
      i0 <= 1;
      i1 <= 1;

      #1

      $finish();
    end
endmodule
    
      
