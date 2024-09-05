/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： key_coding.v
** 创建日期：
** 功能描述：按键编码
** 硬件平台：大西瓜第一代开发板 http://daxiguafpga.taobao.com
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module key_coding(
                  clk,
                  reset_n,
                  set_ask,
                  set_fsk,
                  set_psk,
                  set_dpsk,
                  ask_code_sin_out, //
                  fsk_code_sin_out, //
                  psk_code_sin_out, //
                  dpsk_code_sin_out,//
                  code_data_out     //
);
input         clk;
input         reset_n;
input         set_ask;
input         set_fsk;
input         set_psk;
input         set_dpsk;
input  [9:0]  ask_code_sin_out;//
input  [9:0]  fsk_code_sin_out;//
input  [9:0]  psk_code_sin_out;//
input  [9:0]  dpsk_code_sin_out;//

output [9:0]  code_data_out;

wire        reset;
wire        set_ask;
wire        set_fsk;
wire        set_psk;
wire        set_dpsk;
wire [9:0]  ask_code_sin_out;//
wire [9:0]  fsk_code_sin_out;//
wire [9:0]  psk_code_sin_out;//
wire [9:0]  dpsk_code_sin_out;//
reg  [9:0]  code_data_out;

wire [3:0]   set_mode_code;
/******************调制模式选择****************************************/
assign set_mode_code={set_ask,set_fsk,set_psk,set_dpsk};
always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   begin
    code_data_out<=10'd0;
   end
  else
   case (set_mode_code)
    4'b0111:code_data_out<=ask_code_sin_out;
    4'b1011:code_data_out<=fsk_code_sin_out;
    4'b1101:code_data_out<=psk_code_sin_out;
    4'b1110:code_data_out<=dpsk_code_sin_out;
    default:code_data_out<=ask_code_sin_out;
   endcase
 end 
endmodule

