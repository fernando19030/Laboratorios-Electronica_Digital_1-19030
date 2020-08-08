

module tabla1(input wire A, B, C, output wire Y);

  assign Y = (~A & ~C) | (A & ~B) | (A & C);

endmodule

module tabla2(input wire A, B, C, output wire Y);

  not (Y, B);

endmodule

module tabla3(input wire A, B, C, D, output wire Y);

  assign Y = (~A & ~B & ~C & ~D) | (~A & ~B & C & D) | (~A & B & ~C & D) | (~A & B & C & ~D) | (A & B & ~C & ~D) | (A & B & C & D) | (A & ~B & ~C & D) | (A & ~B & C & ~D);

endmodule

module tabla4(input wire A, B, C, D, output wire Y);

  assign Y = (A & B) | (A & C) | (A & ~D);

endmodule

module tabla5(input wire A, B, C, D, output wire Y);

  assign Y = (A & ~B) | (A & ~C) | (A & ~D) | (~B & ~C & ~D);

endmodule

module tabla6(input wire A, B, C, output wire Y);

  not(n1, B);
  or (Y, n1, C);

endmodule

module tabla7(input wire A, B, C, D, output wire Y);

  not (n2, C);
  and (n3, n1, D);
  and (n4, A, D);
  or  (Y, B, n3, n4);

endmodule

module tabla8(input wire A, B, C, output wire Y);

  not (n5, A);
  not (n6, C);
  and (n7, n5, n6);
  or  (Y, n7, B);

endmodule
