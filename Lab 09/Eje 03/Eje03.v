module ffd(input clk, input reset, input en, input d, output reg q);

  always @ (posedge clk, posedge reset)
  if (reset) q <= 1'b0;
  else if (en == 1) q <= d;

endmodule

module ffjk(input clk, reset, en, j, k, output q);

  wire d;

  assign d = (~k & q) | (j & ~q);

  ffd a1(clk, reset, en, d, q);

endmodule
