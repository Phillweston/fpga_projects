-----#########   ʹ��CPLD/FPGA ���һ��α����źţ�M���У�������    #########-----
-----#########       M����Ϊ��f ( x) = 1 + x2 + x3 + x4 + x8        #########-----
-----#########   �����M����ʱ�����ͬ��ʱ��						#########-----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity m_seq is
port (  clk	    : in  std_logic;
	    rst	    : in  std_logic;
	    m_se    : out std_logic;			--M�����������
	    cnt_m   : out integer range 1 to 255--255������־
	);end entity;

architecture one of m_seq is
---------------------------------------------------------
signal temp	  : std_logic_vector(7 downto 0);
signal cnt	  : integer range 1 to 255:=1;

---------------------------------------------------------
begin
process(clk,rst)
begin
	if rst='0'then
		temp<="00000001";
		cnt <=1;
	elsif rising_edge(clk)then
		if temp="00000000"then	--�ų�ȫ��
			temp<="00000001";	

		else
			temp(1)<=temp(0);	--M��������
			temp(2)<=temp(1);
			temp(3)<=temp(2);
			temp(4)<=temp(3);
			temp(5)<=temp(4);
			temp(6)<=temp(5);
			temp(7)<=temp(6);
			temp(0)<=temp(3)XOR temp(4)XOR temp(5)XOR temp(7);
			
			m_se<=temp(7);		--M�������
		end if;
		if cnt=255 then			--255������־
			cnt<=1;
		else 
			cnt<=cnt+1;
		end if;
		cnt_m<=cnt;
	end if;
end process;
end one;
