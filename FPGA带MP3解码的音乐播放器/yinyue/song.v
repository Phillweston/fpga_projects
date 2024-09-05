//音乐产生模块
module song(clk_6mhz,clk_4hz,speaker,high,med,low,k);    //模块名为song（端口列表）
input clk_6mhz,clk_4hz; 
input k;                            //定义两个输入端口
output speaker;                                      //定义一个输出端口
output[3:0] high,med,low;                             
reg[3:0] high,med,low;                            //定义了3个4位寄存器
reg[13:0] divider,origin;                              //定义了2个14位寄存器
reg[9:0] counter;                                    //定义了1个10位寄存器
reg speaker;                                        
wire carry;
assign carry=(divider==16383);                         //连续赋值语句
always @(posedge clk_6mhz)
    begin  if(carry) divider<=origin;
           else    divider<=divider+1;
    end
always @(posedge carry)
    begin speaker<=~speaker;
end                      //二分频产生方波信号
always @(posedge clk_4hz)
 begin
   case({high,med,low})                             //分频比预置
   'b000000000011:origin<=7281;                     //低音3
   'b000000000101:origin<=8730;                     //低音5
   'b000000000110:origin<=9565;                     //低音6
   'b000000000111:origin<=10310;                    //低音7
   'b000000010000:origin<=10647;                    //中音1
   'b000000100000:origin<=11272;                    //中音2
   'b000000110000:origin<=11831;                    //中音3
   'b000001010000:origin<=12556;                    //中音5
   'b000001100000:origin<=12974;                    //中音6
   'b000001110000:origin<=13347;                    //中音7
   'b000100000000:origin<=13516;                    //高音1
   'b000000000000:origin<=16383;                    //休止符
endcase
	
 end
