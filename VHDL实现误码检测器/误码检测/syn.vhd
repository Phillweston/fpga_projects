--------------------------------------------------
----------------ͬ��ģ��--------------------------
-------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity syn is
port ( clk		: in  std_logic;
	   rst  	: in  std_logic;
	   m_1  	: in  std_logic;			--����M����
	   m_loc	: in  std_logic;			--����M����
	   en		: out std_logic;			--����M���д���ʹ��
	   start	: out std_logic				--����ͳ�ƿ�ʼ��־
	  );
end entity;

architecture one of syn is 

type states is (st0,st1,st2,st3);
signal present : states :=st0;
signal cnt :integer range 0 to 6:=0;
signal n   :integer range 0 to 7:=0;
-------------------------------------------
begin
process(clk,rst)
begin
if rst='0'then
	present<=st0;
	en<='1';
	cnt<=0;
	n<=0;
elsif rising_edge(clk)then
	case present is
		when st0=>	if cnt=6 then	--����7�����жԱ�
                        present<=st2;
                        cnt<=0;
					else 
                        present<=st1;
					end if;
		when st1=>	
					if m_1=m_loc then
						n<=n;
					else
						n<=n+1;		--�ԱȲ���ͬ��������+1
					end if;
					cnt<=cnt+1;
					present<=st0;
		when st2=>	
	        		n<=0;
					if n<3 then		--������С��3������ѭ���ж�
                        present<=st0;
                        en<='1';
                        start<='1';
					else
                        present<=st3;--����������3��ͬ��ʹ����Ч������M������������ͣһ����
                        en<='0';
                        start<='0';
					end if;
		when st3=>  
					present<=st0;
					en<='1';

		when others =>
					null;
	end case ;
end if;
end process;
end one ;

					
						
						
						

					
					
					
										