library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

entity ds18B20 is  
port(
    clk : in std_logic;---50MHz 
    rst_n: in std_logic; --复位信号输入
    one_wire  : inout std_logic;  --DS18B20数据线
    ---------------- 
    dataout : out std_logic_vector(7 downto 0); --数码管数据输出
    en : out std_logic_vector(3 downto 0));  --数码管位选信号  
end ds18B20;

architecture Behavioral of ds18B20 is  
signal dataout_buf:std_logic_vector(3 downto 0);   
signal count:std_logic_vector(17 downto 0); --分频计数器
signal cnt_scan:std_logic_vector(17 downto 0);   --数码管的扫描显示计数器
signal clk_1us:std_logic;-- 1MHz 时钟

signal cnt_1us:integer range 0 to 750002;-- 1us延时计数子
signal cnt_1us_clear:std_logic;-- 请1us延时计数子
TYPE STATE_TYPE is (S00,S0,S1,S2,S3,S4,S5,S6,S7,
                    WRITE0,WRITE1,WRITE00,WRITE01,READ0,READ1,READ2,READ3);  --状态机
signal state: STATE_TYPE;  --初始状态设置为复位状态
signal one_wire_buf:std_logic;-- One-Wire总线 缓存寄存器
signal temperature_buf:std_logic_vector(15 downto 0);-- 采集到的温度值缓存器（未处理）
signal DS18B20_DATA_buf:std_logic_vector(15 downto 0);-- 采集到的温度值缓存器（未处理）
signal DS18B20_DATA_buf_temp:std_logic_vector(15 downto 0);-- 采集到的温度值缓存器（未处理）
signal step:integer range 0 to 50;--子状态寄存器 0~50
signal bit_valid:integer range 0 to 15;--有效位 
signal one_wire_in:std_logic;
signal t_buf:std_logic_vector(15 downto 0);
signal t_buf_temp:std_logic_vector(15 downto 0);
signal cnt:integer range 0 to 50;-- 计数子
-- //++++++++++++++++++++++++++++++++++++++
-- // 分频器50MHz->1MHz 开始
-- //++++++++++++++++++++++++++++++++++++++
begin
    -- process (clk,rst_n)
    -- begin  
        -- if rising_edge(clk) then  
            -- if(rst_n='0') then  
                -- cnt <= 0;
            -- else
                -- if(cnt = 49)then
                  -- cnt <= 0;
                -- else
                  -- cnt <= cnt + 1;
                -- end if;
            -- end if;
        -- end if;
    -- end Process;  
      
    process (clk,rst_n)-- 1MHz 时钟
    begin  
        if rising_edge(clk) then  
            if(rst_n='0') then  
                clk_1us <= '0';
            else
                if (cnt = 24)then
                  clk_1us <= not clk_1us;
                  cnt <= 0;
                else
                    cnt <= cnt + 1;
                  -- clk_1us <= '1';    
                end if;
            end if;
        end if;
    end Process;  
-- //--------------------------------------
-- // 分频器50MHz->1MHz 结束
-- //--------------------------------------

-- //++++++++++++++++++++++++++++++++++++++
-- // 延时模块 开始
-- //++++++++++++++++++++++++++++++++++++++
    process (clk_1us,cnt_1us_clear)-- 1MHz 时钟
    begin  
        if rising_edge(clk_1us) then  
            if (cnt_1us_clear = '1')then
                cnt_1us <= 0;
            else
                cnt_1us <= cnt_1us + 1;
            end if;
        end if;
    end Process;
-- //--------------------------------------
-- // 延时模块 结束
-- //--------------------------------------

