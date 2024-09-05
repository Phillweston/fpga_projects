----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    picture - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- ���ڿ����ҷ��ɻ��͵з��ɻ����ӵ���������GAME OVER��ͼ�ε���ʾ
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

entity picture is
    Port ( clk : in std_logic;                      ----����ʱ���ź�25m
	        hcnt : in integer;                      --VGA��ʾ����ɨ��
           vcnt : in integer;                       --VGA��ʾ�ĳ�ɨ���ź�
			  plane_x:in integer;                   --�ҷ��ɻ���x����
			  plane_y:in integer;                   --�ҷ��ɻ���y����
			  enemy_x:in integer;                   --�з��ɻ�1��x����
			  enemy_y:in integer;                   --�з��ɻ�1��y����
			  enemy_x2:in integer;                  --�з��ɻ�2��x����
			  enemy_y2:in integer;                  --�з��ɻ�2��y����
			  bullet_x:in integer;                  --�ӵ���x����
			  bullet_y:in integer;                  --�ӵ���y����
			  life_plane:in integer;                --�ɻ�������
			  life_bullet:in integer;               --�ӵ�������
			  score:in integer;                     --����
			  pic_rgb:out std_logic_vector(2 downto 0));--VGA��ʾ����ɫ�ź�
end picture;

architecture Behavioral of picture is

----------------------------------------------------------------------
CONSTANT BOARD_LEN : INTEGER :=50;--THIE IS THE 1/2 LENGTH OF BOARD��ʾ������ʾ��Χ

CONSTANT BOARD_X0:INTEGER :=320;--��ʾ�Ŀ�
CONSTANT BOARD_Y0:INTEGER :=400;--��ʾ�ĳ�
----------------------------------------------------------------------
signal dx_p,dy_p,dx_e,dy_e,dx_e2,dy_e2,dx_b,dy_b:std_logic_vector(10 downto 0);

signal data_b,data_p,data_e,data_e2:std_logic;

signal x_bullet,y_bullet,x_enemy,y_enemy,x_enemy2,y_enemy2,x_plane,y_plane:integer range 0 to 1000;

----------------------------------------------------------------------
signal dd_gg,dd_g,dd:std_logic;
signal dx_dis_gg,dy_dis_gg,dx_dis_g,dy_dis_g,dx_dis,dy_dis:std_logic_vector(10 downto 0);

signal x_cord_gg,y_cord_gg,x_cord_g,y_cord_g,x_cord,y_cord:integer range 0 to 1000;

signal x_dis_gg,y_dis_gg,x_dis_g,y_dis_g,x_dis,y_dis:integer range 0 to 1000;


signal num1,num2:integer range 0 to 100;
signal gg1,gg2,gg3,gg4,gg5,gg6,gg7,gg8,gg9,g1,g2,g3,g4,t1,t2:std_logic_vector(5 downto 0);
signal gameover_rgb,score_rgb,goal_rgb,plane_rgb,enemy_rgb,enemy2_rgb,bullet_rgb:std_logic_vector(2 downto 0);

signal addr,addr_g,addr_gg:std_logic_vector(8 downto 0);

signal en,en_g,en_gg:integer range 0 to 1;
-------------------------------------------------------------------------------------------------------------------
-- �ҷ��ɻ�ģ��
component plane is
    port(
        
        y,x: in std_logic_vector(5 downto 0);
        data: out std_logic
    );
end component ;
-- �з��ɻ�ģ��
component enemy is
    port(
        
        y,x: in std_logic_vector(5 downto 0);
        data: out std_logic
    );
end component ;
-- �ӵ���ʾģ��
component bullet is
    port(
        
        y,x: in std_logic_vector(3 downto 0);
        data: out std_logic
    );
end component ;
-- �ַ���ʾģ��
component codepage is
    port(
        addr: in std_logic_vector(8 downto 0);
        addr_x:in std_logic_vector(2 downto 0);
        d: out std_logic
    );
end component;

begin
-------------------------������ʾ�ҷ��ɻ�������--------------------draw plane
x_plane<=hcnt-plane_x;
y_plane<=vcnt-plane_y;

dx_p<=conv_std_logic_vector(x_plane,11);
dy_p<=conv_std_logic_vector(y_plane,11);
a:plane  port map
			(dy_p(5 downto 0),
			 dx_p(5 downto 0),
			 data_p);
------------------------������ʾ�з��ɻ�������------------------draw enemy
x_enemy<=hcnt-enemy_x;
y_enemy<=vcnt-enemy_y;

