
module alarmakarnough(input wire A, B, C, output wire Y);

  not (n1, A);
  and (n2, n1, C);
  and (n3, B, C);
  or  (Y, n2, n3);

endmodule

module alarmaPOS(input wire A, B, C, output wire Y);

  assign Y = (A | B | C) & (A | ~B | C) & (~A | B | C) & (~A | B | ~C) & (~A | ~B | C);

endmodule

module alarmaSOP(input wire A, B, C, output wire Y);

  assign Y = (~A & ~B & C) | (~A & B & C) | (A & B & C);

endmodule
