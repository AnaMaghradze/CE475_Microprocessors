module flags(
	input logic clk,
	input logic s,
	input logic [3:0] flagsFromALU,
	output logic [3:0] flags
);

always @(posedge clk)
begin
	if(s) flags <= flagsFromALU;
end

endmodule