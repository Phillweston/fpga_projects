----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    move - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--用于控制敌方飞机、我方飞机、子弹的移动，由此产生的坐标位置的变动，然后将新的坐标位置传送
-- 给picture模块，由picture模块进一步控制各个模块的显示
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
    Port ( fire,reset,start : in std_logic;         --子弹、复位、开始按键
			  key_l:in std_logic;                   --左移
			  key_r:in std_logic;                   --右移
			  plane_x:out integer;                  --我方飞机的x坐标
			  plane_y:out integer;                  --我方飞机的y坐标
			  enemy_x:out integer;                  --敌方飞机1的x坐标
			  enemy_y:out integer;                  --敌方飞机1的y坐标
			  enemy_x2:out integer;                 --敌方飞机2的x坐标
			  enemy_y2:out integer;                 --敌方飞机2的y坐标

			  bullet_x:out integer;                 --子弹的x坐标
			  bullet_y:out integer;                 --子弹的y坐标
			  score:out integer;                    --分数

			  life_bullet:out integer;              --子弹的生命
			  life_plane:out integer;               --飞机的生命
              movclk:in std_logic);                 --移动的频率，为10HZ，可以更改div1文件的cout的加数以更改移动的快慢
              
end move;

architecture Behavioral of move is

---------------------------------------------------------------------------------------------------------------
CONSTANT BOARD_LEN : INTEGER :=100;--THIE IS THE  LENGTH OF BOARD

CONSTANT BOARD_X0:INTEGER :=320;--显示器的显示范围
CONSTANT BOARD_Y0:INTEGER :=400;
CONSTANT enemy_X0:INTEGER :=320;--敌机的初始位置
CONSTANT enemy_Y0:INTEGER :=40;
CONSTANT enemy2_X0:INTEGER :=100;
CONSTANT enemy2_Y0:INTEGER :=40;

---------------------------------------------------------------------------------------------------------------
signal enemy_x_tmp,enemy_y_tmp,enemy_x_tmp2,enemy_y_tmp2:integer range 0 to 1000;

signal plane_x_tmp,plane_y_tmp:integer range 0 to 1000;
signal bullet_x_tmp,bullet_y_tmp:integer range 0 to 1000;
signal dx_e,dx_e2,dy_e,dy_e2:integer range -7 to 7;

---------------------------------------------------------------------------------------------------------------
signal score_tmp:integer range 0 to 15:=0;
signal life_plane_tmp,life_bullet_tmp:integer range 0 to 1;

---------------------------------------------------------------------------------------------------------------

begin
-----------------------------------------------------------------------
---控制我方飞机、敌方飞机、子弹的移动
-----------------------------------------------------------------------
move: process (movclk,reset,start,life_plane_tmp,life_bullet_tmp)
begin
  if reset='0' then
			plane_x_tmp <= BOARD_X0;
			plane_y_tmp <= BOARD_Y0;
			enemy_x_tmp <= enemy_X0;
			enemy_y_tmp <= enemy_Y0;
			enemy_x_tmp2 <=enemy2_X0;
			enemy_y_tmp2 <=enemy2_Y0;

			dx_e<=2;
			dy_e<=3;
			dx_e2<=3;
			dy_e2<=2;

			life_bullet_tmp<=0;
			life_plane_tmp<=1;
			score_tmp<=0;
     
  else
		if  start='1'   then     
			if (movclk'event and movclk='1') then
--------------------------------我方飞机的移动--------------------------------------plane move	
				if key_l='1' and key_r='0' and plane_x_tmp>=BOARD_LEN  then
					plane_x_tmp<=plane_x_tmp-2;
				elsif key_l='0' and key_r='1' and plane_x_tmp<=640-BOARD_LEN then
					plane_x_tmp<=plane_x_tmp+2;
				end if;
----------------------------------敌方飞机1的移动------------------------------------enemy move
			if life_plane_tmp/=0 then

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

					enemy_y_tmp<=enemy_y_tmp+dy_e;

------------------------------------敌方飞机2的移动----------------------------------enemy2

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

					enemy_y_tmp2<=enemy_y_tmp2+dy_e2;

----------------------------------子弹的移动------------------------------------bullet move
				if fire='1' then
					bullet_x_tmp <= plane_x_tmp+8;
					bullet_y_tmp <= plane_y_tmp;
					life_bullet_tmp<=1;
				else
					bullet_y_tmp<=bullet_y_tmp-6;
				end if;
			end if;
---------------------判断我方飞机和敌方飞机三架，哪一架被摧毁----------------death judge
				if bullet_x_tmp>=(enemy_x_tmp-16) and bullet_x_tmp<=(enemy_x_tmp+32) and bullet_y_tmp>=(enemy_y_tmp-16) and bullet_y_tmp<=(enemy_y_tmp+32) then

					life_bullet_tmp<=life_bullet_tmp-1;
					enemy_x_tmp<=enemy_X0;
			   	enemy_y_tmp<=enemy_Y0;
					score_tmp<=score_tmp+1;
				end if;
				if bullet_x_tmp>=(enemy_x_tmp2-16) and bullet_x_tmp<=(enemy_x_tmp2+32) and bullet_y_tmp>=(enemy_y_tmp2-16) and bullet_y_tmp<=(enemy_y_tmp2+32) then

					life_bullet_tmp<=life_bullet_tmp-1;
					enemy_x_tmp2<=enemy2_X0;
					enemy_y_tmp2<=enemy2_Y0;
					score_tmp<=score_tmp+1;
				end if;

				if (plane_x_tmp>=(enemy_x_tmp-32) and plane_x_tmp<=(enemy_x_tmp+32) and plane_y_tmp>=(enemy_y_tmp-32) and plane_y_tmp<=(enemy_y_tmp+32)) or (plane_x_tmp>=(enemy_x_tmp2-32) and plane_x_tmp<=(enemy_x_tmp2+32) and plane_y_tmp>=(enemy_y_tmp2-32) and plane_y_tmp<=(enemy_y_tmp2+32))then
					life_plane_tmp<=life_plane_tmp-1;
				end if;

			end if;
		end if;
   end if;
end process;

-----------------------------------------------------------------life contral
score<=score_tmp;               --把分数发送到picture模块
life_bullet<=life_bullet_tmp;   --把子弹的生命发送到picture模块
life_plane<=life_plane_tmp;     --把我方飞机的生命发送到picture模块
plane_x<=plane_x_tmp;           --把我方飞机的x坐标发送到picture模块
plane_y<=plane_y_tmp;           --把我方飞机的y坐标发送到picture模块
enemy_x<=enemy_x_tmp;           --把敌方飞机1的x坐标发送到picture模块
enemy_y<=enemy_y_tmp;           --把敌方飞机1的y坐标发送到picture模块
enemy_x2<=enemy_x_tmp2;         --把敌方飞机2的x坐标发送到picture模块
enemy_y2<=enemy_y_tmp2;         --把敌方飞机2的y坐标发送到picture模块
bullet_x<=bullet_x_tmp;         --把子弹的x坐标发送到picture模块
bullet_y<=bullet_y_tmp;         --把子弹的y坐标发送到picture模块

end Behavioral;
