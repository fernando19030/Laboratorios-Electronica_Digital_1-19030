module ALU(input wire [3:0] a, b,
           input wire [2:0] f,
           output reg [3:0] y);

    always @ (a or b or f) begin
        
        case(f)
            3'b000: y = (a & b); //AND
            3'b001: y = (a | b); //OR
            3'b010: y = (a + b); //Suma
            3'b100: y = (a & ~b); //AND, con NOT B
            3'b101: y = (a | ~b); //OR, con NOT B
            3'b110: y = (a - b); //Resta
            3'b111: y = (a < b) ? 1:0; //Comparacion entre A y B
            default: y = 3'b0; //Valor por defecto por si la 
                               //opción no se encuentra en la ALU
        endcase

    end


endmodule