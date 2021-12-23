module multiplier(
	input clk, 
	input reset,
	input [15:0] A, 
	input [15:0] B,
	output reg ready,
	output reg [31:0] result
);

reg [15:0] a;
reg [15:0] b;
reg [5:0] i = 0;

always @(posedge clk)
begin
	if(reset == 0)
	begin 
		a <= A;
		b <= B;   
		result <= 0;
		ready <= 0;
	end	
	else 
	begin
		if(i < 16)
		begin
			if(b[i] == 1) result <= result + (a << i);
			i <= i + 1;	
		end
		else ready <= 1;
	end		
end

endmodule















//module multiplier(
//	input clk, reset,
//	input [15:0] A, B,
//	output reg [31:0] result,
//	output reg ready
//);
//
//reg [15:0] a;
//reg [15:0] b;
//reg [5:0] i = 0;
//reg [31:0] sum = 0;
//
//always @(posedge clk)
//begin
//	if(reset == 0)
//	begin 
//		a <= A;
//		b <= B;   
//		sum <= 0;
//		result <= 0;
//		ready <= 0;
//	end	
//	else 
//	begin
//		if(i < 16)
//		begin
//			sum <= b[i] == 1 ? sum + (a << i) : sum; 
//			i <= i + 1;
//		end		
//		else 
//		begin
//			ready <= 1; // multiplication finished	
//			result <= sum; 
//		end			
//	end		
//end
//
//endmodule