always @(posedge clk_4hz)  
if (k==0) 
 begin
   if(counter==149)    counter<=0;                   //计时，以实现循环演奏
   else               counter<=counter+1;
   case(counter)                                    //记谱
   0:  {high,med,low}<='b000000000011;              //低音"3"
   1:  {high,med,low}<='b000000000011;              //持续4个时钟节拍
   2:  {high,med,low}<='b000000000011;
   3:  {high,med,low}<='b000000000011;
   4:  {high,med,low}<='b000000000101;              //低音"5"
   5:  {high,med,low}<='b000000000101;              //发3个时钟节拍
   6:  {high,med,low}<='b000000000101;
   7:  {high,med,low}<='b000000000110;              //低音"6"
   8:  {high,med,low}<='b000000010000;              //中音"1"
   9:  {high,med,low}<='b000000010000;              //发3个时钟节拍
   10: {high,med,low}<='b000000010000;
   11: {high,med,low}<='b000000100000;              //中音"2"
   12: {high,med,low}<='b000000000110;              //低音"6"
   13: {high,med,low}<='b000000010000;              //中音"1"
   14: {high,med,low}<='b000000000101;              //低音"5"
   15: {high,med,low}<='b000000000101;
   16: {high,med,low}<='b000001010000;              //中音"5"
   17: {high,med,low}<='b000001010000;              //发3个时钟节拍
   18: {high,med,low}<='b000001010000;
   19: {high,med,low}<='b000100000000;              //高音"1"
   20: {high,med,low}<='b000001100000;              //中音"6"
   21: {high,med,low}<='b000001010000;              //中音"5"
   22: {high,med,low}<='b000000110000;              //中音"3"
   23: {high,med,low}<='b000001010000;              //中音"5"
   24: {high,med,low}<='b000000100000;              //中音"2"
   25: {high,med,low}<='b000000100000;              //持续11个时钟节拍
   26: {high,med,low}<='b000000100000;
   27: {high,med,low}<='b000000100000;
   28: {high,med,low}<='b000000100000;
   29: {high,med,low}<='b000000100000;
   30: {high,med,low}<='b000000100000;
   31: {high,med,low}<='b000000100000;
   32: {high,med,low}<='b000000100000;
   33: {high,med,low}<='b000000100000;
   34: {high,med,low}<='b000000100000;
   35: {high,med,low}<='b000000110000;              //中音"3"
   36: {high,med,low}<='b000000000111;              //低音"7"
   37: {high,med,low}<='b000000000111;
   38: {high,med,low}<='b000000000110;              //低音"6"
   39: {high,med,low}<='b000000000110;
   40: {high,med,low}<='b000000000101;              //低音"5"
   41: {high,med,low}<='b000000000101;
   42: {high,med,low}<='b000000000101;
   43: {high,med,low}<='b000000000110;              //低音"6"
   44: {high,med,low}<='b000000010000;              //中音"1"
   45: {high,med,low}<='b000000010000;
   46: {high,med,low}<='b000000100000;              //中音"2"
   47: {high,med,low}<='b000000100000;
   48: {high,med,low}<='b000000000011;              //低音"3"
   49: {high,med,low}<='b000000000011;
   50: {high,med,low}<='b000000010000;              //中音"1"
   51: {high,med,low}<='b000000010000;
   52: {high,med,low}<='b000000000110;              //低音"6"
   53: {high,med,low}<='b000000000101;              //低音"5"
   54: {high,med,low}<='b000000000110;              //低音"6"
   55: {high,med,low}<='b000000010000;              //中音"1"
   56: {high,med,low}<='b000000000101;              //低音"5"
   57: {high,med,low}<='b000000000101;              //持续8个时钟节拍
   58: {high,med,low}<='b000000000101;
   59: {high,med,low}<='b000000000101;
   60: {high,med,low}<='b000000000101;
   61: {high,med,low}<='b000000000101;
   62: {high,med,low}<='b000000000101;
   63: {high,med,low}<='b000000000101;
   64: {high,med,low}<='b000000110000;               //中音"3"
   65: {high,med,low}<='b000000110000;               //发3个时钟节拍
   66: {high,med,low}<='b000000110000;
   67: {high,med,low}<='b000001010000;               //中音"5"
   68: {high,med,low}<='b000000000111;               //低音"7"
   69: {high,med,low}<='b000000000111;
   70: {high,med,low}<='b000000100000;               //中音"2"
   71: {high,med,low}<='b000000100000;
   72: {high,med,low}<='b000000000110;               //低音"6"
   73: {high,med,low}<='b000000010000;               //中音"1"
   74: {high,med,low}<='b000000000101;               //低音"5"
   75: {high,med,low}<='b000000000101;               //持续4个时钟节拍
   76: {high,med,low}<='b000000000101;
   77: {high,med,low}<='b000000000101;
   78: {high,med,low}<='b000000000000;               //休止符
   79: {high,med,low}<='b000000000000;
   80: {high,med,low}<='b000000000011;               //低音"3"
   81: {high,med,low}<='b000000000101;               //低音"5"
   82: {high,med,low}<='b000000000101; 
   83: {high,med,low}<='b000000000011;               //低音"3"
   84: {high,med,low}<='b000000000101;               //低音"5"
   85: {high,med,low}<='b000000000110;               //低音"6"
   86: {high,med,low}<='b000000000111;               //低音"7"
   87: {high,med,low}<='b000000100000;               //中音"2"
   88: {high,med,low}<='b000000000110;               //低音"6"
   89: {high,med,low}<='b000000000110;               //持续6个时钟节拍
   90: {high,med,low}<='b000000000110;
   91: {high,med,low}<='b000000000110;
   92: {high,med,low}<='b000000000110;
   93: {high,med,low}<='b000000000110;
   94: {high,med,low}<='b000000000101;               //低音"5"
   95: {high,med,low}<='b000000000110;               //低音"6"
   96: {high,med,low}<='b000000010000;               //中音"1"
   97: {high,med,low}<='b000000010000;               //发3个时钟节拍
   98: {high,med,low}<='b000000010000;
   99: {high,med,low}<='b000000100000;               //中音"2"
   100: {high,med,low}<='b000001010000;              //中音"5"
   101: {high,med,low}<='b000001010000;
   102: {high,med,low}<='b000000110000;              //中音"3"
   103: {high,med,low}<='b000000110000;
   104: {high,med,low}<='b000000100000;              //中音"2"
   105: {high,med,low}<='b000000100000;
   106: {high,med,low}<='b000000110000;              //中音"3"
   107: {high,med,low}<='b000000100000;              //中音"2"
   108: {high,med,low}<='b000000010000;              //中音"1"
   109: {high,med,low}<='b000000010000;
   110: {high,med,low}<='b000000000110;              //低音"6"
   111: {high,med,low}<='b000000000101;              //低音"5"
   112: {high,med,low}<='b000000000011;              //低音"3"
   113: {high,med,low}<='b000000000011;              //持续4个时钟节拍
   114: {high,med,low}<='b000000000011;
   115: {high,med,low}<='b000000000011;
   116: {high,med,low}<='b000000010000;              //中音"1"
   117: {high,med,low}<='b000000010000;              //持续4个时钟节拍
   118: {high,med,low}<='b000000010000;
   119: {high,med,low}<='b000000010000;
   120: {high,med,low}<='b000000000110;              //低音"6"
   121: {high,med,low}<='b000000010000;              //中音"1"
   122: {high,med,low}<='b000000000110;              //低音"6"
   123: {high,med,low}<='b000000000101;              //低音"5"
   124: {high,med,low}<='b000000000011;              //低音"3"
   125: {high,med,low}<='b000000000101;              //低音"5"
   126: {high,med,low}<='b000000000110;              //低音"6"
   127: {high,med,low}<='b000000010000;              //中音"1"
   128: {high,med,low}<='b000000000101;              //低音"5"
   129: {high,med,low}<='b000000000101;              //持续6个时钟节拍
   130: {high,med,low}<='b000000000101;
   131: {high,med,low}<='b000000000101;
   132: {high,med,low}<='b000000000101;
   133: {high,med,low}<='b000000000101;
   134: {high,med,low}<='b000000110000;              //中音"3"
   135: {high,med,low}<='b000001010000;              //中音"5"
   136: {high,med,low}<='b000000100000;              //中音"2"
   137: {high,med,low}<='b000000110000;              //中音"3"
   138: {high,med,low}<='b000000100000;              //中音"2"
   139: {high,med,low}<='b000000010000;              //中音"1"
   140: {high,med,low}<='b000000000111;              //低音"7"
   141: {high,med,low}<='b000000000111;
   142: {high,med,low}<='b000000000110;              //低音"6"
   143: {high,med,low}<='b000000000110;
   144: {high,med,low}<='b000000000101;              //低音"5"
   145: {high,med,low}<='b000000000101;              //持续8个时钟节拍
   146: {high,med,low}<='b000000000101;
   147: {high,med,low}<='b000000000101;
   148: {high,med,low}<='b000000000101;
   149: {high,med,low}<='b000000000101;
   
   
