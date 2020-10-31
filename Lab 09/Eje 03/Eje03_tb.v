module testbench();

  reg clk, reset, en, j, k;
  wire q;

  ffjk a1(clk, reset, en, j, k, q);

  initial begin
    #1

    clk = 0; reset = 0; en = 1; j = 0; k = 0;
    $display("Ejercicio 3: Flip Flop JK");
    $display("J | K | Q");
    $monitor("%b | %b | %b", j, k, q);
    #1 reset = 1;
    #1 reset = 0;
    #3 k = 1;
    #10 j = 1; k = 0;
    #10 k = 1;

    #30 $finish;
    end

  always
  begin
    #1 clk = ~clk;
    end

  initial begin
    $dumpfile("Eje03_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
