module testbench();

  reg clk, reset, en;
  wire q;

  fft a(clk, en, reset, q);

  initial begin

  #1
  clk = 0; en = 1; reset = 0;
  $display("Ejercicio 02: Flip FLop T");
  $display("| Q |");
  $monitor("| %b |", q);
  #1 reset = 1;
  #1 reset = 0;

  #20 $finish;
  end

  always
   #1 clk = ~clk;

   initial begin
     $dumpfile("Eje_02_tb.vcd");
     $dumpvars(0, testbench);
   end

endmodule
