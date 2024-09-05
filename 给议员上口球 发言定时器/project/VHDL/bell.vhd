-- ******************************************************************************
-- 按键模块，进行按键消抖和按键编码
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity bell is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    last_minute:in std_logic;                       --最后一分钟信号输出
    time_over:in std_logic;                         --计时时间到信号输出
   
    pwm_out:out std_logic                           --蜂鸣器驱动脉冲
);
end bell;
architecture bell_behave of bell is 
signal count:std_logic_vector(14 downto 0);
signal pwm_signal:std_logic;
signal short_count:std_logic_vector(9 downto 0);
signal long_count:std_logic_vector(10 downto 0);
signal short_signal:std_logic;
signal long_signal:std_logic;
begin
    -- //****************************************************************************************************
    -- //  模块名称:蜂鸣器驱动脉冲产生模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            count <= "000000000000000";
            pwm_signal <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = "110000110101000")then
                count <= "000000000000000";
                pwm_signal <= not pwm_signal;
            else
                count <= count + '1';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:蜂鸣器响应时间产生模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(pwm_signal,reset_n)--1s
    begin 
        if(reset_n = '0')then
            short_count <= "0000000000";
            short_signal <= '0';
        elsif(pwm_signal'event and pwm_signal = '1')then--上升沿触发
            if(last_minute = '1')then
                if(short_count = "1111101000")then
                    short_count <= "1111101000";
                    short_signal <= '0';
                else
                    short_count <= short_count + '1';
                    short_signal <= '1';
                end if;
            end if;
        end if;
    end process;
    
    process(pwm_signal,reset_n)--2s
    begin 
        if(reset_n = '0')then
            long_count <= "00000000000";
            long_signal <= '0';
        elsif(pwm_signal'event and pwm_signal = '1')then--上升沿触发
            if(time_over = '1')then
                if(long_count = "11111010000")then
                    long_count <= "11111010000";
                    long_signal <= '0';
                else
                    long_count <= long_count + '1';
                    long_signal <= '1';
                end if;
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:蜂鸣器响应控制模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            pwm_out <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(time_over = '1')then--计时结束
                pwm_out <= pwm_signal and long_signal;
            elsif(last_minute = '1')then--最后一分钟
                pwm_out <= pwm_signal and short_signal;
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;
    

end bell_behave;








