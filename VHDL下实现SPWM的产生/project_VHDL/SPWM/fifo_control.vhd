-----------从单片机接收的数据在DDS模块引入控制频率字和相位控制字
-----------占空比控制字
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity fifo_control is
port(
    f:in std_logic;--频率
    -- p:in std_logic;--相位
    --h:in std_logic;--占空比
    mcu_datain:in std_logic_vector(7 downto 0);--单片机数据输入
    data_outf:out std_logic_vector(7 downto 0);---FIFO数据输出--频率控制
    data_outh:out std_logic_vector(7 downto 0);--占空比控制字
    w_req:in std_logic;--写申请
    clk:in std_logic--同步时钟
);
end fifo_control;
architecture behave of fifo_control is
---------------FIFO例化------------------
component fifo_mcu
port(
     data:in std_logic_vector(7 downto 0);
     wrreq:in std_logic;
     rdreq:in std_logic;
     clock:in std_logic;
     q:out std_logic_vector(7 downto 0);
     full:out std_logic;
     empty:out std_logic
);
end component;
signal full_flag:std_logic;--满标志
signal empty_flag:std_logic;--空标志
signal clk_div:std_logic;--分频作为FIFO的操作时钟
signal r_req:std_logic;--读申请
signal data_temp:std_logic_vector(7 downto 0);
signal data_temp1:std_logic_vector(7 downto 0);
signal flag1,flag2:std_logic;
begin 
  u1: fifo_mcu port map(data=>mcu_datain,wrreq=>w_req,rdreq=>r_req,clock=>clk_div,q=>data_temp,full=>full_flag,empty=>empty_flag);
---------------分频(1MHz)------------------ 
 process(clk)
   variable counter:integer range 0 to 24;
    begin 
      if(clk'event and clk='1')then 
         if(counter=24)then 
             counter:=0;
         else 
             counter:=counter+1;
             clk_div<=not clk_div;
         end if;
      end if;
 end process;
 ------------------------------------
 data_temp1<=data_temp;
 ----------fifo读操作----------------
 process(f,empty_flag)
 begin
   if(f='1')then--频率标志
      if(empty_flag='0')then --未空标志
           r_req<='1';--读申请
           
         if(data_temp1="10000001")then--数据分配
               flag1<='1';
               flag2<='0;
         elsif(data_temp="01000010")then--数据分配
               flag2<='1';
               flag1<='0';
         else null;
         end if;    
      else
          null;
      end if;
   end if;
 end process;
 process(flag1,flag2,clk)
    begin 
      if(clk'event and clk='1')then 
          if(flag1='1')then 
              data_outf<=data_temp1;--频率
          end if;
          if(flag2='1')then
              data_outh<=data_temp1;--占空比
          end if;
      end if;
 end process;  
end behave;





