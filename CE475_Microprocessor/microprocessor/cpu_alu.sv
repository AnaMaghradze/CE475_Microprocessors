module ALU(
	input logic [3:0] cmd_in,
	input logic [31:0] A_in, B_in,
	output logic [31:0] alu_result,
	output logic [3:0] alu_NZCV
);

reg [32:0] result;
wire [3:0] NZCV;
wire [3:0] rot;

// cmd
localparam cmd_bitwise_and 				= 4'b0000;
localparam cmd_bitwise_xor 				= 4'b0001;
localparam cmd_subtract 					= 4'b0010;
localparam cmd_reverse_subtract			= 4'b0011;
localparam cmd_add 							= 4'b0100;
localparam cmd_add_with_carry 			= 4'b0101;
localparam cmd_subtract_with_carry		= 4'b0110;
localparam cmd_reverse_sub_with_carry 	= 4'b0111;
localparam cmd_test 							= 4'b1000;
localparam cmd_test_equivalence 			= 4'b1001;
localparam cmd_compare 						= 4'b1010;
localparam cmd_compare_negative			= 4'b1011;
localparam cmd_bitwise_or 					= 4'b1100;
localparam cmd_shift 						= 4'b1101;
localparam cmd_bitwise_clear 				= 4'b1110;
localparam cmd_bitwise_not 				= 4'b1111;

//assignments
assign alu_NZCV = NZCV[3:0];
assign alu_result = result[31:0];

assign NZCV[3] = result[31]; // negative 
assign NZCV[2] = result[31:0] == 0; // zero 
assign NZCV[1] = result[32]; // carry 
assign NZCV[0] = (A_in[31] == 1 && B_in[31] == 1 && result[31] == 0) || (A_in[31] == 0 && B_in[31] == 0 && result[31] == 1); // overflow
				 
always @(*) 
begin 
	case(cmd_in)
		cmd_bitwise_not: result[31:0] = ~A_in;
		cmd_bitwise_or: result[31:0] = A_in | B_in;
		cmd_bitwise_and: result[31:0] = A_in & B_in;
		cmd_bitwise_xor: result[31:0] = A_in ^ B_in;		
		cmd_bitwise_clear: result[31:0] = A_in & ~B_in;		
		/// ...
		cmd_add: 
		begin
			result[31:0] = A_in + B_in;
			result[32] = 0;
		end
		cmd_subtract: 
		begin
			result[31:0] = A_in - B_in;
			result[32] = 0;
		end
		cmd_reverse_subtract:
		begin
			result[31:0] = B_in - A_in;
			result[32] = 0;
		end	
		cmd_add_with_carry: result[32:0] = A_in + B_in;	
		cmd_subtract_with_carry: result[32:0] = A_in - B_in;			
		cmd_reverse_sub_with_carry: result[32:0] = B_in - A_in;
		cmd_test: result[32:0] = A_in & B_in; 
		cmd_test_equivalence: result[32:0] = A_in ^ B_in;	
		cmd_compare: result[32:0] = A_in - B_in; 
		cmd_compare_negative: result[32:0] = A_in + B_in; 
		/// ...		 
		cmd_shift: result = B_in; // B_in value is already shifted by cpu_shifter
	endcase
end

endmodule 