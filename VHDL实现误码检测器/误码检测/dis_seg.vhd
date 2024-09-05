---------------------------------------------
----------------数码管显示模块----------------
-------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity dis_seg is
port ( clk	    : in  std_logic;
	   rst		: in  std_logic;
	   err_cnt  : in  integer range 0 to 255 ;	   --误码计数
	   scan	    : out std_logic_vector(2 downto 0);--数码管使能
	   seg	    : out std_logic_vector(7 downto 0) --数码管数据
	);
end entity;

architecture one of dis_seg is
signal clk_1k : std_logic:='0';
signal d3:integer range 0 to 9:=0;	--显示第一位
signal d2:integer range 0 to 9:=0;	--显示第二位
signal d1:integer range 0 to 9:=0;	--显示第三位
signal cnt:integer range 1 to 3;	
signal err:integer:=0;				--误码计数
signal data: integer range 0 to 9;	--数码管数据
begin
-----------------------------------------------------------
process(clk)
variable m: integer range 0 to  24999;
begin 
if rising_edge(clk)then		--产生数码管显示使能跳转时钟
	if m=24999 then 
		m:=0;
		clk_1k<=not clk_1k;
	else
		m:=m+1;
	end if;
end if;
end process;
--------------------------------------------------------
process(clk,rst,err_cnt)
begin
	if rst='0'then
		d3<=0;
		d2<=0;
		d1<=0;
		
		err<=err_cnt;		--载入误码数
		
	elsif rising_edge(clk)then	--提取各位显示数据
		if err>=100 then
			err<=err-100;
			d3<=d3+1;
		else
			if err>=10 then	
				err<=err-10;
				d2<=d2+1;
			else
--				err<=err_cnt;
				d1<=err;
			end if;
		end if;
	end if;
end process;
----------------------------------------------------
process(clk_1k)
begin
if rising_edge(clk_1k)then		
	if cnt=3 then
		cnt<=1;
	else
		cnt<=cnt+1;
	end if;
end if;
end process;
------------------------------------------------
process(clk)
begin
if rising_edge(clk)then
 case cnt is
	when 3=> scan<="011";
			 data<=d3;
	when 2=> scan<="101";
			 data<=d2;
	when 1=> scan<="110";
			 data<=d1;
	when others=>
			 null;
 end case;
end if;
end process;
-------------------------------------------
process(data)
begin
	case data is
		 when 0=>seg<="11000000"; 
         when 1=>seg<="11111001";
         when 2=>seg<="10100100";
         when 3=>seg<="10110000";
         when 4=>seg<="10011001";
         when 5=>seg<="10010010";
         when 6=>seg<="10000010";
         when 7=>seg<="11111000";
         when 8=>seg<="10000000";
         when 9=>seg<="10011000";
         when others    =>null;
    end case;
end process;                                   
end one;
	












