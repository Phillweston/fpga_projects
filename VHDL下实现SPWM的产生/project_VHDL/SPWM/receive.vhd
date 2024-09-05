--jie shou ji gong you 5 ge zhuangtai
--cai yong zhuangtaiji sheji 
--bo te lv wei 9600bps
--接收的关键问题是把输入的rxd分成一路出来
--提供用来被采样
--一定要记住一个进程中只能有一个进程存在
--清楚各状态之间的关系

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity receive is
generic(data_wid:integer:=8);
port(bclkr:in std_logic;  --shu ru shizhong
     reset:in std_logic;  --fuwei
     rxdr:in std_logic;   --chuan kou shuru
     r_ready:out std_logic;   --正在接收是0
     rbufs:out std_logic_vector(7 downto 0));  --shuchu shuju
end receive;

architecture one of receive is
type state is(R_START,R_CENTER,R_WAIT,R_SAMPLE,R_STOP);  --5 ge zhuangtaiji
signal s:state:=R_START;  --s yonglai biaozhi nage zhuangtai
signal RXD_SYNC:std_logic;  --ba rxdr shugei ta 
signal count:std_logic_vector(3 downto 0):="0000";  --ding yi yige jishuqi
signal shou_weishu:integer range 0 to 8:=0;  --jie shou dao de shu ju de wei shu 
signal rbuf:std_logic_vector(7 downto 0):="00000000";
begin
p1:process(rxdr)    --ba rxdr fen chu yi lu chu lai yong lai cai yang
  begin
  if(rxdr='0') then RXD_SYNC<='0';
  else
   RXD_SYNC<='1';
  end if;
end process;

p2:process(bclkr,reset,rxdr,RXD_SYNC) --接收进程
         begin
         if(reset='1') then--全局复位
             s<=R_START;
             r_ready<='1'; 
             count<="0000";
             shou_weishu<=0;
             rbufs<="00000000";
         elsif(rising_edge(bclkr)) then--时钟上升沿触发状态转换  
            case s is
                    when R_START =>--检测起始状态
                          if(RXD_SYNC='0') then--检测到起始位为0
                            s<=R_CENTER;--状态跳转
                            r_ready<='0';
                          else
                          s<=R_START;
                          r_ready<='1';
                          count<="0000";--add
                          end if;
                          
                    when R_CENTER =>--采样数据中间处，采样够稳定
                         if(RXD_SYNC='0') then
                            if(count="1000" and RXD_SYNC='0') then 
                                count<="0000";
                                s<=R_WAIT;
                            elsif(count<"1000") then 
                                count<=count+'1';
                                s<=R_CENTER;
                            end if;
                         else s<=R_START;  
                            
                         end if;
                         
                         
                    when R_WAIT => --等待状态 
                                
                          if(count="1110" and shou_weishu/=data_wid) then       
							count<="0000";
                            s<=R_SAMPLE;
                          elsif(count="1110" and shou_weishu=data_wid) then--1110
				             count<="0000";
							 shou_weishu<=0;
							 s<=R_STOP;  
							 rbufs<=rbuf;--原来不是这里的
							 --r_ready<='1';--有预留时间处理数据的，因此可以连续地进行接收										 
                          else
						     count<=count+1;
						     s<=R_WAIT;
				          end if;
 							    
					 when R_SAMPLE =>--接收数据
						 rbuf(shou_weishu)<=RXD_SYNC;--接收数据
						 shou_weishu<=shou_weishu+1;
						 s<=R_WAIT;
					          
					 when R_STOP =>--停止位
					     r_ready<='1';--有预留时间处理数据的，因此可以连续地进行接收	
					     --rbufs<=rbuf;
					     s<=R_START;
					when others =>--其他状态跳转
					      s<=R_START;
					           
			end case;
	  end if;
end process;
                           
end one;                           
                               
                           
                            
         

