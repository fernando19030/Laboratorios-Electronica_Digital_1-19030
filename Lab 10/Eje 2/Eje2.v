module ALU(input wire [3:0] a, b,
           input wire [2:0] f,
           output reg [3:0] y,
           output reg carry, zero);

    reg [4:0] c;
    always @ (a or b or f) begin

        case(f)
            3'b000: begin
              c = 5'b0;
              c = a; //Deja pasar lo que este en el Accumulador
              carry = (c[4] == 1) ? 1:0; //Si el bit mas significativo es 1 carry = on
              zero = (c[4] == 0) ? 1:0; //SI el bit mas significativo es 0 zero = on
              y = c[3:0];
              end

            3'b001: begin
              c = 5'b0;
              c = (a - b); //Resta de A menos B
              carry = (c[4] == 1) ? 1:0; //Si el bit mas significativo es 1 carry = on
              zero = (c[4] == 0) ? 1:0; //SI el bit mas significativo es 0 zero = on
              y = c[3:0];
              end

            3'b010: begin
              c = 5'b0;
              c = b; //Deja pasar lo que este en B
              carry = (c[4] == 1) ? 1:0; //Si el bit mas significativo es 1 carry = on
              zero = (c[4] == 0) ? 1:0; //SI el bit mas significativo es 0 zero = on
              y = c[3:0];
              end

            3'b011: begin
              c = 5'b0;
              c = (a + b); //Suma de A mas B
              carry = (c[4] == 1) ? 1:0; //Si el bit mas significativo es 1 carry = on
              zero = (c[4] == 0) ? 1:0; //SI el bit mas significativo es 0 zero = on
              y = c[3:0];
              end

            3'b100: begin
              c = 5'b0;
              c = ~(a & b); //NAND entre A y B
              carry = (c[4] == 1) ? 1:0; //Si el bit mas significativo es 1 carry = on
              zero = (c[4] == 0) ? 1:0; //SI el bit mas significativo es 0 zero = on
              y = c[3:0];
              end

            default: y = 3'b0; //Valor por defecto por si la
                               //opción no se encuentra en la ALU
        endcase
    end
endmodule

module buftri(input wire en, input wire [3:0]in, output wire [3:0]out);

  assign out = (en == 1) ? in :
               (en == 0) ? 4'bz : 4'bx;

endmodule

module Accu(input clk, input reset, input en, input [3:0] d, output reg [3:0] q);

  always @ (posedge clk, posedge reset) begin
  if (reset) q <= 4'b0;
  else if (en) q <= d;
  end

endmodule

module eje2(input clk, reset, input [2:0] en, f, input [3:0] b, output carry, zero, output [3:0] y);

  wire [3:0] data_bus, cable1, cable2;

  buftri a1(en[2], b, data_bus);
  ALU a2(cable2, data_bus, f, cable1, carry, zero);
  Accu a3(clk, reset, en[0], cable1, cable2);
  buftri a4(en[1], cable1, y);

endmodule