-- //++++++++++++++++++++++++++++++++++++++
-- // DS18B20状态机 开始
-- //++++++++++++++++++++++++++++++++++++++
-- //++++++++++++++++++++++++++++++++++++++
process (clk_1us,rst_n)-- 1MHz 时钟
    begin  
        if rising_edge(clk_1us) then  
            if(rst_n='0') then  
                one_wire_buf <= 'Z';
                step         <= 0;
                state        <= S00;
            else
            case (state)is
            when S00=>              
                      temperature_buf <= "0000000000011111";
                      state           <= S0;
            when S0=>                    -- 初始化
                      cnt_1us_clear <= '1';
                      one_wire_buf  <= '0';              
                      state         <= S1;
            when S1=>
                    cnt_1us_clear <= '0';
                    if (cnt_1us = 500)then         -- 延时500us
                        cnt_1us_clear <= '1';
                        one_wire_buf  <= 'Z';  -- 释放总线
                        state         <= S2;
                    end if;
            when S2=>
                      cnt_1us_clear <= '0';
                      if (cnt_1us = 100)then         -- 等待100us
                        cnt_1us_clear <= '1';
                        state         <= S3;
                      end if;
            when S3=>if (one_wire='0')then              -- 若18b20拉低总线,初始化成功
                      state <= S4;
                    elsif (one_wire = '1')then          -- 否则,初始化不成功,返回S0
                      state <= S0;
                    end if;
            when S4=>
                      cnt_1us_clear <= '0';
                      if (cnt_1us = 400)then         -- 再延时400us
                        cnt_1us_clear <= '1';
                        state         <= S5;
                      end if;       
            when S5=>-- 写数据
                      if(step = 0)then       -- 0xCC
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 1)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 2)then             
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01; 
                      elsif (step = 3)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;                
                      elsif (step = 4)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 5)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 6)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 7)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 8)then-- 0x44
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 9)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 10)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 11)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 12)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 13)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 14)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 15)then
                        step  <= step + 1;
                        state <= WRITE0;
                      -- // 第一次写完,750ms后,跳回S0
                      elsif (step = 16)then
                        one_wire_buf <= 'Z';
                        step         <= step + 1;
                        state        <= S6;                
                      -- // 再次置数0xCC和0xBE
                      elsif (step = 17)then-- 0xCC
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 18)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 19)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;                
                      elsif (step = 20)then
                        step  <= step + 1;
                        state <= WRITE01;
                        one_wire_buf <= '0';
                      elsif (step = 21)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 22)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 23)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 24)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;               
                      elsif (step = 25)then-- 0xBE
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 26)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;                
                      elsif (step = 27)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;                
                      elsif (step = 28)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;                
                      elsif (step = 29)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 30)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      elsif (step = 31)then
                        step  <= step + 1;
                        state <= WRITE0;
                      elsif (step = 32)then
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= WRITE01;
                      -- // 第二次写完,跳到S7,直接开始读数据
                      elsif (step = 33)then
                        step  <= step + 1;
                        state <= S7;
                      end if;
            when S6=>
                      cnt_1us_clear <= '0';
                      if (cnt_1us = 750000 or one_wire='1')then     -- 延时750ms!!!!
                        cnt_1us_clear <= '1';
                        state         <= S0;    -- 跳回S0,再次初始化
                      end if;
            when S7=>                     -- 读数据
                      if(step = 34)then
                        bit_valid    <= 0;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;
                      elsif (step = 35)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;
                      elsif (step = 36)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;
                      elsif (step = 37)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;               
                      elsif (step = 38)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 39)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;               
                      elsif (step = 40)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 41)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;
                      elsif (step = 42)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 43)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;
                      elsif (step = 44)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      else if (step = 45)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 46)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 47)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 48)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 49)then
                        bit_valid    <= bit_valid + 1;
                        one_wire_buf <= '0';
                        step         <= step + 1;
                        state        <= READ0;                
                      elsif (step = 50)then
                        step  <= 0;
                        state <= S0;
                      end if;
                     end if;
				when WRITE0=>
                      cnt_1us_clear <= '0';
                      one_wire_buf  <= '0';-- 输出0             
                      if (cnt_1us = 80)then-- 延时80us
                        cnt_1us_clear <= '1';
                        one_wire_buf  <= 'Z'; -- 释放总线，自动拉高                
                        state<= WRITE00;
                      end if;
				when WRITE00=>
						state <= S5;
				when WRITE01=>-- 空状态
						state <= WRITE1;
				when WRITE1=>
						cnt_1us_clear <= '0';
                      one_wire_buf  <= 'Z';    -- 输出1   释放总线，自动拉高
                      if (cnt_1us = 80)then        -- 延时80us
                        cnt_1us_clear <= '1';
                        state<= S5; 
                       end if;
				when READ0=>state <= READ1;-- 空延时状态
				when READ1=>
                      cnt_1us_clear <= '0';
                      one_wire_buf  <= 'Z';    -- 释放总线
                      if (cnt_1us = 10)then       -- 再延时10us
                        cnt_1us_clear <= '1';
                        state<= READ2;
                    end if;
				when READ2=>-- 读取数据
                      temperature_buf(bit_valid) <= one_wire;
                      state<= READ3;
				when READ3=>
                      cnt_1us_clear <= '0';
                      if (cnt_1us = 55)then-- 再延时55us
                        cnt_1us_clear <= '1';
                        state<= S7;
                    end if;
				when others=> state<=S00;
            end case;
		end if;
     end if;
end process;

    one_wire <= one_wire_buf;         -- 注意双向口的使用
-- //--------------------------------------
-- // DS18B20状态机 结束
-- //--------------------------------------
-- //++++++++++++++++++++++++++++++++++++++
-- // 对采集到的温度进行处理 开始
-- //++++++++++++++++++++++++++++++++++++++
    process (temperature_buf)
    begin  
        t_buf <= temperature_buf and "0000011111111111";--07FF;
    end Process;  
