module testbench_SRLATCH;
  reg   t_s, t_r;
  wire  t_q, t_w;
  circuit1 dut(t_s, t_r, t_q, t_w);

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0, dut);

      #1
      t_s <= 0;
      t_r <= 0;

      #1
      t_s <= 0;
      t_r <= 1;

      #1
      t_s <= 1;
      t_r <= 0;

      #1
      t_s <= 1;
      t_r <= 1;
      
      #1
      
      $finish();
    end
endmodule
