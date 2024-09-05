library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity division is 
port(
    dividend: in    std_logic_vector (3 downto 0);  --被除数 dividend
    divisor: in     std_logic_vector (3 downto 0);  --除数 divisor
    sign: in        std_logic;                      --带符号与不带符号运算的标志,1表示有符号，0表示无符号
    consult: out    std_logic_vector (3 downto 0);  --输出商 consult
    remainder: out  std_logic_vector (3 downto 0)   --输出余数 remainder
); 
end entity division; 
architecture rt of division is 
begin 
    process(dividend,divisor,sign) 
    variable dividend_temp:std_logic_vector (3 downto 0);
    variable divisor_temp:std_logic_vector (3 downto 0); 
    variable unsign_temp:std_logic_vector (3 downto 0); 
    variable unsign_dividend:std_logic_vector (3 downto 0); 
    variable unsign_divisor:std_logic_vector (3 downto 0); 
    variable sign_temp:std_logic_vector (2 downto 0); 
    variable sign_dividend:std_logic_vector (2 downto 0); 
    variable sign_divisor:std_logic_vector (2 downto 0); 
    variable consult_temp:std_logic_vector (3 downto 0); 
    variable remainder_temp:std_logic_vector (3 downto 0); 
    begin
    --------------------------------------------------------
    -- 有符号数采用的是补码表示，所以要进行取反加一变为原码，再进行运算
    --------------------------------------------------------
        dividend_temp := dividend;--将被除数进行寄存
        divisor_temp := divisor;--将除数进行寄存
        --如果除数为零
        if(divisor = "0000")then
            consult <= (others => 'Z');--输出商设置为高阻态
            remainder <= (others => 'Z');--输出余数设置为高阻态
        else 
        --进行无符号运算和有符号的正数运算
            if(sign = '0' or (dividend_temp(3) = '0' and divisor_temp(3) = '0'))then
                unsign_dividend := dividend;--将被除数写入运算单元中
                unsign_divisor := divisor;--将除数写入运算单元中
                unsign_temp := "0000"; --中间结果进行清零
                for i in 15 downto 0 loop--采用递减的方法的形式来进行除法运算
                if (unsign_dividend >= unsign_divisor) then--被除数是否大于除数             
                    unsign_dividend := unsign_dividend - unsign_divisor;--进行递减操作
                    unsign_temp := unsign_temp + '1';--每递减一次，中间结果加一
                else
                    exit; --进行16次运算后退出
                end if; 
                end loop; 
                consult <= unsign_temp;--将商输出
                remainder <= unsign_dividend;--将余数输出
            else
            
        --进行有符号运算,余数的符号主要看被除数的符号
            
            --------------------------------------------------------
            --被除数和除数同时为负
            --------------------------------------------------------
                if(dividend_temp(3) = '1' and divisor_temp(3) = '1')then--被除数和除数是否同时为负
                    dividend_temp(2 downto 0) := (not dividend_temp(2 downto 0)) + '1';--进行原码到补码的转换
                    divisor_temp(2 downto 0) := (not divisor_temp(2 downto 0)) + '1';--进行原码到补码的转换
                    sign_dividend := dividend_temp(2 downto 0);--将转换后的被除数赋给运算单元
                    sign_divisor := divisor_temp(2 downto 0);--将转换后的除数赋给运算单元
                    sign_temp := "000";--中间结果进行清零
                    for i in 7 downto 0 loop--采用减法的形式来进行除法运算
                    if (sign_dividend >= sign_divisor) then --被除数是否大于除数
                        sign_dividend := sign_dividend - sign_divisor;--进行递减操作
                        sign_temp := sign_temp + '1';--每递减一次，中间结果加一
                    else
                        exit; --进行8次运算后退出
                    end if; 
                    end loop; 
                    consult_temp(3 downto 0) := ('0' & sign_temp);--商为正
                    remainder_temp(3 downto 0) := ('1' & sign_dividend);--余数为负
                    consult(3 downto 0) <= consult_temp;--商为正，直接输出
                    if(remainder_temp(2 downto 0) = "000")then--判断余数是否为零，
                        remainder(3 downto 0) <= "0000";--为零则直接输出0
                    else--否则补码输出
                        remainder(3 downto 0) <= (remainder_temp(3) & (not(remainder_temp(2 downto 0) - '1')));
                    end if;
            ----------------------------------------------------
            -- 被除数为正，除数为负
            ----------------------------------------------------
                elsif(dividend_temp(3) = '0' and divisor_temp(3) = '1')then--判断被除数为是否正，除数是否为负
                    divisor_temp(2 downto 0) := (not divisor_temp(2 downto 0)) + '1';--进行原码到补码的转换
                    sign_dividend := dividend_temp(2 downto 0);--将转换后的被除数赋给运算单元
                    sign_divisor := divisor_temp(2 downto 0);--将转换后的除数赋给运算单元
                    sign_temp := "000"; --中间结果进行清零
                    for i in 7 downto 0 loop--采用减法的形式来进行除法运算
                    if (sign_dividend >= sign_divisor) then --被除数是否大于除数
                        sign_dividend := sign_dividend - sign_divisor;--进行递减操作
                        sign_temp := sign_temp + '1';--每递减一次，中间结果加一
                    else
                        exit; --进行8次运算后退出
                    end if; 
                    end loop; 
                    consult_temp(3 downto 0) := ('1' & sign_temp);--商为负
                    remainder_temp(3 downto 0) := ('0' & sign_dividend);--余数为正
                    if(consult_temp(2 downto 0) = "000")then--商为负，判断商是否为零，
                        consult(3 downto 0) <= "0000";--为零则直接输出0
                    else--否则补码输出
                        consult(3 downto 0) <=  (consult_temp(3) & ((not consult_temp(2 downto 0)))) + '1';
                    end if;
                    remainder(3 downto 0) <= remainder_temp;--余数为正直接输出
                    
            --------------------------------------------------------
            --被除数为负，除数为正
            --------------------------------------------------------        
                elsif(dividend_temp(3) = '1' and divisor_temp(3) = '0')then--判断被除数是否为负，除数是否为正
                    dividend_temp(2 downto 0) := (not dividend_temp(2 downto 0)) + '1';--进行原码到补码的转换
                    sign_dividend := dividend_temp(2 downto 0);--将转换后的被除数赋给运算单元
                    sign_divisor := divisor_temp(2 downto 0);--将转换后的除数赋给运算单元
                    sign_temp := "000"; 
                    for i in 7 downto 0 loop--采用减法的形式来进行除法运算
                    if (sign_dividend >= sign_divisor) then --被除数是否大于除数
                        sign_dividend := sign_dividend - sign_divisor;--进行递减操作
                        sign_temp := sign_temp + '1';--每递减一次，中间结果加一
                    else
                        exit; --进行8次运算后退出
                    end if; 
                    end loop; 
                    consult_temp(3 downto 0) := ('1' & sign_temp);--商为负
                    remainder_temp(3 downto 0) := ('1' & sign_dividend);--余数为负
                    
                    if(consult_temp(2 downto 0) = "000")then--商为负，判断商是否为零，
                        consult(3 downto 0) <= "0000";--为零则直接输出0
                    else--否则补码输出
                        consult(3 downto 0) <=  (consult_temp(3) & ((not consult_temp(2 downto 0)) )) + '1';--
                    end if;
                    
                    if(remainder_temp(2 downto 0) = "000")then--判断余数是否为零，
                        remainder(3 downto 0) <= "0000";--为零则直接输出0
                    else--否则补码输出
                        remainder(3 downto 0) <= (remainder_temp(3) & (not(remainder_temp(2 downto 0) - '1')));--
                    end if;
                end if;
            end if;
        end if; 
    end process; 
end rt;

















