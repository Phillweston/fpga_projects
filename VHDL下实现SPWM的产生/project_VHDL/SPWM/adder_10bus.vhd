library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity adder_10bus is
port(
    a:in std_logic_vector(9 downto 0);
    b:in std_logic_vector(9 downto 0);
    s:out std_logic_vector(9 downto 0)
);
end adder_10bus;
architecture adder_behave of adder_10bus is
begin 
    s<=a+b;
end adder_behave;