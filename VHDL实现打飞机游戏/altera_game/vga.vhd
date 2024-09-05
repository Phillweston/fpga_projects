----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
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
port(clk: in std_logic;         --输入时钟信号25m
     reset:in std_logic;        --复位信号
     hs,vs:out std_logic;       --VGA显示的行扫描和场扫描信号
     hcnt,vcnt: buffer integer);--VGA显示的RGB颜色信号
     
end vga;

architecture behav of vga is
  -- VGA显示的参数
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
-----------------------------------------------------------------------
---产生行扫描地址
-----------------------------------------------------------------------
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
-----------------------------------------------------------------------
---产生场扫描地址
-----------------------------------------------------------------------
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
-----------------------------------------------------------------------
---产生行扫描信号
-----------------------------------------------------------------------
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
-----------------------------------------------------------------------
---产生场扫描信号
-----------------------------------------------------------------------
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
     
     