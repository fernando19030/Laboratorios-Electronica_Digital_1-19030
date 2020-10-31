module buftri(input wire en, input wire [3:0]in, output wire [3:0]out);

  assign out = (en == 1) ? in :
               (en == 0) ? 4'bz : 4'bx;

endmodule
