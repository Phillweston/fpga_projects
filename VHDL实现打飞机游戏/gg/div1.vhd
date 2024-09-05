----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:26 07/01/2014 
-- Design Name: 
-- Module Name:    div1 - Behavioral 
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
LIBRARY ieee;
 USE ieee.std_logic_1164.all;
 USE ieee.std_logic_arith.all; 
 USE ieee.std_logic_unsigned.all;
 
 ENTITY div1 IS
   PORT(clk_0: IN STD_LOGIC ;
        movclk:OUT STD_LOGIC);
 END ENTITY;
  
ARCHITECTURE reg OF div1 IS
SIGNAL q1mhz:  STD_LOGIC;
SIGNAL q1khz:  STD_LOGIC;
SIGNAL q10hz:  STD_LOGIC;
BEGIN
  PROCESS(clk_0)
   VARIABLE cout:INTEGER:=0;
    BEGIN
      IF clk_0'EVENT AND clk_0='1' THEN
         cout:=cout+1;
         IF cout<=25 THEN q1mhz<='0';
         ELSIF cout<50 THEN q1mhz<='1';
         ELSE cout:=0;
         END IF;
      END IF;
  END PROCESS;

  PROCESS(q1mhz)
   VARIABLE cout:INTEGER:=0;
    BEGIN
     IF q1mhz'EVENT AND q1mhz='1' THEN
        cout:=cout+1;
        IF cout<=500 THEN q1khz<='0';
        ELSIF cout<1000 THEN q1khz<='1';
        ELSE cout:=0;
        END IF;
     END IF;
 END PROCESS;

 PROCESS(q1khz)
  VARIABLE cout:INTEGER:=0;
   BEGIN
     IF q1khz'EVENT AND q1khz='1' THEN
        cout:=cout+1;
        IF cout<=50 THEN q10hz<='0';
        ELSIF cout<100 THEN q10hz<='1';
        ELSE cout:=0;
        END IF;
     END IF;
	  movclk<=q10hz;
 END PROCESS;
END reg;