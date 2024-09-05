library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity unsign_division is 
port(
    clk:    in std_logic;
    reset_n:in std_logic;
    dividend: in    std_logic_vector (15 downto 0);  --被除数 dividend
    divisor: in     std_logic_vector (15 downto 0);  --除数 divisor
    sign: in        std_logic;                      --带符号与不带符号运算的标志,1表示有符号，0表示无符号
    consult: out    std_logic_vector (15 downto 0);  --输出商 consult
    remainder: out  std_logic_vector (15 downto 0)   --输出余数 remainder
); 
end entity unsign_division; 
architecture rt of unsign_division is 
signal consult_temp1:std_logic_vector (15 downto 0); --无符号商 
signal remainder_temp1:std_logic_vector (15 downto 0);   --无符号余数
signal state:std_logic_vector (2 downto 0);
begin 
    --------------------------------------------------------
    ------------------ 无符号运算-------------------------
    --------------------------------------------------------
    process(clk,reset_n) 
    variable dividend_temp:std_logic_vector (15 downto 0);
    variable divisor_temp:std_logic_vector (15 downto 0); 
    variable unsign_temp:std_logic_vector (15 downto 0); 
    variable unsign_dividend:std_logic_vector (15 downto 0); 
    variable unsign_divisor:std_logic_vector (15 downto 0);
    variable i:integer range 0 to 10000;
    begin
    --------------------------------------------------------
    --------------------------------------------------------
    if(clk'event and clk = '1')then
        if(reset_n = '0')then
            state <= "000";--复位后进入置数状态
            i:=0;--清零
        else
            case (state)is
            when "000"=>--置数状态
                dividend_temp := dividend;--将被除数进行寄存
                divisor_temp := divisor;--将除数进行寄存
                --如果除数为零
                if(divisor = "0000000000000000")then
                    consult_temp1 <= (others => 'Z');--输出商设置为高阻态
                    remainder_temp1 <= (others => 'Z');--输出余数设置为高阻态
                    state <= "010";--跳转到输出结果状态
                else 
                --进行无符号运算和有符号的正数运算
                    if(sign = '0' or (dividend_temp(15) = '0' and divisor_temp(15) = '0'))then
                        unsign_dividend := dividend;--将被除数写入运算单元中
                        unsign_divisor := divisor;--将除数写入运算单元中
                        unsign_temp := "0000000000000000"; --中间结果进行清零
                        state <= "001";--跳转到输出运算状态
                    end if;
                end if;
            when "001"=>--运算状态
                if(i < 9999)then--采用递减的方法的形式来进行除法运算
                    if (unsign_dividend >= unsign_divisor) then--被除数是否大于除数             
                        unsign_dividend := unsign_dividend - unsign_divisor;--进行递减操作
                        unsign_temp := unsign_temp + '1';--每递减一次，中间结果加一
                    else
                        state <= "010";--跳转到输出结果状态
                        i:=0;--清零
                    end if;
                    i := i+1;--加一
                else
                    i:=0;--清零
                    state <= "010";--跳转到输出结果状态
                end if;
            when "010"=>--输出结果状态
                consult_temp1 <= unsign_temp;--将商输出
                remainder_temp1 <= unsign_dividend;--将余数输出
                state <= "000";--重新回到置数状态
            when others=>null;
            end case;
        end if;
    end if;
    end process;
    consult <= consult_temp1;--输出商
    remainder <= remainder_temp1;--输出余数
end rt;

















