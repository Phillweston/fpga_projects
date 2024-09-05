-------------------------------------------------------
-----------------����FPGA�ļ����������--------------
-------------------------------------------------------
---------------------����ģ��---------------

--���໷--
--M��������ģ��--
--���ݽӿ�ģ��--
--ģ���ŵ�ģ��(û��ʵ�ŵ��������շ�ģ��Ԥ�����м����һ���������ģ��)--
--����M��������ģ��--
--ͬ��ģ��--
--����ͳ��ģ��--
--��ʾģ��--
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity c_er_det is
port( clk_in    : in  std_logic;
	  reset_n   : in  std_logic;
	  m_out	    : out std_logic;					--���M����
	  syn_clk   : out std_logic;				    --���ͬ��ʱ��
	  scan	    : out std_logic_vector(2 downto 0); --�����ʹ��
	  seg	    : out std_logic_vector(7 downto 0); --���������
	  m_cnt		: out integer	range 1 to 255;		--255������־
	  err_cnt_out   : out integer	range 1 to 255 --255������־
	 );
end entity;

architecture one of c_er_det is

----------------------���໷----------------------------------
component pull1
PORT
	(
		inclk0	: IN  STD_LOGIC := '0';     --ϵͳ����ʱ��
		c0		: OUT STD_LOGIC ;			--ϵͳʱ��
		c1		: OUT STD_LOGIC ;			--ͬ��ʱ�����
		c2		: OUT STD_LOGIC 			--signaltap ����ʱ��
	 );
end component;

--------------------M��������ģ��------------------------------------
component m_seq
port (  clk	    : in  std_logic;
	    rst	    : in  std_logic;
	    m_se    : out std_logic;			--M�����������
	    cnt_m   : out integer range 1 to 255--255������־
	);
end component;

--------------------���ݽӿ�ģ��----------------------------------
component interface 
port ( clk	    : in  std_logic;
	   m_i      : in  std_logic;			--ģ���ŵ�M��������
	   cnt_m    : in  integer range 1 to 255;
	   m_o	    : out std_logic				--ģ���ŵ�M�������
	  );
end component;

--------------------����M��������ģ��-----------------------------------
component local_m_seq 
port ( clk	 	:  in  std_logic;
	   rst	    :  in  std_logic;
	   en	    :  in  std_logic;			--����M���д���ʹ��
	   m_loc 	:  out std_logic			--����M����
	  );
end component;

--------------------ͬ��ģ��------------------------------------
component syn 
port ( clk		: in  std_logic;
	   rst  	: in  std_logic;
	   m_1  	: in  std_logic;			--����M����
	   m_loc	: in  std_logic;			--����M����
	   en		: out std_logic;			--����M���д���ʹ��
	   start	: out std_logic				--����ͳ�ƿ�ʼ��־
	  );
end component;

-------------------����ͳ��ģ��------------------------------------
component err_sta 
port( clk	    : in  std_logic;
	  rst	    : in  std_logic;
	  m_1	    : in  std_logic;			--����M����
	  m_loc     : in  std_logic;			--����M����
	  start	    : in  std_logic;			--����ͳ�ƿ�ʼ��־
	  err_cnt   : out integer range 0 to 255--�������
	 );
end component;

-------------------��ʾģ��-------------------------------------
component dis_seg
port ( clk	    : in  std_logic;
	   rst		: in  std_logic;
	   err_cnt  : in  integer range 0 to 255 ;
	   scan	    : out std_logic_vector(2 downto 0);--�����ʹ��
	   seg	    : out std_logic_vector(7 downto 0) --���������
	);
end component;
--------------------------------------------------------
signal clk		: std_logic;					--ϵͳʱ��
signal clk300	: std_logic;					--signaltap ����ʱ��
signal m_se		: std_logic;
signal cnt_m	: integer range 1 to 255 :=1;
signal m_1		: std_logic;					--����M����
signal m_loc	: std_logic;					--����M����
signal en		: std_logic;
signal start    : std_logic;					--����ͳ�ƿ�ʼ��־
signal err_cnt  : integer range 0 to 255 :=0;	--�������

--------------------------------------------------------
begin

pull            : pull1			port map (
        inclk0=>clk_in,         --ϵͳʱ������
        c0=>clk,            --�����Ϊϵͳʱ��
        c1=>syn_clk,        --ͬ��ʱ�����
        c2=>clk300
        );
m_sequencer     : m_seq			port map (
        clk=>clk,
        rst=>reset_n,
        m_se=>m_se,         --M�����������
        cnt_m=>cnt_m        --M��������255������־
        );     
cha_interface   : interface 	    port map (
        clk=>clk,
        m_i=>m_se,          --M�����������
        cnt_m=>cnt_m,       --M��������255������־
        m_o=>m_1            --ģ���ŵ�M�������
        );
local_m      	: local_m_seq	port map (
        clk=>clk,
        rst=>reset_n,
        en=>en,             --����M���д���ʹ��
        m_loc=>m_loc        --����M����
        );
syn_m			: syn			port map (
        clk=>clk,
        rst=>reset_n,
        m_1=>m_1,           --����M����
        m_loc=>m_loc,       --����M����
        en=>en,             --����M���д���ʹ��
        start=>start        --����ͳ�ƿ�ʼ��־			
        );
error_statistic	: err_sta		port map (
        clk=>clk,
        rst=>reset_n,
        m_1=>m_1,           --����M����
        m_loc=>m_loc,       --����M����
        start=>start,       --����ͳ�ƿ�ʼ��־
        err_cnt=>err_cnt    --�������   
        );
disp_seg		: dis_seg		port map (
        clk=>clk,
        rst=>reset_n,
        err_cnt=>err_cnt,   --�������
        scan=>scan,         --�����ʹ��
        seg=>seg            --���������    
        );
------------------------------------------------------------
    m_out <= m_se  ;--���M����
    m_cnt <= cnt_m ;--255������־���
    err_cnt_out <= err_cnt;--����������������
----------------------------------------------------------
end one;