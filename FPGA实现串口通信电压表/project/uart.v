/*******************************************************************************
** �ļ����ƣ�uart.v
** ��������������ͨ��__FPGA����λ��ͨ��(�����ʣ�9600bps,10��bit��1λ��ʼλ��8������λ��1������)
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

input       clk;                //ϵͳ50MHZʱ��
input       rst;                //��λ
input       rxd;                //�������ݽ��ն�
output      txd;                //�������ݷ��Ͷ�
input       start;              //��ʼ�ɼ��ź�
input[3:0]  data_cnt;         //����λ��־
input[7:0]  voltage_data1;     //�ɼ��ĵ�ѹ����
input[7:0]  voltage_data2;     //�ɼ��ĵ�ѹ����
input[7:0]  voltage_data3;     //�ɼ��ĵ�ѹ����
input[7:0]  voltage_data4;     //�ɼ��ĵ�ѹ����
output      send_finish;        //������ɱ�־
reg[15:0]   div_reg;        //��Ƶ����������Ƶֵ�ɲ����ʾ�������Ƶ��õ�Ƶ��8�������ʵ�ʱ��
reg[2:0]    div8_tras_reg;  //�üĴ����ļ���ֵ��Ӧ����ʱ��ǰλ�ڵ�ʱ϶��
reg[3:0]    state_tras;     //����״̬�Ĵ���
reg         clkbaud_tras;   //�Բ�����ΪƵ�ʵķ���ʹ���ź�
reg         clkbaud8x;      //��8��������ΪƵ�ʵ�ʱ�ӣ����������ǽ����ͻ����һ��bit��ʱ�����ڷ�Ϊ8��ʱ϶
reg         trasstart;      //��ʼ���ͱ�־
reg			send_finish;

reg         txd_reg;        //���ͼĴ���
reg[7:0]    rxd_buf;        //�������ݻ���
reg[7:0]    txd_buf;        //�������ݻ���
reg[3:0]    send_state;     //����״̬�Ĵ���
parameter   div_par=16'h145;
//��Ƶ��������ֵ�ɶ�Ӧ�Ĳ����ʼ�����ã����˲�����Ƶ��ʱ��Ƶ���ǲ������ʵ�8	
//�����˴�ֵ��Ӧ9600�Ĳ����ʣ�����Ƶ����ʱ��Ƶ����9600*8  (CLK50M)

assign txd = txd_reg;
// assign send_state=data_cnt;
/*******��Ƶ�õ�8�������ʵ�ʱ��*********/ 
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
		clkbaud8x<=~clkbaud8x;//��Ƶ�õ�8�������ʵ�ʱ��:clkbaud8x
end
// *******************************/ 


always@(posedge clkbaud8x or negedge rst)//clkbaud8x
begin
	if(!rst)
		div8_tras_reg<=0;
	else if(trasstart)
		div8_tras_reg<=div8_tras_reg+1'b1;//���Ϳ�ʼ��ʱ϶����8�������ʵ�ʱ���¼�1ѭ��
end

always@(div8_tras_reg)
begin
	if(div8_tras_reg==7)
		clkbaud_tras=1;//�ڵ�7��ʱ϶������ʹ���ź���Ч�������ݷ���
	else
		clkbaud_tras=0;
end
// *********��������ģ��***************/ 
always@(posedge clkbaud8x or negedge rst)//clkbaud8x
begin
	if(!rst) 
    begin
		txd_reg<=1;//���ͼĴ����ø�
		trasstart<=0;//��ʼ���ͱ�־�õ�
		txd_buf<=8'h00;//���ͻ���������
		state_tras<=0;//����״̬�Ĵ�������
        send_finish <= 1'b0;
        send_state<=4'd0;
	end
	else
        if(start == 1'b1)
        case(state_tras)
            4'b0000: begin  //������ʼλ
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
            4'b0001: begin //���͵�1λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0010: begin //���͵�2λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
             4'b0011: begin //���͵�3λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0100: begin //���͵�4λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0101: begin //���͵�5λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0110: begin //���͵�6λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b0111: begin //���͵�7λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b1000: begin //���͵�8λ
                if(clkbaud_tras) begin
                    txd_reg<=txd_buf[0];
                    txd_buf[6:0]<=txd_buf[7:1];
                    state_tras<=state_tras+1'b1;
                 end
             end
            4'b1001: begin //����ֹͣλ
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
                            txd_buf<=voltage_data4;//��λ
                        4'b0001:
                            txd_buf<=8'd46;//С����
                        4'b0010:
                            txd_buf<=voltage_data3;//ʮλ
                        4'b0011:
                            txd_buf<=voltage_data2;//��λ
                        4'b0100:
                            txd_buf<=voltage_data1;//ǧλ
                        4'b0101:
                            txd_buf<=8'd86;//"V"
                        4'b0110:
                            begin
                                txd_buf<=8'd10;//���з�
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
	
