//12mhz�ֳ�4hz�ķ�Ƶģ��,�ṩ��songģ��
module div_clk4hz(clk_12mhz,clk_4hz);
input clk_12mhz;
output clk_4hz;
reg clk_4hz;
reg [21:0] cnt;
always @(posedge clk_12mhz)
if(cnt<1499999) cnt=cnt+1; // (12mhz/4hz=3000000,cnt<[3000000/2-1=1499999]��
else  begin  cnt=0;  clk_4hz =! clk_4hz;  
end
endmodule
