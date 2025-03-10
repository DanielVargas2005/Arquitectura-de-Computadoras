//Maciel Vargas Oswaldo Daniel
module ALU (
	input [31:0] dato1,
	input [31:0] dato2,
	input [3:0] op,
	output reg [31:0] datoout,
	output reg zf
);

always @* begin
	case (op)
		4'b0000:
			begin
			datoout = dato1 & dato2;
			end
		4'b0001:
			begin
			datoout = dato1 | dato2;
			end
		4'b0010:
			begin
			datoout = dato1 + dato2;
			end
		4'b0110:
			begin
			datoout = dato1 - dato2;
			end
		4'b0111:
			begin
			datoout = (dato1 < dato2)?32'd1:32'd0;
			end
		4'b1100:
			begin
			datoout = ~(dato1 | dato2);
			end
		default:
			begin
			datoout = 32'd0;
			end
	endcase
	if (datoout == 32'd0) begin
		zf = 1'b1;
	end
	else begin
		zf = 1'b0;
	end
end


endmodule
