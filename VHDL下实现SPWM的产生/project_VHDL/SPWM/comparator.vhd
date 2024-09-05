----与正弦波的数值比较，从而输出SPWM的信号
----该PWM信号的频率由三角波频率控制字控制
----相移由相移控制字控制
----模拟输出的正弦波的幅值由调制值进行控制
----模拟输出的正弦波的频率有数字正弦波的频率进行控制
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity comparator is
port(
    clk:in std_logic;--250MHz
    clk_div:in std_logic;--50MHz
    ------------------------------------
    pwm2:out std_logic;
    pwm3:out std_logic;
    data2:in std_logic_vector(9 downto 0);--经过移相的正弦数据输入(有符号类型)
    tri_data:in std_logic_vector(9 downto 0)---三角波数据输入(有符号类型)
);
end comparator;
architecture comparator_behave of comparator is
---------------------------------------------------------------------------
signal sin_data_temp:integer range -512 to -512;
signal sin_data:integer range -512 to 512;
signal sin:std_logic_vector(9 downto 0);

signal data2_temp:signed (9 downto 0);
signal tri_data_temp:signed (9 downto 0);
signal sin_temp:signed(9 downto 0);

signal  dead_time:signed(9 downto 0):="0000100010";--死区控制时间变量
-----------------------------------------------------------------------
begin
--------------DC TO AC数据格式的转换-------------
   data2_temp<=signed(data2);--将调制的数字波转换为有符号型
   tri_data_temp<=signed(tri_data);--将载波的数字波转换为有符号型
---------------------DC TO AC数据格式的转换--------
    process(clk)
      begin
       if(clk'event and clk='1')then 
          sin_data_temp<=conv_integer(data2_temp);
          sin_data<=sin_data_temp;
          sin<=conv_std_logic_vector(sin_data,10);
          sin_temp<=signed(sin);
        end if;
    end process;
----------------------DC TO AC--------------------------------  
    process(sin_temp,tri_data_temp,dead_time)
       begin 
          if(sin_temp>tri_data_temp)then
             pwm2<='1';
          elsif(sin_temp<=tri_data_temp)then
             pwm2<='0';
          else null;
          end if;
          											  
          if(sin_temp>tri_data_temp-dead_time)then    
			 pwm3<='0';
          elsif(sin_temp<=tri_data_temp)then
             pwm3<='1';
          else null;
          end if;
    end process;
end comparator_behave;



