//Maciel Vargas Oswaldo Daniel
module ROM(
	input [3:0] dirR1,
	input [3:0] dirR2,
	output reg [31:0] datoOut1,
	output reg [31:0] datoOut2
);

reg [31:0] mem_rom [0:15];

always @* begin
	datoOut1=mem_rom[dirR1];
	datoOut2=mem_rom[dirR2];
end
endmodule
