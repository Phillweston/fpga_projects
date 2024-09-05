library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity unsign_division is 
port(
    clk:    in std_logic;
    reset_n:in std_logic;
    dividend: in    std_logic_vector (15 downto 0);  --������ dividend
    divisor: in     std_logic_vector (15 downto 0);  --���� divisor
    sign: in        std_logic;                      --�������벻����������ı�־,1��ʾ�з��ţ�0��ʾ�޷���
    consult: out    std_logic_vector (15 downto 0);  --����� consult
    remainder: out  std_logic_vector (15 downto 0)   --������� remainder
); 
end entity unsign_division; 
architecture rt of unsign_division is 
signal consult_temp1:std_logic_vector (15 downto 0); --�޷����� 
signal remainder_temp1:std_logic_vector (15 downto 0);   --�޷�������
signal state:std_logic_vector (2 downto 0);
begin 
    --------------------------------------------------------
    ------------------ �޷�������-------------------------
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
            state <= "000";--��λ���������״̬
            i:=0;--����
        else
            case (state)is
            when "000"=>--����״̬
                dividend_temp := dividend;--�����������мĴ�
                divisor_temp := divisor;--���������мĴ�
                --�������Ϊ��
                if(divisor = "0000000000000000")then
                    consult_temp1 <= (others => 'Z');--���������Ϊ����̬
                    remainder_temp1 <= (others => 'Z');--�����������Ϊ����̬
                    state <= "010";--��ת��������״̬
                else 
                --�����޷���������з��ŵ���������
                    if(sign = '0' or (dividend_temp(15) = '0' and divisor_temp(15) = '0'))then
                        unsign_dividend := dividend;--��������д�����㵥Ԫ��
                        unsign_divisor := divisor;--������д�����㵥Ԫ��
                        unsign_temp := "0000000000000000"; --�м�����������
                        state <= "001";--��ת���������״̬
                    end if;
                end if;
            when "001"=>--����״̬
                if(i < 9999)then--���õݼ��ķ�������ʽ�����г�������
                    if (unsign_dividend >= unsign_divisor) then--�������Ƿ���ڳ���             
                        unsign_dividend := unsign_dividend - unsign_divisor;--���еݼ�����
                        unsign_temp := unsign_temp + '1';--ÿ�ݼ�һ�Σ��м�����һ
                    else
                        state <= "010";--��ת��������״̬
                        i:=0;--����
                    end if;
                    i := i+1;--��һ
                else
                    i:=0;--����
                    state <= "010";--��ת��������״̬
                end if;
            when "010"=>--������״̬
                consult_temp1 <= unsign_temp;--�������
                remainder_temp1 <= unsign_dividend;--���������
                state <= "000";--���»ص�����״̬
            when others=>null;
            end case;
        end if;
    end if;
    end process;
    consult <= consult_temp1;--�����
    remainder <= remainder_temp1;--�������
end rt;

















