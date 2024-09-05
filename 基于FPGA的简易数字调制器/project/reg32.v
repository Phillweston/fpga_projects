/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： reg32.v
** 创建日期：
** 功能描述:32位寄存器
** 硬件平台：大西瓜第一代开发板
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module reg32(clk,reset_n,data_in,data_out);
input clk;
input reset_n;
input [31:0] data_in;
output [31:0] data_out;

wire clk;
wire reset_n;
wire [31:0] data_in;
reg [31:0] data_out;

always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   data_out<=32'd0;
  else
   data_out<=data_in;
  end 
endmodule
