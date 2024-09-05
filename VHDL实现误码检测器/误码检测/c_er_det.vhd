-------------------------------------------------------
-----------------基于FPGA的简单误码测试仪--------------
-------------------------------------------------------
---------------------包含模块---------------

--锁相环--
--M序列生成模块--
--数据接口模块--
--模拟信道模块(没有实信道，所以收发模块预留，中间加了一个误码插入模块)--
--本地M序列生成模块--
--同步模块--
--误码统计模块--
--显示模块--
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity c_er_det is
port( clk_in    : in  std_logic;
	  reset_n   : in  std_logic;
	  m_out	    : out std_logic;					--输出M序列
	  syn_clk   : out std_logic;				    --输出同步时钟
	  scan	    : out std_logic_vector(2 downto 0); --数码管使能
	  seg	    : out std_logic_vector(7 downto 0); --数码管数据
	  m_cnt		: out integer	range 1 to 255;		--255计数标志
	  err_cnt_out   : out integer	range 1 to 255 --255计数标志
	 );
end entity;

architecture one of c_er_det is

----------------------锁相环----------------------------------
component pull1
PORT
	(
		inclk0	: IN  STD_LOGIC := '0';     --系统输入时钟
		c0		: OUT STD_LOGIC ;			--系统时钟
		c1		: OUT STD_LOGIC ;			--同步时钟输出
		c2		: OUT STD_LOGIC 			--signaltap 采样时钟
	 );
end component;

--------------------M序列生成模块------------------------------------
component m_seq
port (  clk	    : in  std_logic;
	    rst	    : in  std_logic;
	    m_se    : out std_logic;			--M序列生成输出
	    cnt_m   : out integer range 1 to 255--255计数标志
	);
end component;

--------------------数据接口模块----------------------------------
component interface 
port ( clk	    : in  std_logic;
	   m_i      : in  std_logic;			--模拟信道M序列输入
	   cnt_m    : in  integer range 1 to 255;
	   m_o	    : out std_logic				--模拟信道M序列输出
	  );
end component;

--------------------本地M序列生成模块-----------------------------------
component local_m_seq 
port ( clk	 	:  in  std_logic;
	   rst	    :  in  std_logic;
	   en	    :  in  std_logic;			--本地M序列触发使能
	   m_loc 	:  out std_logic			--本地M序列
	  );
end component;

--------------------同步模块------------------------------------
component syn 
port ( clk		: in  std_logic;
	   rst  	: in  std_logic;
	   m_1  	: in  std_logic;			--接收M序列
	   m_loc	: in  std_logic;			--本地M序列
	   en		: out std_logic;			--本地M序列触发使能
	   start	: out std_logic				--误码统计开始标志
	  );
end component;

-------------------误码统计模块------------------------------------
component err_sta 
port( clk	    : in  std_logic;
	  rst	    : in  std_logic;
	  m_1	    : in  std_logic;			--接收M序列
	  m_loc     : in  std_logic;			--本地M序列
	  start	    : in  std_logic;			--误码统计开始标志
	  err_cnt   : out integer range 0 to 255--误码计数
	 );
end component;

-------------------显示模块-------------------------------------
component dis_seg
port ( clk	    : in  std_logic;
	   rst		: in  std_logic;
	   err_cnt  : in  integer range 0 to 255 ;
	   scan	    : out std_logic_vector(2 downto 0);--数码管使能
	   seg	    : out std_logic_vector(7 downto 0) --数码管数据
	);
end component;
--------------------------------------------------------
signal clk		: std_logic;					--系统时钟
signal clk300	: std_logic;					--signaltap 采样时钟
signal m_se		: std_logic;
signal cnt_m	: integer range 1 to 255 :=1;
signal m_1		: std_logic;					--接收M序列
signal m_loc	: std_logic;					--本地M序列
signal en		: std_logic;
signal start    : std_logic;					--误码统计开始标志
signal err_cnt  : integer range 0 to 255 :=0;	--误码计数

--------------------------------------------------------
begin

pull            : pull1			port map (
        inclk0=>clk_in,         --系统时钟输入
        c0=>clk,            --输出作为系统时钟
        c1=>syn_clk,        --同步时钟输出
        c2=>clk300
        );
m_sequencer     : m_seq			port map (
        clk=>clk,
        rst=>reset_n,
        m_se=>m_se,         --M序列生成输出
        cnt_m=>cnt_m        --M序列生成255计数标志
        );     
cha_interface   : interface 	    port map (
        clk=>clk,
        m_i=>m_se,          --M序列生成输出
        cnt_m=>cnt_m,       --M序列生成255计数标志
        m_o=>m_1            --模拟信道M序列输出
        );
local_m      	: local_m_seq	port map (
        clk=>clk,
        rst=>reset_n,
        en=>en,             --本地M序列触发使能
        m_loc=>m_loc        --本地M序列
        );
syn_m			: syn			port map (
        clk=>clk,
        rst=>reset_n,
        m_1=>m_1,           --接收M序列
        m_loc=>m_loc,       --本地M序列
        en=>en,             --本地M序列触发使能
        start=>start        --误码统计开始标志			
        );
error_statistic	: err_sta		port map (
        clk=>clk,
        rst=>reset_n,
        m_1=>m_1,           --接收M序列
        m_loc=>m_loc,       --本地M序列
        start=>start,       --误码统计开始标志
        err_cnt=>err_cnt    --误码计数   
        );
disp_seg		: dis_seg		port map (
        clk=>clk,
        rst=>reset_n,
        err_cnt=>err_cnt,   --误码计数
        scan=>scan,         --数码管使能
        seg=>seg            --数码管数据    
        );
------------------------------------------------------------
    m_out <= m_se  ;--输出M序列
    m_cnt <= cnt_m ;--255计数标志输出
    err_cnt_out <= err_cnt;--误码数计数结果输出
----------------------------------------------------------
end one;