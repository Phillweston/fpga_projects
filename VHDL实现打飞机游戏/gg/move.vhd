----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:59 07/01/2014 
-- Design Name: 
-- Module Name:    move - Behavioral 
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

entity move is
    Port ( fire,reset,start : in std_logic;
			  key_l:in std_logic;
			  key_r:in std_logic;
			  plane_x:out integer;
			  plane_y:out integer;
			  enemy_x:out integer;
			  enemy_y:out integer;
			  enemy_x2:out integer;
			  enemy_y2:out integer;
--			  enemy_x3:out integer;
--			  enemy_y3:out integer;
			  bullet_x:out integer;
			  bullet_y:out integer;
			  score:out integer;
	--		  life_enemy:out integer;
	--		  life_enemy2:out integer;
--			  life_enemy3:out integer;
			  life_bullet:out integer;
			  life_plane:out integer;
           movclk:in std_logic);
end move;

architecture Behavioral of move is

---------------------------------------------------------------------------------------------------------------
CONSTANT BOARD_LEN : INTEGER :=100;--THIE IS THE  LENGTH OF BOARD

CONSTANT BOARD_X0:INTEGER :=320;
CONSTANT BOARD_Y0:INTEGER :=400;
CONSTANT enemy_X0:INTEGER :=320;
CONSTANT enemy_Y0:INTEGER :=40;
CONSTANT enemy2_X0:INTEGER :=100;
CONSTANT enemy2_Y0:INTEGER :=40;
--CONSTANT enemy3_X0:INTEGER :=400;
--CONSTANT enemy3_Y0:INTEGER :=40;
---------------------------------------------------------------------------------------------------------------
signal enemy_x_tmp,enemy_y_tmp,enemy_x_tmp2,enemy_y_tmp2:integer range 0 to 1000;
--signal enemy_x_tmp3,enemy_y_tmp3:integer range 0 to 1000;
signal plane_x_tmp,plane_y_tmp:integer range 0 to 1000;
signal bullet_x_tmp,bullet_y_tmp:integer range 0 to 1000;
signal dx_e,dx_e2,dy_e,dy_e2:integer range -7 to 7;
--signal dx_e3,dy_e3:integer range -7 to 7;
---------------------------------------------------------------------------------------------------------------
signal score_tmp:integer range 0 to 15:=0;
signal life_plane_tmp,life_bullet_tmp:integer range 0 to 1;
--signal life_enemy_tmp,life_enemy_tmp2,life_enemy_tmp3:integer range 0 to 1;
---------------------------------------------------------------------------------------------------------------

begin

move: process (movclk,reset,start,life_plane_tmp,life_bullet_tmp)
begin
  if reset='0' then
			plane_x_tmp <= BOARD_X0;
			plane_y_tmp <= BOARD_Y0;
			enemy_x_tmp <= enemy_X0;
			enemy_y_tmp <= enemy_Y0;
			enemy_x_tmp2 <=enemy2_X0;
			enemy_y_tmp2 <=enemy2_Y0;
--			enemy_x_tmp3 <=enemy3_X0;
--			enemy_y_tmp3 <=enemy3_Y0;
			dx_e<=2;
			dy_e<=3;
			dx_e2<=3;
			dy_e2<=2;
