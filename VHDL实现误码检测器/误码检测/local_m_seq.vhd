-------------------------------------------------
---------------����M��������ģ��-----------------
------- M����Ϊ��f ( x) = 1 + x2 + x3 + x4 + x8---
---------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity local_m_seq is 
port ( clk	 	:  in  std_logic;
	   rst	    :  in  std_logic;
	   en	    :  in  std_logic;			--����M���д���ʹ��
	   m_loc 	:  out std_logic			--����M����
	  );
end entity ;

architecture one of local_m_seq is 
signal temp	  : std_logic_vector(7 downto 0);
begin
process(clk,rst,en)
begin
	if rst='0'then
		temp<="00000001";
	elsif rising_edge(clk)then
		if temp="00000000"then
			temp<="00000001";--�ų�ȫ��

		else	
			if en='1'then		--����M��������
				temp(1)<=temp(0);
				temp(2)<=temp(1);
				temp(3)<=temp(2);
				temp(4)<=temp(3);
				temp(5)<=temp(4);
				temp(6)<=temp(5);
				temp(7)<=temp(6);
				temp(0)<=temp(3)XOR temp(4)XOR temp(5)XOR temp(7);
			else
				temp<=temp;		--����������ͣһ��ʱ�����ڣ�ͬ�������ź�
			end if;
			m_loc<=temp(7);
		end if;
	end if;
end process;
end one;