//12mhz分成1mhz的分频模块,提供给quma模块
module div_clk1mhz(clk_12mhz,clk_1mhz);
input clk_12mhz;
output clk_1mhz;
reg clk_1mhz;
reg [21:0] cnt;
always @(posedge clk_12mhz)
if(cnt<5) cnt=cnt+1; // (12mhz/1mhz=12,cnt<[12/2-1=5]）
else  begin  cnt=0;  clk_1mhz =! clk_1mhz;  end
endmodule
