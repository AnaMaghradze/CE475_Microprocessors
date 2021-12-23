module master;	

reg clk = 0;	
reg valid = 0;
reg [4:0] WAddr = 0; 
reg [31:0] WData = 0;
reg [4:0] RAddr = 0; 

wire [31:0] RData; 
wire ready; 

slave s(clk, valid, WAddr, WData, RAddr, RData, ready);

always #5 clk <= ~clk;

initial 
begin 	
	#10 valid = 0;
	#10 WAddr = 1; 
	#10 WData = 12345;
	#10 valid = 1;		
	#20 WAddr = 2; 
	#20 WData = 54321;
	#20 RAddr = 16; 
	#20 valid = 0;
	
	#20 WAddr = 0;
	#20 WData[31:0] = 1;
	#20 valid = 0;
	#20 valid = 0;
end

endmodule