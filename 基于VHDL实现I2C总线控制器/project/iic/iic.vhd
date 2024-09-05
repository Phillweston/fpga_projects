----------------------------------------------------------------------
----------------------------------------------------------------------
-- (发送数据的过程)初始化，准备，发送从机地址，检验应答，
--                  发送字节地址，检验应答，发送数据，检验应答，
--                  发送停止信号
----------------------------------------------------------------------
-- (接收数据的过程)初始化，准备，发送从机地址，检验应答，
--                  发送字节地址，检验应答，
----------------------------------------------------------------------
-- 初始化1，发送从机地址，检验应答，读取数据，发送停止信号，闲置状态
----------------------------------------------------------------------
-- 在写完数据闲置后，进行读数据
----------------------------------------------------------------------
-- 引脚设置：scl接24，sda接26
-- 4个按键分别为：74、67、70、72
-- 4个LED分别为：141、142、143、144
----------------------------------------------------------------------
-- 操作说明：通过紧按按键这个方式代替拨码开关的功能
----------------------------------------------------------------------
-- key1为确认按键，每次先按紧key2~key5的按键，然后按下key1按键，就建按键的
--      信息通过iic发送到iic芯片（AT24c04）上，然后读出显示在led上
----------------------------------------------------------------------
-- key2为普通按键，按下为0，不按为1；对应led4，按下不放开，同时按下key1后放开，就
--      将数据“0111”通过iic发送到iic芯片，在通过iic读出显示在led上，此时，led4亮，其他LED不亮；
----------------------------------------------------------------------
-- key3为普通按键，按下为0，不按为1；对应led3，按下不放开，同时按下key1后放开，就
--      将数据“1011”通过iic发送到iic芯片，在通过iic读出显示在led上，此时，led3亮，其他LED不亮；
----------------------------------------------------------------------
-- key4为普通按键，按下为0，不按为1；对应led2，按下不放开，同时按下key1后放开，就
--      将数据“1101”通过iic发送到iic芯片，在通过iic读出显示在led上，此时，led2亮，其他LED不亮；
----------------------------------------------------------------------
-- key5为普通按键，按下为0，不按为1；对应led1，按下不放开，同时按下key1后放开，就
--      将数据“1110”通过iic发送到iic芯片，在通过iic读出显示在led上，此时，led1亮，其他LED不亮；
----------------------------------------------------------------------
----------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity iic is
port(
    clk:in      std_logic;--输入的50M时钟信号
    reset_n:in  std_logic;--
    sda:inout   std_logic;--IIC的数据信号
    scl:inout   std_logic;--IIC的时钟信号
    key:in      std_logic_vector(3 downto 0);       --按键输入
    led:out     std_logic_vector(7 downto 0);       --LED显示信号
    seg_duan:out std_logic_vector(7 downto 0);      --数码管段信号输出
    seg_wei:out std_logic_vector(7 downto 0)        --数码管位信号输出
);
end iic ;
architecture behave of iic  is
signal clk_div: std_logic;--分频后的时钟

type state is(
            prepare,--准备状态
            start,--开始状态
            send_slave_address,--发送从机地址状态
            ask1,--应答状态1
            send_bit_address,--发送存储地址状态
            ask2,--应答状态2
            send_data,--发送数据
            nack,--没有应答状态
            start1,--开始状态
            send_read,--发送要进行读操作状态
            ask3,--应答状态3
            read_data,--读取数据
            stop,--结束
            idle--空闲状态
            );
