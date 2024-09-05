//12mhz分成6mhz的分频模块,提供给song模块
module div_clk6mhz(clk_12mhz,clk_6mhz);
input clk_12mhz;
output clk_6mhz;
reg clk_6mhz;
reg cnt;
always @(posedge clk_12mhz)
clk_6mhz=!clk_6mhz; 
endmodule
