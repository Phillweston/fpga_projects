LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY clk_div IS
PORT(
    clk,reset_n:     IN STD_LOGIC;       --clk为50M时钟信号，hold为紧急信号，reset为复位信号
    clk_1hz_out     :      OUT std_logic);--
END;

ARCHITECTURE clk_div_function OF clk_div IS
signal count:           std_logic_vector(24 downto 0);
signal clk_1hz:         std_logic;
BEGIN
clk_1hz_out <= clk_1hz;
-- /**********************************************************/
-- //分频模块
-- //将50M时钟分为1hz
-- /**********************************************************/
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            clk_1hz <= '0';
            count <= "0000000000000000000000000";
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = "1011111010111100001000000")then--1011111010111100001000000
                count <= "0000000000000000000000000";
                clk_1hz <= not clk_1hz;
            else
                count <= count + '1';
            end if;
        end if;
    end process;
    
END clk_div_function;