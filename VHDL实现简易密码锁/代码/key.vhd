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
    set_key:in std_logic;                           --
    select_key:in std_logic;                        --
    ok_key:in std_logic;                            --
    set_ok_key:in std_logic;                            --
   
    set_signal:out std_logic;                       --
    select_signal:out std_logic;                    --
    ok_signal:out std_logic;    --
    set_ok_signal:out std_logic    --
);
end key;
architecture key_behave of key is 

signal set_state:       std_logic_vector(1 downto 0);
signal set_key_out:     std_logic;

signal select_state:    std_logic_vector(2 downto 0);
signal select_key_out:  std_logic;

signal ok_state:        std_logic_vector(2 downto 0);
signal ok_key_out:      std_logic;

signal set_ok_state:    std_logic_vector(1 downto 0);
signal set_ok_key_out:  std_logic;

signal count:integer range 25000 downto 0;
signal clk_div:std_logic;                   
begin

    process(clk,reset_n)--1KHZ
      begin 
        if(reset_n = '0')then
            count <= 0;
            clk_div <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = 24999)then
                count <= 0;
                clk_div <= not clk_div;
            else
                count <= count + 1;
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:设置密码按键消抖
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk_div,reset_n)
    begin 
        if(clk_div'event and clk_div = '1')then--上升沿触发
            if(reset_n = '0')then
                set_key_out <= '1';
                set_state <= "00";
            else
                case set_state is
                when "00"=>     
                    set_key_out <= '1';
                    if(set_key = '0')then
                        set_state <= "01";
                    else 
                        set_state <= "00";
                    end if;
                when "01"=>   
                    if(set_key = '0')then
                        set_state <= "10";
                    else 
                        set_state <= "00";
                    end if;
                when "10"=>  
                    if(set_key = '0')then
                        set_state <= "11";
                    else 
                        set_state <= "00";    
                    end if;
                when "11"=>
                    if(set_key = '0')then
                        set_key_out <= '0';
                        set_state <= "11";
                    else 
                        set_key_out <= '1';
                        set_state <= "00";
                    end if;
                when others=>set_state <= "00";
                end case;
            end if;
        end if;
    end process;
    set_signal <= set_key_out;
    
    -- //****************************************************************************************************
    -- //  模块名称:选择数字按键消抖
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin 
        if(clk'event and clk = '1')then--上升沿触发
            if(reset_n = '0')then
                select_key_out <= '1';
                select_state <= "000";
            else
                case select_state is
                when "000"=>     
                    select_key_out <= '1';
                    if(select_key = '0')then
                        select_state <= "001";
                    else 
                        select_state <= "000";
                    end if;
                when "001"=>   
                    if(select_key = '0')then
                        select_state <= "010";
                    else 
                        select_state <= "000";
                    end if;
                when "010"=>  
                    if(select_key = '0')then
                        select_state <= "011";
                    else 
                        select_state <= "000";    
                    end if;
                when "011"=>
                    if(select_key = '0')then
                        select_state <= "100";
                    else 
                        select_state <= "000";    
                    end if;
                when "100"=>
                    if(select_key = '0')then
                        select_state <= "101";
                    else 
                        select_state <= "000";    
                    end if;
                when "101"=>
                    if(select_key = '0')then
                        select_state <= "110";
                    else 
                        select_state <= "000";    
                    end if;
                when "110"=>
                    if(select_key = '0')then
                        select_state <= "111";
                    else 
                        select_state <= "000";    
                    end if;
                when "111"=>
                    if(select_key = '0')then
                        select_key_out <= '0';
                        select_state <= "011";
                    else 
                        select_key_out <= '1';
                        select_state <= "000";
                    end if;
                when others=>select_state <= "000";
                end case;
            end if;
        end if;
    end process;
    
    select_signal <= select_key_out;
    -- //****************************************************************************************************
    -- //  模块名称:选择数字确定按键消抖
    -- //  功能描述:
    -- //             
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin 
        if(reset_n = '0')then
            ok_key_out <= '1';
            ok_state <= "000";
        elsif(clk'event and clk = '1')then--上升沿触发
            case ok_state is
            when "000"=>     
                ok_key_out <= '1';
                if(ok_key = '0')then
                    ok_state <= "001";
                else 
                    ok_state <= "000";
                end if;
            when "001"=>   
                if(ok_key = '0')then
                    ok_state <= "010";
                else 
                    ok_state <= "000";
                end if;
            when "010"=>  
                if(ok_key = '0')then
                    ok_state <= "011";
                else 
                    ok_state <= "000";    
                end if;
            when "011"=>  
                if(ok_key = '0')then
                    ok_state <= "100";
                else 
                    ok_state <= "000";    
                end if;
            when "100"=>  
                if(ok_key = '0')then
                    ok_state <= "101";
                else 
                    ok_state <= "000";    
                end if;
            when "101"=>  
                if(ok_key = '0')then
                    ok_state <= "110";
                else 
                    ok_state <= "000";    
                end if;
            when "110"=>  
                if(ok_key = '0')then
                    ok_state <= "111";
                else 
                    ok_state <= "000";    
                end if;
            when "111"=>
                if(ok_key = '0')then
                    ok_key_out <= '0';
                    ok_state <= "011";
                else 
                    ok_key_out <= '1';
                    ok_state <= "000";
                end if;
            when others=>ok_state <= "000";
            end case;
        end if;
    end process;
    
    ok_signal <= ok_key_out;
        -- //****************************************************************************************************
    -- //  模块名称:设置密码完成按键消抖
    -- //  功能描述:
    -- //             
    -- //****************************************************************************************************
    process(clk_div,reset_n)
    begin 
        if(reset_n = '0')then
            set_ok_key_out <= '1';
            set_ok_state <= "00";
        elsif(clk_div'event and clk_div = '1')then--上升沿触发
            case set_ok_state is
            when "00"=>     
                set_ok_key_out <= '1';
                if(set_ok_key = '0')then
                    set_ok_state <= "01";
                else 
                    set_ok_state <= "00";
                end if;
            when "01"=>   
                if(set_ok_key = '0')then
                    set_ok_state <= "10";
                else 
                    set_ok_state <= "00";
                end if;
            when "10"=>  
                if(set_ok_key = '0')then
                    set_ok_state <= "11";
                else 
                    set_ok_state <= "00";    
                end if;
            when "11"=>
                if(set_ok_key = '0')then
                    set_ok_key_out <= '0';
                    set_ok_state <= "11";
                else 
                    set_ok_key_out <= '1';
                    set_ok_state <= "00";
                end if;
            when others=>set_ok_state <= "00";
            end case;
        end if;
    end process;
    
    set_ok_signal <= set_ok_key_out;
end key_behave;









