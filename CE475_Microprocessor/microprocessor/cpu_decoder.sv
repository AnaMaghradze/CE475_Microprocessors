module decoder(
	input logic [31:0] instr_in,
	output logic [3:0] cond,
	output logic [1:0] op,
	output logic [5:0] nIPUBWL,
	output logic imm,
	output logic [1:0] bimm, //branch immediate
	output logic [3:0] cmd,
	output logic s,
	output logic [3:0] Rn,
	output logic [3:0] Rd,
	output logic [3:0] Rs,
	output logic [3:0] Rm,
	output logic [11:0] imm12,
	output logic [7:0] imm8,
	output logic [23:0] imm24,
	output logic [1:0] sh,
	output logic [4:0] shamt5,
	output logic [3:0] rot,
	output logic bit4,
	output logic bit7
);


assign cond = instr_in[31:28];
assign op = instr_in[27:26];
assign nIPUBWL = instr_in[25:20];
assign imm = instr_in[25]; 
assign bimm = instr_in[25:24]; 
assign cmd = instr_in[24:21];
assign s = instr_in[20];
assign Rn = instr_in[19:16];
assign Rd = instr_in[15:12];
assign shamt5 = instr_in[11:7];
assign Rs = instr_in[11:8];
assign rot = instr_in[11:8];
assign bit7 = instr_in[7];
assign Rm = instr_in[3:0];
assign sh = instr_in[6:5];
assign bit4 = instr_in[4];
assign imm8 = instr_in[7:0];
assign imm12 = instr_in[11:0];
assign imm24 = instr_in[23:0];

endmodule