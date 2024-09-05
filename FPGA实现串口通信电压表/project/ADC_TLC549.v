/*******************************************************************************
**----------------------------�ļ���Ϣ--------------------------
** �ļ����ƣ�ADC_TLC549.v
** ����������ʹ��ADоƬTLC549�ɼ�ģ���ź�
** �������̣���ģ���źŽӵ�TLC549������ܽ���
*******************************************************************************/
module ADC_TLC549
(
	clk,            //ϵͳ50MHZʱ��
    reset_n,        //��λ
	ioclk,          //AD TLC549��ʱ��
	data,           //AD TLC549�����ݿ�
	cs,             //AD TLC549��Ƭѡ��
    segcs,   //����ܵ�Ϊѡ��
    segdata,  //����ܵ�7����
    send_finish,    //������ɱ�־
	start,          //��ʼ�ɼ��ź�
    data_cnt,       //����λ��־
	voltage_data1,    //�ɼ��ĵ�ѹ����
	voltage_data2,    //�ɼ��ĵ�ѹ����
	voltage_data3,    //�ɼ��ĵ�ѹ����
	voltage_data4    //�ɼ��ĵ�ѹ����
); 

    input           clk;//ϵͳ50MHZʱ��
    input           reset_n;//��λ
    input           data; //AD TLC549�����ݿ�
    input           send_finish;//������ɱ�־
    output          cs;//AD TLC549�����ݿ�
    output          ioclk; //AD TLC549��ʱ��
    output          start;//��ʼ�ɼ��ź�
    output[7:0]     voltage_data1; //�ɼ��ĵ�ѹ����
    output[7:0]     voltage_data2; //�ɼ��ĵ�ѹ����
    output[7:0]     voltage_data3; //�ɼ��ĵ�ѹ����
    output[7:0]     voltage_data4; //�ɼ��ĵ�ѹ����
    output[3:0]     data_cnt;//����λ��־
    output[7:0]segdata; 
    output[3:0]segcs; 
    
    reg[7:0]     voltage_data1; //�ɼ��ĵ�ѹ����
    reg[7:0]     voltage_data2; //�ɼ��ĵ�ѹ����
    reg[7:0]     voltage_data3; //�ɼ��ĵ�ѹ����
    reg[7:0]     voltage_data4; //�ɼ��ĵ�ѹ����
    reg[3:0]    data_cnt; 
    // reg[7:0]    voltage_data; 
    reg[3:0] segcs; 
    reg [7:0]segdata; 
    reg         start;
    reg         cs,ioclk,clk1k,clk1ms; 
    reg[15:0]   count; 
    reg[24:0]   count1ms; 
    reg[3:0]    cnt; 
    reg[2:0]    number; 
    reg[1:0]    state; 

    reg[7:0]    dataout; 
    reg[16:0]   tenvalue; 
    parameter   sample=2'b00, 
                display=2'b01; 

    /**********����100k�Ĳɼ�ʱ���ź�*********/ 
    always@(posedge clk) 
      begin 
        if(count<=250)  
          count<=count+1'b1;     
        else 
          begin  
          count<=0;  
          ioclk<=~ioclk;  
          end 
     end 

    /*******��������Ϊ1ms��1kHz���ź�*********/ 
    always@(posedge clk) 
      begin  
        if(count1ms>25'd25000)
          begin 
          clk1ms<=~clk1ms; 
          count1ms<=0; 
          end 
        else 
          count1ms<=count1ms+1'b1; 
      end 

    /*********AD��������**************/ 
    always@(negedge ioclk or negedge reset_n) 
       begin
       if(reset_n == 1'b0)
       begin
            start<= 1'b0;
            state<=sample;
            cs<=1;//��ADƬѡ
            cnt<=0; 
            tenvalue<=0;
            dataout<=0;
       end
       else
       begin
         case(state) 
          sample: 
           begin 
            cs<=0;
            start<= 1'b0;
            dataout[7:0]<={dataout[6:0],data};
            if(cnt>4'd7)  
               begin 
               cnt<=0; 
               state<=display;   
               end   
            else 
               begin 
               cnt<=cnt+1'b1; 
               state<=sample; 
               end 
            end 
           display:
              begin
               cs<=1;//��ADƬѡ  
               tenvalue<=(tendata((dataout>>4) & 8'b0000_1111)*16+ tendata(dataout & 8'b0000_1111))*129;// 
               //�õ��ɼ�������
               start<= 1'b1;
                 voltage_data1<=((tenvalue/10)%10)+8'd48;//��λ 
                 voltage_data2<=((tenvalue/100)%10)+8'd48;//ʮλ 
                 voltage_data3<=((tenvalue/1000)%10)+8'd48; //��λ 
                 voltage_data4<=(tenvalue/10000)+8'd48;//ǧλ
               if(send_finish == 1'b1) 
                    state<=sample;
               else
                    state<=display; 
              end 
          default: state<=display; 
        endcase
       end
      end 

    /***********2����תʮ���ƺ���*************/ 
    function[7:0] tendata;//����һ��4λ������ 
    input[7:0]   datain; 
    begin 
     case(datain) 
        4'b00000000: tendata=4'd0;//0 
        4'b00000001: tendata=4'd1;//1 
        4'b00000010: tendata=4'd2;//2 
        4'b00000011: tendata=4'd3;//3 
        4'b00000100: tendata=4'd4;//4 
        4'b00000101: tendata=4'd5;//5 
        4'b00000110: tendata=4'd6;//6 
        4'b00000111: tendata=4'd7;//7 
        4'b00001000: tendata=4'd8;//8 
        4'b00001001: tendata=4'd9;//9 
        4'b00001010: tendata=4'd10;// 
        4'b00001011: tendata=4'd11;// 
        4'b00001100: tendata=4'd12; 
        4'b00001101: tendata=4'd13; 
        4'b00001110: tendata=4'd14; 
        4'b00001111: tendata=4'd15; 
       default:tendata=8'bzzzz_zzzz; 
     endcase 
    end 
    endfunction 
    
 /*********ʮ����תLED��ѡ����*********/ 
function[7:0] leddata;//����һ��8λ������ 
input[3:0]    datain; 
begin 
  case(datain) 
    4'd0: leddata=8'b11000000;//0 
    4'd1: leddata=8'b11111001;//1 
    4'd2: leddata=8'b10100100;//2 
    4'd3: leddata=8'b10110000;//3 
    4'd4: leddata=8'b10011001;//4 
    4'd5: leddata=8'b10010010;//5 
    4'd6: leddata=8'b10000010;//6 
    4'd7: leddata=8'b11111000;//7 
    4'd8: leddata=8'b10000000;//8 
    4'd9: leddata=8'b10010000;//9 
    4'd10: leddata=8'b10111111;//- 
    4'd11: leddata=8'b01111111;//. 
    default:leddata=8'bzzzz_zzzz; 
   endcase 
end 
endfunction 
 
/********�����ɨ�躯��*************/ 
always@(posedge clk1ms) 
 begin 
    if(number==5) number<=0; 
    else  
    begin  
	    number<=number+1; 
	    case(number)  
	     4'd0: 
	     begin 
	     segdata<=leddata((tenvalue/10)%10);//��λ 
	     segcs<=4'b1110; 
	     end 
	     4'd1: 
	     begin 
	     segdata<=leddata((tenvalue/100)%10);//ʮλ 
	     segcs<=4'b1101; 
	     end 
	     4'd2: 
	     begin 
	     segdata<=leddata((tenvalue/1000)%10); //��λ 
	     segcs<=4'b1011; 
	     end 
	     4'd3: 
	     begin 
	     segdata<=leddata(tenvalue/10000);//ǧλ 
	     segcs<=4'b0111; 
	     end 
	     4'd4: 
	     begin 
	     segdata<=leddata(4'd11);//.   ��ʾС����
	     segcs<=4'b0111; 
	     end 
		endcase 
	end 
end  
  
endmodule


