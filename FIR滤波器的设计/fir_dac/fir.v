// *******************************************************************************
// FIR滤波器模块
// *******************************************************************************/
    // 采样频率为100K
    // 基波为1000Hz
    // 谐波为21KHz
    // 截止频率为20K,滤波器的阶数为7
    // 截止频率为20K,滤波器的阶数为20
// *******************************************************************************/
module fir(
           clk,
           reset_n,
           data_in,
           fir_data,
           fir_data_20
           );
input  clk;
input  reset_n;
output  [9:0]data_in;
output  [9:0]fir_data_20;
wire   clk;
wire   reset_n;
//wire   [9:0]data_in;
output [9:0]fir_data;
reg    [9:0]fir_data;
reg    [9:0]fir_data_20;

reg    [31:0] clk_cnt;
reg    clk_div;

rom_top u1(
               .clk(clk),
               .reset_n(reset_n),
               .q(),
               .dds_tri_out(),
               .data_temp(data_in)
              );
always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   begin
    clk_div<=1'b0;
    clk_cnt<=32'd0;
   end
  else
    if(clk_cnt==32'd249)//sample 100K
     begin
      clk_div<=~clk_div;
      clk_cnt<=32'd0;
     end
    else
     clk_cnt<=clk_cnt+1'b1;
 end
reg    [9:0] t1[10:0];
//****************************************************//
//************************（8阶线性相位结构）************//
//****************************************************//
wire [31:0]data_reg [5:0];
wire [31:0]data_temp;

assign data_reg[0]=9*(t1[0]+t1[7]);
assign data_reg[1]=48*(t1[1]+t1[6]);
assign data_reg[2]=164*(t1[2]+t1[5]);
assign data_reg[3]=279*(t1[3]+t1[4]);
assign data_reg[4]=data_reg[0]+data_reg[1];
assign data_reg[5]=data_reg[2]+data_reg[3];   
assign data_temp=(data_reg[4]+data_reg[5])/1000;
 always @(posedge clk_div or negedge reset_n)
  begin
   if(!reset_n)
    fir_data<=10'd0;
   else
    begin
     fir_data<=data_temp[9:0];
     t1[1]<=t1[0];
     t1[2]<=t1[1];
     t1[3]<=t1[2];
     t1[4]<=t1[3];
     t1[5]<=t1[4];
     t1[6]<=t1[5];
     t1[7]<=t1[6];
     t1[0]<=data_in;
    end
  end
//****************************************************//
//************************（20阶线性相位结构）************//
//****************************************************//
reg        [9:0] t[20:0];
wire       [31:0]data_reg21 [16:0];
wire       [31:0]data_fir21;
assign     data_reg21[0]= 2*(t[1]+t[19]);//-
assign     data_reg21[1]= 6*(t[2]+t[18]);//-
assign     data_reg21[2]=12*(t[3]+t[17]);//-
assign     data_reg21[3]=12*(t[4]+t[16]);//-
     
assign     data_reg21[4]=32*(t[6]+t[14]);
assign     data_reg21[5]=81*(t[7]+t[13]);
assign     data_reg21[6]=138*(t[8]+t[12]);
assign     data_reg21[7]=182*(t[9]+t[11]);
assign     data_reg21[8]=199*t[10];
     
assign     data_reg21[9]= data_reg21[0]+data_reg21[1];
assign     data_reg21[10]=data_reg21[2]+data_reg21[3];
assign     data_reg21[11]=data_reg21[4]+data_reg21[5];
assign     data_reg21[12]=data_reg21[6]+data_reg21[7];
     
assign     data_reg21[13]=data_reg21[9]+data_reg21[10];
assign     data_reg21[14]=data_reg21[11]+data_reg21[12];
assign     data_reg21[15]=data_reg21[14]+data_reg21[8];
     
assign     data_reg21[16]=data_reg21[15]-data_reg21[13];
assign     data_fir21=data_reg21[16]/1000;
always @(posedge clk_div or negedge reset_n)
 begin
   if(!reset_n)
    fir_data_20<=10'd0;
   else
    begin
		 fir_data_20<=data_fir21[9:0];
		 t[1]<=t[0];
		 t[2]<=t[1];
		 t[3]<=t[2];
		 t[4]<=t[3];
		 t[5]<=t[4];
		 t[6]<=t[5];
		 t[7]<=t[6];
		 t[8]<=t[7];
		 t[9]<=t[8];
		 t[10]<=t[9];
		 t[11]<=t[10];
		 t[12]<=t[11];
		 t[13]<=t[12];
		 t[14]<=t[13];
		 t[15]<=t[14];
		 t[16]<=t[15];
		 t[17]<=t[16];
		 t[18]<=t[17];
		 t[19]<=t[18];
		 t[20]<=t[19];
 
	 t[0]<=data_in;
   end
 end
endmodule
