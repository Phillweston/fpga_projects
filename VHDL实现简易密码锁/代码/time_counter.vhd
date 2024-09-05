-- ******************************************************************************
-- 计时模块
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity time_counter is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    password1_in:in std_logic_vector(3 downto 0);     --
    password2_in:in std_logic_vector(3 downto 0);     --
    password3_in:in std_logic_vector(3 downto 0);     --
    password4_in:in std_logic_vector(3 downto 0);     --
    ok_signal_counter_in:in std_logic_vector(2 downto 0);
    
    seg_duan:out std_logic_vector(7 downto 0);      --数码管段信号输出
    seg_wei:out std_logic_vector(7 downto 0)        --数码管位信号输出
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
    -- //  模块名称:50M时钟分频至1HZ模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            clk_1hz <= '0';
            count <= "0000000000000000000000000";
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = "1011111010111100001000000")then--
                count <= "0000000000000000000000000";
                clk_1hz <= not clk_1hz;
            else
                count <= count + '1';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:数码管扫描时钟产生模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            scan_count <= "00000000000000";
            clk_scan <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
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
        elsif(clk_scan'event and clk_scan = '1')then--上升沿触发
            seg_select <= seg_select + '1';
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:数码管显示模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk)
    begin 
        if(clk'event and clk = '1')then--上升沿触发
            case seg_select is
            when "000"=>--显示第1个密码
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
            when "001"=>--显示第2个密码
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
            when "010"=>--显示第3个密码
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
            when "011"=>--显示第4个密码
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
                seg_wei <="11011111";--显示当前输入密码的次序
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




















