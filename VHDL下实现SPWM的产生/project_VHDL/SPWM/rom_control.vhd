library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity rom_control is
port(
    clk:in std_logic;
    addre:in std_logic_vector(9 downto 0);
    data:out std_logic_vector(9 downto 0)--�з�������
);
end rom_control;
architecture rom_behave of rom_control is
component data_rom
port(
    address:in std_logic_vector(9 downto 0);
    clock:in std_logic;
    q:out std_logic_vector(9 downto 0)
);
end component;
begin 
   u1:data_rom port map(address=>addre,clock=>clk,q=>data);
end rom_behave;