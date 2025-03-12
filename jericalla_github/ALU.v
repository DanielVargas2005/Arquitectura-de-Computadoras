//Maciel Vargas Oswaldo Daniel
module ALU (
	input [31:0] datoIn1,
	input [31:0] datoIn2,
	input [3:0] op,
	output reg [31:0] datoOut,
	output reg zf
);

always @* begin
	case (op)
		4'b0000:
			begin
			datoOut = datoIn1 & datoIn2;
			end
		4'b0001:
			begin
			datoOut = datoIn1 | datoIn2;
			end
		4'b0010:
			begin
			datoOut = datoIn1 + datoIn2;
			end
		4'b0110:
			begin
			datoOut = datoIn1 - datoIn2;
			end
		4'b0111:
			begin
			datoOut = (datoIn1 < datoIn2)?32'd1:32'd0;
			end
		4'b1100:
			begin
			datoOut = ~(datoIn1 | datoIn2);
			end
		default:
			begin
			datoOut = 32'd0;
			end
	endcase
	if (datoOut == 32'd0) begin
		zf = 1'b1;
	end
	else begin
		zf = 1'b0;
	end
end


endmodule
