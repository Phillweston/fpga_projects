--control.vhd
--ARM������������ַ��ڶ������ݰ��������õ������
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity control is
port(
	 reset:in std_logic;--1 able
	 --clk:in std_logic; --����ʱ��--��Ϊ�ߵ��ڴ�����50MHZ��ɨ��ʱ��
     r_ready:in std_logic; --�����ر�ʾ���յ���һ����
	 data_shou:in std_logic_vector(7 downto 0);--�յ�������
	 data_out:out std_logic_vector(31 downto 0);--���ݺϲ����ĸ��ֽں����
	 can_panduan:out std_logic);--Ϊ��1�����Խ����ж����ݲ���,������ͳ��ı�־�ź�
end control;

architecture one of control is   --������Ԫ��Ϊa[0]��a[1]��a[2]��a[3]
type data_ram is array(3 downto 0) of std_logic_vector(7 downto 0);
signal temp:data_ram;--����һ��������4��8λ����
signal biaozhi:std_logic:='0';--һ����־λ
signal count:integer range 0 to 3:=0;
signal dataout_temp:std_logic_vector(31 downto 0):=(others=>'0');
begin
P1:process(r_ready,data_shou,reset)
   begin
        if(reset='1') then
           biaozhi<='0';
           count<=0;
           temp(3)<="00000000";
           temp(2)<="00000000";
           temp(1)<="00000000";
           temp(0)<="00000000"; 
        elsif(r_ready'event and r_ready='1') then
		   temp(count)<=data_shou;
		  --biaozhi<='0';
		   if(count=3) then
		   count<=0;
		   biaozhi<='1';--�����ĸ����ݺ��ñ�־λ�ɡ�0��->��1��
		   else
		   biaozhi<='0';
		   count<=count+1;
		   end if;
		end if;
end process;

P2:process(biaozhi,reset)
   begin
        if(reset='1') then
		  dataout_temp<=(others=>'0');
		elsif(biaozhi'event and biaozhi='1') then
		  dataout_temp<=temp(3)&temp(2)&temp(1)&temp(0);--���ݲ������
		end if;
   end process;   
data_out<=dataout_temp;
can_panduan<=biaozhi;
end one;  


		   




	 