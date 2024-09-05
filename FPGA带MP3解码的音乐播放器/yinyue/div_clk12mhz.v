module div_clk12mhz(clk_48mhz,clk_12mhz);
input clk_48mhz;
output clk_12mhz;
reg clk_12mhz;
reg [21:0] cnt;
always @(posedge clk_48mhz)
if(cnt<1) cnt=cnt+1; // (48mhz/12mhz=4,cnt<[4/2-1=1]£©
else  begin  cnt=0;  clk_12mhz =!clk_12mhz;  
end
endmodule
