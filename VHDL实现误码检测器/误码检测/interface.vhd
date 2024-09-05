--------------------------------------------
-------------接口模块--------------
--------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity interface is 
port ( clk	    : in  std_logic;
	   m_i      : in  std_logic;			--模拟信道M序列输入
	   cnt_m    : in  integer range 1 to 255;--M序列生成255计数标志
	   m_o	    : out std_logic				--模拟信道M序列输出
	  );
end entity;


architecture one of interface is 

-------------------例化模拟信道-----------------
component sim_channel 
port ( clk	 : in  std_logic;
	   m_i   : in  std_logic;	--模拟信道M序列输入
	   cnt_m : in  integer;     --M序列生成255计数标志
	   m_o	 : out std_logic	--模拟信道M序列输出
	  );
end component;
---------------------------------------------------
begin

sim_cha : sim_channel port map ( 
        clk=>clk,
        m_i=>m_i,               --模拟信道M序列输入
        cnt_m=>cnt_m,           --M序列生成255计数标志输入
        m_o=>m_o                --模拟信道M序列输出
        );

end one;

