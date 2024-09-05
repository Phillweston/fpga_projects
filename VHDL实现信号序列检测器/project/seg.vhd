LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY seg IS
PORT(
    clk,reset_n:        IN STD_LOGIC;       --
    counter1:           in STD_LOGIC_VECTOR(3 DOWNTO 0);
    counter2:           in STD_LOGIC_VECTOR(3 DOWNTO 0);
    counter3:           in STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk_out:            OUT std_logic;
    seg_duan     :      OUT std_logic_vector(7 DOWNTO 0);   --
    seg_wei     :       OUT std_logic_vector(4 DOWNTO 0)
    );
END;

ARCHITECTURE seg_function OF seg IS
signal clk_scan:        std_logic;
signal scan_count:      std_logic_vector(13 downto 0);
signal seg_select:      std_logic_vector(2 downto 0);
BEGIN
    clk_out <= clk_scan;
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            scan_count <= "00000000000000";
            clk_scan <= '0';
        elsif(clk'event and clk = '1')then--
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
            seg_select <= "000";
        elsif(clk_scan'event and clk_scan = '1')then--
            seg_select <= seg_select + '1';
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  
    -- //  
    -- //****************************************************************************************************
    process(clk)
    begin 
        if(clk'event and clk = '1')then--
            case seg_select is
            when "000"=>--
                seg_wei <="11110";
                case counter1 is
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
            when "001"=>--
                seg_wei <="11101";
                case counter2 is
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
            when "010"=>--
                seg_wei <="11011";
                case counter3 is
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