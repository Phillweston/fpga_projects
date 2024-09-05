--------------------------------------------
-------------����ͳ��ģ��--------------
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity err_sta is
port( clk	    : in  std_logic;
	  rst	    : in  std_logic;
	  m_1	    : in  std_logic;			--����M����
	  m_loc     : in  std_logic;			--����M����
	  start	    : in  std_logic;			--����ͳ�ƿ�ʼ��־
	  err_cnt   : out integer range 0 to 255--�������
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
        else					--ͬ���ɹ�ʹ����Чʱ
            if cnt=255 then		--ѭ��255��ʱ�������ڣ��ԱȽ��պͱ���M���У�ͳ��������
                err_cnt<=m;     --���������
                cnt<=1;
                m<=0;           --����m����
            else
                cnt<=cnt+1;
            end if;
            if m_1 /= m_loc then--�ԱȲ���ͬ��������+1
                m<=m+1;         --�����һ
            end if;
        end if;
    end if;
    end process;
end one;
		
		
