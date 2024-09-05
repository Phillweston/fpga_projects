--control.vhd
--ARM发完后不能马上又发第二个数据包（测试用的情况）
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity control is
port(
	 reset:in std_logic;--1 able
	 --clk:in std_logic; --触发时钟--改为高点在此用了50MHZ的扫描时钟
     r_ready:in std_logic; --上升沿表示有收到了一个数
	 data_shou:in std_logic_vector(7 downto 0);--收到的数据
	 data_out:out std_logic_vector(31 downto 0);--数据合并成四个字节后输出
	 can_panduan:out std_logic);--为‘1’可以进行判断数据操作,收完后送出的标志信号
end control;

architecture one of control is   --即数组元素为a[0]，a[1]，a[2]，a[3]
type data_ram is array(3 downto 0) of std_logic_vector(7 downto 0);
signal temp:data_ram;--定义一个数组存放4个8位数据
signal biaozhi:std_logic:='0';--一个标志位
signal count:integer range 0 to 3:=0;
signal dataout_temp:std_logic_vector(31 downto 0):=(others=>'0');
begin
P1:process(r_ready,data_shou,reset)
   begin
        if(reset='1') then
           biaozhi<='0';
           count<=0;
           temp(3)<="00000000";
           temp(2)<="00000000";
           temp(1)<="00000000";
           temp(0)<="00000000"; 
        elsif(r_ready'event and r_ready='1') then
		   temp(count)<=data_shou;
		  --biaozhi<='0';
		   if(count=3) then
		   count<=0;
		   biaozhi<='1';--收完四个数据后置标志位由‘0’->‘1’
		   else
		   biaozhi<='0';
		   count<=count+1;
		   end if;
		end if;
end process;

P2:process(biaozhi,reset)
   begin
        if(reset='1') then
		  dataout_temp<=(others=>'0');
		elsif(biaozhi'event and biaozhi='1') then
		  dataout_temp<=temp(3)&temp(2)&temp(1)&temp(0);--数据并置输出
		end if;
   end process;   
data_out<=dataout_temp;
can_panduan<=biaozhi;
end one;  


		   




	 