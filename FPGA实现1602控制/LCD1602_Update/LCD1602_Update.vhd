library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;	
entity LCD1602_Update is  
			Port ( 
            Clk :   in      STD_LOGIC;  
            Reset   :   in     STD_LOGIC;
            data_in1:   in     STD_LOGIC_VECTOR (7 downto 0);          
            data_in2:   in     STD_LOGIC_VECTOR (7 downto 0);          
            data_in3:   in     STD_LOGIC_VECTOR (7 downto 0);          
            data_in4:   in     STD_LOGIC_VECTOR (7 downto 0);          
            data_in5:   in     STD_LOGIC_VECTOR (7 downto 0);          
            data_in6:   in     STD_LOGIC_VECTOR (7 downto 0);
            password_result:   in     STD_LOGIC_VECTOR (7 downto 0);
            
            LCD_DATA    :   out     STD_LOGIC_VECTOR (7 downto 4);  
            LCD_EN  :   out     STD_LOGIC;  
            LCD_RS  :   out     STD_LOGIC;  
            LCD_RW  :   out     STD_LOGIC;
            back_light:out std_logic
            );  
end LCD1602_Update;
	  
architecture Behavioral of LCD1602_Update is  
  
Signal Clk_scan : STD_LOGIC := '0';  
Signal Clk_100us    : STD_LOGIC ;  
Signal data_out : STD_LOGIC_VECTOR (7 downto 0) ;  

