library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity adder_32bus is
port(
    a:in std_logic_vector(31 downto 0);
    b:in std_logic_vector(31 downto 0);
    s:out std_logic_vector(31 downto 0)
);
end adder_32bus;
architecture adder_behave of adder_32bus is
begin 
    s<=a+b;
end adder_behave;
