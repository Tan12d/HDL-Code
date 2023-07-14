module testbench_JKFF;
  reg   t_s, t_r, t_q;
  wire  t_t;
  circuit3 dut(t_s, t_r, t_q, t_t);

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0, dut);

      #1
      t_s <= 0;
      t_r <= 0;
      t_q <= 0;

      #1
      t_s <= 0;
      t_r <= 0;
      t_q <= 1;

      #1
      t_s <= 0;
      t_r <= 1;
      t_q <= 0;

      #1
      t_s <= 0;
      t_r <= 1;
      t_q <= 1;

      #1
      t_s <= 1;
      t_r <= 0;
      t_q <= 0;

      #1
      t_s <= 1;
      t_r <= 0;
      t_q <= 1;

      #1
      t_s <= 1;
      t_r <= 1;
      t_q <= 0;

      #1
      t_s <= 1;
      t_r <= 1;
      t_q <= 1;

      #1
      
      $finish();
    end
endmodule
