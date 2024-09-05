library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity triangle is
port(
     clk:in std_logic;--输入时钟
     data_out:out std_logic_vector(9 downto 0));--输出数据
end triangle;
architecture triangle_behave of triangle is
signal flag:std_logic;
signal temp:std_logic_vector(9 downto 0);
begin 
data_out<=temp;
  
  process(clk)
     begin
       if(clk'event and clk='1')then 
          if(flag='0')then 
              if(temp="1111111111")then 
                  temp<=(others=>'1');
                  flag<='1';
              else
                  temp<=temp+'1';
              end if;
          elsif(flag='1')then 
              if(temp="0000000000")then 
                  temp<=(others=>'0');
                  flag<='0';
              else 
                  temp<=temp-'1';
              end if;
          else 
              null;
          end if;
       end if;
  end process;
 end triangle_behave;