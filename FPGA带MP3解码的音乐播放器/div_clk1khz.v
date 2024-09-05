//12mhz分成1khz的分频模块,提供给quma模块
module div_clk1khz(clk_12mhz,clk_1khz);
input clk_12mhz;
output clk_1khz;
reg clk_1khz;
reg [21:0] cnt;
always @(posedge clk_12mhz)
if(cnt<5999) cnt=cnt+1; // (12mhz/1khz=12000,cnt<[12000/2-1=5999]）
else  begin  cnt=0;  clk_1khz =! clk_1khz;  
end
endmodule