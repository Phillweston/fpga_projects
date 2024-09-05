// *******************************************************************************
// г������ģ�飬���ڲ���1K��21K�����Ҳ��������ߵĵ��Ӳ���
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
/**************������***************/
wire [31:0] f32_bus;//ACƵ�ʿ���������
wire [31:0] reg32_out;//32λ�Ĵ������
wire [31:0] reg32_in;//32λ�Ĵ�������
/************************************/
assign f32_bus    =32'd85899;//1K
assign tri_f32_bus=32'd1803886;//21K
/*********************Ԫ������***************************/
       adder_32 u1(.data1(f32_bus),.data2(reg32_out),.sum(reg32_in));
       reg32    u2(.clk(clk),.reset_n(reset_n),.data_in(reg32_in),.data_out(reg32_out));
       sin1      u3(.address(reg32_out[31:22]),.clock(clk),.q(q));//����
/************************************************************************/
/****************���ǲ��ز�(75K)***************************************/
/************************************************************************/
/**************�ز�������*****************/
wire [31:0]      tri_f32_bus;                    //�ز�Ƶ�ʿ�����                    
wire [31:0]      tri_reg32_out;                  //32λ�Ĵ������
wire [31:0]      tri_reg32_in;                   //32λ�Ĵ�������


       
adder_32 u5(.data1(tri_f32_bus),.data2(tri_reg32_out),.sum(tri_reg32_in));//��Ƶ�ʿ����ֽ�����λ�ۼ���
reg32    u6(.clk(clk),.reset_n(reset_n),.data_in(tri_reg32_in),.data_out(tri_reg32_out));//���ۼ����Ľ�����мĴ�Ȼ������������ۼ�������                                                                           
sin2  u7(.address(tri_reg32_out[31:22]),.clock(clk),.q(dds_tri_out));//���ҽ��нضϽ���ʮλ���뵽ROM��       

wire    [9:0] data_temp;
assign data_temp=dds_tri_out+q;
endmodule 