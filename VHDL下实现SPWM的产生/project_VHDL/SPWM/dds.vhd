library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity dds is
port(
    clk:in std_logic;
    -----------------DDS调制波的输出----------------------------------
    dds_data_out:out std_logic_vector(9 downto 0);---调制波输出
    dds_tri_out:out std_logic_vector(9 downto 0)---三角波输出数据
);
end dds;
architecture dds_behave of dds is 
  
  component adder_32bus
  port(
       a:in std_logic_vector(31 downto 0);
       b:in std_logic_vector(31 downto 0);
       s:out std_logic_vector(31 downto 0));
  end component;
  
  component register_32bus
     port(
     clk:in std_logic;
     data_32in:in std_logic_vector(31 downto 0);
     data_32out:out std_logic_vector(31 downto 0));
  end component;
    
 component adder_10bus
    port(
    a:in std_logic_vector(9 downto 0);
    b:in std_logic_vector(9 downto 0);
    s:out std_logic_vector(9 downto 0));
 end component;
   
   component register_10bus
    port(
     clk:in std_logic;
     data_10in:in std_logic_vector(9 downto 0);
     data_10out:out std_logic_vector(9 downto 0));
    end component;
  ---------------正弦波ROM表-------------------  
   component data_rom
    port(
    address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
	clock		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
    end component;
    -----------三角波ROM表---------------------
    component tri_rom
    port(
        address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
    end component;
--------------------------------------------------------------------------------------
signal f32_bus,d32_bus,data_in:std_logic_vector(31 downto 0);--DC TO AC
signal dc_f32_bus,dc_d32_bus,dc_data_in:std_logic_vector(31 downto 0);---------DC TO DC
signal p10_bus,lin10_bus,sin_10bus:std_logic_vector(9 downto 0);
signal trif32_bus,trid32_bus,tridata_in:std_logic_vector(31 downto 0);

signal set_waveform_temp:std_logic_vector(1 downto 0):="00";
signal sin_out:std_logic_vector(9 downto 0 );--可调相移正弦波
signal tri_out:std_logic_vector(9 downto 0);--三角波
signal saw_out:std_logic_vector(9 downto 0);--锯齿波
signal squ_out:std_logic_vector(9 downto 0);--方波

signal set_f_temp:std_logic_vector(15 downto 0):="1111111000110110";--(100Hz)
--------------------------------------------------1000011000110110(2K)
begin                
----------------------------------DC TO AC--------------------                      
--*********************************************************--
--000001010011111000100(2.5K)
--000001000011000110110(2K)
--000000100001100011011(1K)
--000000010000110001001(500Hz)
--000000000011010110101(100Hz)
--*********************************************************--
     f32_bus(15 downto 0)<=set_f_temp;--频率控制字的截断
     f32_bus(31 downto 16)<=(others=>'0');---频率控制字的截断

     p10_bus(9 downto 0)<=(others=>'0');--相位控制字的截断
-----------------------------调制波(不可移相)---------------------------------------    
  u1:adder_32bus port map(a=>f32_bus,b=>d32_bus,s=>data_in);--32位加法器
  u2:register_32bus port map(data_32out=>d32_bus,data_32in=>data_in,clk=>clk);--32位寄存器
---------------------------调制波(可移相)----------------------------------------------
  u3:adder_10bus port map(a=>p10_bus,b=>d32_bus(31 downto 22),s=>lin10_bus);--十位加法器（相移累加器）
  u4:register_10bus port map(clk=>clk,data_10in=>lin10_bus,data_10out=>sin_10bus);--十位寄存器
-------------------------------输出波---------------------------------------------------
  u5:data_rom port map(clock=>clk,address=>sin_10bus,q=>sin_out);--(可调相移正弦波)sin_out
  -------------------------(载波)三角波----------------------------------------
  trif32_bus(20 downto 0)<="100111010100100101010";--频率控制字的截断--(100111010100100101010)75KHz
  trif32_bus(31 downto 21)<=(others=>'0');---频率控制字的截断        

  u9:adder_32bus port map(a=>trif32_bus,b=>trid32_bus,s=>tridata_in);--累加器
  u10:register_32bus port map(data_32out=>trid32_bus,data_32in=>tridata_in,clk=>clk);--寄存器
  u11:tri_rom port map(clock=>clk,address=>trid32_bus(31 downto 22),q=>dds_tri_out);--ROM表
  ------------------------------------------------------------------------------------------------------
  ----------------------------------波形------------------------------------------------------
    dds_data_out <= sin_out;
    
  end dds_behave;

  
  
  
  
  
  
  
  
  