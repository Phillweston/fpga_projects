-- （1）miso – 主设备数据输入，从设备数据输出；
-- （2）mosi – 主设备数据输出，从设备数据输入；
-- （3）SCLK – 时钟信号，由主设备产生；
-- （4）CS – 从设备使能信号，由主设备控制。
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity spi_out is
port(
     clk_in:in std_logic;   --时钟输入 50M
     miso:in std_logic;     --收信号
     cs:out std_logic;      --片选信号
     mosi:out std_logic;    --发信号
     sck_out:out std_logic;  --时钟信号
     received_data_out:out std_logic_vector(7 downto 0)
);
end spi_out;
architecture spi_behave of spi_out is
signal data_out:std_logic_vector(7 downto 0);--发送的8bit数据
signal num:     integer range 0 to 9;       --计数器
signal clk_div: std_logic;                  --分频
signal gain_data:std_logic_vector(8 downto 0);
begin 
   sck_out<=clk_div;
   data_out<="01100110";--预设发送数据
   -- *************************************************
   -- 时钟分频模块，对50M时钟进行分频，然后将分频后的时钟作为
   -- spi的时钟信号，分频后的时钟信号为5M
   -- *************************************************
   process(clk_in)--分频
    variable counter:integer range 0 to 4;
     begin 
        if(clk_in'event and clk_in='1')then
           if(counter=4)then 
                counter:=0;
                clk_div<=not clk_div;
           else 
                counter:=counter+1;
           end if;
        end if;
   end process;
   -- *************************************************
   -- 数据发送模块
   -- 在num在1~8的范围内将8bit的数据进行发送，发送的同时
   -- cs在低电平的时候有效，选通spi的从机
   -- *************************************************
   process(clk_div)--发送,下降沿
      begin
        if(clk_div'event and clk_div='0')then 
            if(num=9)then-- 在num为9的时候对num进行清零，以进行下一次数据发送
                num<=0;
            else 
                num<=num+1;
            end if;
            if(num>0 and num<9)then--在num在1~8的范围内将8bit的数据进行发送
               cs<='0';--cs在低电平的时候有效，选通spi的从机
               mosi<=data_out(8-num);--在num的引导下将8bit数据逐个发送出去，高位在前，低位在后
            else 
               cs<='1';--发送完成后，将cs拉高，不选通spi从机
               mosi<='Z';--发送高组态信号
            end if;
        end if;
   end process;
   

   process(clk_div)
      variable num:integer range 0 to 9;
      begin 
          if(clk_div'event and clk_div='1')then 
                if(num>0 and num<9)then 
				  gain_data(9-num)<=miso;
                  num:=num+1;
                  if(num = 8)then
                    received_data_out<=gain_data(7 downto 0);
                  end if;
                elsif(num=9)then
                  num:=0;
                else
				  num:=num+1;
                end if;
		  end if;
		  
   end process;
end  spi_behave; 
   
   
   
   
   
   
   
         
         
         
   
   
   
   
   
                