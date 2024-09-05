----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:53 07/01/2014 
-- Design Name: 
-- Module Name:    game - Behavioral 
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

entity planegame is
    Port (  clk_0 : in std_logic;
            reset:in std_logic;
				start : in std_logic;
            fire,key_l,key_r : in std_logic;
            hs,vs: out std_logic;  
            pic_rgb: out std_logic_vector(2 downto 0));
end planegame;


architecture behav of planegame is

--------------------------------------------------------------------------------
    constant h_pixels:integer:=640;
    constant h_front:integer:=16;
    constant h_back:integer:=48;
    constant h_synctime:integer:=96;
    constant h_period:integer:=h_synctime+h_pixels+h_front+h_back; --800
    constant v_lines:integer:=480;
    constant v_front:integer:=10;
    constant v_back:integer:=33;
    constant v_synctime:integer:=2;
    constant v_period:integer:=v_synctime+v_lines+v_front+v_back; --525
--------------------------------------------------------------------------------
signal movclk,clk : std_logic;
signal life_bullet,life_plane,score:integer;
--signal enemy_x3,enemy_y3,life_enemy3,life_enemy2,life_enemy:integer;
signal bullet_x,bullet_y,plane_x,plane_y,enemy_x,enemy_y,enemy_x2,enemy_y2,hcnt,vcnt : integer;
---------------------------------------------------------------------------------     
component picture is
    Port ( clk : in std_logic;
	        hcnt : in integer;
           vcnt : in integer;
			  plane_x:in integer;
			  plane_y:in integer;
			  enemy_x:in integer;
			  enemy_y:in integer;
			  enemy_x2:in integer;
			  enemy_y2:in integer;
--			  enemy_x3:in integer;
--			  enemy_y3:in integer;
			  bullet_x:in integer;
			  bullet_y:in integer;
			  life_plane:in integer;
--			  life_enemy:in integer;
--			  life_enemy2:in integer;
--			  life_enemy3:in integer;
			  life_bullet:in integer;
			  score:in integer;
			  pic_rgb:out std_logic_vector(2 downto 0));
end component;

component move is
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
--			  life_enemy:out integer;
--			  life_enemy2:out integer;
--			  life_enemy3:out integer;
			  life_bullet:out integer;
			  life_plane:out integer;
           movclk:in std_logic);
end component;

component vga is
    port(clk: in std_logic;
			reset:in std_logic;
         hs,vs:out std_logic;
         hcnt,vcnt:buffer integer);
end component;

component div1 is
   port(clk_0: in std_logic;
         movclk:out std_logic);
end component;
---------------------------------------------------------------------------------   
begin
  process (reset,clk_0)
    begin
    if reset ='0' then
       clk<='0';
    elsif clk_0'event and clk_0='1' then 
        clk<=not clk;
    end if;
 end process;
       
 a: picture port map
         ( clk => clk,
           hcnt => hcnt,
           vcnt => vcnt, 
			  plane_x=>plane_x,
			  plane_y=>plane_y,
			  enemy_x=>enemy_x,
			  enemy_y=>enemy_y,
			  enemy_x2=>enemy_x2,
			  enemy_y2=>enemy_y2,
--			  enemy_x3=>enemy_x3,
--			  enemy_y3=>enemy_y3,
			  bullet_x=>bullet_x,
			  bullet_y=>bullet_y,
			  life_plane=>life_plane,
--			  life_enemy=>life_enemy,
--			  life_enemy2=>life_enemy2,
--			  life_enemy3=>life_enemy3,
			  life_bullet=>life_bullet,
			  score=>score,
			  pic_rgb=>pic_rgb);
			  
b: move port map
			 (fire=>fire,
           reset => reset,
           start=>start,
			  key_l=>key_l,
			  key_r=>key_r,
			  plane_x=>plane_x,
			  plane_y=>plane_y,
			  enemy_x=>enemy_x,
			  enemy_y=>enemy_y,
			  enemy_x2=>enemy_x2,
			  enemy_y2=>enemy_y2,
--			  enemy_x3=>enemy_x3,
--			  enemy_y3=>enemy_y3,
			  bullet_x=>bullet_x,
			  bullet_y=>bullet_y,
			  score=>score,
--			  life_enemy=>life_enemy,
--			  life_enemy2=>life_enemy2,
--			  life_enemy3=>life_enemy3,
			  life_plane=>life_plane,
			  life_bullet=>life_bullet,
			  movclk=>movclk);
			  
			  
 e: vga port map
        (clk=>clk,
         reset=>reset, 
         hs=>hs,
         vs=>vs,
         hcnt=>hcnt,
         vcnt=>vcnt);


f: div1 port map
       (clk_0=>clk_0,
		  movclk=>movclk);





end behav;
