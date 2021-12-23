module mux_3x1  #(parameter BITS = 32)(
	input logic [BITS-1:0] in1, in2, in3,
	input logic [1:0] s,
	output logic [BITS-1:0] mux_out
);

assign mux_out = s == 2'b00 ? in1 : s == 2'b01 ? in2 : in3;

endmodule
