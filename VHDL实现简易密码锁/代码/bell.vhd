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
    start_flag:in std_logic;                        --蜂鸣器开始相应信号
    fm_time_over:out std_logic;
    pwm_out:out std_logic;                          --蜂鸣器驱动脉冲
    fm_20:out std_logic
);
end bell;
architecture bell_behave of bell is 
signal count:std_logic_vector(14 downto 0);
signal pwm_signal:std_logic;
signal long_count:std_logic_vector(14 downto 0);
signal short_count:std_logic_vector(12 downto 0);
signal pwm_en:std_logic;
type state is(
            prepare,--准备状态
            start,--开始状态
            stop
            );
signal current_state:state;--一开始处于准备状态
begin
    fm_20 <= pwm_en;
    -- //****************************************************************************************************
    -- //  模块名称:蜂鸣器驱动脉冲产生模块
    -- //  功能描述:1KHz
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
    process(pwm_signal,reset_n)
    begin 
        if(reset_n = '0')then
            current_state <= prepare;
            short_count <= "0000000000000";
            long_count <= "000000000000000";
            fm_time_over <= '0';
            pwm_en <= '0';
        elsif(pwm_signal'event and pwm_signal = '1')then--上升沿触发
            case current_state is
            when prepare=>
                if(start_flag = '1')then
                    if(short_count = "1101101011000")then--5s
                        short_count <= "0000000000000";
                        current_state <= start;
                    else
                        short_count <= short_count + '1';
                        current_state <= prepare;
                    end if;
                else
                    current_state <= prepare;
                    short_count <= "0000000000000";
                    long_count <= "000000000000000";
                    fm_time_over <= '0';
                    pwm_en <= '0';
                end if;
            when start=>
                if(long_count = "100111000100000")then--20s
                    long_count <= "000000000000000";
                    pwm_en <= '0';
                    fm_time_over <= '1';
                    current_state <= stop;
                else
                    current_state <= start;
                    long_count <= long_count + '1';
                    pwm_en <= '1';
                    fm_time_over <= '0';
                end if;
            when stop=>
                    pwm_en <= '0';
                    fm_time_over <= '1';
                    current_state <= prepare;
                    short_count <= "0000000000000";
                    long_count <= "000000000000000";
            end case;  
        end if;
    end process;
    pwm_out <= pwm_en and pwm_signal;
end bell_behave;








