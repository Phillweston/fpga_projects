//取码模块，从song模块取得数码管显示部分的位码和段码
module quma(high,med,low,clk_1mhz,dig,duan);
input [3:0] high,med,low;
input clk_1mhz;
reg[0:5] dig;
output [0:5]dig;//定义输出八位位码
reg [7:0] duan; 
output [7:0] duan; //定义用于输出的段码的代码
always @(posedge clk_1mhz)//扫描high,med,low三个寄存器的值，取出位码和段码的代码
begin 
if (high!=0)   //如果high的值不为0，则只输出high的值
 begin dig<=8'b11111011;
case (high) 
1:duan<=8'b00000001;
2:duan<=8'b00000010;
3:duan<=8'b00000011;
4:duan<=8'b00000100;
5:duan<=8'b00000101;
6:duan<=8'b00000110;
7:duan<=8'b00000111;
endcase
 end
else if (med!=0)       // 如果med的值不为0，则只输出med的值
begin dig<=8'b11111101;
case (med ) 
1:duan<=8'b00000001;
2:duan<=8'b00000010;
3:duan<=8'b00000011;
4:duan<=8'b00000100;
5:duan<=8'b00000101;
6:duan<=8'b00000110;
7:duan<=8'b00000111;
endcase
 end
else if (low!=0)       //如果low的值不为0，则只输出low的值
begin dig<=8'b11111110;
case (low ) 
1:duan<=8'b00000001;
2:duan<=8'b00000010;
3:duan<=8'b00000011;
4:duan<=8'b00000100;
5:duan<=8'b00000101;	
6:duan<=8'b00000110;
7:duan<=8'b00000111;
endcase	
end
end
endmodule  