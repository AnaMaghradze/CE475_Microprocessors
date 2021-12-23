module incrementor(
	input logic [31:0] in,
	output logic [31:0] incremented
);

assign incremented = in + 1;

endmodule
