-- ******************************************************************************
-- 显示模块
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity seg is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    
    
    
    mileage_counter_ge_in:in std_logic_vector(3 downto 0);
    mileage_counter_shi_in:in std_logic_vector(3 downto 0);
    minute_in:in integer range 60 downto 0;         --输出等待分钟数据
    cost_in:in integer range 99 downto 0;          --输出费用
    seg_duan:out std_logic_vector(7 downto 0);      --数码管段信号输出
    seg_wei:out std_logic_vector(7 downto 0)        --数码管位信号输出
);
end seg;
architecture seg_behave of seg is 
signal mileage_in_temp: integer range 99 downto 0;
signal cost_in_temp:    integer range 99 downto 0;
signal minute_ge:       std_logic_vector(3 downto 0);
signal minute_shi:      std_logic_vector(3 downto 0);
 
signal mileage_ge:      std_logic_vector(3 downto 0);
signal mileage_shi:     std_logic_vector(3 downto 0);
signal mileage_bai:     std_logic_vector(3 downto 0);
signal cost_ge:         std_logic_vector(3 downto 0);
signal cost_shi:        std_logic_vector(3 downto 0);
signal cost_bai:        std_logic_vector(3 downto 0);

signal clk_1hz:         std_logic;
signal count:           std_logic_vector(24 downto 0);
signal clk_scan:        std_logic;
signal seg_select:      std_logic_vector(2 downto 0);
signal scan_count:      std_logic_vector(13 downto 0);
signal cost_in_f:       std_logic_vector(3 downto 0); 
begin
    -- //****************************************************************************************************
    -- //  模块名称:分钟显示十个位拆开
    -- //  功能描述:百位、十位、个位拆开
    -- //****************************************************************************************************
    process(reset_n,minute_in) 
    variable f:std_logic_vector(5 downto 0);  
    variable e,g:std_logic_vector(3 downto 0);  
    begin
        if(reset_n = '0')then
            minute_shi <= "0000";
            minute_ge <= "0000";
        else
            f := CONV_STD_LOGIC_VECTOR(minute_in,6);--将整形转换为标准矢量型
            g := "1010";
            e := "0000"; 
            for i in 63 downto 0 loop--采用减法的形式来进行除法运算
                if (f >= g) then 
                    f := f - g;
                    e := e + '1';
                else
                    exit; 
                end if; 
            end loop; 
            minute_shi <= e;
            minute_ge <= f(3 downto 0);
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:费用显示十个位拆开
    -- //  功能描述:
    -- //****************************************************************************************************   
    process(reset_n,cost_in)
    variable cost_in_f:std_logic_vector(6 downto 0);  
    variable cost_in_e,cost_in_g:std_logic_vector(3 downto 0);  
    begin
        if(reset_n = '0')then
            cost_bai <= "0000";
            cost_shi <= "0000";
            cost_in_temp <= 0;
        else
            cost_in_temp <= cost_in; 
            cost_in_f := CONV_STD_LOGIC_VECTOR(cost_in_temp,7);--将整形转换为标准矢量型
            cost_in_g := "1010";
            cost_in_e := "0000"; 
            for i in 99 downto 0 loop--采用减法的形式来进行除法运算
                if (cost_in_f >= cost_in_g) then 
                    cost_in_f := cost_in_f - cost_in_g;
                    cost_in_e := cost_in_e + '1';
                else
                    exit; 
                end if; 
            end loop; 
            cost_bai <= cost_in_e;
            cost_shi <= cost_in_f(3 downto 0);
        end if;
    end process;
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
            when "000"=>--
                seg_wei <= "11111110";
                case minute_ge is
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
            when "001"=>--
                seg_wei <="11111101";
                case minute_shi is
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
            when "010"=>--
                seg_wei <="11111111";
                -- case mileage_ge is
                    -- when "0000"=>seg_duan <= "11000000";--0
                    -- when "0001"=>seg_duan <= "11111001";--1
                    -- when "0010"=>seg_duan <= "10100100";--2
                    -- when "0011"=>seg_duan <= "10110000";--3
                    -- when "0100"=>seg_duan <= "10011001";--4
                    -- when "0101"=>seg_duan <= "10010010";--5
                    -- when "0110"=>seg_duan <= "10000010";--6
                    -- when "0111"=>seg_duan <= "11111000";--7
                    -- when "1000"=>seg_duan <= "10000000";--8
                    -- when "1001"=>seg_duan <= "10010000";--9
                    -- when others=>null;
                -- end case;
            when "011"=>--
                seg_wei <="11110111";
                case mileage_counter_ge_in is
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
                seg_wei <="11101111";
                case mileage_counter_shi_in is
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
            when "101"=>--
                seg_wei <="11111111";
                case cost_ge is
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
            when "110"=>--
                seg_wei <="10111111";
                case cost_shi is
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
            when "111"=>--
                seg_wei <="01111111";
                case cost_bai is
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
end seg_behave;




















