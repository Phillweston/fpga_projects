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
    start_signal:in std_logic;                      --开始信号输入，‘1’为开始
    pause_signal:in std_logic;                      --暂停与继续信号输入，’1‘为暂停，‘0’为继续，初始化为‘0’
    
    seg_duan:out std_logic_vector(7 downto 0);      --数码管段信号输出
    seg_wei:out std_logic_vector(7 downto 0);       --数码管位信号输出
    start_count:out std_logic;                      -- 开始计时信号输出
    last_minute:out std_logic;                      --最后一分钟信号输出
    time_over:out std_logic                         --计时时间到信号输出
);
end time_counter;
architecture time_counter_behave of time_counter is 

signal clk_1hz:         std_logic;
signal count:           std_logic_vector(24 downto 0);
signal second_count_ge: std_logic_vector(3 downto 0);--秒的个位
signal second_count_shi:std_logic_vector(3 downto 0);--秒的十位
signal minute_count_ge: std_logic_vector(3 downto 0);--分的个位
signal minute_count_shi:std_logic_vector(3 downto 0);--分的十位
signal clk_scan:        std_logic;
signal scan_count:      std_logic_vector(13 downto 0);
signal seg_select:      std_logic_vector(1 downto 0);
signal time_over_reg:   std_logic;
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
            start_count <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(start_signal = '1')then
                start_count <= '1';
                if(pause_signal = '0')then--继续计时
                    if(count = "1011111010111100001000000")then--
                        count <= "0000000000000000000000000";
                        clk_1hz <= not clk_1hz;
                    else
                        count <= count + '1';
                    end if;
                else--暂停计时
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
    -- //  模块名称:秒计时模块
    -- //  功能描述:从0开始计数到59
    -- //****************************************************************************************************
    process(clk_1hz,reset_n)--clk_1hz
    begin 
        if(reset_n = '0')then
            second_count_ge <= "0000";
            second_count_shi <= "0000";
            minute_count_ge <= "0000";
            minute_count_shi <= "0000";
        elsif(clk_1hz'event and clk_1hz = '1')then--上升沿触发
            if(time_over_reg = '0')then--计时未完成
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
    -- //  模块名称:计时最后一分钟与计时结束判断模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            last_minute <= '0';
            time_over_reg <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(minute_count_ge = "1000" and minute_count_shi = "1001")then--如果分计时到98
                last_minute <= '1';
            else
                last_minute <= '0';
            end if;
            if(minute_count_ge = "1001" and minute_count_shi = "1001")then--如果分计时到99
                time_over_reg <= '1';
            else
                time_over_reg <= '0';
            end if;
        end if;
    end process;
    time_over <= time_over_reg;
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
            seg_select <= "00";
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
            when "00"=>--显示秒的个位数
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
            when "01"=>--显示秒的十位数
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
            when "10"=>--显示分的个位数
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
            when "11"=>--显示分的十位数
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




















