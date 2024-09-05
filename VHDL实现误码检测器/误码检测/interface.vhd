--------------------------------------------
-------------�ӿ�ģ��--------------
--------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity interface is 
port ( clk	    : in  std_logic;
	   m_i      : in  std_logic;			--ģ���ŵ�M��������
	   cnt_m    : in  integer range 1 to 255;--M��������255������־
	   m_o	    : out std_logic				--ģ���ŵ�M�������
	  );
end entity;


architecture one of interface is 

-------------------����ģ���ŵ�-----------------
component sim_channel 
port ( clk	 : in  std_logic;
	   m_i   : in  std_logic;	--ģ���ŵ�M��������
	   cnt_m : in  integer;     --M��������255������־
	   m_o	 : out std_logic	--ģ���ŵ�M�������
	  );
end component;
---------------------------------------------------
begin

sim_cha : sim_channel port map ( 
        clk=>clk,
        m_i=>m_i,               --ģ���ŵ�M��������
        cnt_m=>cnt_m,           --M��������255������־����
        m_o=>m_o                --ģ���ŵ�M�������
        );

end one;

