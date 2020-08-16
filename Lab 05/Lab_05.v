
module Mux2(input wire d0, d1, s, output wire Y);

  assign Y = s ? d1 : d0;

endmodule

module Mux4(input wire d0, d1, d2, d3, s0, s1, output wire Y1);

  wire c1, c2;

  Mux2 bus1(d0, d1, s0, c1);
  Mux2 bus2(d2, d3, s0, c2);
  Mux2 bus3(c1, c2, s1, Y1);

endmodule

module Mux8(input wire d0, d1, d2, d3, d4, d5, d6, d7, s0, s1, s2, output wire Y2);

  wire c3, c4;

  Mux4 bus4(d0, d1, d2, d3, s0, s1, c3);
  Mux4 bus5(d4, d5, d6, d7, s0, s1, c4);
  Mux2 bus6(c3, c4, s2, Y2);

endmodule

module m8t1(input wire A, B, C, output wire Y);

  wire G, V;

  assign G = 0;
  assign V = 1;

  Mux8 u1(G, V, V, G, V, G, G, V, A, B, C, Y);

endmodule

module m4t1(input wire A, B, C, output wire Y);

  wire f0, f1;

  assign f0 = C;
  assign f1 = ~C;

  Mux4 u2(f0, f1, f1, f0, A, B, Y);

endmodule

module m2t1(input wire A, B, C, output wire Y);

  wire f0, f1;

  assign f0 =  (B^C);
  assign f1 = ~(B^C);

  Mux2 u3(f0, f1, A, Y);

endmodule

module m8t2(input wire A, B, C, output wire Y);

  wire G, V;

  assign G = 0;
  assign V = 1;

  Mux8 u4(V, V, G, G, V, V, V, G, A, B, C, Y);

endmodule

module m4t2(input wire A, B, C, output wire Y);

  wire G, V, f0;

  assign G = 0;
  assign V = 1;
  assign f0 = ~C;

  Mux4 u5(V, G, V, f0, A, B, Y);

endmodule

module m2t2(input wire A, B, C, output wire Y);

  wire f0, f1;

  assign f0 = ~B;
  assign f1 = ~(B & C);

  Mux2 u6(f0, f1, A, Y);

endmodule
