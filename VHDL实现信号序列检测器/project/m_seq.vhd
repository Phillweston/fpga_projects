library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity m_seq is
port (  clk	    : in  std_logic;
	    rst	    : in  std_logic;
	    m_se    : out std_logic			--M序列生成输出
	);end entity;

architecture one of m_seq is
---------------------------------------------------------
signal temp	  : std_logic_vector(7 downto 0);
---------------------------------------------------------
begin
process(clk,rst)
begin
	if rst='0'then
		temp<="11100101";
	elsif rising_edge(clk)then
		m_se <= temp(7);
        temp(7) <= temp(6);
        temp(6) <= temp(5);
        temp(5) <= temp(4);
        temp(4) <= temp(3);
        temp(3) <= temp(2);
        temp(2) <= temp(1);
        temp(1) <= temp(7);
        
	end if;
end process;
end one;