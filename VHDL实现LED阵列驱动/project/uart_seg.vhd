--/******************************************************************************
-- ** 功能描述：串口通信__FPGA和上位机通信(波特率：9600bps,10个bit是1位起始位，8个数据位，1个结束)
-- 字符串（串口调试工具设成字符格式接受和发送方式）,FPGA接受（0到9和A到F）后显示在7段数码管上。
--*******************************************************************************/
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity uart_seg is
port(
    clk:in std_logic;--50M时钟输入
    rst:in std_logic;--复位信号输入
    rxd:in std_logic;--串行数据接收端
    txd:out std_logic;--串行数据发送端
    en:out std_logic_vector(7 downto 0);--数码管使能
    seg_data:out std_logic_vector(7 downto 0)--数码管数据
    );
end uart_seg;
architecture behave of uart_seg is
--/*****************************/
signal div_reg:integer range 0 to 326 ;             --分频计数器，分频值由波特率决定。分频后得到频率8倍波特率的时钟
signal div8_rec_reg:std_logic_vector(2 downto 0);   --该寄存器的计数值对应接收时当前位于的时隙数
signal state_rec:std_logic_vector(3 downto 0);      --接受状态寄存器
signal clkbaud_rec:std_logic;                       --以波特率为频率的接受使能信号
signal clkbaud8x:std_logic;                         --以8倍波特率为频率的时钟，它的作用是将发送或接受一个bit的时钟周期分为8个时隙

signal recstart:std_logic;                          --开始接收标志
signal recstart_tmp:std_logic;                      --开始接收标志               

signal rxd_reg1:std_logic;                          --接收寄存器1
signal rxd_reg2:std_logic;                          --接收寄存器2，因为接收数据为异步信号，故用两级缓存
signal rxd_buf:std_logic_vector(7 downto 0);        --接受数据缓存
-- 分频参数，其值由对应的波特率计算而得，按此参数分频的时钟频率是波倍特率的8	
-- 倍，此处值对应9600的波特率，即分频出的时钟频率是9600*8(CLK 50M)
begin
    en <= "00000000";--7段数码管使能信号
    process(clk,rst)
    begin
        if(clk'event and clk = '1')then--上升沿触发
            if(rst = '0')then
                div_reg<=0;
            else
                if(div_reg = 324)then--时钟频率是9600*8
                    div_reg <= 0;
                else
                    div_reg <= div_reg+1;
                end if;
            end if;
        end if;
    end process;

    process(clk,rst)--分频得到8倍波特率的时钟
    begin
        if(clk'event and clk = '1')then--上升沿触发
            if(rst = '0')then
                clkbaud8x<='0';
            else
                if(div_reg = 324)then
                    clkbaud8x <=not clkbaud8x;--取反分频
                end if;
            end if;
        end if;
    end process;

    process(clkbaud8x,rst)
    begin
        if(clkbaud8x'event and clkbaud8x = '1')then--上升沿触发
            if(rst = '0')then
                div8_rec_reg<="000";
            else
                if(recstart='1')then--接收开始标志
                    div8_rec_reg <= div8_rec_reg + '1';--接收开始后，时隙数在8倍波特率的时钟下加1循环
                end if;
            end if;
        end if;
    end process;
    
    process(div8_rec_reg)
    begin
        if(div8_rec_reg="111")then
            clkbaud_rec<='1';--在第7个时隙，接收使能信号有效，将数据打入
        else
            clkbaud_rec<='0';
        end if;
    end process;
    
    process(clkbaud8x,rst)--接受PC机的数据
    begin
        if(clkbaud8x'event and clkbaud8x = '1')then--上升沿触发
            if(rst='0')then
                rxd_reg1 <= '0';--接收寄存器1清零
                rxd_reg2 <= '0';--接收寄存器2清零
                rxd_buf <= "00000000";--接受数据缓存清零
                state_rec <= "0000";--接受状态寄存器清零
                recstart <= '0';--开始接收标志清零
                recstart_tmp <= '0';--开始接收标志清零
            else
                rxd_reg1 <= rxd;--将接收的数据存入接收寄存器1
                rxd_reg2 <= rxd_reg1;--将接收的数据存入接收寄存器2
                if(state_rec="0000")then--
                    if(recstart_tmp='1')then
                        recstart<='1';--开始接收标志有效
                        recstart_tmp<='0';--开始接收标志清零
                        state_rec<=state_rec+'1';--接受状态寄存器加一，开始接收下一位数据
                    elsif((not rxd_reg1)='1' and rxd_reg2='1')then --检测到起始位的下降沿，进入接受状态
                        recstart_tmp<='1';--
                    end if;
                elsif(state_rec>="0001" and state_rec<="1000")then
                    if(clkbaud_rec='1')then
                        rxd_buf(7) <= rxd_reg2;--接收寄存器2的数据缓存至接受数据缓存
                        rxd_buf(6 downto 0) <= rxd_buf(7 downto 1);--接受数据缓存器进行缓存
                        state_rec <= state_rec + '1';--接受状态寄存器加一，开始接收下一位数据
                    end if;
                elsif(state_rec = "1001")then--8位数据接收完成
                    if(clkbaud_rec='1')then--接收信号为1，表明接收8bit数据完成
                        state_rec<="0000";--接受状态寄存器清零
                        recstart<='0';--开始接收标志清零
                    end if;
                end if;
              end if;
        end if;
    end process;
    
    process(rxd_buf)--将接受的数据用数码管显示出来
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






































