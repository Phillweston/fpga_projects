/********************************��Ȩ����**************************************
**                              �������Ŷ�
**                            
**----------------------------�ļ���Ϣ--------------------------
** �ļ����ƣ� reg_10.v
** ����������10λ�Ĵ���
**---------------------------�޸��ļ��������Ϣ----------------
** �޸��ˣ�
** �޸����ڣ�		
** �޸����ݣ�
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