--			dx_e3<=1;
--			dy_e3<=1;
--			life_enemy_tmp<=1;
--			life_enemy_tmp2<=1;
--			life_enemy_tmp3<=1;
			life_bullet_tmp<=0;
			life_plane_tmp<=1;
			score_tmp<=0;
     
  else
		if  start='1'   then     
			if (movclk'event and movclk='1') then
----------------------------------------------------------------------plane move	
				if key_l='1' and key_r='0' and plane_x_tmp>=BOARD_LEN  then
					plane_x_tmp<=plane_x_tmp-2;
				elsif key_l='0' and key_r='1' and plane_x_tmp<=640-BOARD_LEN then
					plane_x_tmp<=plane_x_tmp+2;
				end if;
----------------------------------------------------------------------enemy move
			if life_plane_tmp/=0 then
		--		if life_enemy_tmp/=0 then
					if enemy_x_tmp>640-BOARD_LEN then
						dx_e<=-2-score_tmp;
					end if;
					if enemy_x_tmp<BOARD_LEN then
						dx_e<=1+score_tmp;
					end if;
					if enemy_y_tmp>400 then
						dy_e<=-1-score_tmp;
					end if;
					if enemy_y_tmp<30 then
						dy_e<=2+score_tmp;
					end if;
					enemy_x_tmp<=enemy_x_tmp+dx_e;
			--		enemy_x_tmp<=enemy_X0;
			--		enemy_y_tmp<=enemy_Y0+2;
					enemy_y_tmp<=enemy_y_tmp+dy_e;
		--		else
					
		--			life_enemy_tmp<=1;
		--		end if;
----------------------------------------------------------------------enemy2
			--	if life_enemy_tmp2/=0 then
					if enemy_x_tmp2>640-BOARD_LEN then
						dx_e2<=-3-score_tmp;
					end if;
					if enemy_x_tmp2<BOARD_LEN then
						dx_e2<=2+score_tmp;
					end if;
					if enemy_y_tmp2>400 then
						dy_e2<=-2-score_tmp;
					end if;
					if enemy_y_tmp2<30 then
						dy_e2<=1+score_tmp;
					end if;
					enemy_x_tmp2<=enemy_x_tmp2+dx_e2;
			--		enemy_x_tmp2<=enemy2_X0;
			--		enemy_y_tmp2<=enemy2_Y0+1;
					enemy_y_tmp2<=enemy_y_tmp2+dy_e2;
			--	else
					
			--		life_enemy_tmp2<=1;
			--	end if;
----------------------------------------------------------------------enemy3
--				if life_enemy_tmp3/=0 then
--					if enemy_x_tmp3>640-BOARD_LEN then
--						dx_e3<=-4;
--					end if;
--					if enemy_x_tmp3<BOARD_LEN then
--						dx_e3<=2;
--					end if;
--					if enemy_y_tmp3>400 then
--						dy_e3<=-2;
--					end if;
--					if enemy_y_tmp3<30 then
--						dy_e3<=4;
--					end if;
--					enemy_x_tmp3<=enemy_x_tmp3+dx_e3;
--					enemy_y_tmp3<=enemy_y_tmp3+dy_e3;
--				else
--					enemy_x_tmp3<=enemy3_X0;
--					enemy_y_tmp3<=enemy3_Y0;
--					life_enemy_tmp3<=1;
--				end if;
----------------------------------------------------------------------bullet move
				if fire='1' then
					bullet_x_tmp <= plane_x_tmp+8;
					bullet_y_tmp <= plane_y_tmp;
					life_bullet_tmp<=1;
				else
					bullet_y_tmp<=bullet_y_tmp-6;
				end if;
			end if;
-----------------------------------------------------------------------------------------------------------death judge
				if bullet_x_tmp>=(enemy_x_tmp-16) and bullet_x_tmp<=(enemy_x_tmp+32) and bullet_y_tmp>=(enemy_y_tmp-16) and bullet_y_tmp<=(enemy_y_tmp+32) then
			--		life_enemy_tmp<=life_enemy_tmp-1;
					life_bullet_tmp<=life_bullet_tmp-1;
					enemy_x_tmp<=enemy_X0;
			   	enemy_y_tmp<=enemy_Y0;
					score_tmp<=score_tmp+1;
				end if;
				if bullet_x_tmp>=(enemy_x_tmp2-16) and bullet_x_tmp<=(enemy_x_tmp2+32) and bullet_y_tmp>=(enemy_y_tmp2-16) and bullet_y_tmp<=(enemy_y_tmp2+32) then
			--		life_enemy_tmp2<=life_enemy_tmp2-1;
					life_bullet_tmp<=life_bullet_tmp-1;
					enemy_x_tmp2<=enemy2_X0;
					enemy_y_tmp2<=enemy2_Y0;
					score_tmp<=score_tmp+1;
				end if;
--				if bullet_x_tmp>=(enemy_x_tmp3-16) and bullet_x_tmp<=(enemy_x_tmp3+32) and bullet_y_tmp>=(enemy_y_tmp3-16) and bullet_y_tmp<=(enemy_y_tmp3+32) then
--					life_enemy_tmp3<=life_enemy_tmp3-1;
--					life_bullet_tmp<=life_bullet_tmp-1;
--					score_tmp<=score_tmp+1;
--				end if;
				if (plane_x_tmp>=(enemy_x_tmp-32) and plane_x_tmp<=(enemy_x_tmp+32) and plane_y_tmp>=(enemy_y_tmp-32) and plane_y_tmp<=(enemy_y_tmp+32)) or (plane_x_tmp>=(enemy_x_tmp2-32) and plane_x_tmp<=(enemy_x_tmp2+32) and plane_y_tmp>=(enemy_y_tmp2-32) and plane_y_tmp<=(enemy_y_tmp2+32))then
					life_plane_tmp<=life_plane_tmp-1;
--					life_plane_tmp<=0;
				end if;
--				 or (plane_x_tmp>=(enemy_x_tmp3-32) and plane_x_tmp<=(enemy_x_tmp3+32) and plane_y_tmp>=(enemy_y_tmp3-32) and plane_y_tmp<=(enemy_y_tmp3+32)) 
  
			end if;
		end if;
   end if;
end process;

----------------------------------------------------------------------------------------------------------life contral

--life_enemy<=life_enemy_tmp;
--life_enemy2<=life_enemy_tmp2;
--life_enemy3<=life_enemy_tmp3;
score<=score_tmp;
life_bullet<=life_bullet_tmp;
life_plane<=life_plane_tmp;
plane_x<=plane_x_tmp;
plane_y<=plane_y_tmp;
enemy_x<=enemy_x_tmp;
enemy_y<=enemy_y_tmp;
enemy_x2<=enemy_x_tmp2;
enemy_y2<=enemy_y_tmp2;
--enemy_x3<=enemy_x_tmp3;
--enemy_y3<=enemy_y_tmp3;
bullet_x<=bullet_x_tmp;
bullet_y<=bullet_y_tmp;

end Behavioral;
