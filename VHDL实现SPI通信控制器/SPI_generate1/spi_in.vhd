library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity spi_in is
port(
     cs:in std_logic;
     sck_in:in std_logic;
     mosi:in std_logic;--?
     miso:out std_logic;--?
     data_out:out std_logic_vector(7 downto 0)
);
end spi_in;
architecture spi_behave of spi_in is
signal gain_data:std_logic_vector(7 downto 0);
signal num:integer range 0 to 9;
begin 
   process(sck_in)
      begin 
      
          if(sck_in'event and sck_in='1')then 
            
                if(num>0 and num<9)then 
				  gain_data(9-num)<=mosi;
                  num<=num+1;
                  if(num = 8)then
                    data_out<=gain_data;
                  end if;
                elsif(num=9)then
                  num<=0;
                else
				  num<=num+1;
                end if;
		  end if;
		  
   end process;
 end spi_behave;
             
             
             
             
             
                

