module top(
	input clk
);

// REGFILE
logic [31:0] _RDr15;
logic [31:0] _RD1;
logic [31:0] _RD2;
logic [31:0] _RD3;
	
// ALU
logic [31:0] _alu_result;
logic [3:0] _alu_NZCV;
	
// zero concatenator
logic [31:0] _immediate_out;

// instruction memory
logic [31:0] _instruction;

// data memory
logic [31:0] _dmRData;

// decoder
logic [3:0] _cond;
logic [1:0] _op;
logic [5:0] _nIPUBWL;
logic _imm;
logic [1:0] _bimm;
logic [3:0] _cmd;
logic _s;
logic [3:0] _Rn;
logic [3:0] _Rd;
logic [3:0] _Rs;
logic [3:0] _Rm;
logic [23:0] _imm24;
logic [11:0] _imm12;
logic [7:0] _imm8;
logic [1:0] _sh;
logic [4:0] _shamt5;
logic [3:0] _rot;
logic _bit4;
logic _bit7;

// controller
logic [3:0] _alu_cmd;
logic _alu_src_select;
logic _datamem_addr_select;
logic _datamem_WE;
logic _regfile_WE;
logic [1:0] _regfile_WD_select;
logic _regfile_WDr15_select;
logic _s_generate_flags;
	
// flags
logic [3:0] _flags;
	
// shifter
logic [31:0] _src2_shifted;

// incrementor
logic [31:0] _incremented_pc;

// mux alu src2
logic [31:0] _mux_out_alu_src2;
// mux regfile WD
logic [31:0] _mux_out_regfile_WD;
// mux datamem write address
logic [31:0] _mux_out_datamem_WAddr;


// *********** CONTROLLER ***********
controller controller_inst(
	.cmd_in(_cmd),
	.bimm_in(_bimm),
	.cond_in(_cond),
	.op_in(_op),
	.nIPUBWL_in(_nIPUBWL),
	.NZCV_in(_alu_NZCV), 
	.s_generate_flags_in(_s_generate_flags_in),	
	.alu_cmd(_alu_cmd),
	.alu_src_select(_alu_src_select),
	.datamem_addr_select(_datamem_addr_select),
	.datamem_WE(_datamem_WE),
	.regfile_WE(_regfile_WE),
	.regfile_WD_select(_regfile_WD_select),
	.regfile_WDr15_select(_regfile_WDr15_select),
	.s_generate_flags(_s_generate_flags)
);

// *********** REGISTE FILE ***********
register_file regfile_inst(
	.clk(clk), 
	.WE(_regfile_WE), 
	.WA(_Rd), 
	.WD(_mux_out_regfile_WD), 
	.WDr15(_incremented_pc), 
	.RA1(_Rn), 
	.RA2(_Rd), 
	.RA3(_Rm), 
	.RDr15(_RDr15), 
	.RD1(_RD1), 
	.RD2(_RD2), 
	.RD3(_RD3)
);

// *********** SHIFTER ***********
shifter shifter_inst(
	.shifter_shamt5_in(_shamt5), 
	.shifter_sh_in(_sh),
   .imm8extended(_immediate_out),
   .Rm_in(_RD3),
   .Rs_in(_RD2),
   .shifter_rot_in(_rot),
   .instrbit4(_bit4),
   .instrbit25(_imm), 
	.src2_shifted(_src2_shifted)
);

// *********** ALU ***********
ALU alu_inst(
	.cmd_in(_alu_cmd), 
	.A_in(_RD1),
	.B_in(_mux_out_alu_src2),
	.alu_result(_alu_result), 
	.alu_NZCV(_alu_NZCV)
);

// *********** FLAGS ***********
flags flags_inst(
	.clk(clk),
	.s(_s), 
	.flagsFromALU(_alu_NZCV), 
	.flags(_flags)
);

// *********** INSTRUCTION MEMORY ***********
instrmem instmem_inst(
	.instr_addr(_incremented_pc), 
	.instruction(_instruction)
);

// *********** DATA MEMORY ***********
datamem datamem_inst(
	.clk(clk), 
	.dmWEn(_datamem_WE), 
	.dmRWAddr(_mux_out_datamem_WAddr), 
	.dmWData(_RD2), 
	.dmRData(_dmRData)
);

// *********** DECODER ***********
decoder decoder_inst(
	.instr_in(_instruction),
	.cond(_cond),
	.op(_op),
	.nIPUBWL(_nIPUBWL),
	.imm(_imm),
	.bimm(_bimm),
	.cmd(_cmd),
	.s(_s),
	.Rn(_Rn),
	.Rd(_Rd),
	.Rs(_Rs),
	.Rm(_Rm),
	.imm12(_imm12),
	.imm8(_imm8),
	.imm24(_imm24),
	.sh(_sh),
	.shamt5(_shamt5),
	.rot(_rot),
	.bit4(_bit4),
	.bit7(_bit7)
);

// *********** ZERO CONCATENATOR ***********
zero_concatenator zero_concat_inst(
	.imm24_in(_imm24), 
	.op_in(_op),
	.immediate_out(_immediate_out)
);
	
// *********** INCREMENTOR ***********
incrementor incrementor_inst(
	.in(_RDr15),
	.incremented(_incremented_pc)
);

// *********** MULTIPLEXERS ***********
mux_2x1 #(32) mux_2x1_alu_src2(
	.in1(_immediate_out),		// s=1
	.in2(_src2_shifted), 		// s=0
	.s(_alu_src_select),       
	.mux_out(_mux_out_alu_src2)
);

mux_2x1 #(32) mux_2x1_datamem_WAddr(
	.in1(_src2_shifted),		// s=1
	.in2(_alu_result), 		// s=0 
	.s(_datamem_addr_select), 
	.mux_out(_mux_out_datamem_WAddr)
);

mux_3x1 #(32) mux_3x1_regfile_WD(
	.in1(_alu_result),			// s=0
	.in2(_dmRData),    			// s=1
	.in3(_incremented_pc), 		// s=2
	.s(_regfile_WD_select), 
	.mux_out(_mux_out_regfile_WD)
);

endmodule
