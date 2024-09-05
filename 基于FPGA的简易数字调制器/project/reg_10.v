/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： reg_10.v
** 功能描述：10位寄存器
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module reg_10(clk,reset_n,data_in,data_out);
input clk;
input reset_n;
input [9:0] data_in;
output [9:0] data_out;

wire clk;
wire reset_n;
wire [9:0] data_in;
reg [9:0] data_out;

always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   data_out<=10'd0;
  else
   data_out<=data_in;
  end 
endmodule