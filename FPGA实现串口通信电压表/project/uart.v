/*******************************************************************************
** 文件名称：uart.v
** 功能描述：串口通信__FPGA和上位机通信(波特率：9600bps,10个bit是1位起始位，8个数据位，1个结束)
*******************************************************************************/ 
module uart(
    clk,
    rst,
    rxd,
    txd,
    start,          
    data_cnt,       
	voltage_data1,
	voltage_data2,
	voltage_data3,
	voltage_data4,
    send_finish
    );

input       clk;                //系统50MHZ时钟
input       rst;                //复位
input       rxd;                //串行数据接收端
output      txd;                //串行数据发送端
input       start;              //开始采集信号
input[3:0]  data_cnt;         //数据位标志
input[7:0]  voltage_data1;     //采集的电压数据
input[7:0]  voltage_data2;     //采集的电压数据
input[7:0]  voltage_data3;     //采集的电压数据
input[7:0]  voltage_data4;     //采集的电压数据
output      send_finish;        //发送完成标志
reg[15:0]   div_reg;        //分频计数器，分频值由波特率决定。分频后得到频率8倍波特率的时钟
reg[2:0]    div8_tras_reg;  //该寄存器的计数值对应发送时当前位于的时隙数
reg[3:0]    state_tras;     //发送状态寄存器
reg         clkbaud_tras;   //以波特率为频率的发送使能信号
reg         clkbaud8x;      //以8倍波特率为频率的时钟，它的作用是将发送或接受一个bit的时钟周期分为8个时隙
reg         trasstart;      //开始发送标志
reg			send_finish;

reg         txd_reg;        //发送寄存器
reg[7:0]    rxd_buf;        //接受数据缓存
reg[7:0]    txd_buf;        //发送数据缓存
reg[3:0]    send_state;     //发送状态寄存器
parameter   div_par=16'h145;
//分频参数，其值由对应的波特率计算而得，按此参数分频的时钟频率是波倍特率的8	
//倍，此处值对应9600的波特率，即分频出的时钟频率是9600*8  (CLK50M)

assign txd = txd_reg;
// assign send_state=data_cnt;
/*******分频得到8倍波特率的时钟*********/ 
always@(posedge clk )
begin
	if(!rst)
		div_reg<=0;
	else begin
		if(div_reg==div_par-1'b1)
			div_reg<=0;
		else
			div_reg<=div_reg+1'b1;
	 end
end

always@(posedge clk)
begin
	if(!rst)
		clkbaud8x<=0;
	else if(div_reg==div_par-1'b1)
		clkbaud8x<=~clkbaud8x;//分频得到8倍波特率的时钟:clkbaud8x
end
// *******************************/ 


always@(posedge clkbaud8x or negedge rst)//clkbaud8x
begin
	if(!rst)
		div8_tras_reg<=0;
	else if(trasstart)
		div8_tras_reg<=div8_tras_reg+1'b1;//发送开始后，时隙数在8倍波特率的时钟下加1循环
end

always@(div8_tras_reg)
begin
	if(div8_tras_reg==7)
		clkbaud_tras=1;//在第7个时隙，发送使能信号有效，将数据发出
	else
		clkbaud_tras=0;
end
// *********发送数据模块***************/ 
always@(posedge clkbaud8x or negedge rst)//clkbaud8x
begin
	if(!rst) 
    begin
		txd_reg<=1;//发送寄存器置高
		trasstart<=0;//开始发送标志置低
		txd_buf<=8'h00;//发送缓存器清零
		state_tras<=0;//发送状态寄存器清零
        send_finish <= 1'b0;
        send_state<=4'd0;
	end
	else
        if(start == 1'b1)
        case(state_tras)
            4'b0000: begin  //发送起始位
                send_finish <= 1'b0;
                if(!trasstart&&send_state<4'd7) 
                    trasstart<=1;
                else if(send_state<4'd7) begin
                    if(clkbaud_tras) begin
                        txd_reg<=0;
                        state_tras<=state_tras+1'b1;
                     end
                 end
                else begin
                    state_tras<=0;
                 end					
            end		
            4'b0001: begin //发送第1位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0010: begin //发送第2位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
             4'b0011: begin //发送第3位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0100: begin //发送第4位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0101: begin //发送第5位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0110: begin //发送第6位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0111: begin //发送第7位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b1000: begin //发送第8位
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b1001: begin //发送停止位
                if(clkbaud_tras) begin
                    txd_reg<=1;
                    txd_buf<=8'h00;
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b1111:begin
                if(clkbaud_tras) begin
                    state_tras<=state_tras+1'b1;
                    send_state<=send_state+1'b1;
                    trasstart<=0;
                    case(send_state)
                        4'b0000:
                            txd_buf<=voltage_data4;//个位
                        4'b0001:
                            txd_buf<=8'd46;//小数点
                        4'b0010:
                            txd_buf<=voltage_data3;//十位
                        4'b0011:
                            txd_buf<=voltage_data2;//百位
                        4'b0100:
                            txd_buf<=voltage_data1;//千位
                        4'b0101:
                            txd_buf<=8'd86;//"V"
                        4'b0110:
                            begin
                                txd_buf<=8'd10;//换行符
                                send_finish <= 1'b1;
                                send_state<=4'b0000;
                            end
                        default:
                            txd_buf<=8'd0;
                     endcase
                 end
             end
            default: begin
                if(clkbaud_tras) begin
                    state_tras<=state_tras+1'b1;
                    trasstart<=1;
                 end
             end
        endcase
end
endmodule
	
