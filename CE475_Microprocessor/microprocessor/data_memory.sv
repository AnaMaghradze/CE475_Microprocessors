module datamem(
	input logic clk,
	input logic dmWEn,
	input logic [31:0] dmRWAddr,
	input logic [31:0] dmWData,
	output logic [31:0] dmRData
);

logic [31:0] MEMORY[31:0];

assign dmRData = MEMORY[dmRWAddr]; 

always @(posedge clk)
begin
	if(dmWEn) MEMORY[dmRWAddr] <= dmWData;
end

endmodule