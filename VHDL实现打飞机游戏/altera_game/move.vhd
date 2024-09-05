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
--���ڿ��Ƶз��ɻ����ҷ��ɻ����ӵ����ƶ����ɴ˲���������λ�õı䶯��Ȼ���µ�����λ�ô���
-- ��pictureģ�飬��pictureģ���һ�����Ƹ���ģ�����ʾ
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
    Port ( fire,reset,start : in std_logic;         --�ӵ�����λ����ʼ����
			  key_l:in std_logic;                   --����
			  key_r:in std_logic;                   --����
			  plane_x:out integer;                  --�ҷ��ɻ���x����
			  plane_y:out integer;                  --�ҷ��ɻ���y����
			  enemy_x:out integer;                  --�з��ɻ�1��x����
			  enemy_y:out integer;                  --�з��ɻ�1��y����
			  enemy_x2:out integer;                 --�з��ɻ�2��x����
			  enemy_y2:out integer;                 --�з��ɻ�2��y����

			  bullet_x:out integer;                 --�ӵ���x����
			  bullet_y:out integer;                 --�ӵ���y����
			  score:out integer;                    --����

			  life_bullet:out integer;              --�ӵ�������
			  life_plane:out integer;               --�ɻ�������
              movclk:in std_logic);                 --�ƶ���Ƶ�ʣ�Ϊ10HZ�����Ը���div1�ļ���cout�ļ����Ը����ƶ��Ŀ���
              
end move;

architecture Behavioral of move is

---------------------------------------------------------------------------------------------------------------
CONSTANT BOARD_LEN : INTEGER :=100;--THIE IS THE  LENGTH OF BOARD

CONSTANT BOARD_X0:INTEGER :=320;--��ʾ������ʾ��Χ
CONSTANT BOARD_Y0:INTEGER :=400;
CONSTANT enemy_X0:INTEGER :=320;--�л��ĳ�ʼλ��
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
---�����ҷ��ɻ����з��ɻ����ӵ����ƶ�
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
--------------------------------�ҷ��ɻ����ƶ�--------------------------------------plane move	
				if key_l='1' and key_r='0' and plane_x_tmp>=BOARD_LEN  then
					plane_x_tmp<=plane_x_tmp-2;
				elsif key_l='0' and key_r='1' and plane_x_tmp<=640-BOARD_LEN then
					plane_x_tmp<=plane_x_tmp+2;
				end if;
----------------------------------�з��ɻ�1���ƶ�------------------------------------enemy move
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

------------------------------------�з��ɻ�2���ƶ�----------------------------------enemy2

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

----------------------------------�ӵ����ƶ�------------------------------------bullet move
				if fire='1' then
					bullet_x_tmp <= plane_x_tmp+8;
					bullet_y_tmp <= plane_y_tmp;
					life_bullet_tmp<=1;
				else
					bullet_y_tmp<=bullet_y_tmp-6;
				end if;
			end if;
---------------------�ж��ҷ��ɻ��͵з��ɻ����ܣ���һ�ܱ��ݻ�----------------death judge
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
score<=score_tmp;               --�ѷ������͵�pictureģ��
life_bullet<=life_bullet_tmp;   --���ӵ����������͵�pictureģ��
life_plane<=life_plane_tmp;     --���ҷ��ɻ����������͵�pictureģ��
plane_x<=plane_x_tmp;           --���ҷ��ɻ���x���귢�͵�pictureģ��
plane_y<=plane_y_tmp;           --���ҷ��ɻ���y���귢�͵�pictureģ��
enemy_x<=enemy_x_tmp;           --�ѵз��ɻ�1��x���귢�͵�pictureģ��
enemy_y<=enemy_y_tmp;           --�ѵз��ɻ�1��y���귢�͵�pictureģ��
enemy_x2<=enemy_x_tmp2;         --�ѵз��ɻ�2��x���귢�͵�pictureģ��
enemy_y2<=enemy_y_tmp2;         --�ѵз��ɻ�2��y���귢�͵�pictureģ��
bullet_x<=bullet_x_tmp;         --���ӵ���x���귢�͵�pictureģ��
bullet_y<=bullet_y_tmp;         --���ӵ���y���귢�͵�pictureģ��

end Behavioral;