signal current_state:state := prepare;--一开始处于准备状态
signal slave_address:   std_logic_vector(8 downto 1):="10100000";--从机地址
signal bit_address:     std_logic_vector(8 downto 1):="00000001";--字节地址
signal data:            std_logic_vector(8 downto 1):="11110000";---待发送的数据
signal data_temp:       std_logic_vector(8 downto 1);--接收数据寄存器
signal flag_rw:         std_logic:='0';             --读写转换标志
signal clk_1hz:         std_logic;
signal count:           std_logic_vector(24 downto 0);
signal clk_scan:        std_logic;
signal seg_select:      std_logic_vector(1 downto 0);
signal scan_count:      std_logic_vector(13 downto 0);
signal data_temp_shi:   std_logic_vector(3 downto 0);
signal data_temp_ge:    std_logic_vector(3 downto 0);
begin
    ----------------------------------------------------------------------
    -- 分频操作，将50M时钟分频至1KHz
    ----------------------------------------------------------------------
    process(clk)
    variable counter:   integer range 0 to 25000;
    begin 
        if(clk'event and clk = '1')then  
            if(counter = 24999)then 
                counter := 0;
                clk_div <= not clk_div;
            else 
                counter := counter + 1;
            end if;
        end if;
    end process;
    ----------------------------------------------------------------------
    -- 按键按下状态采集操作，按键按下状态为‘1’，对应的led亮，没有按下状态为‘0’，对应的led灭；
    ----------------------------------------------------------------------
    ----------------------------------------------------------------------
    -- iic通信写入与读出模块
    ----------------------------------------------------------------------
    process(clk_div,reset_n)
    variable counter:       integer range 0 to 20;
    variable num_counter:   integer range 0 to 8:=8;--发送数据计数寄存器
    variable temp:          std_logic_vector(6 downto 0);
    begin 
        if(reset_n = '0')then
            led <= "11111111";--led灭
            --按键按下状态采集操作，按键按下状态为‘1’，对应的led亮，没有按下状态为‘0’，对应的led灭；
            data(4 downto 1) <= key(3 downto 0);
            
            slave_address(8 downto 1)<="10100000";--从机地址
            bit_address(8 downto 1)<="00000001";--字节地址
            current_state <= prepare;--准备状态
            num_counter:=8;
            counter:=0;
            temp:="0000000";
            flag_rw<='0';
        elsif(clk_div'event and clk_div = '1')then 
    --------------------------------------------
    --------------------进入写入状态-----------
    --------------------------------------------
            if(flag_rw = '0')then
                case current_state is
                    when prepare=>temp:=temp+1;---进入准备状态
                        if(temp="0000010")then 
                            temp:="0000000";
                            current_state<=start;
                        else
                            current_state<=prepare;
                        end if;
                    when start=>---发送起始信号
                        counter:=counter+1;
                        case counter is
                            when 1=>sda<='1';
                            when 2=>scl<='1';
                            when 3=>sda<='0';
                            when 4=>scl<='0';
                            when 5=>counter:=0;
                            current_state<=send_slave_address;
                            when others=>null;
                        end case;
                    when send_slave_address=>--发送从机地址
                        counter:=counter+1;
                        -- led<="01111111";
                        case counter is
                            when 1=>sda<=slave_address(num_counter);---先发送高位数据
                            when 2=>scl<='1';
                            when 3=>scl<='0';
                            when 4=>num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then--判断8位数据是否发送完
                                    current_state<=ask1;
                                    num_counter:=8;
                                else 
                                    current_state<=send_slave_address;
                                end if;
                            when others=>null;
                        end case;
                    when ask1=>--应答1
                        counter:=counter+1;
                        -- led<="10111111";
                        case counter is
                            when 1=>sda<='0';
                            when 2=>scl<='1';
                            when 3=>scl<='0';
                            when 4=>counter:=0;
                                current_state<=send_bit_address;
                            when others=>null;
                        end case;
                    when send_bit_address=>--发送字节地址
                        counter:=counter+1;
                        -- led<="11011111";
                        case counter is
                            when 1=>sda<=bit_address(num_counter);
                            when 2=>scl<='1';
                            when 3=>scl<='0';
                            when 4=>
                                num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then 
                                    current_state<=ask2;
                                    num_counter:=8;
                                else 
                                    current_state<=send_bit_address;
                                end if;
                            when others=>null;
                        end case;
                    when ask2=>counter:=counter+1;---应答2
                        -- led<="11101111";
                        case counter is
                            when 1=>sda<='0';
                            when 2=>scl<='1';
                            when 3=>scl<='0';
                            when 4=>counter:=0;
                            current_state<=send_data;
                            when others=>null;
                        end case;
                    when send_data=>counter:=counter+1;--发送数据
                        -- led<="11110111";
                        case counter is
                            when 1=>sda<=data(num_counter);
                            when 2=>scl<='1';
                            when 3=>scl<='0';
                            when 4=>
                                num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then 
                                    current_state<=ask3;
                                    num_counter:=8;
                                else 
                                    current_state<=send_data;
                                end if;
                            when others=>null;
                        end case;
                    when ask3=>--应答3
                        counter:=counter+1;
                        -- led<="11111011";
                        case counter is
                            when 1=>sda<='0';
                            when 2=>scl<='1';
                            when 3=>scl<='0';
                            when 4=>counter:=0;
                                current_state<=stop;
                            when others=>null;
                        end case;
                    when stop=>--停止信号
                        counter:=counter+1;
                        -- led<="11111101";
                        case counter is
                            when 1=>sda<='0';
                            when 3=>scl<='1';
                            when 10=>sda<='1';
                            when 15=>counter:=0;
                            current_state<=idle;
                            when others=>null;
                        end case;
                    when idle=>sda<='1';---闲置
                        scl<='1';
                        current_state<=prepare;
                        -- led<="11111110";
                        flag_rw<='1';--状态转换至读取操作
                        ---初始化
                        num_counter:=8;
                        counter:=0;
                        temp:="0000000";
                        when others=>null;
                end case;
            end if;
    ------------------------------------------------------
    ----------------进入读取状态-------------------------
    ------------------------------------------------------
            if(flag_rw = '1')then
                case current_state is
                    when prepare=>temp:=temp+1;
                        if(temp="0000010")then 
                            temp:="0000000";
                            current_state<=start;
                        else
                            current_state<=prepare;
                        end if;
                    when start=>
                        counter:=counter+1;
                        case counter is
                            when 1=>sda<='1';
                            when 3=>scl<='1';
                            when 5=>sda<='0';
                            when 7=>scl<='0';
                            when 9=>counter:=0;
                                current_state<=send_slave_address;
                            when others=>null;
                        end case;
                    when send_slave_address=>
                        counter:=counter+1;
                        -- led<="01111111";
                        case counter is
                            when 1=>sda<=slave_address(num_counter);---先发送高位数据
                            when 3=>scl<='1';
                            when 6=>scl<='0';
                            when 8=>num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then--判断8位数据是否发送完
                                    current_state<=ask1;
                                    num_counter:=8;
                                else 
                                    current_state<=send_slave_address;
                                end if;
                            when others=>null;
                        end case;    
                    when ask1=>
                        counter:=counter+1;
                        -- led<="10111111";
                        case counter is
                            when 3=>sda<='0';
                            when 6=>scl<='1';
                            when 8=>scl<='0';
                            when 10=>counter:=0;
                                current_state<=send_bit_address;
                            when others=>null;
                        end case;
                    when send_bit_address=>
                        counter:=counter+1;
                        -- led<="11011111";
                        case counter is
                            when 1=>sda<=bit_address(num_counter);
                            when 3=>scl<='1';
                            when 6=>scl<='0';
                            when 9=>
                                num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then 
                                    current_state<=ask2;
                                    num_counter:=8;
                                else 
                                    current_state<=send_bit_address;
                                end if;
                            when others=>null;
                        end case;
                    when ask2=>counter:=counter+1;
                        -- led<="11101111";
                        case counter is
                            when 3=>sda<='0';
                            when 6=>scl<='1';
                            when 8=>scl<='0';
                            when 10=>counter:=0;
                                current_state<=start1;
                            when others=>null;
                        end case;
                    when start1=>--重新初始化
                        counter:=counter+1;
                        -- led<="11110111";
                        case counter is
                            when 1=>sda<='1';
                            when 3=>scl<='1';
                            when 6=>sda<='0';
                            when 8=>scl<='0';
                            when 10=>counter:=0;
                                current_state<=send_read;
                                slave_address<="10100001";
                            when others=>null;
                        end case;       
                    when send_read=>--发送从机地址
                        counter:=counter+1;
                        -- led<="11111011";
                        case counter is
                            when 1=>sda<=slave_address(num_counter);
                            when 4=>scl<='1';
                            when 6=>scl<='0';
                            when 9=>num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then 
                                    num_counter:=8;
                                    current_state<=ask3;
                                else 
                                    current_state<=send_read;
                                end if;
                            when others=>null;
                        end case;
                    when ask3=>counter:=counter+1;--应答
                        -- led<="11111101";
                        case counter is
                            when 3=>sda<='0';
                            when 6=>scl<='1';
                            when 8=>scl<='0';
                            when 10=>current_state<=read_data;
                                counter:=0;
                            when others=>null;
                            end case;
                    when read_data=>--读取数据
                        counter:=counter+1;
                        -- led<="11111110";
                        case counter is
                            when 1=>sda<='Z';
                            when 4=>scl<='1';
                            when 8=>data_temp(num_counter)<=sda;
                            when 10=>scl<='0';
                            when 12=>num_counter:=num_counter-1;
                                counter:=0;
                                if(num_counter=0)then 
                                    num_counter:=8;
                                    current_state<=stop;
                                else 
                                    current_state<=read_data;
                                end if;
                            when others=>null;
                        end case;
                        --停止信号(在读取一个数据之后，如果主机没有应答则，从机（AT24c04）处于等待状态，
                        --当主机发送一个停止信号，从机则处于备用电源状态。)如果主机发送应答则从机继续发送数据
                    when stop=>
                        counter:=counter+1;
                        case counter is
                            when 1=>sda<='0';
                            when 3=>scl<='1';
                            when 6=>sda<='1';
                            when 8=>counter:=0;
                                current_state<=idle;
                            when others=>null;
                        end case;
                    when idle=>sda<='1';--闲置
                        scl<='1';
                        led<=data_temp;
                        current_state <= idle;--重新进行写操作
                    when others=>null;
                end case;
            end if;
        end if;
    end process;
    
    -- //****************************************************************************************************
    -- //  模块名称:50M时钟分频至1HZ模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
      begin 
        if(reset_n = '0')then
            clk_1hz <= '0';
            count <= "0000000000000000000000000";
        elsif(clk'event and clk = '1')then--上升沿触发
            if(count = "1011111010111100001000000")then--
                count <= "0000000000000000000000000";
                clk_1hz <= not clk_1hz;
            else
                count <= count + '1';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:数码管扫描时钟产生模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            scan_count <= "00000000000000";
            clk_scan <= '0';
        elsif(clk'event and clk = '1')then--上升沿触发
            if(scan_count = "10011100010000")then
                scan_count <= "00000000000000";
                clk_scan <= not clk_scan;
            else
                scan_count <= scan_count + '1';
            end if;
        end if;
    end process;
    process(clk_scan,reset_n)
    begin
        if(reset_n = '0')then
            seg_select <= "00";
        elsif(clk_scan'event and clk_scan = '1')then--上升沿触发
            seg_select <= seg_select + '1';
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:数码管显示模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(reset_n,data_temp) 
    variable e,f,g:std_logic_vector(3 downto 0);  
    begin
        if(reset_n = '0')then
            data_temp_shi <= "0000";
            data_temp_ge <= "0000";
        else
            f := not data_temp(4 downto 1);
            g := "1010";
            e := "0000"; 
            for i in 15 downto 0 loop--采用减法的形式来进行除法运算
                if (f >= g) then 
                    f := f - g;
                    e := e + '1';
                else
                    exit; 
                end if; 
            end loop; 
            data_temp_shi <= e;
            data_temp_ge <= f;
        end if;
    end process; 
    
    process(clk)
    begin 
        if(clk'event and clk = '1')then--上升沿触发
            case seg_select is
            when "00"=>--
                seg_wei <= "11111110";
                case (data_temp_ge) is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when "01"=>--
                seg_wei <="11111101";
                case (data_temp_shi) is
                    when "0000"=>seg_duan <= "11000000";--0
                    when "0001"=>seg_duan <= "11111001";--1
                    when "0010"=>seg_duan <= "10100100";--2
                    when "0011"=>seg_duan <= "10110000";--3
                    when "0100"=>seg_duan <= "10011001";--4
                    when "0101"=>seg_duan <= "10010010";--5
                    when "0110"=>seg_duan <= "10000010";--6
                    when "0111"=>seg_duan <= "11111000";--7
                    when "1000"=>seg_duan <= "10000000";--8
                    when "1001"=>seg_duan <= "10010000";--9
                    when others=>null;
                end case;
            when others=>null;
            end case;
        end if;
    end process;
    
 end behave;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