Type string1 is array(0 to 5) of STD_LOGIC_VECTOR(7 downto 0);  
-- constant data1 : string1 := (x"48",x"45",x"4c",x"4c",x"4f",x"21");      --"HELLO!"  
Type        State_Display is (  
                            st_disp1,st_disp2,st_disp3,st_disp4,st_disp5,  
                            st_disp6,st_disp7,st_disp8,st_disp9,st_disp10,  
                            st_disp11,st_disp12,st_disp13,st_disp14,st_disp15,  
                            st_disp16,st_disp17,st_disp18,st_disp19,st_disp20,  
                            st_disp21  
                            );  
	Signal  Current_Disp : State_Display := st_disp1;  
	  
	begin  
	back_light <= '1';
	    Proc_CLK_100us:process(Clk)     --Frequency division to 10KHz,which is 100us  
    variable cnt_clk : integer range 0 to 5000 := 0;  
	    begin  
	        if(rising_edge(Clk))    then      
	            if(cnt_clk < 2500)   then      
	                cnt_clk := cnt_clk + 1;  
	                Clk_scan    <= '0';  
	            elsif(cnt_clk < 4999) then  
	                cnt_clk := cnt_clk + 1;  
	                Clk_scan    <= '1';  
	            else  
	                cnt_clk := 0;     
	            end if;  
	            Clk_100us <= Clk_scan;  
	        end if;  
	    end process Proc_CLK_100us;  
      
	    Proc_Display:process(Clk_100us,Reset)  
	    variable cnt_disp :     integer range 0 to 10000;  
	    variable cnt_rw     :   integer range 0 to 6  := 0;  
	    -- variable cnt_loop :     integer range 0 to 16 := 0;  
	    begin  
	--      Method 1 : Use a button(always High) to set the signal port "Reset"  
	        if(Reset = '0') then  
	            LCD_RS  <= '0';  
	            LCD_RW  <= '0';  
	            LCD_EN  <= '0';  
	            LCD_DATA <= "0000";  
	            cnt_disp := 0;  
	            cnt_rw  := 0;  
	            -- cnt_loop := 0;
                data_out <= "00100000";--显示" "
	            Current_Disp <= st_disp1;  

	        elsif(rising_edge(CLK_100us)) then  
	            case Current_Disp is  
	                when st_disp1 =>  --Wait for 15ms or longer
	                    if(cnt_disp < 150) then                
	                        cnt_disp := cnt_disp + 1;  
	                        Current_Disp <= st_disp1;  
	                    else  
	                        cnt_disp := 0;  
	                        Current_Disp <= st_disp2;  
	                    end if;  
	                when st_disp2 =>         --Write SF_D<11:8>=0x3, pulse LCD_E High for 240ns.  
	                    LCD_DATA <= x"3";  
	                    LCD_EN  <= '1';  
	                    if(cnt_disp < 41) then--Wait for 4.1ms or longer                 
	                        cnt_disp := cnt_disp + 1;        
	                        Current_Disp <= st_disp2;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp3;  
	                    end if;  
	                when st_disp3 =>     --Write SF_D<11:8>=0x3, pulse LCD_E High for 240ns.  
	                    if(cnt_disp < 1) then                --Wait 100 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"3";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp3;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp4;  
	                    end if;  
	                when st_disp4 =>     --Write SF_D<11:8>=0x3, pulse LCD_E High for 240ns.  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"3";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp4;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp5;  
	                    end if;  
	                when st_disp5 =>     --Write SF_D<11:8>=0x2, pulse LCD_E High for 240ns.     
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"2";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp5;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp6;  
	                    end if;  
	                when st_disp6 =>             -- Function Set   0x28  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"2";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp6;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp7;  
	                    end if;  
                when st_disp7 =>  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"8";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp7;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp8;  
	                    end if;  
	                when st_disp8 =>             --Entry Mode Set  0x06  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"0" ;  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp8;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp9;  
	                    end if;  
	                when st_disp9 =>  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"6";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp9;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp10;  
	                    end if;  
	                    when st_disp10 =>            --Display On/Off  0x0C  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"0";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp10;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp11;  
	                    end if;  
	                when st_disp11 =>  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"C";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp11;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp12;  
	                    end if;  
	                    when st_disp12 =>            --Clear Display  0x01  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"0";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp12;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp13;  
	                    end if;  
	                when st_disp13 =>  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"1";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp13;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp14;  
	                    end if;  
	                when st_disp14 =>  
	                    if(cnt_disp < 17) then               --Wait 1.64ms or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        Current_Disp <= st_disp14;  
	                    else  
	                        cnt_disp := 0;  
	                        Current_Disp <= st_disp15;  
	                    end if;  
	                when st_disp15 =>                --Set DDRAM Address 0x00+0x80  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"8";  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp15;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp16;  
	                    end if;  
	                when st_disp16 =>                      --Shift the DDRAM Address  
	                    if(cnt_disp < 1) then                --Wait 40 μs or longer  
	                        cnt_disp := cnt_disp + 1;  
	                        LCD_DATA <= x"0" ;--显示地址移动+ conv_std_logic_vector(cnt_loop,4)
	                        -- if(cnt_loop < 5) then   
	                            -- cnt_loop := cnt_loop + 1;  
	                        -- else  
	                            -- cnt_loop := 0;  
	                        -- end if;  
	                        LCD_EN  <= '1';  
	                        Current_Disp <= st_disp16;  
	                    else  
	                        cnt_disp := 0;  
	                        LCD_EN  <= '0';  
	                        Current_Disp <= st_disp17;  
	                    end if;  
	                when st_disp17 =>            --Write Data to DDRAM(st_disp17-st_disp20)  
	                    case cnt_rw is
                        when 0=>data_out <= data_in1;
                        when 1=>data_out <= data_in2;
                        when 2=>data_out <= data_in3;
                        when 3=>data_out <= data_in4;
                        when 4=>data_out <= data_in5;
                        when 5=>data_out <= data_in6;
                        when 6=>data_out <= password_result;
                        when others=>data_out <= "00100000";--显示" "
                        end case;
                        if(cnt_rw < 7) then  
	                        LCD_DATA <= data_out(7 downto 4);   --Write the Upper Nibble  data1(cnt_rw)
	                        LCD_EN  <= '1';  
	                        LCD_RS   <= '1';  
	                        Current_Disp <= st_disp18;  
	                    else  
	                        cnt_rw  := 0;  
	                        Current_Disp <= st_disp21;  
	                    end if;  
	                when st_disp18 =>  
	                    LCD_EN  <= '0';  
	                    Current_Disp <= st_disp19;  
	                when st_disp19 =>  
	                    LCD_DATA <= data_out(3 downto 0);       --Write the Lower Nibble data1(cnt_rw) 
	                    LCD_EN  <= '1';  
	                    LCD_RS   <= '1';  
	                    Current_Disp <= st_disp20;  
	                when st_disp20 =>  
	                    LCD_EN  <= '0';  
	                    cnt_rw  := cnt_rw + 1;  
	                    Current_Disp <= st_disp17;  
	                when st_disp21 =>  
	                    if(cnt_disp < 10000) then    --Delay 1 min to display the next string  
	                        cnt_disp    := cnt_disp + 1;  
	                        Current_Disp <= st_disp21;  
	                    else  
	                        cnt_disp    := 0;  
	                        LCD_RS   <= '0';  
	                        Current_Disp <= st_disp12;
	                    end if;  
	                when others => null;  
	            end case;  
	        end if;  
	    end process Proc_Display;  
        
    -- process(Clk,Reset)
    -- begin
        -- if(Reset = '0')then
            
        -- elsif(Clk'event and Clk = '1')then--
            
        -- end if;
    -- end process;
    
	end Behavioral;  

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    