-- ******************************************************************************
-- 控制模块
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity control is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    start_signal:in std_logic;                      --开始按键
    mileage_signal:in std_logic;                    --里程按键，每按一次里程增加1公里
    wait_signal:in std_logic;                       --等待按键
    
    mileage_counter_ge_out:out std_logic_vector(3 downto 0);
    mileage_counter_shi_out:out std_logic_vector(3 downto 0);
    
    
    minute_out:out integer range 60 downto 0;       --输出等待分钟数据
    mileage_out:out integer range 99 downto 0;      --输出行驶公里数
    cost_out:out integer range 99 downto 0         --输出费用
);
end control;
architecture control_behave of control is 
type state is(
            prepare_state,--准备状态
            start_state,--开始状态
            wait_state,--等待状态
            arrive_state--到达结束状态
            );
signal  current_state:state;--一开始处于准备状态
signal  start_flag:std_logic;--产生开始信号标志
signal  wait_flag:std_logic_vector(1 downto 0);--产生等待信号标志
signal  mileage_counter:integer range 99 downto 0;--记录行驶公里数
signal  mileage_counter_ge:std_logic_vector(3 downto 0);
signal  mileage_counter_shi:std_logic_vector(3 downto 0);
signal  cost_counter:integer range 99 downto 0;
signal  cost_counter_temp1:integer range 99 downto 0;
signal  cost_counter_temp2:integer range 99 downto 0;
signal  temp1:integer range 99 downto 0;
signal  temp2:integer range 99 downto 0;
signal  temp3:integer range 99 downto 0;
signal  minute_counter:integer range 60 downto 0;
signal  count:integer range 250000 downto 0;--分频计数器
signal  second_count:integer range 6000 downto 0;--秒计数器
signal  clk_div:std_logic; --分频时钟
begin
    --输出费用、里程、分钟的数据
    minute_out <= minute_counter;
    mileage_out <= mileage_counter;
    mileage_counter_ge_out <= mileage_counter_ge;
    mileage_counter_shi_out <= mileage_counter_shi;
    cost_out <= cost_counter;
    
    -- //****************************************************************************************************
    -- //  模块名称:开始按键检测模块，当按下开始按键后，相当于汽车启动
    -- //  功能描述:start_flag为‘1’时，表示开始
    -- //****************************************************************************************************
    process(start_signal,reset_n)
    begin
        if(reset_n = '0')then
            start_flag <= '0';
        elsif(start_signal'event and start_signal = '0')then--下降沿触发
            start_flag <= '1';
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:里程按键输入行驶公里数，每按一次，公里数增加1公里
    -- //  功能描述:
    -- //****************************************************************************************************
    process(mileage_signal,reset_n)
    begin
        if(reset_n = '0')then
            mileage_counter <= 0;
        elsif(mileage_signal'event and mileage_signal = '0')then--下降沿触发
            if(start_flag = '1')then
                if(mileage_counter = 99)then
                    mileage_counter <= 0;
                else
                    mileage_counter <= mileage_counter + 1;
                end if;
            end if;
        end if;
    end process;
    process(mileage_signal,reset_n)
    begin
        if(reset_n = '0')then
            mileage_counter_ge <= "0000";
            mileage_counter_shi <= "0000";
        elsif(mileage_signal'event and mileage_signal = '0')then
            if(start_flag = '1')then
                if(mileage_signal = '0')then--按键被按下
                    if(mileage_counter_ge = "1001")then
                        if(mileage_counter_shi = "1001")then
                            mileage_counter_shi <= "0000";
                        else
                            mileage_counter_ge <= "0000";
                            mileage_counter_shi <= mileage_counter_shi + '1';
                        end if;
                    else
                        mileage_counter_ge <= mileage_counter_ge + '1';
                    end if;
                end if;
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:等待按键，第一次按下等待按键，停车等待，进如等待计时状态，再按一次，退出等待计时状态
    -- //  功能描述:wait_flag为‘1’时，表示开始
    -- //****************************************************************************************************
    process(wait_signal,reset_n)
    begin
        if(reset_n = '0')then
            wait_flag <= "00";
        elsif(wait_signal'event and wait_signal = '0')then--下降沿触发
            if(wait_flag = "00")then
                wait_flag <= "01";--“01”等待标志
            else
                wait_flag <= not wait_flag;--进行取反
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:分频模块
    -- //  功能描述:将50M时钟分至100Hz
    -- //****************************************************************************************************
    process(clk,reset_n)--100HZ
      begin 
        if(reset_n = '0')then
            count <= 0;
            clk_div <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = 249999)then--
                count <= 0;
                clk_div <= not clk_div;
            else
                count <= count + 1;
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:秒计时模块
    -- //  功能描述:对100Hz进行秒计时
    -- //****************************************************************************************************
    process(clk,reset_n)--100HZ
      begin 
        if(reset_n = '0')then
            second_count <= 0;
            minute_counter <= 0;
        elsif(clk'event and clk = '1')then--上升沿触发
            if(start_flag = '1')then
                if(wait_flag = "01")then--处理等待状态才进行计时
                    if(second_count = 6000)then--
                        second_count <= 0;
                        if(minute_counter = 60)then
                            minute_counter <= 0;
                        else
                            minute_counter <= minute_counter + 1;
                        end if;
                    else
                        second_count <= second_count + 1;
                    end if;
                 end if;
             end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:计算费用
    -- //  功能描述:
    -- //****************************************************************************************************
    temp1 <= mileage_counter - 3;
    temp2 <= temp1 * 2;
    cost_counter_temp1 <= 6 + temp2 + minute_counter;
    
    temp3 <= mileage_counter * 2;
    cost_counter_temp2 <= temp3 + minute_counter;

    process(clk_div,reset_n)
    begin
        if(reset_n = '0')then
            cost_counter <= 0;
        elsif(clk_div'event and clk_div = '1')then--
            if(start_flag = '1')then
                if(mileage_counter <= 3)then--公里数小于或者等于3公里
                    cost_counter <= 6;
                elsif(mileage_counter > 3 and mileage_counter <= 19)then--公里数大于3公里，小于或者等于19公里
                    cost_counter <= cost_counter_temp1;
                elsif(mileage_counter > 19)then--公里数大于3公里，小于或者等于19公里
                    cost_counter <= cost_counter_temp2;
                else--公里数大于19公里
                    NULL;
                end if;
            end if;
        end if;
    end process;

end control_behave;












