module testbench();

  reg p1, p2, p3, p4, p5, p6, p7, p8, p9;
  wire s1, s2, s3;

  alarmakarnough a1(p1, p2, p3, s1);
  alarmaPOS a2(p4, p5, p6, s2);
  alarmaSOP a3(p7, p8, p9, s3);


  initial begin

    $display("Ejercicio 5 Mapa de Karnough");
    $display("A B C | Y");
    $monitor("%b %b %b  | %b", p1, p2, p3, s1);

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
    $display("Ejercicio 5 POS");
    $display("A B C | Y");
    $monitor("%b %b %b  | %b", p4, p5, p6, s2);

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
    $display("Ejercicio 5 SOP");
    $display("A B C | Y");
    $monitor("%b %b %b  | %b", p7, p8, p9, s3);

       p7 = 0; p8 = 0; p9 = 0;
    #1 p7 = 0; p8 = 0; p9 = 1;
    #1 p7 = 0; p8 = 1; p9 = 0;
    #1 p7 = 0; p8 = 1; p9 = 1;
    #1 p7 = 1; p8 = 0; p9 = 0;
    #1 p7 = 1; p8 = 0; p9 = 1;
    #1 p7 = 1; p8 = 1; p9 = 0;
    #1 p7 = 1; p8 = 1; p9 = 1;

  end

  initial

    #27 $finish;

  initial begin

    $dumpfile("Alarma_tb.vcd");
    $dumpvars(0, testbench);

  end

endmodule