endcase
end
else if( k==1)
begin
   if(counter==149)    counter<=0;                   //计时，以实现循环演奏
   else               counter<=counter+1;
   case(counter)                                    //记谱
   0:  {high,med,low}<='b000000110000;              //中音"3"
   1:  {high,med,low}<='b000000110000;              //持续2个时钟节拍
   2:  {high,med,low}<='b000000100000;              //中音2
   3:  {high,med,low}<='b000000100000;              //持续2个时钟节拍
   4:  {high,med,low}<='b000000110000;              //中音"3"
   5:  {high,med,low}<='b000000110000;              //发10个时钟节拍
   6:  {high,med,low}<='b000000110000;
   7:  {high,med,low}<='b000000110000;              
   8:  {high,med,low}<='b000000110000;             
   9:  {high,med,low}<='b000000110000;             
   10: {high,med,low}<='b000000110000;
   11: {high,med,low}<='b000000110000;             
   12: {high,med,low}<='b000000110000;              
   13: {high,med,low}<='b000000110000;         
   14: {high,med,low}<='b000000100000;              //中音2
   15: {high,med,low}<='b000000100000;              //持续2个时钟节拍
   16: {high,med,low}<='b000000110000;              //中音"3"
   17: {high,med,low}<='b000000110000;              //发2个时钟节拍
   18: {high,med,low}<='b000000100000;              //中音2
   19: {high,med,low}<='b000000100000;              //中音2
   20: {high,med,low}<='b000000010000;              //中音"1"
   21: {high,med,low}<='b000000010000;
   22: {high,med,low}<='b000000010000;
   23: {high,med,low}<='b000000010000;
   24: {high,med,low}<='b000000010000;
   25: {high,med,low}<='b000000010000;
   26: {high,med,low}<='b000000010000;
   27: {high,med,low}<='b000000010000;
   28: {high,med,low}<='b000000010000;
   29: {high,med,low}<='b000000010000;
   30: {high,med,low}<='b000000010000;
   31: {high,med,low}<='b000000010000;
   32: {high,med,low}<='b000000000110;//低6
   33: {high,med,low}<='b000000000110;
   34: {high,med,low}<='b000000010000;              //中音"1"
   35: {high,med,low}<='b000000010000;              
   36: {high,med,low}<='b000000100000;              //中2  有6个
   37: {high,med,low}<='b000000100000; 
   38: {high,med,low}<='b000000100000; 
   39: {high,med,low}<='b000000100000; 
   40: {high,med,low}<='b000000100000; 
   41: {high,med,low}<='b000000100000; 
   42: {high,med,low}<='b000000110000;               //中音3
   43: {high,med,low}<='b000000110000;              
   44: {high,med,low}<='b000000100000;              //中音"2"
   45: {high,med,low}<='b000000100000;
   46: {high,med,low}<='b000000010000;              //中音"1"
   47: {high,med,low}<='b000000010000;
   48: {high,med,low}<='b000000000110;              //低音"6"
   49: {high,med,low}<='b000000000110;
   50: {high,med,low}<='b000000010000;              //中音"1"
   51: {high,med,low}<='b000000010000;
   52: {high,med,low}<='b000000000101;              //低音"5"
   53: {high,med,low}<='b000000000101;              //低音"5"
   54: {high,med,low}<='b000000000101; 
   55: {high,med,low}<='b000000000101; 
   56: {high,med,low}<='b000000000101;              //低音"5"
   57: {high,med,low}<='b000000000101; 
   58: {high,med,low}<='b000000000101; 
   59: {high,med,low}<='b000000000101; 
   60: {high,med,low}<='b000000000101; 
   61: {high,med,low}<='b000000000101; 
   62: {high,med,low}<='b000000000101; 
   63: {high,med,low}<='b000000000101; 
   64: {high,med,low}<='b000000000101; 
   65: {high,med,low}<='b000000000101; 
