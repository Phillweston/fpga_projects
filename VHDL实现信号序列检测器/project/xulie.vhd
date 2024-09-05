library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity xulie is
port(
    CLK: in STD_LOGIC;
    Din: in STD_LOGIC;
    CLR : in STD_LOGIC;
    xulie_data:in STD_LOGIC_VECTOR(7 DOWNTO 0);
    counter1:out STD_LOGIC_VECTOR(3 DOWNTO 0);
    counter2:out STD_LOGIC_VECTOR(3 DOWNTO 0);
    counter3:out STD_LOGIC_VECTOR(3 DOWNTO 0);
    AB : out STD_LOGIC_VECTOR(3 downto 0)
    );
end xulie;
architecture BEHAV of xulie is
signal Q : inTEGER range 0 to 8;
signal D : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal counter_reg1:STD_LOGIC_VECTOR(3 DOWNTO 0);
signal counter_reg2:STD_LOGIC_VECTOR(3 DOWNTO 0);
signal counter_reg3:STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
    counter1 <= counter_reg1;
    counter2 <= counter_reg2;
    counter3 <= counter_reg3;
    D<=xulie_data;
    process(CLK,CLR)
    begin
        if (CLR = '0')then 
            Q<=0;
            counter_reg1 <= "0000";
            counter_reg2 <= "0000";
            counter_reg3 <= "0000";
        elsif (CLK'EVENT AND CLK='1') then
            case Q IS
                when 0=> if Din=D(7) then Q<=1; else Q<=0; end if;
                when 1=> if Din=D(6) then Q<=2; else Q<=0; end if;
                when 2=> if Din=D(5) then Q<=3; else Q<=0; end if;
                when 3=> if Din=D(4) then Q<=4; else Q<=0; end if;
                when 4=> if Din=D(3) then Q<=5; else Q<=0; end if;
                when 5=> if Din=D(2) then Q<=6; else Q<=0; end if;
                when 6=> if Din=D(1) then Q<=7; else Q<=0; end if;
                when 7=> 
                        if Din=D(0) then
                            Q<=8; 
                            if(counter_reg1 = "1001")then
                                counter_reg1 <= "0000";
                                if(counter_reg2 = "1001")then
                                    counter_reg2 <= "0000";
                                    if(counter_reg3 = "1001")then
                                        counter_reg3 <= "0000";
                                    else
                                        counter_reg3 <= counter_reg3 + '1';
                                    end if;
                                else
                                    counter_reg2 <= counter_reg2 + '1';
                                end if;
                            else 
                                counter_reg1 <= counter_reg1 + '1';
                            end if;
                            
                        else 
                            Q<=0;
                        end if;
                when others => Q<=0;
            end case;
        end if;
    end process;
    
    process(Q)
    begin
        if (Q=8) then
            AB<="1111";
        else 
            AB<="0000";
        end if;
    end process;
end BEHAV;
