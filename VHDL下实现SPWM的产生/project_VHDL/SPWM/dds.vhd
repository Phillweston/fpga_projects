library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity dds is
port(
    clk:in std_logic;
    -----------------DDS���Ʋ������----------------------------------
    dds_data_out:out std_logic_vector(9 downto 0);---���Ʋ����
    dds_tri_out:out std_logic_vector(9 downto 0)---���ǲ��������
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
  ---------------���Ҳ�ROM��-------------------  
   component data_rom
    port(
    address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
	clock		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
    end component;
    -----------���ǲ�ROM��---------------------
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
signal sin_out:std_logic_vector(9 downto 0 );--�ɵ��������Ҳ�
signal tri_out:std_logic_vector(9 downto 0);--���ǲ�
signal saw_out:std_logic_vector(9 downto 0);--��ݲ�
signal squ_out:std_logic_vector(9 downto 0);--����

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
     f32_bus(15 downto 0)<=set_f_temp;--Ƶ�ʿ����ֵĽض�
     f32_bus(31 downto 16)<=(others=>'0');---Ƶ�ʿ����ֵĽض�

     p10_bus(9 downto 0)<=(others=>'0');--��λ�����ֵĽض�
-----------------------------���Ʋ�(��������)---------------------------------------    
  u1:adder_32bus port map(a=>f32_bus,b=>d32_bus,s=>data_in);--32λ�ӷ���
  u2:register_32bus port map(data_32out=>d32_bus,data_32in=>data_in,clk=>clk);--32λ�Ĵ���
---------------------------���Ʋ�(������)----------------------------------------------
  u3:adder_10bus port map(a=>p10_bus,b=>d32_bus(31 downto 22),s=>lin10_bus);--ʮλ�ӷ����������ۼ�����
  u4:register_10bus port map(clk=>clk,data_10in=>lin10_bus,data_10out=>sin_10bus);--ʮλ�Ĵ���
-------------------------------�����---------------------------------------------------
  u5:data_rom port map(clock=>clk,address=>sin_10bus,q=>sin_out);--(�ɵ��������Ҳ�)sin_out
  -------------------------(�ز�)���ǲ�----------------------------------------
  trif32_bus(20 downto 0)<="100111010100100101010";--Ƶ�ʿ����ֵĽض�--(100111010100100101010)75KHz
  trif32_bus(31 downto 21)<=(others=>'0');---Ƶ�ʿ����ֵĽض�        

  u9:adder_32bus port map(a=>trif32_bus,b=>trid32_bus,s=>tridata_in);--�ۼ���
  u10:register_32bus port map(data_32out=>trid32_bus,data_32in=>tridata_in,clk=>clk);--�Ĵ���
  u11:tri_rom port map(clock=>clk,address=>trid32_bus(31 downto 22),q=>dds_tri_out);--ROM��
  ------------------------------------------------------------------------------------------------------
  ----------------------------------����------------------------------------------------------
    dds_data_out <= sin_out;
    
  end dds_behave;

  
  
  
  
  
  
  
  
  