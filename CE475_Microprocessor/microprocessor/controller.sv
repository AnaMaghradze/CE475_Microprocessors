module controller(
	input logic [3:0] cmd_in,
	input logic [1:0] bimm_in,
	input logic [3:0] cond_in,
	input logic [1:0] op_in,
	input logic [5:0] nIPUBWL_in,
	input logic [3:0] NZCV_in,
	input logic s_generate_flags_in,	
	output logic [3:0] alu_cmd,
	output logic alu_src_select,
	output logic datamem_addr_select,
	output logic datamem_WE,
	output logic regfile_WE,
	output logic [1:0] regfile_WD_select,
	output logic regfile_WDr15_select,
	output logic s_generate_flags
);

assign alu_cmd = ((op_in == 2'b01 && nIPUBWL_in[3]) || op_in == 2'b10) == 1 
					? 4'b0100 
					: (op_in == 2'b01 && ~nIPUBWL_in[3]) == 1
					? 4'b0010 
					: cmd_in;
					
// nIPUBWL_in[0] = 0 for STORE, nIPUBWL_in[0] = 1 for LOAD					
assign datamem_WE = (op_in == 2'b01 && nIPUBWL_in[0] == 0);

// datamem address becomes imm value
assign datamem_addr_select = regfile_WE ? 1 : 0;

// src2 is value from zero_concat (1), or value from shifter (0)
assign alu_src_select = nIPUBWL_in[5];

// enable if load instr, disable if store instr
assign regfile_WE = (op_in == 2'b01 && ~nIPUBWL_in[0]) ? 0 : 1;

assign regfile_WD_select = (op_in == 2'b01 && nIPUBWL_in[0]) ? 1 : 0;

assign regfile_WDr15_select = 1; 
assign s_generate_flags = 1;
	
endmodule
