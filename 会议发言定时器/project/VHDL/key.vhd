-- ******************************************************************************
-- ����ģ�飬���а��������Ͱ�������
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity key is
port(
    clk:in std_logic;                               --50Mʱ������
    reset_n:in std_logic;                           --��λ�ź�����
    start_key:in std_logic;                         --��ʼ�ź�����
    pause_key:in std_logic;                         --��ͣ������ź�����
   
    start_signal:out std_logic;                     --��ʼ�����ź����
    pause_signal:out std_logic                      --��ͣ����������ź����
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
    -- //  ģ������:��ʼ��������ģ��
    -- //  ��������:start_key_out = ��0��ʱ��������ʼ�������¡�
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin 
        if(clk'event and clk = '1')then--�����ش���
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
        if(clk'event and clk = '1')then--�����ش���
            if(reset_n = '0')then
                start_signal_reg <= '0';
            else
                if(start_key_out = '0')then--��ʼ��������
                    start_signal_reg <= '1';--��ʼ��ʱ�ź���Ч
                else
                    start_signal_reg <= start_signal_reg;
                end if;
            end if;
        end if;
    end process;
    start_signal <= start_signal_reg;
    -- //****************************************************************************************************
    -- //  ģ������:��ͣ�������������ģ��
    -- //  ��������:pause_key_out = ��0��ʱ��������ͣ������������£�
    -- //             pause_signal = ��0��ʱΪ������ʱ��pause_signal = ��1��ʱΪ��ͣ��ʱ
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin 
        if(reset_n = '0')then
            pause_key_out <= '1';
            pause_state <= "00";
        elsif(clk'event and clk = '1')then--�����ش���
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
        elsif(clk'event and clk = '1')then--�����ش���
            if(pause_key_out = '0')then--��ͣ�������������
                pause_signal_reg <= not pause_signal_reg;--״̬ȡ��
            else
                pause_signal_reg <= pause_signal_reg;
            end if;
        end if;
    end process;
    pause_signal <= pause_signal_reg;
end key_behave;









