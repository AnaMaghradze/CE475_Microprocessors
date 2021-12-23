module slave(
	input clk,
	input	valid,
	input [4:0] WAddr, 
	input [31:0] WData, 
	input [4:0] RAddr,	
	output reg [31:0] RData, 
	output reg ready
);

reg [31:0] REG [31:0]; 

reg calculate = 0;

wire [31:0] multiplication_result;
wire multiplication_finished;


multiplier m(clk, calculate, REG[1][15:0], REG[2][15:0], multiplication_finished, multiplication_result[31:0]);  


always @(posedge clk)
begin	
	REG[0][0] <= WAddr == 0 && WData[31:0] == 1; 
	ready <= multiplication_finished;
	
	if(multiplication_finished)
	begin
		REG[RAddr][31:0] <= multiplication_result;
		RData[31:0] <= multiplication_result;
	end
	
	if(valid == 0)
	begin
		if(REG[0][0] == 1) 
		begin 
		   calculate <= 1; 
			REG[0][0] <= 0; 
		end
	end
	else
	begin
		REG[WAddr][31:0] <= WData[31:0]; 
		ready <= 0;
	end
end
						

endmodule
