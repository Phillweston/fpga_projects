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
    start_key:in std_logic;                           --
    mileage_key:in std_logic;                        --
    wait_key:in std_logic;                            --
   
    start_signal:out std_logic;                       --
    mileage_signal:out std_logic;                    --
    wait_signal:out std_logic    --
);
end key;
architecture key_behave of key is 

signal start_state:       std_logic_vector(1 downto 0);
signal start_key_out:     std_logic;

signal mileage_state:    std_logic_vector(2 downto 0);
signal mileage_key_out:  std_logic;

signal wait_state:        std_logic_vector(2 downto 0);
signal wait_key_out:      std_logic;

signal count:integer range 25 downto 0;
signal clk_div:std_logic;                   
begin

    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            count <= 0;
            clk_div <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = 2)then--4
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
    start_signal <= start_key_out;
    
    -- //****************************************************************************************************
    -- //  模块名称:
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk_div,reset_n)
    begin 
        if(clk_div'event and clk_div = '1')then--上升沿触发
            if(reset_n = '0')then
                mileage_key_out <= '1';
                mileage_state <= "000";
            else
                case mileage_state is
                when "000"=>     
                    mileage_key_out <= '1';
                    if(mileage_key = '0')then
                        mileage_state <= "001";
                    else 
                        mileage_state <= "000";
                    end if;
                when "001"=>   
                    if(mileage_key = '0')then
                        mileage_state <= "010";
                    else 
                        mileage_state <= "000";
                    end if;
                when "010"=>  
                    if(mileage_key = '0')then
                        mileage_state <= "011";
                    else 
                        mileage_state <= "000";    
                    end if;
                when "011"=>
                    if(mileage_key = '0')then
                        mileage_state <= "100";
                    else 
                        mileage_state <= "000";    
                    end if;
                when "100"=>
                    if(mileage_key = '0')then
                        mileage_state <= "101";
                    else 
                        mileage_state <= "000";    
                    end if;
                when "101"=>
                    if(mileage_key = '0')then
                        mileage_state <= "110";
                    else 
                        mileage_state <= "000";    
                    end if;
                when "110"=>
                    if(mileage_key = '0')then
                        mileage_state <= "111";
                    else 
                        mileage_state <= "000";    
                    end if;
                when "111"=>
                    if(mileage_key = '0')then
                        mileage_key_out <= '0';
                        mileage_state <= "111";
                    else 
                        mileage_key_out <= '1';
                        mileage_state <= "000";
                    end if;
                when others=>mileage_state <= "000";
                end case;
            end if;
        end if;
    end process;
    
    mileage_signal <= mileage_key_out;
    -- //****************************************************************************************************
    -- //  模块名称:
    -- //  功能描述:
    -- //             
    -- //****************************************************************************************************
    process(clk_div,reset_n)
    begin 
        if(reset_n = '0')then
            wait_key_out <= '1';
            wait_state <= "000";
        elsif(clk_div'event and clk_div = '1')then--上升沿触发
            case wait_state is
            when "000"=>     
                wait_key_out <= '1';
                if(wait_key = '0')then
                    wait_state <= "001";
                else 
                    wait_state <= "000";
                end if;
            when "001"=>
                if(wait_key = '0')then
                    wait_state <= "010";
                else 
                    wait_state <= "000";
                end if;
            when "010"=>  
                if(wait_key = '0')then
                    wait_state <= "011";
                else 
                    wait_state <= "000";    
                end if;
            when "011"=>  
                if(wait_key = '0')then
                    wait_state <= "100";
                else 
                    wait_state <= "000";    
                end if;
            when "100"=>  
                if(wait_key = '0')then
                    wait_state <= "101";
                else 
                    wait_state <= "000";    
                end if;
            when "101"=>  
                if(wait_key = '0')then
                    wait_state <= "110";
                else 
                    wait_state <= "000";    
                end if;
            when "110"=>  
                if(wait_key = '0')then
                    wait_state <= "111";
                else 
                    wait_state <= "000";    
                end if;
            when "111"=>
                if(wait_key = '0')then
                    wait_key_out <= '0';
                    wait_state <= "111";
                else 
                    wait_key_out <= '1';
                    wait_state <= "000";
                end if;
            when others=>wait_state <= "000";
            end case;
        end if;
    end process;
    
    wait_signal <= wait_key_out;
end key_behave;









