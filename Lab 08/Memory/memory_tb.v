module testbench();

    reg [11:0] l;
    wire [7:0] y;

    memoria a(l, y);

    initial begin
        $display("Ejercicio 2: Memoria ROM");
        $display("-Localidad- |----Dato----");
        $monitor("%b | %b", l, y);

        #1 l = 12'b000000000000;
        #1 l = 12'b000000000001;
        #1 l = 12'b000000000010;
        #1 l = 12'b000000000011;
        #1 l = 12'b000000000100;
        #1 l = 12'b000000000101;
        #1 l = 12'b000000000110;
        #1 l = 12'b000000000111;
        #1 l = 12'b000000001000;
        #1 l = 12'b000000001001;

    end

    initial
    #100 $finish;

    initial begin
        $dumpfile("memory_tb.vcd");
        $dumpvars(0, testbench);
    end


endmodule
