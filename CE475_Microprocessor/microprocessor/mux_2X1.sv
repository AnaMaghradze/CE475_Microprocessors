module mux_2x1  #(parameter BITS = 32)(
	input logic [BITS-1:0] in1, in2,
	input logic s,
	output logic [BITS-1:0] mux_out
);

assign mux_out = s ? in1 : in2;

endmodule
