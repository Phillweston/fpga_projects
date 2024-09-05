/********************************��Ȩ����**************************************
**                              �������Ŷ�
**                            
**----------------------------�ļ���Ϣ--------------------------
** �ļ����ƣ� key_coding.v
** �������ڣ�
** ������������������
** Ӳ��ƽ̨�������ϵ�һ�������� http://daxiguafpga.taobao.com
** ��Ȩ������������������֪ʶ��Ȩ,�������������ѧϰ.
**---------------------------�޸��ļ��������Ϣ----------------
** �޸��ˣ�
** �޸����ڣ�		
** �޸����ݣ�
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
/******************����ģʽѡ��****************************************/
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

