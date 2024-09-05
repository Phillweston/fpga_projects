-- ******************************************************************************
-- 按键模块，进行按键消抖和按键编码
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity key is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    start_key:in std_logic;                         --开始信号输入
    pause_key:in std_logic;                         --暂停与继续信号输入
   
    start_signal:out std_logic;                     --开始按键信号输出
    pause_signal:out std_logic                      --暂停与继续按键信号输出
);
end key;
architecture key_behave of key is 

signal start_state:     std_logic_vector(1 downto 0);
signal start_key_out:   std_logic;
signal pause_state:     std_logic_vector(1 downto 0);
signal pause_key_out:   std_logic;
signal start_signal_reg:std_logic;                     
signal pause_signal_reg:std_logic;                    
begin
    -- //****************************************************************************************************
    -- //  模块名称:开始按键消抖模块
    -- //  功能描述:start_key_out = ‘0’时，表明开始按键按下。
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin 
        if(clk'event and clk = '1')then--上升沿触发
            if(reset_n = '0')then
                start_key_out <= '1';
                start_state <= "00";
            else
                case start_state is
                when "00"=>     
                    start_key_out <= '1';
                    if(start_key = '0')then
                        start_state <= "01";
                    else 
                        start_state <= "00";
                    end if;
                when "01"=>   
                    if(start_key = '0')then
                        start_state <= "10";
                    else 
                        start_state <= "00";
                    end if;
                when "10"=>  
                    if(start_key = '0')then
                        start_state <= "11";
                    else 
                        start_state <= "00";    
                    end if;
                when "11"=>
                    if(start_key = '0')then
                        start_key_out <= '0';
                        start_state <= "11";
                    else 
                        start_key_out <= '1';
                        start_state <= "00";
                    end if;
                when others=>start_state <= "00";
                end case;
            end if;
        end if;
    end process;
    
    process(clk,reset_n)
    begin
        if(clk'event and clk = '1')then--上升沿触发
            if(reset_n = '0')then
                start_signal_reg <= '0';
            else
                if(start_key_out = '0')then--开始按键按下
                    start_signal_reg <= '1';--开始计时信号有效
                else
                    start_signal_reg <= start_signal_reg;
                end if;
            end if;
        end if;
    end process;
    start_signal <= start_signal_reg;
    -- //****************************************************************************************************
    -- //  模块名称:暂停与继续按键消抖模块
    -- //  功能描述:pause_key_out = ‘0’时，表明暂停与继续按键按下，
    -- //             pause_signal = ‘0’时为继续计时，pause_signal = ‘1’时为暂停计时
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin 
        if(reset_n = '0')then
            pause_key_out <= '1';
            pause_state <= "00";
        elsif(clk'event and clk = '1')then--上升沿触发
            case pause_state is
            when "00"=>     
                pause_key_out <= '1';
                if(pause_key = '0')then
                    pause_state <= "01";
                else 
                    pause_state <= "00";
                end if;
            when "01"=>   
                if(pause_key = '0')then
                    pause_state <= "10";
                else 
                    pause_state <= "00";
                end if;
            when "10"=>  
                if(pause_key = '0')then
                    pause_state <= "11";
                else 
                    pause_state <= "00";    
                end if;
            when "11"=>
                if(pause_key = '0')then
                    pause_key_out <= '0';
                    pause_state <= "11";
                else 
                    pause_key_out <= '1';
                    pause_state <= "00";
                end if;
            when others=>pause_state <= "00";
            end case;
        end if;
    end process;
    
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            pause_signal_reg <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(pause_key_out = '0')then--暂停与继续按键按下
                pause_signal_reg <= not pause_signal_reg;--状态取反
            else
                pause_signal_reg <= pause_signal_reg;
            end if;
        end if;
    end process;
    pause_signal <= pause_signal_reg;
end key_behave;









