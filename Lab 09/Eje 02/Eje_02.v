module ffd(input clk, input reset, input en, input d, output reg q);

  always @ (posedge clk, posedge reset)
  if (reset) q <= 1'b0;
  else if (en) q <= d;

endmodule

module fft(input clk, en, reset, output q);

  wire w;
  assign w = ~q;

  ffd a(clk, reset, en, w, q);

endmodule
