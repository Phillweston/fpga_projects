//ȡ��ģ�飬��songģ��ȡ���������ʾ���ֵ�λ��Ͷ���
module quma(high,med,low,clk_1mhz,dig,duan);
input [3:0] high,med,low;
input clk_1mhz;
reg[0:5] dig;
output [0:5]dig;//���������λλ��
reg [7:0] duan; 
output [7:0] duan; //������������Ķ���Ĵ���
always @(posedge clk_1mhz)//ɨ��high,med,low�����Ĵ�����ֵ��ȡ��λ��Ͷ���Ĵ���
begin 
if (high!=0)   //���high��ֵ��Ϊ0����ֻ���high��ֵ
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
else if (med!=0)       // ���med��ֵ��Ϊ0����ֻ���med��ֵ
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
else if (low!=0)       //���low��ֵ��Ϊ0����ֻ���low��ֵ
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