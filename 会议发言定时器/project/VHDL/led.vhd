-- ******************************************************************************
-- 按键模块，进行按键消抖和按键编码
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity led is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    start_count:in std_logic;                       --开始计时信号
    pause_signal:in std_logic;                      --暂停计时信号
    time_over:in std_logic;                         --计时时间到信号输出
   
    led:out std_logic_vector(7 downto 0)            --led
);
end led;
architecture led_behave of led is 
signal count:std_logic_vector(21 downto 0);
signal clk_div:std_logic;
signal led_reg: std_logic_vector(7 downto 0);
begin
    process(clk,reset_n)--10HZ
      begin 
        if(reset_n = '0')then
            count <= "0000000000000000000000";
            clk_div <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = "100110001001011010000")then
                count <= "0000000000000000000000";
                clk_div <= not clk_div;
            else
                count <= count + '1';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:LED显示控制模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            led_reg <= "11111111";
        elsif(clk'event and clk = '1')then--上升沿触发
            if(start_count = '1' and time_over = '0' and pause_signal = '0')then--开始计时
                led_reg <= "00000000";--亮
            elsif(time_over = '1')then--计时结束
                led_reg <= "11111111";--灭
            elsif(pause_signal = '1' and start_count = '1' and time_over = '0')then--计时暂停
                led_reg(7) <= clk_div;--闪烁
                led_reg(6) <= clk_div;--闪烁
                led_reg(5) <= clk_div;--闪烁
                led_reg(4) <= clk_div;--闪烁
                led_reg(3) <= clk_div;--闪烁
                led_reg(2) <= clk_div;--闪烁
                led_reg(1) <= clk_div;--闪烁
                led_reg(0) <= clk_div;--闪烁
            else
                led_reg <= "11111111";--灭
            end if;
        end if;
    end process;
    led <= led_reg;
end led_behave;



