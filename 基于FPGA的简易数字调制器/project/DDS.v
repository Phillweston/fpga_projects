/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： DDS.v
** 创建日期：
** 功能描述：DDS信号发生与嵌入式逻辑分析仪的调用
** 硬件平台：大西瓜第一代开发板 http://daxiguafpga.taobao.com
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module DDS(
           clk,
           reset_n,
           dds_data_out1,
           dds_data_out2,
           dds_data_out3
           );
input         clk;//时钟输入
input         reset_n;
output [9:0]  dds_data_out1;
output [9:0]  dds_data_out2;
output [9:0]  dds_data_out3;

wire          clk;
wire          reset_n;
wire    [9:0]  dds_data_out1;
wire    [9:0]  dds_data_out2;
wire    [9:0]  dds_data_out3;
//**************************************************//
//******************产生载波1(500)**********************//
//**************************************************//
/**************连接线***************/
wire   [31:0] f32_bus1;//AC频率控制字输入
wire   [9:0]  p_bus1;
wire   [31:0] reg32_out1;//32位寄存器输出
wire   [31:0] reg32_in1;//32位寄存器输入
wire   [9:0]  reg10_in1;
wire   [9:0]  reg10_out_address1;
/************************************/

parameter [11:0] f32_bus_init1=12'd0;
parameter [9:0] p10_bus_init1=10'd0;//设置初始相位

assign f32_bus1[31:20]=f32_bus_init1;//初始化,高位置低
assign f32_bus1[19:0]=20'd42950;//低位可以设置DDS的输出频率
assign p_bus1=p10_bus_init1;
/*********************元件例化************************************/
       adder_32 u1(.data1(f32_bus1),.data2(reg32_out1),.sum(reg32_in1));
       reg32    u2(.clk(clk),.reset_n(reset_n),.data_in(reg32_in1),.data_out(reg32_out1));
       adder_10 u3(.data1(p_bus1),.data2(reg32_out1[31:22]),.sum(reg10_in1));
       reg_10   u4(.clk(clk),.reset_n(reset_n),.data_in(reg10_in1),.data_out(reg10_out_address1));
       sin_rom  u5(.address(reg10_out_address1),.clock(clk),.q(dds_data_out1));//正弦
//**************************************************//
//******************产生载波2(1K)**********************//
//**************************************************//
/**************连接线***************/
wire   [31:0] f32_bus2;//AC频率控制字输入
wire   [9:0]  p_bus2;
wire   [31:0] reg32_out2;//32位寄存器输出
wire   [31:0] reg32_in2;//32位寄存器输入
wire   [9:0]  reg10_in2;
wire   [9:0]  reg10_out_address2;
/************************************/

parameter [11:0] f32_bus_init2=12'd0;//
parameter [9:0] p10_bus_init2=10'd0;//设置初始相位

assign f32_bus2[31:20]=f32_bus_init2;//初始化,高位置低
assign f32_bus2[19:0]=20'd85899;//低位可以设置DDS的输出频率
assign p_bus2=p10_bus_init2;
/*********************元件例化************************************/
       adder_32 u6(.data1(f32_bus2),.data2(reg32_out2),.sum(reg32_in2));
       reg32    u7(.clk(clk),.reset_n(reset_n),.data_in(reg32_in2),.data_out(reg32_out2));
       adder_10 u8(.data1(p_bus2),.data2(reg32_out2[31:22]),.sum(reg10_in2));
       reg_10   u9(.clk(clk),.reset_n(reset_n),.data_in(reg10_in2),.data_out(reg10_out_address2));
       sin_rom  u10(.address(reg10_out_address2),.clock(clk),.q(dds_data_out2));//正弦
//**************************************************//
//******************产生载波3(1K,相位与2相反)**********************//
//**************************************************//
/**************连接线***************/
wire   [31:0] f32_bus3;//AC频率控制字输入
wire   [9:0]  p_bus3;
wire   [31:0] reg32_out3;//32位寄存器输出
wire   [31:0] reg32_in3;//32位寄存器输入
wire   [9:0]  reg10_in3;
wire   [9:0]  reg10_out_address3;
/************************************/

parameter [11:0] f32_bus_init3=12'd0;//
parameter [9:0] p10_bus_init3=10'd512;//设置初始相位

assign f32_bus3[31:20]=f32_bus_init3;//初始化,高位置低
assign f32_bus3[19:0]=20'd85899;//低位可以设置DDS的输出频率
assign p_bus3=p10_bus_init3;
/*********************元件例化************************************/
       adder_32 u11(.data1(f32_bus3),.data2(reg32_out3),.sum(reg32_in3));
       reg32    u12(.clk(clk),.reset_n(reset_n),.data_in(reg32_in3),.data_out(reg32_out3));
       adder_10 u13(.data1(p_bus3),.data2(reg32_out3[31:22]),.sum(reg10_in3));
       reg_10   u14(.clk(clk),.reset_n(reset_n),.data_in(reg10_in3),.data_out(reg10_out_address3));
       sin_rom  u15(.address(reg10_out_address3),.clock(clk),.q(dds_data_out3));//正弦
endmodule





