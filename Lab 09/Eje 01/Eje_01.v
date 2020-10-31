module ffd(input clk, input reset, input en, input d, output reg q);

  always @ (posedge clk, posedge reset)
  if (reset) q <= 1'b0;
  else if (en == 1) q <= d;

endmodule

module ffd2(input clk, reset, en, input [1:0] d, output [1:0] q);

  ffd a0(clk, reset, en, d[0], q[0]);
  ffd a1(clk, reset, en, d[1], q[1]);

endmodule

module ffd4(input clk, reset, en, input [3:0] d, output [3:0] q);

  ffd a0(clk, reset, en, d[0], q[0]);
  ffd a1(clk, reset, en, d[1], q[1]);
  ffd a2(clk, reset, en, d[2], q[2]);
  ffd a3(clk, reset, en, d[3], q[3]);

endmodule
