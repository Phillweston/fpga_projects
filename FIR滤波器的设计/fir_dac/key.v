// *******************************************************************************
// 按键选择输出波形模块模块
// *******************************************************************************/
module key(
          key_in,
          data_out,
          data1,
          data2
          );
input  key_in;
input  [9:0]data1;
input  [9:0]data2;
output [9:0]data_out;
wire  key_in;
wire  [9:0]data1;
wire  [9:0]data2;

assign data_out=(key_in)?data1:data2;
endmodule
