module testbench();

  reg reset, en1, en2, load, clk;
  reg [11:0] val;
  wire [7:0] program_byte;
  wire [3:0] instr, oprnd;

  Eje1 a1(reset, en1, en2, load, clk, val, program_byte, instr, oprnd);

  initial begin
    #1

    clk = 0; en1 = 1; en2 = 1; val = 12'b0; reset = 0;

    $display("Ejercicio 1: lab 10");
    $display("Load         |program_byte| instr | oprnd");
    $monitor("%b |  %b  | %b  | %b", val, program_byte, instr, oprnd);

    #1 reset = 1;
    #1 reset = 0;


    #24 $finish;
    end

  always
  begin
    #1 clk = ~clk;
    end

    initial begin
      $dumpfile("Eje1_tb.vcd");
      $dumpvars(0, testbench);
    end

endmodule
