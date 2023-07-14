module testbench_3X8DECODER;
  reg   t_x, t_y, t_z;
  wire  t_d0, t_d1, t_d2, t_d3, t_d4, t_d5, t_d6, t_d7, t_s, t_c;
  circuit3 dut(t_x, t_y, t_z, t_d0, t_d1, t_d2, t_d3, t_d4, t_d5, t_d6, t_d7, 
               t_s, t_c);

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0, dut);

      #1
      t_x <= 0;
      t_y <= 0;
      t_z <= 0;

      #1
      t_x <= 0;
      t_y <= 0;
      t_z <= 1;

      #1
      t_x <= 0;
      t_y <= 1;
      t_z <= 0;

      #1
      t_x <= 0;
      t_y <= 1;
      t_z <= 1;

      #1
      t_x <= 1;
      t_y <= 0;
      t_z <= 0;

      #1
      t_x <= 1;
      t_y <= 0;
      t_z <= 1;

      #1
      t_x <= 1;
      t_y <= 1;
      t_z <= 0;

      #1
      t_x <= 1;
      t_y <= 1;
      t_z <= 1;

      #1

      $finish();
    end
endmodule
      
