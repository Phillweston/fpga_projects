// *******************************************************************************
// 顶层文件模块
// *******************************************************************************/
module fir_dac(
              clk,
              reset_n,
              key_in,
              sclk,                  //TLC5615 sclk时钟脚
              din,                   //TLC5615 din数据脚
              cs                    //TLC5615 cs片选
              );
input  clk;
input  reset_n;
input  key_in;
output sclk;
output din;
output cs;

wire [9:0]data_line;
wire [9:0]fir_data;
wire [9:0]data_in;
wire [9:0]fir_data_20;
fir fir_top(
           .clk(clk),
           .reset_n(reset_n),
           .data_in(data_in),  //谐波信号
           .fir_data(fir_data), //8滤波之后的信号
           .fir_data_20(fir_data_20)//21滤波之后的信号
           );
TLC5615 tlc5615_top(
           .clk(clk),//内部时钟
           .sclk(sclk),//TLC5615 sclk时钟脚
           .din(din),//TLC5615 din数据脚
           .cs(cs),//TLC5615 cs片选
           .din_in(data_line));//十位数据输入 
key key_top(
          .key_in(key_in),
          .data_out(data_line),
          .data1(fir_data),
          .data2(fir_data_20)
          );
endmodule
