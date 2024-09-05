--jie shou ji gong you 5 ge zhuangtai
--cai yong zhuangtaiji sheji 
--bo te lv wei 9600bps
--���յĹؼ������ǰ������rxd�ֳ�һ·����
--�ṩ����������
--һ��Ҫ��סһ��������ֻ����һ�����̴���
--�����״̬֮��Ĺ�ϵ

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity receive is
generic(data_wid:integer:=8);
port(bclkr:in std_logic;  --shu ru shizhong
     reset:in std_logic;  --fuwei
     rxdr:in std_logic;   --chuan kou shuru
     r_ready:out std_logic;   --���ڽ�����0
     rbufs:out std_logic_vector(7 downto 0));  --shuchu shuju
end receive;

architecture one of receive is
type state is(R_START,R_CENTER,R_WAIT,R_SAMPLE,R_STOP);  --5 ge zhuangtaiji
signal s:state:=R_START;  --s yonglai biaozhi nage zhuangtai
signal RXD_SYNC:std_logic;  --ba rxdr shugei ta 
signal count:std_logic_vector(3 downto 0):="0000";  --ding yi yige jishuqi
signal shou_weishu:integer range 0 to 8:=0;  --jie shou dao de shu ju de wei shu 
signal rbuf:std_logic_vector(7 downto 0):="00000000";
begin
p1:process(rxdr)    --ba rxdr fen chu yi lu chu lai yong lai cai yang
  begin
  if(rxdr='0') then RXD_SYNC<='0';
  else
   RXD_SYNC<='1';
  end if;
end process;

p2:process(bclkr,reset,rxdr,RXD_SYNC) --���ս���
         begin
         if(reset='1') then--ȫ�ָ�λ
             s<=R_START;
             r_ready<='1'; 
             count<="0000";
             shou_weishu<=0;
             rbufs<="00000000";
         elsif(rising_edge(bclkr)) then--ʱ�������ش���״̬ת��  
            case s is
                    when R_START =>--�����ʼ״̬
                          if(RXD_SYNC='0') then--��⵽��ʼλΪ0
                            s<=R_CENTER;--״̬��ת
                            r_ready<='0';
                          else
                          s<=R_START;
                          r_ready<='1';
                          count<="0000";--add
                          end if;
                          
                    when R_CENTER =>--���������м䴦���������ȶ�
                         if(RXD_SYNC='0') then
                            if(count="1000" and RXD_SYNC='0') then 
                                count<="0000";
                                s<=R_WAIT;
                            elsif(count<"1000") then 
                                count<=count+'1';
                                s<=R_CENTER;
                            end if;
                         else s<=R_START;  
                            
                         end if;
                         
                         
                    when R_WAIT => --�ȴ�״̬ 
                                
                          if(count="1110" and shou_weishu/=data_wid) then       
							count<="0000";
                            s<=R_SAMPLE;
                          elsif(count="1110" and shou_weishu=data_wid) then--1110
				             count<="0000";
							 shou_weishu<=0;
							 s<=R_STOP;  
							 rbufs<=rbuf;--ԭ�����������
							 --r_ready<='1';--��Ԥ��ʱ�䴦�����ݵģ���˿��������ؽ��н���										 
                          else
						     count<=count+1;
						     s<=R_WAIT;
				          end if;
 							    
					 when R_SAMPLE =>--��������
						 rbuf(shou_weishu)<=RXD_SYNC;--��������
						 shou_weishu<=shou_weishu+1;
						 s<=R_WAIT;
					          
					 when R_STOP =>--ֹͣλ
					     r_ready<='1';--��Ԥ��ʱ�䴦�����ݵģ���˿��������ؽ��н���	
					     --rbufs<=rbuf;
					     s<=R_START;
					when others =>--����״̬��ת
					      s<=R_START;
					           
			end case;
	  end if;
end process;
                           
end one;                           
                               
                           
                            
         

