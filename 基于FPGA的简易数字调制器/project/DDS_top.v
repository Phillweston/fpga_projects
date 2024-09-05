s/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： DDS_top.v
** 创建日期：
** 功能描述：顶层设计
** 硬件平台：大西瓜第一代开发板 http://daxiguafpga.taobao.com
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 描述:PN序列频率为500HZ
		载波1频率为500HZ
		载波2频率为1000Hz
		载波3频率为1000Hz相位相差180
*******************************************************************************/
module DDS_top(clk,             //内部时钟
               reset,           //复位
               sclk,            //DAC时钟输入
               din,             //DAC数据输入
               cs,              //DAC片选
               m_ser_out,       //PN序列输出,25引脚
               set_ask,         //设置输出为ask
               set_fsk,         //设置输出为fsk
               set_psk,         //设置输出为psk
               set_dpsk,        //设置输出为pdsk
               dpsk_code_out    //pdsk调制输出,27引脚
              );
input        clk;
input        reset;
output       sclk;
output       din;
output       cs;
input        set_ask;
input	     set_fsk;
input	     set_psk;
input	     set_dpsk;
output       m_ser_out;
output       dpsk_code_out;


wire         clk;
wire         reset;
wire         set_ask_line;
wire	     set_fsk_line;
wire	     set_psk_line;
wire	     set_dpsk_line;
wire         clk_div;
wire [9:0]   data_line1;
wire [9:0]   data_line2;
wire [9:0]   data_line3;
wire [9:0]   ask_code_sin_out;
wire [9:0]   fsk_code_sin_out;
wire [9:0]   psk_code_sin_out;
wire [9:0]   dpsk_code_sin_out;
wire [9:0]   dac_data_in;

  DDS     u4(.clk(clk),
             .reset_n(reset),
             .dds_data_out1(data_line1),
             .dds_data_out2(data_line2),
             .dds_data_out3(data_line3));
  m_ser   u5(
            .clk(clk),           //sys clk
            .reset_n(reset),     //sys reset_n
            .clk_div(clk_div),
            .m_ser_out(m_ser_out)//PN ser_code out
            );
  ask_code u6(
                .clk(clk),
                .m_ser_code_in(m_ser_out),
                .dds_sin_data_in(data_line2),//10k正弦波
                .ask_code_sin_out(ask_code_sin_out)
                );
  fsk_code u7(
                .clk(clk),
                .m_ser_code_in(m_ser_out),
                .dds_sin_data_in1(data_line1),//1k正弦波
                .dds_sin_data_in2(data_line2),//10k正弦波
                .fsk_code_sin_out(fsk_code_sin_out)
                );
  psk_code u8(
                .clk(clk),
                .m_ser_code_in(m_ser_out),
                .dds_sin_data_in2(data_line2),//10k正弦波
                .dds_sin_data_in3(data_line3),//10k正弦波
                .psk_code_sin_out(psk_code_sin_out)
                );
  dpsk_code u9(
                 .clk(clk_div),             //sys 500Hz
                 .reset_n(reset),         //
                 .m_ser_code_in(m_ser_out),   //PN序列输入
                 .dpsk_code_out(dpsk_code_out),   //dpsk调制输出
                 .dds_sin_data_in2(data_line2),//10k正弦波
                 .dds_sin_data_in3(data_line3),//10k正弦波,相位相差180
                 .dpsk_code_sin_out(dpsk_code_sin_out)//
                 );
  key       u10(.clk(clk),.key(set_ask),.key_out(set_ask_line));
  key       u11(.clk(clk),.key(set_fsk),.key_out(set_fsk_line));
  key       u12(.clk(clk),.key(set_psk),.key_out(set_psk_line));
  key       u13(.clk(clk),.key(set_dpsk),.key_out(set_dpsk_line));
  key_coding u14(
                  .clk(clk),
                  .reset_n(reset),
                  .set_ask(set_ask_line),
                  .set_fsk(set_fsk_line),
                  .set_psk(set_psk_line),
                  .set_dpsk(set_dpsk_line),
                  .ask_code_sin_out(ask_code_sin_out), //
                  .fsk_code_sin_out(fsk_code_sin_out), //
                  .psk_code_sin_out(psk_code_sin_out), //
                  .dpsk_code_sin_out(dpsk_code_sin_out),//
                  .code_data_out(dac_data_in));     //
  TLC5615    u15(
                  .clk(clk),
                  .sclk(sclk),
                  .din(din),
                  .cs(cs),
                  .din_in(dac_data_in));
endmodule


