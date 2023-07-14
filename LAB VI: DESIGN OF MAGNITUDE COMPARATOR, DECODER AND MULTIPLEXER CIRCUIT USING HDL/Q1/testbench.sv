module testbench_mag1;
  reg  t_a, t_b;
  wire t_x, t_y, t_z;
  circuit1 dut(t_a, t_b, t_x, t_y, t_z);

  initial
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(0,dut);

      #1
      t_a <= 0;
      t_b <= 0;

      #1
      t_a <= 0;
      t_b <= 1;

      #1
      t_a <= 1;
      t_b <= 0;

      #1
      t_a <= 1;
      t_b <= 1;

      #1
      $finish();
    end
endmodule
