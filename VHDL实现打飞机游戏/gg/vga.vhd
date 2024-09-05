----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:22 07/01/2014 
-- Design Name: 
-- Module Name:    vga - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity vga is
port(clk: in std_logic;
     reset:in std_logic;
     hs,vs:out std_logic;
     hcnt,vcnt: buffer integer);
     
end vga;

architecture behav of vga is
  
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
begin
-------------------------------------------------------------------------------------------------------
    a:process(clk,reset)
    begin
        if reset='0' then
            hcnt<=1;
        elsif clk'event and clk='1' then
            if hcnt<h_period then
                hcnt<=hcnt+1;
            else
                hcnt<=1;
            end if;
        end if;
    end process;
-------------------------------------------------------------------------------------------------------
    b:process(clk,reset)
    begin
        if reset='0' then
            vcnt<=1;
        elsif clk'event and clk='1' then
            if vcnt<v_period and hcnt=h_period then
                vcnt<=vcnt+1;
            elsif vcnt=v_period and hcnt=h_period then
                vcnt<=1;
            end if;
        end if;
    end process;
-------------------------------------------------------------------------------------------------------
    c:process(clk,reset)
    begin
        if reset='0' then
            hs<='1';
        elsif clk'event and clk='1' then
            if (hcnt>=h_pixels+h_front) and (hcnt<h_pixels+h_synctime+h_front) then
                hs<='0';
            else
                hs<='1';
            end if;
        end if;
   end process;
-------------------------------------------------------------------------------------------------------
    d:process(clk,reset)
    begin
        if reset='0' then
            vs<='1';
        elsif clk'event and clk='1' then
            if (vcnt>=v_lines+v_front) and (vcnt< v_lines+v_synctime+v_front) then
                vs<='0';
            else
                vs<='1';
            end if;
        end if;
    end process;

end;
     
     