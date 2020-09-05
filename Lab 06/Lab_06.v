module ff(input clk, reset, d, output reg q);

  always @ (posedge clk, posedge reset)
    if (reset)
      q <= 1'b0;
    else
      q <= d;

endmodule

//Ejercicio 5
module ff_4(input clk, input reset, input en, input [3:0]d, output reg [3:0]q);

  always @ (posedge clk, posedge reset)
  if (reset) q <= 4'b0;
  else if (en) q <= d;

endmodule

//Ejercicio 1
module eje1 (input clk, reset, A, B, output wire y, output wire [1:0] S, SF);

  //Estado futuro combinacional
  assign SF[1] = (S[1] & A & B) | (S[0] & B);

  assign SF[0] = (~S[1] & ~S[0] & A);

  //Salida combinacional
  assign y = (S[1] & A & B);

  //Secuencial
  ff u1(clk, reset, SF[1], S[1]);
  ff u0(clk, reset, SF[0], S[0]);


endmodule

//Ejercicio 3
module gray(input clk, reset, co, output wire a, b, c, output wire [2:0] s, s_f);

  //salidas combinacional
  assign a = s[2];
  assign b = (~s[2] & s[1]) | (s[2] & ~s[1]);
  assign c = (s[1] & ~s[0]) | (~s[1] & s[0]);

  //estado futuro combinacional
  assign s_f[2] = (~s[2] & s[1] & s[0] & co) | (~s[2] & ~s[1] & ~s[0] & ~co) |
  (s[2] & s[0] & ~co) | (s[2] & ~s[1] & co) | (s[2] & s[1] & ~s[0]);

  assign s_f[1] = (s[1] & s[0] & ~co) | (~s[1] & s[0] & co) | (~s[1] & ~s[0] & ~co) |
  (s[1] & ~s[0] & co);

  assign s_f[0] = ~s[0];

  //estado secuencial
  ff S2(clk, reset, s_f[2], s[2]);
  ff S1(clk, reset, s_f[1], s[1]);
  ff S0(clk, reset, s_f[0], s[0]);

endmodule
