----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:   
-- Design Name: 
-- Module Name:    bullet - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--������ʾ����ʾ�����ӵ���״���ã�������ַ���0��ɵľ����ӵ���ģ��
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity bullet is
    port(
        
        y,x: in std_logic_vector(3 downto 0);--y����ĳһ�У�x����ĳһ�У����Ƕ�ά����
        data: out std_logic--�ӵ�����ɫ�ź�
    );
end bullet;

architecture Behavioral of bullet is
    type rom_type is array(0 to 15) of std_logic_vector(15 downto 0);
    constant FONT: rom_type :=
    ("1111111111111111",
     "1111111111111111",
     "1111111111111111",
     "1111111111111111",
     "1111110001111111",
     "1111100000111111",
     "1111000000011111",
     "1111000000011111",
     "1111000000011111",
     "1111000000011111",
     "1111100000111111",
     "1111110001111111",
     "1111111111111111",
     "1111111111111111",
     "1111111111111111",
     "1111111111111111"
      );

signal d:std_logic_vector(15 downto 0);
begin 

d<=FONT(conv_integer(y));
data<=not d(conv_integer(x));

end Behavioral;

