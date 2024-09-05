library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity division is 
port(
    dividend: in    std_logic_vector (3 downto 0);  --������ dividend
    divisor: in     std_logic_vector (3 downto 0);  --���� divisor
    sign: in        std_logic;                      --�������벻����������ı�־,1��ʾ�з��ţ�0��ʾ�޷���
    consult: out    std_logic_vector (3 downto 0);  --����� consult
    remainder: out  std_logic_vector (3 downto 0)   --������� remainder
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
    -- �з��������õ��ǲ����ʾ������Ҫ����ȡ����һ��Ϊԭ�룬�ٽ�������
    --------------------------------------------------------
        dividend_temp := dividend;--�����������мĴ�
        divisor_temp := divisor;--���������мĴ�
        --�������Ϊ��
        if(divisor = "0000")then
            consult <= (others => 'Z');--���������Ϊ����̬
            remainder <= (others => 'Z');--�����������Ϊ����̬
        else 
        --�����޷���������з��ŵ���������
            if(sign = '0' or (dividend_temp(3) = '0' and divisor_temp(3) = '0'))then
                unsign_dividend := dividend;--��������д�����㵥Ԫ��
                unsign_divisor := divisor;--������д�����㵥Ԫ��
                unsign_temp := "0000"; --�м�����������
                for i in 15 downto 0 loop--���õݼ��ķ�������ʽ�����г�������
                if (unsign_dividend >= unsign_divisor) then--�������Ƿ���ڳ���             
                    unsign_dividend := unsign_dividend - unsign_divisor;--���еݼ�����
                    unsign_temp := unsign_temp + '1';--ÿ�ݼ�һ�Σ��м�����һ
                else
                    exit; --����16��������˳�
                end if; 
                end loop; 
                consult <= unsign_temp;--�������
                remainder <= unsign_dividend;--���������
            else
            
        --�����з�������,�����ķ�����Ҫ���������ķ���
            
            --------------------------------------------------------
            --�������ͳ���ͬʱΪ��
            --------------------------------------------------------
                if(dividend_temp(3) = '1' and divisor_temp(3) = '1')then--�������ͳ����Ƿ�ͬʱΪ��
                    dividend_temp(2 downto 0) := (not dividend_temp(2 downto 0)) + '1';--����ԭ�뵽�����ת��
                    divisor_temp(2 downto 0) := (not divisor_temp(2 downto 0)) + '1';--����ԭ�뵽�����ת��
                    sign_dividend := dividend_temp(2 downto 0);--��ת����ı������������㵥Ԫ
                    sign_divisor := divisor_temp(2 downto 0);--��ת����ĳ����������㵥Ԫ
                    sign_temp := "000";--�м�����������
                    for i in 7 downto 0 loop--���ü�������ʽ�����г�������
                    if (sign_dividend >= sign_divisor) then --�������Ƿ���ڳ���
                        sign_dividend := sign_dividend - sign_divisor;--���еݼ�����
                        sign_temp := sign_temp + '1';--ÿ�ݼ�һ�Σ��м�����һ
                    else
                        exit; --����8��������˳�
                    end if; 
                    end loop; 
                    consult_temp(3 downto 0) := ('0' & sign_temp);--��Ϊ��
                    remainder_temp(3 downto 0) := ('1' & sign_dividend);--����Ϊ��
                    consult(3 downto 0) <= consult_temp;--��Ϊ����ֱ�����
                    if(remainder_temp(2 downto 0) = "000")then--�ж������Ƿ�Ϊ�㣬
                        remainder(3 downto 0) <= "0000";--Ϊ����ֱ�����0
                    else--���������
                        remainder(3 downto 0) <= (remainder_temp(3) & (not(remainder_temp(2 downto 0) - '1')));
                    end if;
            ----------------------------------------------------
            -- ������Ϊ��������Ϊ��
            ----------------------------------------------------
                elsif(dividend_temp(3) = '0' and divisor_temp(3) = '1')then--�жϱ�����Ϊ�Ƿ����������Ƿ�Ϊ��
                    divisor_temp(2 downto 0) := (not divisor_temp(2 downto 0)) + '1';--����ԭ�뵽�����ת��
                    sign_dividend := dividend_temp(2 downto 0);--��ת����ı������������㵥Ԫ
                    sign_divisor := divisor_temp(2 downto 0);--��ת����ĳ����������㵥Ԫ
                    sign_temp := "000"; --�м�����������
                    for i in 7 downto 0 loop--���ü�������ʽ�����г�������
                    if (sign_dividend >= sign_divisor) then --�������Ƿ���ڳ���
                        sign_dividend := sign_dividend - sign_divisor;--���еݼ�����
                        sign_temp := sign_temp + '1';--ÿ�ݼ�һ�Σ��м�����һ
                    else
                        exit; --����8��������˳�
                    end if; 
                    end loop; 
                    consult_temp(3 downto 0) := ('1' & sign_temp);--��Ϊ��
                    remainder_temp(3 downto 0) := ('0' & sign_dividend);--����Ϊ��
                    if(consult_temp(2 downto 0) = "000")then--��Ϊ�����ж����Ƿ�Ϊ�㣬
                        consult(3 downto 0) <= "0000";--Ϊ����ֱ�����0
                    else--���������
                        consult(3 downto 0) <=  (consult_temp(3) & ((not consult_temp(2 downto 0)))) + '1';
                    end if;
                    remainder(3 downto 0) <= remainder_temp;--����Ϊ��ֱ�����
                    
            --------------------------------------------------------
            --������Ϊ��������Ϊ��
            --------------------------------------------------------        
                elsif(dividend_temp(3) = '1' and divisor_temp(3) = '0')then--�жϱ������Ƿ�Ϊ���������Ƿ�Ϊ��
                    dividend_temp(2 downto 0) := (not dividend_temp(2 downto 0)) + '1';--����ԭ�뵽�����ת��
                    sign_dividend := dividend_temp(2 downto 0);--��ת����ı������������㵥Ԫ
                    sign_divisor := divisor_temp(2 downto 0);--��ת����ĳ����������㵥Ԫ
                    sign_temp := "000"; 
                    for i in 7 downto 0 loop--���ü�������ʽ�����г�������
                    if (sign_dividend >= sign_divisor) then --�������Ƿ���ڳ���
                        sign_dividend := sign_dividend - sign_divisor;--���еݼ�����
                        sign_temp := sign_temp + '1';--ÿ�ݼ�һ�Σ��м�����һ
                    else
                        exit; --����8��������˳�
                    end if; 
                    end loop; 
                    consult_temp(3 downto 0) := ('1' & sign_temp);--��Ϊ��
                    remainder_temp(3 downto 0) := ('1' & sign_dividend);--����Ϊ��
                    
                    if(consult_temp(2 downto 0) = "000")then--��Ϊ�����ж����Ƿ�Ϊ�㣬
                        consult(3 downto 0) <= "0000";--Ϊ����ֱ�����0
                    else--���������
                        consult(3 downto 0) <=  (consult_temp(3) & ((not consult_temp(2 downto 0)) )) + '1';--
                    end if;
                    
                    if(remainder_temp(2 downto 0) = "000")then--�ж������Ƿ�Ϊ�㣬
                        remainder(3 downto 0) <= "0000";--Ϊ����ֱ�����0
                    else--���������
                        remainder(3 downto 0) <= (remainder_temp(3) & (not(remainder_temp(2 downto 0) - '1')));--
                    end if;
                end if;
            end if;
        end if; 
    end process; 
end rt;

















