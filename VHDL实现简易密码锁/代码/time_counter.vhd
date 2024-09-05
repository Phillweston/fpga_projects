-- ******************************************************************************
-- ��ʱģ��
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity time_counter is
port(
    clk:in std_logic;                               --50Mʱ������
    reset_n:in std_logic;                           --��λ�ź�����
    password1_in:in std_logic_vector(3 downto 0);     --
    password2_in:in std_logic_vector(3 downto 0);     --
    password3_in:in std_logic_vector(3 downto 0);     --
    password4_in:in std_logic_vector(3 downto 0);     --
    ok_signal_counter_in:in std_logic_vector(2 downto 0);
    
    seg_duan:out std_logic_vector(7 downto 0);      --����ܶ��ź����
    seg_wei:out std_logic_vector(7 downto 0)        --�����λ�ź����
);
end time_counter;
architecture time_counter_behave of time_counter is 
signal clk_1hz:         std_logic;
signal count:           std_logic_vector(24 downto 0);
signal clk_scan:        std_logic;
signal seg_select:      std_logic_vector(2 downto 0);
signal scan_count:      std_logic_vector(13 downto 0);
begin
    -- //****************************************************************************************************
    -- //  ģ������:50Mʱ�ӷ�Ƶ��1HZģ��
    -- //  ��������:
    -- //****************************************************************************************************
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            clk_1hz <= '0';
            count <= "0000000000000000000000000";
        elsif(clk'event and clk = '1')then--�����ش���
            if(count = "1011111010111100001000000")then--
                count <= "0000000000000000000000000";
                clk_1hz <= not clk_1hz;
            else
                count <= count + '1';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  ģ������:�����ɨ��ʱ�Ӳ���ģ��
    -- //  ��������:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            scan_count <= "00000000000000";
            clk_scan <= '0';
        elsif(clk'event and clk = '1')then--�����ش���
            if(scan_count = "10011100010000")then
                scan_count <= "00000000000000";
                clk_scan <= not clk_scan;
            else
                scan_count <= scan_count + '1';
            end if;
        end if;
    end process;
    process(clk_scan,reset_n)
    begin
        if(reset_n = '0')then
            seg_select <= "000";
        elsif(clk_scan'event and clk_scan = '1')then--�����ش���
            seg_select <= seg_select + '1';
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  ģ������:�������ʾģ��
    -- //  ��������:
    -- //****************************************************************************************************
    process(clk)
    begin 
        if(clk'event and clk = '1')then--�����ش���
            case seg_select is
            when "000"=>--��ʾ��1������
                seg_wei <= "11111110";
                case password4_in is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when "001"=>--��ʾ��2������
                seg_wei <="11111101";
                case password3_in is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when "010"=>--��ʾ��3������
                seg_wei <="11111011";
                case password2_in is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when "011"=>--��ʾ��4������
                seg_wei <="11110111";
                case password1_in is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when "100"=>--
                seg_wei <="11011111";--��ʾ��ǰ��������Ĵ���
                case ('0' & ok_signal_counter_in)  is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when others=>null;
            end case;
        end if;
    end process;
end time_counter_behave;




















