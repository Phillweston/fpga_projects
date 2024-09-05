----------------------------------------------
-------------ģ���ŵ�----------------------
--------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity sim_channel is
port ( clk	 : in  std_logic;
	   m_i   : in  std_logic;	--ģ���ŵ�M��������
	   cnt_m : in  integer;     --M��������255������־����
	   m_o	 : out std_logic	--ģ���ŵ�M�������
	  );
end entity;

architecture one of sim_channel is
begin
------------------��������----------------------------
process(clk)
begin
	if rising_edge(clk)then 
		case cnt_m is						-----ȡ��12λ,�������ѡȡ��
			when 11	 =>	m_o<=not m_i;       -----��Щλ�ý��в��룬������Ϊ���п���
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