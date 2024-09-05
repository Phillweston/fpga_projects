----------------------------------------------
-------------模拟信道----------------------
--------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity sim_channel is
port ( clk	 : in  std_logic;
	   m_i   : in  std_logic;	--模拟信道M序列输入
	   cnt_m : in  integer;     --M序列生成255计数标志输入
	   m_o	 : out std_logic	--模拟信道M序列输出
	  );
end entity;

architecture one of sim_channel is
begin
------------------插入误码----------------------------
process(clk)
begin
	if rising_edge(clk)then 
		case cnt_m is						-----取反12位,这里随机选取了
			when 11	 =>	m_o<=not m_i;       -----这些位置进行插入，可以人为进行控制
			when 12	 =>	m_o<=not m_i;
			when 13	 =>	m_o<=not m_i;
			when 14	 =>	m_o<=not m_i;
			when 111 =>	m_o<=not m_i;
			when 133 =>	m_o<=not m_i;
			when 155 =>	m_o<=not m_i;
			when 166 =>	m_o<=not m_i;
			when 199 =>	m_o<=not m_i;
			when 211 =>	m_o<=not m_i;
			when 233 =>	m_o<=not m_i;
			when 245 =>	m_o<=not m_i;			
			when others	=>m_o<=m_i;		
		end case;
	end if;
end process;
end one;