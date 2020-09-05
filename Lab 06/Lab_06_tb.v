module testbench();

   reg clk, reset, en, v1, v2, co;
   reg [3:0] d;
   wire  [3:0] q;
   wire s1, A, B, C;
   wire [1:0] e, ef;
   wire [2:0] E, Ef;

   ff_4 a1(clk, reset, en, d, q);
   eje1 a2(clk, reset, v1, v2, s1, e, ef);
   gray a3(clk, reset, co, A, B, C, E, EF);

   //Ejercicio 5
   initial begin

    clk = 1;

    $display ("Ejercicio 5");
    $display ("-----------");
    $display ("-D-  | -Q-");
    $monitor("%b | %b", d, q);

    reset = 0; en = 1; d[3] = 0; d[2] = 0; d[1] = 0; d[0] = 0;
    #1 reset = 1;
    #1 reset = 0;
    #4 d[3] = 0; d[2] = 1; d[1] = 1; d[0] = 1;
    #4 d[3] = 1; d[2] = 1; d[1] = 0; d[0] = 1;
    #4 d[3] = 0; d[2] = 1; d[1] = 1; d[0] = 1;
    #4 d[3] = 0; d[2] = 1; d[1] = 0; d[0] = 0;
    #4 d[3] = 0; d[2] = 1; d[1] = 1; d[0] = 1;
    #4 d[3] = 1; d[2] = 1; d[1] = 0; d[0] = 0;
    #4 d[3] = 0; d[2] = 1; d[1] = 1; d[0] = 0;

    end

   //Ejercicio 1
   initial begin
    #40

    $display ("\n");
    $display ("Ejercicio 1, Mealy");
    $display ("------------------");
    $display ("A \t B | \t Y \t S \t Sf");
    $monitor ("%b \t %b | \t %b \t %b \t %b", v1, v2, s1, e, ef);

    reset = 0; v1 = 0; v2 = 0;
    #1 reset = 1;
    #1 reset = 0;
    #4 v1 = 1; v2 = 0;
    #8 v2 = 1;
    #16 v1 = 0; v2 = 0;
    #16 v1 = 1; v2 = 1;

   end

   //Ejercicio 3
   initial begin
    #100

    $display ("\n");
    $display ("Ejercicio 3, Contador de gray");
    $display ("-----------------------------");
    $display ("Co | A B C |  S  SF");
    $monitor ("%b  | %b %b %b | %b %b", co, A, B, C, E, EF);

    reset = 0; co = 0;
    #1 reset = 1;
    #1 reset = 0;
    #16 co = 1;
    #16 co = 0;

    $finish;
   end

   always
    #1 clk = ~clk;

    initial begin

      $dumpfile("Lab_06_tb.vcd");
      $dumpvars(0, testbench);

    end

endmodule
