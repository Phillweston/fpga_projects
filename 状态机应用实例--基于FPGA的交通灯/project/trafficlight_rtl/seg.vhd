LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY seg IS
PORT(
    clk,reset_n:     IN STD_LOGIC;       --clk娑?0M閺冨爼鎸撴穱鈥冲娇閿涘old娑撹櫣鎻ｉ幀銉や繆閸欏嚖绱漴eset娑撳搫顦叉担宥勪繆閸?
    second_count_ge: IN std_logic_vector(3 downto 0);--缁夋帞娈戞稉顏冪秴
    second_count_shi:IN std_logic_vector(3 downto 0);--缁夋帞娈戦崡浣风秴
    seg_duan     :      OUT std_logic_vector(7 DOWNTO 0);   --閸氬嫭顔岄弫鐗堝祦鏉堟挸鍤? 
    seg_wei     :       OUT std_logic_vector(3 DOWNTO 0)  --閺佹壆鐖滅粻锛勬畱娴ｅ秹鈧瀚ㄩ崣锝冣偓鍌欑閸?娴?
    );--
END;

ARCHITECTURE seg_function OF seg IS
  


signal clk_scan:        std_logic;
signal scan_count:      std_logic_vector(13 downto 0);
signal seg_select:      std_logic_vector(1 downto 0);
BEGIN
-- /**********************************************************/
-- //閺佹壆鐖滅粻鈩冩▔缁€鐑樐侀崸?
-- //
-- /**********************************************************/
    -- //****************************************************************************************************
    -- //  濡€虫健閸氬秶袨:閺佹壆鐖滅粻鈩冨閹诲繑妞傞柦鐔堕獓閻㈢喐膩閸?
    -- //  閸旂喕鍏橀幓蹇氬牚:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            scan_count <= "00000000000000";
            clk_scan <= '0';
        elsif(clk'event and clk = '1')then--娑撳﹤宕屽▽鑳曢崣?
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
        elsif(clk_scan'event and clk_scan = '1')then--娑撳﹤宕屽▽鑳曢崣?
            seg_select <= seg_select + '1';
        end if;
    end process;
    
    -- //****************************************************************************************************
    -- //  濡€虫健閸氬秶袨:閺佹壆鐖滅粻鈩冩▔缁€鐑樐侀崸?
    -- //  閸旂喕鍏橀幓蹇氬牚:
    -- //****************************************************************************************************
    process(clk)
    begin 
        if(clk'event and clk = '1')then--娑撳﹤宕屽▽鑳曢崣?
            case seg_select is
            when "00"=>--閺勫墽銇氱粔鎺旀畱娑擃亙缍呴弫?
                seg_wei <="1110";
                case second_count_ge is
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
            when "01"=>--閺勫墽銇氱粔鎺旀畱閸椾椒缍呴弫?
                seg_wei <="1101";
                case second_count_shi is
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
            when "10"=>--閺勫墽銇氱粔鎺旀畱娑擃亙缍呴弫?
                seg_wei <="1011";
                case second_count_ge is
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
            when "11"=>--閺勫墽銇氱粔鎺旀畱閸椾椒缍呴弫?
                seg_wei <="0111";
                case second_count_shi is
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
    
END seg_function;