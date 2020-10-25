//Ejercicio 2 Laboratortio 8 Electronica Digital 1

module memoria(input wire [11:0] l, output wire [7:0] y); 
        //Definimos las variables de entrada y salida.

    reg [7:0] m[0:4095]; //Asignamos el tamaño de la memoria
                        //la cual es de 4k con 8 bits de ancho

    initial begin
        $readmemb("memoria.ejercicio_2", m); //guardamos un valor 
            //binario en la memoria
    end

    assign y = m[l]; 

endmodule