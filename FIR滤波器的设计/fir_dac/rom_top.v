// *******************************************************************************
// 谐波产生模块，用于产生1K和21K的正弦波及其两者的叠加波形
// *******************************************************************************/
module rom_top(
               clk,
               reset_n,
               q,
               dds_tri_out,
               data_temp
              );
input         clk;
input         reset_n;
output  [8:0] q;
output  [7:0] dds_tri_out;
output  [9:0] data_temp;
wire         clk;
wire         reset_n;
wire    [8:0] q;
wire    [7:0] dds_tri_out;
/**************连接线***************/
wire [31:0] f32_bus;//AC频率控制字输入
wire [31:0] reg32_out;//32位寄存器输出
wire [31:0] reg32_in;//32位寄存器输入
/************************************/
assign f32_bus    =32'd85899;//1K
assign tri_f32_bus=32'd1803886;//21K
/*********************元件例化***************************/
       adder_32 u1(.data1(f32_bus),.data2(reg32_out),.sum(reg32_in));
       reg32    u2(.clk(clk),.reset_n(reset_n),.data_in(reg32_in),.data_out(reg32_out));
       sin1      u3(.address(reg32_out[31:22]),.clock(clk),.q(q));//正弦
/************************************************************************/
/****************三角波载波(75K)***************************************/
/************************************************************************/
/**************载波连接线*****************/
wire [31:0]      tri_f32_bus;                    //载波频率控制线                    
wire [31:0]      tri_reg32_out;                  //32位寄存器输出
wire [31:0]      tri_reg32_in;                   //32位寄存器输入


       
adder_32 u5(.data1(tri_f32_bus),.data2(tri_reg32_out),.sum(tri_reg32_in));//将频率控制字接入相位累加器
reg32    u6(.clk(clk),.reset_n(reset_n),.data_in(tri_reg32_in),.data_out(tri_reg32_out));//将累加器的结果进行寄存然后输出反馈到累加器输入                                                                           
sin2  u7(.address(tri_reg32_out[31:22]),.clock(clk),.q(dds_tri_out));//并且进行截断将高十位输入到ROM中       

wire    [9:0] data_temp;
assign data_temp=dds_tri_out+q;
endmodule 