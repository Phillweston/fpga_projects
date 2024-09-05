//“0”码控制发0度相位，“1”码控制发180度相位
module dpsk_code(
                 clk,             //sys 500Hz
                 reset_n,         //
                 m_ser_code_in,   //PN序列输入
                 dpsk_code_out,   //dpsk调制输出
                 dds_sin_data_in2,//10k正弦波
                 dds_sin_data_in3,//10k正弦波,相位相差180
                 dpsk_code_sin_out//
                 );
input clk;
input reset_n;
input m_ser_code_in;
input [9:0]dds_sin_data_in2;
input [9:0]dds_sin_data_in3;

output dpsk_code_out;
output [9:0]dpsk_code_sin_out;

wire clk;
wire reset_n;
wire m_ser_code_in;
wire [9:0]dds_sin_data_in2;
wire [9:0]dds_sin_data_in3;

reg    dpsk_code_reg;
always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   begin
    dpsk_code_reg<=1'b0;
   end
  else
   dpsk_code_reg<=dpsk_code_reg ^ m_ser_code_in;//前一个码元与输入的码元进行异或
 end
assign dpsk_code_out=dpsk_code_reg;
assign dpsk_code_sin_out= (dpsk_code_reg) ? dds_sin_data_in3 : dds_sin_data_in2;
endmodule 



