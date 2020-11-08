//Ejercicio 1 Laboratorio 8 Electronica Digital 1

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
