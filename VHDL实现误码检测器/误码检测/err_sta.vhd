--------------------------------------------
-------------误码统计模块--------------
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity err_sta is
port( clk	    : in  std_logic;
	  rst	    : in  std_logic;
	  m_1	    : in  std_logic;			--接收M序列
	  m_loc     : in  std_logic;			--本地M序列
	  start	    : in  std_logic;			--误码统计开始标志
	  err_cnt   : out integer range 0 to 255--误码计数
	 );
end entity;

architecture one of err_sta is
signal m:integer range 0 to 255:=0;
signal cnt:integer range 1 to 255:=1;
begin
    process(clk,rst,start)
    begin
    if rst='0'then
        m<=0;
        cnt<=1;
    elsif rising_edge(clk)then
        if start='0' then
            m<=0;
            cnt<=1;
        else					--同步成功使能有效时
            if cnt=255 then		--循环255个时钟周期内，对比接收和本地M序列，统计误码数
                err_cnt<=m;     --输出误码数
                cnt<=1;
                m<=0;           --计数m清零
            else
                cnt<=cnt+1;
            end if;
            if m_1 /= m_loc then--对比不相同，误码数+1
                m<=m+1;         --误码加一
            end if;
        end if;
    end if;
    end process;
end one;
		
		