dx_e<=conv_std_logic_vector(x_enemy,11);
dy_e<=conv_std_logic_vector(y_enemy,11);
b1:enemy  port map
			(dy_e(5 downto 0),
			 dx_e(5 downto 0),
			 data_e);
			 
x_enemy2<=hcnt-enemy_x2;
y_enemy2<=vcnt-enemy_y2;

dx_e2<=conv_std_logic_vector(x_enemy2,11);
dy_e2<=conv_std_logic_vector(y_enemy2,11);
b2:enemy  port map
			(dy_e2(5 downto 0),
			 dx_e2(5 downto 0),
			 data_e2);
			 
----------------------------������ʾ�ӵ�������---------------------draw bullet
x_bullet<=hcnt-bullet_x;
y_bullet<=vcnt-bullet_y;

dx_b<=conv_std_logic_vector(x_bullet,11);
dy_b<=conv_std_logic_vector(y_bullet,11);
c:bullet  port map
			(dy_b(3 downto 0),
			 dx_b(3 downto 0),
			 data_b);

-----------------------------------------------------------------------
---�����ҷ��ɻ����з��ɻ����ӵ�����ʾ
-----------------------------------------------------------------------
draw: process (clk)
begin
	if clk'event and clk='1' then
		if life_plane/=0 then
			if ((hcnt>=plane_x)) and (hcnt<=(plane_x+32)) and (vcnt>=(plane_y)) and (vcnt<=(plane_y+32)) then
				plane_rgb <= "00"&data_p;--��ʾ�ҷ��ɻ�
			else
				plane_rgb <= "000";
			end if;
				if ((hcnt>=enemy_x)) and (hcnt<=(enemy_x+32)) and (vcnt>=(enemy_y)) and (vcnt<=(enemy_y+32)) then
					enemy_rgb <= '0'&data_e&'0';--�з��ɻ�1
				else
					enemy_rgb <= "000";
				end if;

				if ((hcnt>=enemy_x2)) and (hcnt<=(enemy_x2+32)) and (vcnt>=(enemy_y2)) and (vcnt<=(enemy_y2+32)) then
					enemy2_rgb <= '0'&data_e2&'0';--�з��ɻ�2
				else
					enemy2_rgb <= "000";
				end if;
			if life_bullet/=0 then
				if ((hcnt>=bullet_x)) and (hcnt<=(bullet_x+16)) and (vcnt>=(bullet_y)) and (vcnt<=(bullet_y+16)) then
					bullet_rgb <= '0'&data_b&'0';--�ӵ�����ʾ
				else
					bullet_rgb <= "000";
				end if;
			end if;
		end if;
	end if;
end process;
-----------------------------------------------------------------------
-------------------------���Ʒ�������ʾ------------------------------------------draw score
-----------------------------------------------------------------------
process(score)
begin 
 if score>=10 then --��ʾӢ����ĸ
     num1<=17;
     num2<=score-10+16; 
 else --��ʾ����
      num1<=16;
      num2<=score+16;
 end if;
end process;

---------------------------------------------------------------------------------------------------------------score  
t1<=conv_std_logic_vector(num1,6);
t2<=conv_std_logic_vector(num2,6);

---dis
x_cord<=500; -- zuobiao  xianshi
y_cord<=50;

x_dis<=hcnt-x_cord;
y_dis<=vcnt-y_cord;


dx_dis<=conv_std_logic_vector(x_dis,11);
dy_dis<=conv_std_logic_vector(y_dis,11);
-----------------------------------------------------------------------
-------����VGA��ʾ��˳��VGA��ʾ��˳��Ϊ�����Ͻǵ����½ǣ����Ƹ���ģ�����ʾ˳��
-------������ʾ�ҷ����з��ɻ����ӵ�����������Ϣ----score xianshi 
-----------------------------------------------------------------------
process(clk,x_dis,y_dis,en,dd)
begin
    if clk'event and clk='1' then
      if y_dis>=0 and y_dis<16 then 
         if x_dis<16 then 
            en<=1;
            addr<=t1&dy_dis(3 downto 1);
         elsif x_dis<16*2 then
            en<=1;
            addr<=t2&dy_dis(3 downto 1);
         else
            en<=0;
            addr<=t2&dy_dis(3 downto 1);
         end if;
      else 
          en<=0;
          addr<=t2&dy_dis(3 downto 1);
      end if;
    end if;
    if en=1 then --�ж��Ƿ���ʾ����
            score_rgb<="01"&dd;
        else 
            score_rgb<="000";
    end if;
end process;

d:codepage 
    port map(
        addr,
        dx_dis(3 downto 1),
        dd
    );
