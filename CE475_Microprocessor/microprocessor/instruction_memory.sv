module instrmem(
	input logic [31:0] instr_addr,
   output logic [31:0] instruction
);

logic [31:0] MEMORY[15:0];

assign instruction = MEMORY[instr_addr]; 

initial
begin
	// SUB R5, R14, R14 --> REG[5] = 0;
	MEMORY[0][31:28]	= 4'b1110;		// cond
	MEMORY[0][27:26]	= 2'b00;			// op, data processing
	MEMORY[0][25]		= 0;				// imm
	MEMORY[0][24:21]	= 4'b0010;		// cmd, subtract
	MEMORY[0][20]		= 0;				// s
	MEMORY[0][19:16]  = 4'b1110;		// Rn
	MEMORY[0][15:12]  = 4'b0101;		// Rd
	MEMORY[0][11:8] 	= 4'b0000;		// Rs 
	MEMORY[0][7:0] 	= 8'b00001110;	// Rm 
	
	// ADD R0, R5, #7 --> REG[0] = 7;
	MEMORY[1][31:28]	= 4'b1110;		// cond
	MEMORY[1][27:26]	= 2'b00;			// op, data processing
	MEMORY[1][25]		= 1;				// imm
	MEMORY[1][24:21]	= 4'b0100;		// cmd, add
	MEMORY[1][20]		= 0;				// s
	MEMORY[1][19:16]  = 4'b0101;		// Rn
	MEMORY[1][15:12]  = 4'b0000;		// Rd
	MEMORY[1][11:8] 	= 4'b0000;		// Rs 
	MEMORY[1][7:0] 	= 8'b00000111;	// imm8 
	
	// ADD R1, R5, #9 --> REG[1] = 9;
	MEMORY[2][31:28]	= 4'b1110;		// cond
	MEMORY[2][27:26]	= 2'b00;			// op, data processing
	MEMORY[2][25]		= 1;				// imm
	MEMORY[2][24:21]	= 4'b0100;		// cmd, add
	MEMORY[2][20]		= 0;				// s
	MEMORY[2][19:16]  = 4'b0101;		// Rn
	MEMORY[2][15:12]  = 4'b0001;		// Rd
	MEMORY[2][11:8] 	= 4'b0000;		// Rs 
	MEMORY[2][7:0] 	= 8'b00001001;	// imm8 or Rm ????
	
	// ADD R2, R0, R1 --> REG[2] = 7 + 9 = 16
	MEMORY[3][31:28]	= 4'b1110;		// cond
	MEMORY[3][27:26]	= 2'b00;			// op
	MEMORY[3][25]		= 0;				// imm
	MEMORY[3][24:21]	= 4'b0100;		// cmd, add
	MEMORY[3][20]		= 0;				// s
	MEMORY[3][19:16]  = 4'b0000;		// Rn
	MEMORY[3][15:12]  = 4'b0010;		// Rd
	MEMORY[3][11:8] 	= 4'b0000;		// Rs 
	MEMORY[3][7:0] 	= 8'b00000001;	// imm8 or Rm ????
		
	// STR R2, [R0, R2] // Mem[7+16=23] = 16	
	MEMORY[4][31:28]	= 4'b1110;		// cond
	MEMORY[4][27:26]	= 2'b01;			// op, memory operation
	MEMORY[4][25]		= 0;				// imm
	MEMORY[4][24:21]	= 4'b0100;		// cmd, add base and offset
	MEMORY[4][20]		= 0;				// store
	MEMORY[4][19:16]  = 4'b0000;		// Rn
	MEMORY[4][15:12]  = 4'b0010;		// Rd
	MEMORY[4][11:8] 	= 4'b0000;		// Rs 
	MEMORY[4][7:0] 	= 8'b00000010;	// imm8 or Rm ????
	
	// ADD R2, R2, R1 --> REG[2] = 16 + 7 = 23
	MEMORY[5][31:28]	= 4'b1110;		// cond
	MEMORY[5][27:26]	= 2'b00;			// op
	MEMORY[5][25]		= 0;				// imm
	MEMORY[5][24:21]	= 4'b0100;		// cmd, add
	MEMORY[5][20]		= 0;				// s
	MEMORY[5][19:16]  = 4'b0010;		// Rn
	MEMORY[5][15:12]  = 4'b0010;		// Rd
	MEMORY[5][11:8] 	= 4'b0000;		// Rs 
	MEMORY[5][7:0] 	= 8'b00000000;	// imm8 or 2nd src reg
	
	// LDR R3, [R0, R2] --> REG[3] = Mem[23] = 16
	MEMORY[6][31:28]	= 4'b1110;		// cond
	MEMORY[6][27:26]	= 2'b01;			// op, memory operation
	MEMORY[6][25]		= 0;				// imm
	MEMORY[6][24:21]	= 4'b0100;		// cmd, add base and offset
	MEMORY[6][20]		= 1;				// load
	MEMORY[6][19:16]  = 4'b0000;		// Rn
	MEMORY[6][15:12]  = 4'b0011;		// Rd
	MEMORY[6][11:8] 	= 4'b0000;		// Rs 
	MEMORY[6][7:0] 	= 8'b00000010;	// imm8 or 2nd src reg
	
	// STR R3, [R0, #20] --> Mem[27] = 16
	MEMORY[7][31:28]	= 4'b1110;		// cond
	MEMORY[7][27:26]	= 2'b01;			// op, memory operation
	MEMORY[7][25]		= 1;				// imm
	MEMORY[7][24:21]	= 4'b0100;		// cmd, add base and offset
	MEMORY[7][20]		= 0;				// store
	MEMORY[7][19:16]  = 4'b0000;		// Rn
	MEMORY[7][15:12]  = 4'b0011;		// Rd
	MEMORY[7][11:8] 	= 4'b0000;		// Rs 
	MEMORY[7][7:0] 	= 8'b00010100;	// imm8 or 2nd src reg
	
	// LSL R6, R3, #2 --> reg[6] = 64
	MEMORY[8][31:28]	= 4'b1110;		// cond
	MEMORY[8][27:26]	= 2'b00;			// op, data processing
	MEMORY[8][25]		= 0;				// imm
	MEMORY[8][24:21]	= 4'b1101;		// cmd, shift
	MEMORY[8][20]		= 0;				// s
	MEMORY[8][19:16]  = 4'b0000;		// Rn, ignored
	MEMORY[8][15:12]  = 4'b0110;		// Rd
	MEMORY[8][11:7] 	= 5'b00010;		// shamt-5, shift amount 
	MEMORY[8][6:5] 	= 2'b00;			// sh, LSL
	MEMORY[8][4] 		= 0;				// bit4, shift by shamt-5 times
	MEMORY[8][3:0] 	= 4'b0011;		// Rm
end

endmodule
