//Maciel Vargas Oswaldo Daniel
`timescale 1ns/1ns
module Jericalla_TB();

reg [16:0] instruccion_tb;
wire [31:0] datoOut_jericalla_tb;
wire zf_jericalla_tb;

Jericalla jericalla_tb(
	.instruccion(instruccion_tb),
	.datoOut_jericalla(datoOut_jericalla_tb),
	.zf_jericalla(zf_jericalla_tb)
);

initial begin 
	$readmemb("datos.txt",jericalla_tb.rom_jericalla.mem_rom);
end

initial begin 
	instruccion_tb = 17'b00110010010001101;
	#100;
	instruccion_tb = 17'b00110010010001100;
	#100;
end

endmodule