-----------------------------------------------------------------------
--------------��ʾgoal�ַ�------------------------------goal
-----------------------------------------------------------------------
g1<="100111";
g2<="101111";
g3<="100001";
g4<="101100";
---dis
x_cord_g<=500; -- zuobiao  xianshi
y_cord_g<=100;

x_dis_g<=hcnt-x_cord_g;
y_dis_g<=vcnt-y_cord_g;


dx_dis_g<=conv_std_logic_vector(x_dis_g,11);
dy_dis_g<=conv_std_logic_vector(y_dis_g,11);
---------------------------------------------------------------------------------------------------------------
process(clk,x_dis_g,y_dis_g,en_g)
begin
if clk'event and clk='1' then
  if y_dis_g>=0 and y_dis_g<16 then 
     if x_dis_g<16 then 
        en_g<=1;
        addr_g<=g1&dy_dis_g(3 downto 1);
     elsif x_dis_g<16*2 then
        en_g<=1;
        addr_g<=g2&dy_dis_g(3 downto 1);
	  elsif x_dis_g<16*3 then
        en_g<=1;
        addr_g<=g3&dy_dis_g(3 downto 1);
     elsif x_dis_g<16*4 then
        en_g<=1;
        addr_g<=g4&dy_dis_g(3 downto 1);
     else
        en_g<=0;
     end if;
  else 
     en_g<=0;
  end if;
   if en_g=1 then 
		goal_rgb<="01"&dd_g;
	else 
		goal_rgb<="000";
	end if;
end if;

end process;

e:codepage 
    port map(
        addr_g,
        dx_dis_g(3 downto 1),
        dd_g
    );
-----------------------------------------------------------------------
----------------------------��ʾGAME OVER�ַ�------------------------------
-----------------------------------------------------------------------
gg1<="100111";--g
gg2<="100001";--a
gg3<="101101";--m
gg4<="100101";--e
gg5<="000000";--space
gg6<="101111";--o
gg7<="110110";--v
gg8<="100101";--e
gg9<="110010";--r
---dis
x_cord_gg<=320; -- zuobiao  xianshi ��ʾ������λ��
y_cord_gg<=240;

x_dis_gg<=hcnt-x_cord_gg;
y_dis_gg<=vcnt-y_cord_gg;


dx_dis_gg<=conv_std_logic_vector(x_dis_gg,11);
dy_dis_gg<=conv_std_logic_vector(y_dis_gg,11);
-----------------------------------------------------
process(clk,x_dis_gg,y_dis_gg,en_gg)
begin
    if clk'event and clk='1' then
    if life_plane=0 then
      if y_dis_gg>=0 and y_dis_gg<16 then 
         if x_dis_gg<16 then 
            en_gg<=1;
            addr_gg<=gg1&dy_dis_gg(3 downto 1);
         elsif x_dis_gg<16*2 then
            en_gg<=1;
            addr_gg<=gg2&dy_dis_gg(3 downto 1);
          elsif x_dis_gg<16*3 then
            en_gg<=1;
            addr_gg<=gg3&dy_dis_gg(3 downto 1);
         elsif x_dis_gg<16*4 then
            en_gg<=1;
            addr_gg<=gg4&dy_dis_gg(3 downto 1);
          elsif x_dis_gg<16*5 then
            en_gg<=1;
            addr_gg<=gg5&dy_dis_gg(3 downto 1);
          elsif x_dis_gg<16*6 then
            en_gg<=1;
            addr_gg<=gg6&dy_dis_gg(3 downto 1);
         elsif x_dis_gg<16*7 then
            en_gg<=1;
            addr_gg<=gg7&dy_dis_gg(3 downto 1);
          elsif x_dis_gg<16*8 then
            en_gg<=1;
            addr_gg<=gg8&dy_dis_gg(3 downto 1);
          elsif x_dis_gg<16*9 then
            en_gg<=1;
            addr_gg<=gg9&dy_dis_gg(3 downto 1);
         else
            en_gg<=0;

         end if;
      else 
         en_gg<=0;

      end if;
    else
          en_gg<=0;
    end if;
       if en_gg=1 then 
            gameover_rgb<="00"&dd_gg;
        else 
            gameover_rgb<="000";
        end if;
    end if;
end process;

f:codepage 
    port map(
        addr_gg,
        dx_dis_gg(3 downto 1),
        dd_gg
    );
--------------------------���ο��Ƹ���ģ�����ʾ--------
pic_rgb<=goal_rgb or score_rgb or enemy2_rgb or enemy_rgb or plane_rgb or bullet_rgb or gameover_rgb;

end Behavioral;