66: {high,med,low}<='b000000000101; 
   67: {high,med,low}<='b000000000101; 
   68: {high,med,low}<='b000000110000;               //中音"3"
   69: {high,med,low}<='b000000110000; 
   70: {high,med,low}<='b000000100000;               //中音"2"
   71: {high,med,low}<='b000000100000;
   72: {high,med,low}<='b000000110000;               //中音"3"
   73: {high,med,low}<='b000000110000;               //中音"3"
   74: {high,med,low}<='b000000110000;               //中音"3"
   75: {high,med,low}<='b000000110000;               //中音"3"
   76: {high,med,low}<='b000000110000;               //中音"3"
   77: {high,med,low}<='b000000110000;               //中音"3"
   78: {high,med,low}<='b000000110000;               //中音"3"
   79: {high,med,low}<='b000000110000;               //中音"3"
   80: {high,med,low}<='b000000110000;               //中音"3"
   81: {high,med,low}<='b000000110000;               //中音"3"
   82: {high,med,low}<='b000000100000;               //中音"2"
   83: {high,med,low}<='b000000100000;               
   84: {high,med,low}<='b000000110000;               //中音"3"
   85: {high,med,low}<='b000000110000;               //中音"3"
   86: {high,med,low}<='b000000100000;               //中音"2"
   87: {high,med,low}<='b000000100000;               //中音"2"
   88: {high,med,low}<='b000000010000;              //中音"1"
   89: {high,med,low}<='b000000010000;              //中音"1"
   90: {high,med,low}<='b000000010000;              //中音"1"
   91: {high,med,low}<='b000000010000;              //中音"1"
   92: {high,med,low}<='b000000010000;              //中音"1"
   93: {high,med,low}<='b000000010000;              //中音"1"
   94: {high,med,low}<='b000000010000;              //中音"1"
   95: {high,med,low}<='b000000010000;              //中音"1"
   96: {high,med,low}<='b000000010000;              //中音"1"
   97: {high,med,low}<='b000000010000;              //中音"1"
   98: {high,med,low}<='b000000010000;              //中音"1"
   99: {high,med,low}<='b000000010000;              //中音"1"
   100: {high,med,low}<='b000000010000;              //中音"1"
   101: {high,med,low}<='b000000010000;              //中音"1"
   102: {high,med,low}<='b000000010000;              //中音"1"
   103: {high,med,low}<='b000000010000;              //中音"1"
   104: {high,med,low}<='b000000010000;              //中音"1"
   105: {high,med,low}<='b000000000110;              //低音"6"
   106: {high,med,low}<='b000000000110;              //低音"6"
   107: {high,med,low}<='b000000010000;              //中音"1"
   108: {high,med,low}<='b000000010000;              //中音"1"
   109: {high,med,low}<='b000000100000;               //中音"2"
   110: {high,med,low}<='b000000100000;               //中音"2"
   111: {high,med,low}<='b000000100000;               //中音"2"
   112: {high,med,low}<='b000000100000;               //中音"2"
   113: {high,med,low}<='b000000100000;               //中音"2"
   114: {high,med,low}<='b000000100000;               //中音"2"
   115: {high,med,low}<='b000000110000;               //中音3
   116: {high,med,low}<='b000000110000;              
   117: {high,med,low}<='b000000100000;              //中音"2"
   118: {high,med,low}<='b000000100000;
   119: {high,med,low}<='b000000010000;              //中音"1"
   120: {high,med,low}<='b000000010000;
   121: {high,med,low}<='b000000000110;              //低音"6"
   122: {high,med,low}<='b000000000110;
   123: {high,med,low}<='b000000010000;              //中音"1"
   124: {high,med,low}<='b000000010000;
   125: {high,med,low}<='b000000100000;              //中音"2"
   126: {high,med,low}<='b000000100000;              //中音"2"
   127: {high,med,low}<='b000000100000;              //中音"2"
   128: {high,med,low}<='b000000100000;              //中音"2"
   129: {high,med,low}<='b000000100000;              //中音"2"
   130: {high,med,low}<='b000000100000;              //中音"2"
   131: {high,med,low}<='b000000100000;              //中音"2"
   132: {high,med,low}<='b000000100000;              //中音"2"
   133: {high,med,low}<='b000000100000;              //中音"2"
   134: {high,med,low}<='b000000100000;              //中音"2"
   135: {high,med,low}<='b000000100000;              //中音"2"
   136: {high,med,low}<='b000000100000;              //中音"2"
   137: {high,med,low}<='b000000100000;              //中音"2"
   138: {high,med,low}<='b000000100000;              //中音"2"
   139: {high,med,low}<='b000000100000;              //中音"2"
   140: {high,med,low}<='b000000100000;              //中音"2"
   141:  {high,med,low}<='b000000110000;              //中音"3"
   142:  {high,med,low}<='b000000110000;              //持续2个时钟节拍
   143:  {high,med,low}<='b000000100000;              //中音2
   144:  {high,med,low}<='b000000100000;              //持续2个时钟节拍
   145:  {high,med,low}<='b000000110000;              //中音"3"
   146:  {high,med,low}<='b000000110000;              //发10个时钟节拍
   147:  {high,med,low}<='b000000110000;
   148:  {high,med,low}<='b000000110000;              
   149:  {high,med,low}<='b000000110000;  
  endcase
end
            
endmodule                                          //模块