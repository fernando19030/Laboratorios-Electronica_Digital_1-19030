module testbench();

  reg p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18;
  wire sa1, sa2, sa3, sa4, sa5, sa6;

  m8t1 m1(p1, p2, p3, sa1);
  m4t1 m2(p4, p5, p6, sa2);
  m2t1 m3(p7, p8, p9, sa3);
  m8t2 m4(p10, p11, p12, sa4);
  m4t2 m5(p13, p14, p15, sa5);
  m2t2 m6(p16, p17, p18, sa6);

  initial begin

    $display("Mux 8:1 Tabla 01");
    $display("A B C | Y");
    $monitor("%b %b %b | %b", p1, p2, p3, sa1);

       p1 = 0; p2 = 0; p3 = 0;
    #1 p1 = 0; p2 = 0; p3 = 1;
    #1 p1 = 0; p2 = 1; p3 = 0;
    #1 p1 = 0; p2 = 1; p3 = 1;
    #1 p1 = 1; p2 = 0; p3 = 0;
    #1 p1 = 1; p2 = 0; p3 = 1;
    #1 p1 = 1; p2 = 1; p3 = 0;
    #1 p1 = 1; p2 = 1; p3 = 1;

  end

  initial begin

  #9

  $display("\n");
  $display("Mux 4:1 Tabla 01");
  $display("A B C | Y");
  $monitor("%b %b %b | %b", p4, p5, p6, sa2);

       p4 = 0; p5 = 0; p6 = 0;
    #1 p4 = 0; p5 = 0; p6 = 1;
    #1 p4 = 0; p5 = 1; p6 = 0;
    #1 p4 = 0; p5 = 1; p6 = 1;
    #1 p4 = 1; p5 = 0; p6 = 0;
    #1 p4 = 1; p5 = 0; p6 = 1;
    #1 p4 = 1; p5 = 1; p6 = 0;
    #1 p4 = 1; p5 = 1; p6 = 1;

  end

  initial begin

  #18

  $display("\n");
  $display("Mux 2:1 Tabla 01");
  $display("A B C | Y");
  $monitor("%b %b %b | %b", p7, p8, p9, sa3);

       p7 = 0; p8 = 0; p9 = 0;
    #1 p7 = 0; p8 = 0; p9 = 1;
    #1 p7 = 0; p8 = 1; p9 = 0;
    #1 p7 = 0; p8 = 1; p9 = 1;
    #1 p7 = 1; p8 = 0; p9 = 0;
    #1 p7 = 1; p8 = 0; p9 = 1;
    #1 p7 = 1; p8 = 1; p9 = 0;
    #1 p7 = 1; p8 = 1; p9 = 1;

  end

  initial begin

  #27

  $display("\n");
  $display("Mux 8:1 Tabla 02");
  $display("A B C | Y");
  $monitor("%b %b %b | %b", p10, p11, p12, sa4);

       p10 = 0; p11 = 0; p12 = 0;
    #1 p10 = 0; p11 = 0; p12 = 1;
    #1 p10 = 0; p11 = 1; p12 = 0;
    #1 p10 = 0; p11 = 1; p12 = 1;
    #1 p10 = 1; p11 = 0; p12 = 0;
    #1 p10 = 1; p11 = 0; p12 = 1;
    #1 p10 = 1; p11 = 1; p12 = 0;
    #1 p10 = 1; p11 = 1; p12 = 1;

  end

  initial begin

  #36

  $display("\n");
  $display("Mux 4:1 Tabla 02");
  $display("A B C | Y");
  $monitor("%b %b %b | %b", p13, p14, p15, sa5);

       p13 = 0; p14 = 0; p15 = 0;
    #1 p13 = 0; p14 = 0; p15 = 1;
    #1 p13 = 0; p14 = 1; p15 = 0;
    #1 p13 = 0; p14 = 1; p15 = 1;
    #1 p13 = 1; p14 = 0; p15 = 0;
    #1 p13 = 1; p14 = 0; p15 = 1;
    #1 p13 = 1; p14 = 1; p15 = 0;
    #1 p13 = 1; p14 = 1; p15 = 1;

  end

  initial begin

  #45

  $display("\n");
  $display("Mux 2:1 Tabla 02");
  $display("A B C | Y");
  $monitor("%b %b %b | %b", p16, p17, p18, sa6);

       p16 = 0; p17 = 0; p18 = 0;
    #1 p16 = 0; p17 = 0; p18 = 1;
    #1 p16 = 0; p17 = 1; p18 = 0;
    #1 p16 = 0; p17 = 1; p18 = 1;
    #1 p16 = 1; p17 = 0; p18 = 0;
    #1 p16 = 1; p17 = 0; p18 = 1;
    #1 p16 = 1; p17 = 1; p18 = 0;
    #1 p16 = 1; p17 = 1; p18 = 1;

  end

  initial
  #54 $finish;

  initial begin

    $dumpfile("Lab_05_tb.vcd");
    $dumpvars(0, testbench);

  end

endmodule
