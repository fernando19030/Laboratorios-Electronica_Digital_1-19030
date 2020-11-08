module ffd4(input clk, input reset, input en, input [3:0] d, output reg [3:0] q);

  always @ (posedge clk, posedge reset) begin
  if (reset) q <= 4'b0;
  else if (en) q <= d;
  end

endmodule

module fetch(input clk, reset, en, input [7:0] program_byte, output [3:0] instr, oprnd);

  ffd4 f1(clk, reset, en, program_byte[7:4], instr); 
  ffd4 f2(clk, reset, en, program_byte[3:0], oprnd);

endmodule

module ROM(input wire [11:0] PC, output wire [7:0] program_byte);
        //Definimos las variables de entrada y salida.

    reg [7:0] m[0:4095]; //Asignamos el tamaño de la memoria
                        //la cual es de 4k con 8 bits de ancho

    initial begin
        $readmemb("memoria.lab10", m); //guardamos un valor
            //binario en la memoria
    end

    assign program_byte = m[PC];

endmodule

module counter #(parameter N = 12) //Definimos variables
                (input wire clk, reset, en, load,
                 input wire [N-1:0] val,
                 output reg [N-1:0] q);

  always @ (posedge clk or posedge load or posedge reset) begin
    if (reset == 1) //flanco de reloj se colocara la salida en 0
      q <= 12'b0;

    else if (load == 1)//flando de reloj se cargara un valor al
      q <= val;        //contador

    else if (en == 1)//cuando enable sea igual a 1
      q <= q + 1;   //comenzara a contar

  end

endmodule

module Eje1(input reset, en1, en2, load, clk, input [11:0] val, output [7:0] program_byte, output [3:0] instr, oprnd);

  wire [11:0] PC;

  counter a1(clk, reset, en1, load, val, PC);
  ROM a2(PC, program_byte);
  fetch a3(clk, reset, en2, program_byte, instr, oprnd);

endmodule
