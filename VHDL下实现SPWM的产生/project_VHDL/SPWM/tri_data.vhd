---------------------------------
--------------------------------
--------´æ´¢Èı½Ç²¨µÄROM ---
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity tri_data is
port(
    clk:in std_logic;
    addre:in std_logic_vector(9 downto 0);
    data:out std_logic_vector(9 downto 0)
);
end tri_data;
architecture behave of tri_data is
component tri_rom
port(
    clock:in std_logic;
    address:in std_logic_vector(9 downto 0);
    q:out std_logic_vector(9 downto 0)
);
end component;
begin 
u1:tri_rom port map(clock=>clk,address=>addre,q=>data);
end behave;