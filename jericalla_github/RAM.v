//Maciel Vargas Oswaldo Daniel
module RAM(
	input [3:0] dirR,
	input [31:0] datoIn,
	input WEn,
	output reg [31:0] datoOut
);

reg [31:0] mem_ram [0:15];

always @* begin
	if(WEn)begin
		mem_ram[dirR]=datoIn;
	end
	else begin
		datoOut=mem_ram[dirR];
	end
end
endmodule
