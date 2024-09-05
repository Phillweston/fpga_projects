--/******************************************************************************
-- ** ��������������ͨ��__FPGA����λ��ͨ��(�����ʣ�9600bps,10��bit��1λ��ʼλ��8������λ��1������)
-- �ַ��������ڵ��Թ�������ַ���ʽ���ܺͷ��ͷ�ʽ��,FPGA���ܣ�0��9��A��F������ʾ��7��������ϡ�
--*******************************************************************************/
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity uart_seg is
port(
    clk:in std_logic;--50Mʱ������
    rst:in std_logic;--��λ�ź�����
    rxd:in std_logic;--�������ݽ��ն�
    txd:out std_logic;--�������ݷ��Ͷ�
    en:out std_logic_vector(7 downto 0);--�����ʹ��
    seg_data:out std_logic_vector(7 downto 0)--���������
    );
end uart_seg;
architecture behave of uart_seg is
--/*****************************/
signal div_reg:integer range 0 to 326 ;             --��Ƶ����������Ƶֵ�ɲ����ʾ�������Ƶ��õ�Ƶ��8�������ʵ�ʱ��
signal div8_rec_reg:std_logic_vector(2 downto 0);   --�üĴ����ļ���ֵ��Ӧ����ʱ��ǰλ�ڵ�ʱ϶��
signal state_rec:std_logic_vector(3 downto 0);      --����״̬�Ĵ���
signal clkbaud_rec:std_logic;                       --�Բ�����ΪƵ�ʵĽ���ʹ���ź�
signal clkbaud8x:std_logic;                         --��8��������ΪƵ�ʵ�ʱ�ӣ����������ǽ����ͻ����һ��bit��ʱ�����ڷ�Ϊ8��ʱ϶

signal recstart:std_logic;                          --��ʼ���ձ�־
signal recstart_tmp:std_logic;                      --��ʼ���ձ�־               

signal rxd_reg1:std_logic;                          --���ռĴ���1
signal rxd_reg2:std_logic;                          --���ռĴ���2����Ϊ��������Ϊ�첽�źţ�������������
signal rxd_buf:std_logic_vector(7 downto 0);        --�������ݻ���
-- ��Ƶ��������ֵ�ɶ�Ӧ�Ĳ����ʼ�����ã����˲�����Ƶ��ʱ��Ƶ���ǲ������ʵ�8	
-- �����˴�ֵ��Ӧ9600�Ĳ����ʣ�����Ƶ����ʱ��Ƶ����9600*8(CLK 50M)
begin
    en <= "00000000";--7�������ʹ���ź�
    process(clk,rst)
    begin
        if(clk'event and clk = '1')then--�����ش���
            if(rst = '0')then
                div_reg<=0;
            else
                if(div_reg = 324)then--ʱ��Ƶ����9600*8
                    div_reg <= 0;
                else
                    div_reg <= div_reg+1;
                end if;
            end if;
        end if;
    end process;

    process(clk,rst)--��Ƶ�õ�8�������ʵ�ʱ��
    begin
        if(clk'event and clk = '1')then--�����ش���
            if(rst = '0')then
                clkbaud8x<='0';
            else
                if(div_reg = 324)then
                    clkbaud8x <=not clkbaud8x;--ȡ����Ƶ
                end if;
            end if;
        end if;
    end process;

    process(clkbaud8x,rst)
    begin
        if(clkbaud8x'event and clkbaud8x = '1')then--�����ش���
            if(rst = '0')then
                div8_rec_reg<="000";
            else
                if(recstart='1')then--���տ�ʼ��־
                    div8_rec_reg <= div8_rec_reg + '1';--���տ�ʼ��ʱ϶����8�������ʵ�ʱ���¼�1ѭ��
                end if;
            end if;
        end if;
    end process;
    
    process(div8_rec_reg)
    begin
        if(div8_rec_reg="111")then
            clkbaud_rec<='1';--�ڵ�7��ʱ϶������ʹ���ź���Ч�������ݴ���
        else
            clkbaud_rec<='0';
        end if;
    end process;
    
    process(clkbaud8x,rst)--����PC��������
    begin
        if(clkbaud8x'event and clkbaud8x = '1')then--�����ش���
            if(rst='0')then
                rxd_reg1 <= '0';--���ռĴ���1����
                rxd_reg2 <= '0';--���ռĴ���2����
                rxd_buf <= "00000000";--�������ݻ�������
                state_rec <= "0000";--����״̬�Ĵ�������
                recstart <= '0';--��ʼ���ձ�־����
                recstart_tmp <= '0';--��ʼ���ձ�־����
            else
                rxd_reg1 <= rxd;--�����յ����ݴ�����ռĴ���1
                rxd_reg2 <= rxd_reg1;--�����յ����ݴ�����ռĴ���2
                if(state_rec="0000")then--
                    if(recstart_tmp='1')then
                        recstart<='1';--��ʼ���ձ�־��Ч
                        recstart_tmp<='0';--��ʼ���ձ�־����
                        state_rec<=state_rec+'1';--����״̬�Ĵ�����һ����ʼ������һλ����
                    elsif((not rxd_reg1)='1' and rxd_reg2='1')then --��⵽��ʼλ���½��أ��������״̬
                        recstart_tmp<='1';--
                    end if;
                elsif(state_rec>="0001" and state_rec<="1000")then
                    if(clkbaud_rec='1')then
                        rxd_buf(7) <= rxd_reg2;--���ռĴ���2�����ݻ������������ݻ���
                        rxd_buf(6 downto 0) <= rxd_buf(7 downto 1);--�������ݻ��������л���
                        state_rec <= state_rec + '1';--����״̬�Ĵ�����һ����ʼ������һλ����
                    end if;
                elsif(state_rec = "1001")then--8λ���ݽ������
                    if(clkbaud_rec='1')then--�����ź�Ϊ1����������8bit�������
                        state_rec<="0000";--����״̬�Ĵ�������
                        recstart<='0';--��ʼ���ձ�־����
                    end if;
                end if;
              end if;
        end if;
    end process;
    
    process(rxd_buf)--�����ܵ��������������ʾ����
    begin
          case (rxd_buf)is
            when "00110000"=>--0
                seg_data<="11000000";
            when "00110001"=>--1
                seg_data<="11111001";
            when "00110010"=>--2
                seg_data<="10100100";
            when "00110011"=>--3
                seg_data<="10110000";
            when "00110100"=>--4
                seg_data<="10011001";
            when "00110101"=>--5
                seg_data<="10010010";
            when "00110110"=>--6
                seg_data<="10000010";
            when "00110111"=>--7
                seg_data<="11111000";
            when "00111000"=>--8
                seg_data<="10000000";
            when "00111001"=>--9
                seg_data<="10010000";
            when "01000001"=>--a
                seg_data<="10001000";
            when "01000010"=>--b
                seg_data<="10000011";
            when "01000011"=>--c
                seg_data<="11000110";
            when "01000100"=>--d
                seg_data<="10100001";
            when "01000101"=>--e
                seg_data<="10000110";
            when "01000110"=>--f
                seg_data<="10001110";
            when others =>
                seg_data<="11111111";
         end case;
    end process;	
end behave;






































