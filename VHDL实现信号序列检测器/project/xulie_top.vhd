library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity xulie_top is 
port (
    clk:                    in std_logic;--时钟
    reset:                  in std_logic;--复位
    CLR:                    in std_logic;--清零
    xulie_data:             in STD_LOGIC_VECTOR(7 DOWNTO 0);--输出的序列数据
    counter_out1:               out STD_LOGIC_VECTOR(3 DOWNTO 0);--正确的序列数结果的个位
    counter_out2:               out STD_LOGIC_VECTOR(3 DOWNTO 0);--正确的序列数结果的十位
    counter_out3:               out STD_LOGIC_VECTOR(3 DOWNTO 0);--正确的序列数结果的百位
    AB :                    out STD_LOGIC_VECTOR(3 downto 0); --正确结果输出，仿真用的
    seg_duan:               OUT std_logic_vector(7 DOWNTO 0);  --数码管段信号
    seg_wei:                OUT std_logic_vector(4 DOWNTO 0)    --数码管位信号
     );
end xulie_top;
architecture behave of xulie_top is
signal counter1: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal counter2: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal counter3: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal    clk_out_line:std_logic;
component xulie is
port(
    CLK: in STD_LOGIC;
    Din: in STD_LOGIC;
    CLR : in STD_LOGIC;
    xulie_data:             in STD_LOGIC_VECTOR(7 DOWNTO 0);
    counter1:out STD_LOGIC_VECTOR(3 DOWNTO 0);
    counter2:out STD_LOGIC_VECTOR(3 DOWNTO 0);
    counter3:out STD_LOGIC_VECTOR(3 DOWNTO 0);
    AB : out STD_LOGIC_VECTOR(3 downto 0)
    );
end component;
component m_seq is
port(
        clk	    : in  std_logic;
	    rst	    : in  std_logic;
	    m_se    : out std_logic			--M序列生成输出
    );
end component;
component seg is
port(
        clk:            IN STD_LOGIC;       --
        reset_n:        IN STD_LOGIC;       --
        counter1:        in STD_LOGIC_VECTOR(3 DOWNTO 0);
        counter2:        in STD_LOGIC_VECTOR(3 DOWNTO 0);
        counter3:        in STD_LOGIC_VECTOR(3 DOWNTO 0);
        clk_out:            OUT std_logic;
        seg_duan     :  OUT std_logic_vector(7 DOWNTO 0);   --
        seg_wei     :   OUT std_logic_vector(4 DOWNTO 0)
    );
end component;
signal m_se_line:std_logic;
begin 
    counter_out1 <= counter1;
    counter_out2 <= counter2;
    counter_out3 <= counter3;
    u1:xulie port map(     
                        CLK=>clk_out_line,
                        Din=>m_se_line,
                        CLR=>CLR,
                        xulie_data=>xulie_data,
                        counter1=>counter1,
                        counter2=>counter2,
                        counter3=>counter3,
                        AB =>AB
                 );
    u2:m_seq port map(      
                        clk=>clk_out_line,
                        rst=>reset,
                        m_se=>m_se_line		--M序列生成输出
                 );
    u3:seg port map(      
                        clk=>clk,    --
                        reset_n=>reset,    --
                        counter1=>counter1,    --
                        counter2=>counter2,    --
                        counter3=>counter3,    --
                        clk_out=>clk_out_line,
                        seg_duan =>seg_duan,    --
                        seg_wei =>seg_wei    --
                 );
end behave;




