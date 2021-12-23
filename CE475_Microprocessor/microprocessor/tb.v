module tb;

reg clk = 0;

always #5 clk <= ~clk;

top cpu_top(clk);

endmodule
