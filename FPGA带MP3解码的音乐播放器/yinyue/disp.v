//动态数码管显示模块
module  disp(duan,clk_1khz,seg);
input [7:0]duan;
input clk_1khz;
output [7:0]seg;
reg [7:0]seg;
always @(posedge  clk_1khz)
begin  
case(duan)
1:seg=8'b11111001;
2:seg=8'b10100100;
3:seg=8'b10110000;
4:seg=8'b10011001;
5:seg=8'b10010010;
6:seg=8'b10000010;
7:seg=8'b11111000;
default: seg=8'b11111001;
endcase
end
endmodule
