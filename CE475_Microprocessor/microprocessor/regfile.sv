module register_file(	
	input logic clk,	
	input logic WE,
	input logic [3:0]  WA,
	input logic [31:0] WD,
	input logic [31:0] WDr15, 
	input logic [3:0] RA1, RA2, RA3,
	output logic [31:0] RDr15,
	output logic [31:0] RD1, RD2, RD3
);

logic [31:0] regfile[15:0]; // 16 32-bit registers

assign RD1 = regfile[RA1];
assign RD2 = regfile[RA2];
assign RD3 = regfile[RA3];

assign RDr15 = regfile[15];

always @(posedge clk)
begin
	if(WE) regfile[WA] <= WD; 
   regfile[15] <= WDr15;
end

initial 
begin
	regfile[0] = 0;
	regfile[1] = 0;
	regfile[2] = 0;
	regfile[3] = 0;
	regfile[4] = 0;
	regfile[5] = 0;
	regfile[6] = 0;
	regfile[7] = 0;
	regfile[8] = 0;
	regfile[9] = 0;
	regfile[10] = 0;
	regfile[11] = 0;
	regfile[12] = 0;
	regfile[13] = 0;
	regfile[14] = 0;
	regfile[15] = -1;
end

endmodule 