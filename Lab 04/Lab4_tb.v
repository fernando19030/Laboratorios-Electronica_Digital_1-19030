module testbench();

  reg p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28;
  wire s1, s2, s3, s4, s5, s6, s7, s8;

  tabla1 t1(p1, p2, p3, s1);
  tabla2 t2(p4, p5, p6, s2);
  tabla3 t3(p7, p8, p9, p10, s3);
  tabla4 t4(p11, p12, p13, p14, s4);
  tabla5 t5(p15, p16, p17, p18, s5);
  tabla6 t6(p19, p20, p21, s6);
  tabla7 t7(p22, p23, p24, p25, s7);
  tabla8 t8(p26, p27, p28, s8);

  initial begin

    $display("Ejercicio 1, Tabla 1");
    $display("A B C | Y");
    $monitor("%b %b %b | %b", p1, p2, p3, s1);

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
    $display("Ejercicio 1, Tabla 2");
    $display("A B C | Y");
    $monitor("%b %b %b | %b", p4, p5, p6, s2);

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
    $display("Ejercicio 1, Tabla 3");
    $display("A B C D | Y");
    $monitor("%b %b %b %b | %b", p7, p8, p9, p10, s3);

       p7 = 0; p8 = 0; p9 = 0; p10 = 0;
    #1 p7 = 0; p8 = 0; p9 = 0; p10 = 1;
    #1 p7 = 0; p8 = 0; p9 = 1; p10 = 0;
    #1 p7 = 0; p8 = 0; p9 = 1; p10 = 1;
    #1 p7 = 0; p8 = 1; p9 = 0; p10 = 0;
    #1 p7 = 0; p8 = 1; p9 = 0; p10 = 1;
    #1 p7 = 0; p8 = 1; p9 = 1; p10 = 0;
    #1 p7 = 0; p8 = 1; p9 = 1; p10 = 1;
    #1 p7 = 1; p8 = 0; p9 = 0; p10 = 0;
    #1 p7 = 1; p8 = 0; p9 = 0; p10 = 1;
    #1 p7 = 1; p8 = 0; p9 = 1; p10 = 0;
    #1 p7 = 1; p8 = 0; p9 = 1; p10 = 1;
    #1 p7 = 1; p8 = 1; p9 = 0; p10 = 0;
    #1 p7 = 1; p8 = 1; p9 = 0; p10 = 1;
    #1 p7 = 1; p8 = 1; p9 = 1; p10 = 0;
    #1 p7 = 1; p8 = 1; p9 = 1; p10 = 1;

  end

  initial begin

    #35

    $display("\n");
    $display("Ejercicio 1, Tabla 4");
    $display("A B C D | Y");
    $monitor("%b %b %b %b | %b", p11, p12, p13, p14, s4);

       p11 = 0; p12 = 0; p13 = 0; p14 = 0;
    #1 p11 = 0; p12 = 0; p13 = 0; p14 = 1;
    #1 p11 = 0; p12 = 0; p13 = 1; p14 = 0;
    #1 p11 = 0; p12 = 0; p13 = 1; p14 = 1;
    #1 p11 = 0; p12 = 1; p13 = 0; p14 = 0;
    #1 p11 = 0; p12 = 1; p13 = 0; p14 = 1;
    #1 p11 = 0; p12 = 1; p13 = 1; p14 = 0;
    #1 p11 = 0; p12 = 1; p13 = 1; p14 = 1;
    #1 p11 = 1; p12 = 0; p13 = 0; p14 = 0;
    #1 p11 = 1; p12 = 0; p13 = 0; p14 = 1;
    #1 p11 = 1; p12 = 0; p13 = 1; p14 = 0;
    #1 p11 = 1; p12 = 0; p13 = 1; p14 = 1;
    #1 p11 = 1; p12 = 1; p13 = 0; p14 = 0;
    #1 p11 = 1; p12 = 1; p13 = 0; p14 = 1;
    #1 p11 = 1; p12 = 1; p13 = 1; p14 = 0;
    #1 p11 = 1; p12 = 1; p13 = 1; p14 = 1;

  end

  initial begin

    #52

    $display("\n");
    $display("Ejercicio 2, Tabla 1");
    $display("A B C D | Y");
    $monitor("%b %b %b %b | %b", p15, p16, p17, p18, s5);

       p15 = 0; p16 = 0; p17 = 0; p18 = 0;
    #1 p15 = 0; p16 = 0; p17 = 0; p18 = 1;
    #1 p15 = 0; p16 = 0; p17 = 1; p18 = 0;
    #1 p15 = 0; p16 = 0; p17 = 1; p18 = 1;
    #1 p15 = 0; p16 = 1; p17 = 0; p18 = 0;
    #1 p15 = 0; p16 = 1; p17 = 0; p18 = 1;
    #1 p15 = 0; p16 = 1; p17 = 1; p18 = 0;
    #1 p15 = 0; p16 = 1; p17 = 1; p18 = 1;
    #1 p15 = 1; p16 = 0; p17 = 0; p18 = 0;
    #1 p15 = 1; p16 = 0; p17 = 0; p18 = 1;
    #1 p15 = 1; p16 = 0; p17 = 1; p18 = 0;
    #1 p15 = 1; p16 = 0; p17 = 1; p18 = 1;
    #1 p15 = 1; p16 = 1; p17 = 0; p18 = 0;
    #1 p15 = 1; p16 = 1; p17 = 0; p18 = 1;
    #1 p15 = 1; p16 = 1; p17 = 1; p18 = 0;
    #1 p15 = 1; p16 = 1; p17 = 1; p18 = 1;

  end

  initial begin

    #69

    $display("\n");
    $display("Ejercicio 2, Tabla 2");
    $display("A B C | Y");
    $monitor("%b %b %b | %b", p19, p20, p21, s6);

       p19 = 0; p20 = 0; p21 = 0;
    #1 p19 = 0; p20 = 0; p21 = 1;
    #1 p19 = 0; p20 = 1; p21 = 0;
    #1 p19 = 0; p20 = 1; p21 = 1;
    #1 p19 = 1; p20 = 0; p21 = 0;
    #1 p19 = 1; p20 = 0; p21 = 1;
    #1 p19 = 1; p20 = 1; p21 = 0;
    #1 p19 = 1; p20 = 1; p21 = 1;

  end

  initial begin

    #78

    $display("\n");
    $display("Ejercicio 2, Tabla 3");
    $display("A B C D | Y");
    $monitor("%b %b %b %b | %b", p22, p23, p24, p25, s7);

       p22 = 0; p23 = 0; p24 = 0; p25 = 0;
    #1 p22 = 0; p23 = 0; p24 = 0; p25 = 1;
    #1 p22 = 0; p23 = 0; p24 = 1; p25 = 0;
    #1 p22 = 0; p23 = 0; p24 = 1; p25 = 1;
    #1 p22 = 0; p23 = 1; p24 = 0; p25 = 0;
    #1 p22 = 0; p23 = 1; p24 = 0; p25 = 1;
    #1 p22 = 0; p23 = 1; p24 = 1; p25 = 0;
    #1 p22 = 0; p23 = 1; p24 = 1; p25 = 1;
    #1 p22 = 1; p23 = 0; p24 = 0; p25 = 0;
    #1 p22 = 1; p23 = 0; p24 = 0; p25 = 1;
    #1 p22 = 1; p23 = 0; p24 = 1; p25 = 0;
    #1 p22 = 1; p23 = 0; p24 = 1; p25 = 1;
    #1 p22 = 1; p23 = 1; p24 = 0; p25 = 0;
    #1 p22 = 1; p23 = 1; p24 = 0; p25 = 1;
    #1 p22 = 1; p23 = 1; p24 = 1; p25 = 0;
    #1 p22 = 1; p23 = 1; p24 = 1; p25 = 1;

  end

  initial begin

    #95

    $display("\n");
    $display("Ejercicio 2, Tabla 4");
    $display("A B C | Y");
    $monitor("%b %b %b | %b", p26, p27, p28, s8);

       p26 = 0; p27 = 0; p28 = 0;
    #1 p26 = 0; p27 = 0; p28 = 1;
    #1 p26 = 0; p27 = 1; p28 = 0;
    #1 p26 = 0; p27 = 1; p28 = 1;
    #1 p26 = 1; p27 = 0; p28 = 0;
    #1 p26 = 1; p27 = 0; p28 = 1;
    #1 p26 = 1; p27 = 1; p28 = 0;
    #1 p26 = 1; p27 = 1; p28 = 1;

  end

  initial
  #105 $finish;

  initial begin

    $dumpfile("Lab4_tb.vcd");
    $dumpvars(0, testbench);

  end

endmodule
