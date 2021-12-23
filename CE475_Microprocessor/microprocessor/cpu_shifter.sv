module shifter(
	input logic [4:0] shifter_shamt5_in,
   input logic [1:0] shifter_sh_in,
   input logic [31:0] imm8extended,
   input logic [31:0] Rm_in,
   input logic [31:0] Rs_in,
   input logic [3:0] shifter_rot_in,
   input logic instrbit4,
   input logic instrbit25, 
	output logic [31:0] src2_shifted
);

localparam LSL = 2'b00;
localparam LSR = 2'b01;
localparam ASR = 2'b10;
localparam ROR = 2'b11;

always @(*)
begin
	// if immediate bit set to 1
	if (instrbit25)
   begin
		// shift imm8extended by rot*2 to the right, store result in src2_shifted
		src2_shifted = {imm8extended, imm8extended} >> shifter_rot_in * 2; 
   end
	else
	begin
		if (instrbit4)
      begin
			// shift Rm_in by Rs_in, with shifter_sh_in type of shift, store result in src2_shifted
			case (shifter_sh_in)
				LSL: src2_shifted <= Rm_in << Rs_in;  		  
            LSR: src2_shifted <= Rm_in >> Rs_in;  		  
				ASR: src2_shifted <= Rm_in >>> Rs_in; 		  
				ROR: src2_shifted <= {Rm_in, Rm_in} >> Rs_in; 
				default : src2_shifted = Rm_in;
			endcase
		end
      else
		begin
			// shift Rm_in by shifter_shamt5_in, with shifter_sh_in type of shift, store result in src2_shifted
			case (shifter_sh_in)
				LSL: src2_shifted <= Rm_in << shifter_shamt5_in;  		  
            LSR: src2_shifted <= Rm_in >> shifter_shamt5_in;    		  
				ASR: src2_shifted <= Rm_in >>> shifter_shamt5_in; 		  
				ROR: src2_shifted <= {Rm_in, Rm_in} >> shifter_shamt5_in;  
				default: src2_shifted <= Rm_in;
			endcase
		end
	end
end

endmodule
