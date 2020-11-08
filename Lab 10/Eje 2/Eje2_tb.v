module testbench();

  reg clk, reset;
  reg [2:0] en, f;
  reg [3:0] b;
  wire carry, zero;
  wire [3:0] y;

  eje2 a1(clk, reset, en, f, b, carry, zero, y);

  initial begin
  #1

  clk = 0; en[2] = 1; en[1] = 1; en[0] = 1; b = 4'b0; f = 3'b010;
  reset = 0;
  $display("Ejercicio 2: Lab 10");
  $display("B | Y | C | Z");
  $monitor("%b | %b | %b | %b", b, y, carry, zero);
  #1 reset = 1;
  #1 reset = 0; f = 3'b010; b = 4'b1111;
  #1 f = 3'b000; b = 4'b0001;
  #1 f = 3'b001; b = 4'b0101;
  #1 f = 3'b011; b = 4'b0100;
  #1 f = 3'b100; b = 4'b0000;

  #30 $finish;
  end

  always
  begin
    #1 clk = ~clk;
    end

    initial begin
      $dumpfile("Eje2_tb.vcd");
      $dumpvars(0, testbench);
    end

endmodule
