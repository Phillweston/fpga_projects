module m_ser(
            clk,      //sys clk 
            reset_n,  //sys reset_n
            clk_div,
            m_ser_out //PN ser_code out
            );
input     clk;
input     reset_n;
output    clk_div;
output    m_ser_out;

wire      clk;
wire      reset_n;

reg       m_ser_out;
reg [2:0] m_code;
reg       clk_div;
reg [17:0]clk_cnt;
always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   begin
    clk_div<=1'b0;
    clk_cnt<=18'd0;
   end
  else
   if(clk_cnt==18'd49999)//500Hz PNcode
    begin
     clk_cnt<=18'd0;
     clk_div<=~clk_div;
    end
   else
    clk_cnt<=clk_cnt+1'b1;
 end
 
always @(posedge clk_div or negedge reset_n)
 begin 
  if(!reset_n)
   begin
     m_code<=3'b001;      //置数初始化
     m_ser_out<=1'b0;
    end
  else
    begin
     m_code[2:1]<=m_code[1:0];
     m_code[0]<=m_code[2] ^ m_code[0];//将2和0进行异或然后放到0
     m_ser_out<=m_code[2];//将2进行输出
    end
 end
endmodule 