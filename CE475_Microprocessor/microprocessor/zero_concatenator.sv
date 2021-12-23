module zero_concatenator(
	input logic [23:0] imm24_in,
	input logic [1:0] op_in,
	output logic [31:0] immediate_out
);

always @(*)
begin
	case(op_in)
		2'b00: immediate_out = { 24'b0, imm24_in[7:0] }; // data-processing, 8-bit imm
		2'b01: immediate_out = { 20'b0, imm24_in[11:0] }; // memory, 12-bit imm
		2'b10: immediate_out = { { 6 {imm24_in[23:0] } }, imm24_in[23:0], 2'b00 }; // branch, 24-bit signed imm
		default: immediate_out = 32'bx;
	endcase
end

endmodule