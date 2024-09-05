// *******************************************************************************
// 32位累加器模块
// *******************************************************************************/
module adder_32(data1,data2,sum);
input  [31:0] data1,data2;//输入数1，2
output [31:0] sum;//和输出

wire [31:0] data1,data2;
wire [31:0] sum;

assign sum=data1+data2;

endmodule