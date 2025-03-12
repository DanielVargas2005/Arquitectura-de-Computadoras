//Maciel Vargas Oswaldo Daniel
module Jericalla(
	input [16:0] instruccion,
	output [31:0] datoOut_jericalla,
	output zf_jericalla
);

wire [31:0] c1;
wire [31:0] c2;
wire [31:0] c3;

ROM rom_jericalla(
	.dirR1(instruccion[8:5]),
	.dirR2(instruccion[4:1]),
	.datoOut1(c1),
	.datoOut2(c2)
);

ALU alu_jericalla(
	.datoIn1(c1),
	.datoIn2(c2),
	.op(instruccion[12:9]),
	.datoOut(c3),
	.zf(zf_jericalla)
);

RAM ram_jericalla(
	.dirR(instruccion[16:13]),
	.datoIn(c3),
	.WEn(instruccion[0]),
	.datoOut(datoOut_jericalla)
);

endmodule