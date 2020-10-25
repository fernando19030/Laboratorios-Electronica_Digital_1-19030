module testbench();

    reg [3:0] a, b;
    reg [2:0] f;
    wire [3:0] y;

    ALU m(a, b, f, y);


    initial begin
    $display("Ejerccio 3: ALU");
    $display("A | B | F | Salida");
    $monitor("%b | %b | %b | %b", a, b, f, y);

       a = 4'b0000; b = 4'b0000; f = 3'b000;
    #1 a = 4'b0001; b = 4'b0000; f = 3'b000;
    #1 a = 4'b0001; b = 4'b0001; f = 3'b000;
    #1 a = 4'b0000; b = 4'b0000; f = 3'b001;
    #1 a = 4'b0000; b = 4'b0001; f = 3'b001;
    #1 a = 4'b0001; b = 4'b0001; f = 3'b001;
    #1 a = 4'b1000; b = 4'b0100; f = 3'b010;
    #1 a = 4'b0010; b = 4'b0000; f = 3'b100;
    #1 a = 4'b0000; b = 4'b0000; f = 3'b101;
    #1 a = 4'b0110; b = 4'b0001; f = 3'b110;
    #1 a = 4'b0100; b = 4'b0000; f = 3'b111;
    #1 a = 4'b0000; b = 4'b0100; f = 3'b111;

    end

    initial
        #30 $finish;

    initial begin
        $dumpfile("ALU_tb.vcd");
        $dumpvars(0, testbench);
    end


endmodule