-- //--------------------------------------
-- // 对采集到的温度进行处理计算
-- //--------------------------------------
process (clk,rst_n)
begin
    if rising_edge(clk) then  
        if(rst_n='0')then
            DS18B20_DATA_buf <="0000000000000000";
            DS18B20_DATA_buf_temp <="0000000000000000";
            -- //复位后全部清零
        else
          t_buf_temp <= t_buf;
          DS18B20_DATA_buf_temp(15 downto 0) <=CONV_STD_LOGIC_VECTOR((CONV_INTEGER(t_buf(3 downto 0)) * 10),16);-- 小数点后一位
          DS18B20_DATA_buf(3 downto 0) <= DS18B20_DATA_buf_temp(7 downto 4);
          
          if(t_buf_temp(7 downto 4) >= "1010")then -- 个位
            DS18B20_DATA_buf(7 downto 4)   <= t_buf(7 downto 4) - "1010";
          else
            DS18B20_DATA_buf(7 downto 4)   <= t_buf(7 downto 4);   
          end if;
          
          if(t_buf_temp(7 downto 4) >= "1010")then -- 十位
            DS18B20_DATA_buf(11 downto 8)   <= t_buf(11 downto 8) + "0001";
          else
            DS18B20_DATA_buf(11 downto 8)   <= t_buf(11 downto 8);
          end if;
       -- // DS18B20_DATA_buf[15:12] = temperature_buf[12] ? 1 : 0;  
       -- // 这里是显示正数还是负数的。我们做正数处理 
        end if;
    end if;
end Process;
-- //////////////////////////////////////////////////////////////////////////////////////////////////
-- //分频计数器
process (clk,rst_n)
begin
    if rising_edge(clk) then  
        if(rst_n='0')then
        count<="000000000000000000";	
        else
            count<=count+'1';
      -- //这里这个计数器的目的是为了在显示数码管的  十位  个位  小数点  小数点后一位  同步
      -- //我们在下面的数码管显示扫描也用到了一样位宽的计数器。
        end if;
    end if;
end Process;

process (clk)
begin
    if rising_edge(clk) then 
      case (count(17 downto 16))is
      -- //  也是分频的关键
      -- //  通过计数器分频，在相同时间间隔内，显示温度的十位  个位  小数点  小数点后一位
      when "00"=> dataout_buf<=DS18B20_DATA_buf(3 downto 0);  --//小数点后一位  
      when "01"=> dataout_buf<="1010";                --//小数点 
      when "10"=> dataout_buf<=DS18B20_DATA_buf(7 downto 4);  --//个位 
      when "11"=> dataout_buf<=DS18B20_DATA_buf(11 downto 8); --//十位 
      end case;
    end if;
end Process;
-- //分频计数器
process (clk,rst_n)
begin
    if rising_edge(clk)then  
        if(rst_n='0')then
            cnt_scan<="000000000000000000";
        else
            cnt_scan<=cnt_scan+'1';
-- //这里这个计数器的目的是为了在显示数码管的  十位  个位  小数点  小数点后一位和读取DS18B20的温度值同步
-- //我们在上面分时段的读取DS18B20的温度值也用到了一样位宽的计数器。
        end if;
    end if;
end Process;

process(cnt_scan)
begin
   case(cnt_scan(17 downto 16))is
                -- //case语句的功能是把数码管轮流点亮。
                -- //修改cnt_scan[17:16]，可以修改数码管的显示频率。
       when "00"=>
          en <= "1110";  --//点亮第一位数码管 .显示小数点后面一位
       when "01"=>
          en <= "1101";  --//点亮第二位数码管 ，但是他的目的是显示 小数点
       when "10"=>
          en <= "1101";  --//点亮第二位数码管 ，但是他的目的是显示 个位
       when "11"=>
          en <= "1011";  --//点亮第三位数码管 ，是显示 十位
       when others=>
          en <= "1111";  --//点亮第八位数码管
    end case;
end Process;

process(dataout_buf)
begin
	case(dataout_buf)is
		when "0000"=>
			dataout<="11000000"; --//共阳数码管显示0的段码
		when "0001"=>
			dataout<="11111001"; --//共阳数码管显示1的段码
		when "0010"=>
			dataout<="10100100"; --//共阳数码管显示2的段码
		when "0011"=>
			dataout<="10110000"; --//共阳数码管显示3的段码
		when "0100"=>
			dataout<="10011001"; --//共阳数码管显示4的段码
		when "0101"=>
			dataout<="10010010"; --//共阳数码管显示5的段码
		when "0110"=>
			dataout<="10000010"; --//共阳数码管显示6的段码
		when "0111"=>
			dataout<="11111000"; --//共阳数码管显示7的段码
		when "1000"=>
			dataout<="11000000"; --//共阳数码管显示8的段码
		when "1001"=>
			dataout<="10010000"; --//共阳数码管显示9的段码	
		when "1010"=>
			dataout<="01111111"; --//共阳数码管显示小数点的段码
		when others=>
			dataout<="10000000";
	 end case;
end Process;
end Behavioral; 



