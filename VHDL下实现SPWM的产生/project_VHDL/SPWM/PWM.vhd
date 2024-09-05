library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity PWM is
port(
     clk:in std_logic;--外部时钟
     pwm_out2:out std_logic;--PWM2输出
     pwm_out3:out std_logic;--PWM3输出
     --sin_out:out std_logic_vector(9 downto 0);
     --tri_out:out std_logic_vector(9 downto 0);
     locked:out std_logic;
     test_clk:out std_logic
);
end PWM;
architecture pwm_behave of PWM is
signal  count:integer range 250000 downto 0;--分频计数器
signal  test_clk_div:std_logic; --分频时钟
--signal pwm_out3:std_logic;--PWM3输出
---------------------------------------------
component pll
port(
     inclk0:in std_logic;
     pllena:in std_logic;
     areset:in std_logic;
     c0:out std_logic;
     locked:out std_logic
    );
end component;
------------------------------------------------
component dds
port(
    clk:in std_logic;
    -----------------DDS调制波的输出----------------------------------
    dds_data_out:out std_logic_vector(9 downto 0);---调制波输出
    dds_tri_out:out std_logic_vector(9 downto 0)---三角波输出数据
   );
end component;
-------------------------------------------------
component comparator
port(
    clk:in std_logic;--250MHz
    clk_div:in std_logic;--50MHz
    ------------------------------------
    --SPWM输出
    pwm2:out std_logic;
    pwm3:out std_logic;
    ------------------------------------
    data2:in std_logic_vector(9 downto 0);--经过移相的正弦数据输入(有符号类型)
    tri_data:in std_logic_vector(9 downto 0)---三角波数据输入(有符号类型)
    );
end component;
-----------------------------------------------
signal data_temp2:std_logic_vector(9 downto 0);
signal data_temp3:std_logic_vector(9 downto 0);---连接三角波数据
signal clk_temp:std_logic;

begin
  u0:pll port map(
  inclk0=>clk,
  pllena=>'1',
  areset=>'0',
  c0=>clk_temp,
  locked=>locked);
  
  u1:dds port map(
  clk=>clk_temp,
  dds_data_out=>data_temp2,
  dds_tri_out=>data_temp3
  );
  
  u2:comparator port map(
  clk=>clk_temp,
  clk_div=>clk,
  pwm2=>pwm_out2,
  pwm3=>pwm_out3,
  data2=>data_temp2,
  tri_data=>data_temp3
  );
  --sin_out <= data_temp2;
  --tri_out <= data_temp3;
    process(clk)--100HZ
      begin 
        if(clk'event and clk = '1')then--上升沿触发
            if(count = 249)then--999
                count <= 0;
                test_clk_div <= not test_clk_div;
            else
                count <= count + 1;
            end if;
        end if;
    end process;
    test_clk <= test_clk_div;
end pwm_behave;






