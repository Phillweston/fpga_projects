/*******************************************************************************
**----------------------------文件信息--------------------------
** 文件名称：ADC_TLC549.v
** 功能描述：使用AD芯片TLC549采集模拟信号
** 操作过程：将模拟信号接到TLC549的输入管脚上
*******************************************************************************/
module ADC_TLC549
(
	clk,            //系统50MHZ时钟
    reset_n,        //复位
	ioclk,          //AD TLC549的时钟
	data,           //AD TLC549的数据口
	cs,             //AD TLC549的片选择
    segcs,   //数码管的为选择
    segdata,  //数码管的7段码
    send_finish,    //发送完成标志
	start,          //开始采集信号
    data_cnt,       //数据位标志
	voltage_data1,    //采集的电压数据
	voltage_data2,    //采集的电压数据
	voltage_data3,    //采集的电压数据
	voltage_data4    //采集的电压数据
); 

    input           clk;//系统50MHZ时钟
    input           reset_n;//复位
    input           data; //AD TLC549的数据口
    input           send_finish;//发送完成标志
    output          cs;//AD TLC549的数据口
    output          ioclk; //AD TLC549的时钟
    output          start;//开始采集信号
    output[7:0]     voltage_data1; //采集的电压数据
    output[7:0]     voltage_data2; //采集的电压数据
    output[7:0]     voltage_data3; //采集的电压数据
    output[7:0]     voltage_data4; //采集的电压数据
    output[3:0]     data_cnt;//数据位标志
    output[7:0]segdata; 
    output[3:0]segcs; 
    
    reg[7:0]     voltage_data1; //采集的电压数据
    reg[7:0]     voltage_data2; //采集的电压数据
    reg[7:0]     voltage_data3; //采集的电压数据
    reg[7:0]     voltage_data4; //采集的电压数据
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

    /**********产生100k的采集时钟信号*********/ 
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

    /*******产生周期为1ms即1kHz的信号*********/ 
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

    /*********AD采样程序**************/ 
    always@(negedge ioclk or negedge reset_n) 
       begin
       if(reset_n == 1'b0)
       begin
            start<= 1'b0;
            state<=sample;
            cs<=1;//关AD片选
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
               cs<=1;//关AD片选  
               tenvalue<=(tendata((dataout>>4) & 8'b0000_1111)*16+ tendata(dataout & 8'b0000_1111))*129;// 
               //得到采集的数据
               start<= 1'b1;
                 voltage_data1<=((tenvalue/10)%10)+8'd48;//个位 
                 voltage_data2<=((tenvalue/100)%10)+8'd48;//十位 
                 voltage_data3<=((tenvalue/1000)%10)+8'd48; //百位 
                 voltage_data4<=(tenvalue/10000)+8'd48;//千位
               if(send_finish == 1'b1) 
                    state<=sample;
               else
                    state<=display; 
              end 
          default: state<=display; 
        endcase
       end
      end 

    /***********2进制转十进制函数*************/ 
    function[7:0] tendata;//返回一个4位的数字 
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
    
 /*********十进制转LED段选函数*********/ 
function[7:0] leddata;//返回一个8位的数字 
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
 
/********数码管扫描函数*************/ 
always@(posedge clk1ms) 
 begin 
    if(number==5) number<=0; 
    else  
    begin  
	    number<=number+1; 
	    case(number)  
	     4'd0: 
	     begin 
	     segdata<=leddata((tenvalue/10)%10);//个位 
	     segcs<=4'b1110; 
	     end 
	     4'd1: 
	     begin 
	     segdata<=leddata((tenvalue/100)%10);//十位 
	     segcs<=4'b1101; 
	     end 
	     4'd2: 
	     begin 
	     segdata<=leddata((tenvalue/1000)%10); //百位 
	     segcs<=4'b1011; 
	     end 
	     4'd3: 
	     begin 
	     segdata<=leddata(tenvalue/10000);//千位 
	     segcs<=4'b0111; 
	     end 
	     4'd4: 
	     begin 
	     segdata<=leddata(4'd11);//.   显示小数点
	     segcs<=4'b0111; 
	     end 
		endcase 
	end 
end  
  
endmodule


