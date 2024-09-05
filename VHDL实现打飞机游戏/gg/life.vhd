----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:28 07/01/2014 
-- Design Name: 
-- Module Name:    life - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity life is
    Port ( clk : in std_logic;
           reset : in std_logic;
			  enemy_x:in integer;
			  enemy_y:in integer;
			  enemy_x2:in integer;
			  enemy_y2:in integer;
			  enemy_x3:in integer;
			  enemy_y3:in integer;
			  plane_x:in integer;
			  plane_y:in integer;
			  bullet_x:in integer;
			  bullet_y:in integer;
			  life_enemy:buffer integer;
			  life_enemy2:buffer integer;
			  life_enemy3:buffer integer;
			  score:out integer;
			  life_plane:out integer;
			  life_bullet:out integer);
end life;

architecture Behavioral of life is
----------------------------------------------------------------------------------------------------------------
signal score_tmp:integer range 0 to 15:=0;
signal life_enemy_tmp,life_enemy_tmp2,life_enemy_tmp3,life_plane_tmp,life_bullet_tmp:integer range 0 to 1;
----------------------------------------------------------------------------------------------------------------
begin
planelife:process(clk,reset)
begin
if reset='0' then
	life_plane_tmp<=1;
else
	if clk'event and clk='1' then
		if ((enemy_x-plane_x)>=-32 or(enemy_x-plane_x)<=32) and((enemy_y-plane_y)>=-32 or(enemy_y-plane_y)<=32)then
			life_plane_tmp<=life_plane_tmp-1;
		end if;
	end if;
life_plane<=life_plane_tmp;
end if;

end process;
----------------------------------------------------------------------------------------------------------------
enemylife:process(clk,reset)
begin
if reset='0' then
	life_enemy_tmp<=1;
	life_enemy_tmp2<=1;
	life_enemy_tmp3<=1;
	life_bullet_tmp<=1;
	score_tmp<=0;
else
	if clk'event and clk='1' then
		if ((enemy_x-bullet_x)>=-24 or(enemy_x-bullet_x)<=24) and((enemy_y-bullet_y)>=-24 or(enemy_y-bullet_y)<=24)then
			life_enemy_tmp<=life_enemy_tmp-1;
			life_bullet_tmp<=0;
			score_tmp<=score_tmp+1;
		end if;
		if ((enemy_x2-bullet_x)>=-24 or(enemy_x2-bullet_x)<=24) and((enemy_y2-bullet_y)>=-24 or(enemy_y2-bullet_y)<=24)then
			life_enemy_tmp2<=life_enemy_tmp2-1;
			life_bullet_tmp<=0;
			score_tmp<=score_tmp+1;
		end if;
		if ((enemy_x3-bullet_x)>=-24 or(enemy_x3-bullet_x)<=24) and((enemy_y3-bullet_y)>=-24 or(enemy_y3-bullet_y)<=24)then
			life_enemy_tmp3<=life_enemy_tmp3-1;
			life_bullet_tmp<=0;
			score_tmp<=score_tmp+1;
		end if;
	end if;
life_enemy<=life_enemy_tmp;
life_enemy2<=life_enemy_tmp2;
life_enemy3<=life_enemy_tmp3;
score<=score_tmp;
life_bullet<=life_bullet_tmp;
end if;

end process;

end Behavioral;


