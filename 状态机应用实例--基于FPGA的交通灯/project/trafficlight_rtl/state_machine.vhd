LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY state_machine IS
PORT(
    clk,reset_n,hold,clk_1hz,select_model:     IN STD_LOGIC;--clk为50M时钟信号，hold为紧急信号，reset为复位信号
    second_count_ge_out: OUT std_logic_vector(3 downto 0);--秒的个位
    second_count_shi_out:OUT std_logic_vector(3 downto 0);--秒的十位
    red1_out,green1_out,yellow1_out:OUT STD_LOGIC; --控制东西方向的交通灯
    red2_out,green2_out,yellow2_out:OUT STD_LOGIC);--控制南北方向的交通灯
END;

ARCHITECTURE state_machine_function OF state_machine IS
TYPE states IS(s0,s1,s2,s3,s4);
SIGNAL next_state:states;    


signal red1:        std_logic;
signal red2:        std_logic;
signal green1:        std_logic;
signal green2:        std_logic;
signal yellow1:        std_logic;
signal yellow2:        std_logic;
signal second_count_ge:  std_logic_vector(3 downto 0);--秒的个位
signal second_count_shi: std_logic_vector(3 downto 0);--秒的十位
signal second_count_ge_reg:  std_logic_vector(3 downto 0);--秒的个位
signal second_count_shi_reg: std_logic_vector(3 downto 0);--秒的十位
signal second_count_ge_model1:  std_logic_vector(3 downto 0);--秒的个位
signal second_count_shi_model1: std_logic_vector(3 downto 0);--秒的十位
signal second_count_ge_model2:  std_logic_vector(3 downto 0);--秒的个位
signal second_count_shi_model2: std_logic_vector(3 downto 0);--秒的十位
BEGIN
    red1_out<= red1;
    red2_out<= red2;
    green1_out<= green1;
    green2_out<= green2;
    yellow1_out<= yellow1;
    yellow2_out<= yellow2;
    
    second_count_ge_out<=second_count_ge_reg;
    second_count_shi_out<=second_count_shi_reg;
    
    process(clk_1hz,reset_n,hold)
      begin 
        if(reset_n = '0')then
            second_count_ge_reg<="0000";
            second_count_shi_reg<="0000";
        elsif(hold = '0')then
            second_count_ge_reg<=second_count_ge_reg;
            second_count_shi_reg<=second_count_shi_reg;
        elsif(clk_1hz'event and clk_1hz = '1')then--上升沿触发
            second_count_ge_reg<=second_count_ge;
            second_count_shi_reg<=second_count_shi;
        end if;
    end process;
    
    process(select_model)
      begin 
        if(select_model = '1')then--白天模式,按键没有按下的时候
            second_count_ge_model1<="1001";--主干道30秒
            second_count_shi_model1<="0010";
            
            second_count_ge_model2<="1001";--次干道20秒
            second_count_shi_model2<="0001";
        else--夜晚模式，按键一直按下
            second_count_ge_model1<="1001";--主干道20秒
            second_count_shi_model1<="0010";
            
            second_count_ge_model2<="1010";--次干道10秒
            second_count_shi_model2<="0000";
        end if;
    end process;
-- /**********************************************************/
-- //控制模块
-- //
-- /**********************************************************/
     PROCESS(reset_n,hold,clk_1hz)
     VARIABLE countnum:INTEGER RANGE 0 TO 61;  --计数变量
     BEGIN
          IF(reset_n='0') THEN     --复位
             countnum:=0;  
             next_state<=s0;  
             red1<='1';green1<='0';yellow1<='0';
             red2<='1';green2<='0';yellow2<='0';
             
            second_count_ge <= "0001";--1
            second_count_shi <= "0000";--0
          ELSIF(hold='0') THEN   --进入紧急状态
             countnum:=0; 
             next_state<=next_state;
             red1<='1';green1<='0';yellow1<='0';
             red2<='1';green2<='0';yellow2<='0';
          ElSIF(clk_1hz'event AND clk_1hz='1') THEN
             IF(countnum>=60) THEN  --循环后又回到S1状态
               countnum:=1;
             ELSE
               countnum:=countnum+1; --计数加1
             END IF;
             
             CASE next_state IS
                WHEN s0 =>        --东西、南北方向红灯均亮
                  red1<='1';green1<='0';yellow1<='0';
                  red2<='1';green2<='0';yellow2<='0';
                  
                if(second_count_ge = "0000")then
                    second_count_ge <= "0000";--0
                else
                    second_count_ge <= second_count_ge - '1';

                end if;
                  
                  IF(countnum=1) THEN
                    next_state<=s1;
                    second_count_ge <= second_count_ge_model1;--9
                    second_count_shi <= second_count_shi_model1;--2
                  ELSIF(countnum>=0 AND countnum<1) THEN
                    next_state<=s0;
                  END IF;
              
                WHEN s1 =>    --东西方向绿灯亮，南北方向红灯亮。东西方向通车，时间30S
                  red1<='0';green1<='1';yellow1<='0';
                  red2<='1';green2<='0';yellow2<='0';
                  
                if(second_count_ge = "0000")then
                    second_count_ge <= "1001";--
                    if(second_count_shi = "0000")then
                        second_count_shi <= "0000";--0
                    else
                        second_count_shi <= second_count_shi - '1';
                    end if;
                else
                    second_count_ge <= second_count_ge - '1';
                end if;
                  
                  IF(countnum = 31) THEN
                    next_state<=s2;
                    second_count_ge <= "0100";--4
                    second_count_shi <= "0000";--0
                  ELSIF(countnum>=1 AND countnum<31) THEN
                    next_state <= s1;
                  END IF;

                WHEN s2 =>    --东西方向黄灯亮，南北方向红灯亮，时间5s。
                  red1<='0';green1<='0';yellow1<='1';  
                  red2<='1';green2<='0';yellow2<='0';
                  
                  if(second_count_ge = "0000")then
                    second_count_ge <= "0000";--0
                 else
                    second_count_ge <= second_count_ge - '1';
                 end if;
                 
                  IF(countnum=36) THEN
                    next_state<=s3;
                    second_count_ge <= second_count_ge_model2;--9
                    second_count_shi <= second_count_shi_model2;--1
                  ELSIF(countnum>=31 AND countnum<36) THEN
                    next_state<=s2;
                  END IF;

                  WHEN s3 =>   --东西方向红灯亮，南北方向绿灯亮,南北方向通车，时间20s。
                    red1<='1';green1<='0';yellow1<='0';
                    red2<='0';green2<='1';yellow2<='0';
                    
                    if(second_count_ge = "0000")then
                        second_count_ge <= "1001";--9
                        if(second_count_shi = "0000")then
                            second_count_shi <= "0000";--0

                        else
                            second_count_shi <= second_count_shi - '1';

                        end if;
                  else
                    second_count_ge <= second_count_ge - '1';

                  end if;
                    
                    IF(countnum=56) THEN
                      next_state<=s4;
                       second_count_ge <= "0100";--4
                       second_count_shi <= "0000";--0
                    ELSIF(countnum>=36 AND countnum<56) THEN
                      next_state<=s3;
                    END IF;

                  WHEN s4 =>    --东西方向红灯亮，南，北方向黄灯亮，时间5s。
                    red1<='1';green1<='0';yellow1<='0';
                    red2<='0';green2<='0';yellow2<='1';
                    
                    if(second_count_ge = "0000")then
                        second_count_ge <= "0000";--0
                    else
                        second_count_ge <= second_count_ge - '1';
                  end if;
                    
                    IF(countnum=1) THEN
                      next_state<=s1;
                      second_count_ge <= second_count_ge_model1;--9
                      second_count_shi <= second_count_shi_model1;--2
                    ELSIF(countnum>=56 AND countnum<61) THEN
                      next_state<=s4;
                    END IF;
             END CASE;
          END IF;
     END PROCESS;
    
     
END state_machine_function;