/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： key.v
** 创建日期：
** 功能描述：按键消抖
** 硬件平台：大西瓜第一代开发板 http://daxiguafpga.taobao.com
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module key(
           clk,
           key,
           key_out);
input clk;
input key; //时钟输入，按键输入
output key_out;//经消抖后的按键信号输出

wire clk;
wire key;

reg  key_out;

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] state;

always @(posedge clk)
 begin
    case (state)
     s0:
      begin 
       key_out<=1'b1;
	   if(key==1'b0)
		  state<=s1;
	   else 
	      state<=s0;
	  end
	 s1:
	  begin 
	   if(key==1'b0)
		 state<=s2;
	   else 
	     state<=s0;
	   end 
	 s2:
	  begin 
	   if(key==1'b0)
		 state<=s3;
	   else 
	     state<=s0;    
	   end 
	 s3:
	   begin 
	    if(key==1'b0)
	     begin
		 key_out<=1'b0;
		 state<=s3;
		 end 
		else 
		 begin
		 key_out<=1'b1;
		 state<=s0;
	     end
	   end
	 default:
	     state<=s0;
    endcase
 end
endmodule

