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
    start_signal:in std_logic;                      --��ʼ�ź����룬��1��Ϊ��ʼ
    pause_signal:in std_logic;                      --��ͣ������ź����룬��1��Ϊ��ͣ����0��Ϊ��������ʼ��Ϊ��0��
    
    seg_duan:out std_logic_vector(7 downto 0);      --����ܶ��ź����
    seg_wei:out std_logic_vector(7 downto 0);       --�����λ�ź����
    start_count:out std_logic;                      -- ��ʼ��ʱ�ź����
    last_minute:out std_logic;                      --���һ�����ź����
    time_over:out std_logic                         --��ʱʱ�䵽�ź����
);
end time_counter;
architecture time_counter_behave of time_counter is 

signal clk_1hz:         std_logic;
signal count:           std_logic_vector(24 downto 0);
signal second_count_ge: std_logic_vector(3 downto 0);--��ĸ�λ
signal second_count_shi:std_logic_vector(3 downto 0);--���ʮλ
signal minute_count_ge: std_logic_vector(3 downto 0);--�ֵĸ�λ
signal minute_count_shi:std_logic_vector(3 downto 0);--�ֵ�ʮλ
signal clk_scan:        std_logic;
signal scan_count:      std_logic_vector(13 downto 0);
signal seg_select:      std_logic_vector(1 downto 0);
signal time_over_reg:   std_logic;
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
            start_count <= '0';
        elsif(clk'event and clk = '1')then--�����ش���
            if(start_signal = '1')then
                start_count <= '1';
                if(pause_signal = '0')then--������ʱ
                    if(count = "1011111010111100001000000")then--
                        count <= "0000000000000000000000000";
                        clk_1hz <= not clk_1hz;
                    else
                        count <= count + '1';
                    end if;
                else--��ͣ��ʱ
                    count <= count;
                    clk_1hz <= clk_1hz;
                end if;
            else
                clk_1hz <= '0';
                count <= "0000000000000000000000000";
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  ģ������:���ʱģ��
    -- //  ��������:��0��ʼ������59
    -- //****************************************************************************************************
    process(clk_1hz,reset_n)--clk_1hz
    begin 
        if(reset_n = '0')then
            second_count_ge <= "0000";
            second_count_shi <= "0000";
            minute_count_ge <= "0000";
            minute_count_shi <= "0000";
        elsif(clk_1hz'event and clk_1hz = '1')then--�����ش���
            if(time_over_reg = '0')then--��ʱδ���
                if(second_count_ge = "1001")then
                    second_count_ge <= "0000";
                    if(second_count_shi = "0101")then
                        second_count_shi <= "0000";
                        if(minute_count_ge = "1001")then
                            minute_count_ge <= "0000";
                            if(minute_count_shi = "1001")then
                                minute_count_shi <= "1001";
                            else    
                                minute_count_shi <= minute_count_shi + '1';
                            end if;
                        else
                            minute_count_ge <= minute_count_ge + '1';
                        end if;
                    else
                        second_count_shi <= second_count_shi + '1';
                    end if;
                else
                    second_count_ge <= second_count_ge + '1';
                end if;
            end if;
        end if;
    end process;   
    -- //****************************************************************************************************
    -- //  ģ������:��ʱ���һ�������ʱ�����ж�ģ��
    -- //  ��������:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            last_minute <= '0';
            time_over_reg <= '0';
        elsif(clk'event and clk = '1')then--�����ش���
            if(minute_count_ge = "1000" and minute_count_shi = "1001")then--����ּ�ʱ��98
                last_minute <= '1';
            else
                last_minute <= '0';
            end if;
            if(minute_count_ge = "1001" and minute_count_shi = "1001")then--����ּ�ʱ��99
                time_over_reg <= '1';
            else
                time_over_reg <= '0';
            end if;
        end if;
    end process;
    time_over <= time_over_reg;
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
            seg_select <= "00";
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
            when "00"=>--��ʾ��ĸ�λ��
                seg_wei <="11111110";
                case second_count_ge is
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
            when "01"=>--��ʾ���ʮλ��
                seg_wei <="11111101";
                case second_count_shi is
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
            when "10"=>--��ʾ�ֵĸ�λ��
                seg_wei <="11111011";
                case minute_count_ge is
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
            when "11"=>--��ʾ�ֵ�ʮλ��
                seg_wei <="11110111";
                case minute_count_shi is
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




















