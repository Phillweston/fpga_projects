-- ******************************************************************************
-- 控制模块
-- 操作步骤
-- 上电首先按下key5按键进行复位操作
-- (1)按下key3按键输入第一个密码，输入完第一个密码后按下key3；输入第二个密码，第二个密码输入完成后后按下key3；
--      输入第三个密码，第三个密码输入完成后后按下key3；输入第四个密码，第四个密码输入完成后后按下key3，输入完成；
-- (2)只有密码输入正确后才能进行修改密码；
-- (3)修改密码操作如下：
        -- 按下key1进入修改密码状态，然后通过key2数字选择按键，每输入一个密码，按下key3按键一次，数码管跳至下一位，输入下一个密码，
        -- 4个密码输入完成后按下key4按键，确定输入的密码就会重新装载进去。第三位数码管会显示当前输入的密码的次序。
        -- 取消修改密码按下key5键
-- *******************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity control is
port(
    clk:in std_logic;                               --50M时钟输入
    reset_n:in std_logic;                           --复位信号输入
    set_signal:in std_logic;                        --设置密码按键
    select_signal:in std_logic;                     --
    ok_signal:in std_logic;                         --
    set_ok_signal:in std_logic;                         --
    
    fm_time_over:in std_logic;                      --蜂鸣器20秒相应完成信号
    fm_20:in std_logic;
    password1_out:out std_logic_vector(3 downto 0); --
    password2_out:out std_logic_vector(3 downto 0); --
    password3_out:out std_logic_vector(3 downto 0); --
    password4_out:out std_logic_vector(3 downto 0); --
    ok_signal_counter_out:out std_logic_vector(2 downto 0);--四个数码管的标号
    motor_open:out std_logic;                       --电机开关标志
    start_flag:out std_logic;
    password_yes:out std_logic;
    password_no:out std_logic;
    password_set_out:out std_logic
);
end control;
architecture control_behave of control is 
signal key_counter:std_logic_vector(3 downto 0);    --按键按下次数计数器
signal password_set:std_logic;                      --设置密码标志，‘1’为设置密码，‘0’为没有设置密码
signal password_set_finish:std_logic;               --密码设置成功信号
signal ok_signal_counter:std_logic_vector(2 downto 0);--输入密码个数计数器
signal current_password1:std_logic_vector(3 downto 0);--当前第一个密码
signal current_password2:std_logic_vector(3 downto 0);--当前第二个密码
signal current_password3:std_logic_vector(3 downto 0);--当前第三个密码
signal current_password4:std_logic_vector(3 downto 0);--当前第四个密码
signal current_password1_temp:std_logic_vector(3 downto 0);--当前第一个密码
signal current_password2_temp:std_logic_vector(3 downto 0);--当前第二个密码
signal current_password3_temp:std_logic_vector(3 downto 0);--当前第三个密码
signal current_password4_temp:std_logic_vector(3 downto 0);--当前第四个密码
signal password1:std_logic_vector(3 downto 0);      --输入第一个密码
signal password2:std_logic_vector(3 downto 0);      --输入第二个密码
signal password3:std_logic_vector(3 downto 0);      --输入第三个密码
signal password4:std_logic_vector(3 downto 0);      --输入第四个密码
signal set_signal_re1:std_logic;
signal set_signal_re2:std_logic;
signal password_yes_temp:std_logic;
signal password_no_temp:std_logic;
signal start_flag_reg:std_logic;
type state is(
            prepare,--准备状态
            start--开始状态
            );
signal current_state:state;--一开始处于准备状态

type set_state is(
            prepare,--准备状态
            start--开始状态
            );
signal current_set_state:set_state;--一开始处于准备状态
begin
    password_set_out <= not password_set;
    ok_signal_counter_out <= ok_signal_counter;
    start_flag <= start_flag_reg;
    -- //****************************************************************************************************
    -- //  模块名称:产生设置密码信号password_set
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            password_set <= '0';
            current_set_state <= prepare;
            
            current_password1 <= "0001";
            current_password2 <= "0001";
            current_password3 <= "0001";
            current_password4 <= "0001";
            
        elsif(clk'event and clk = '0')then--下降沿触发
            if((password_yes_temp = '1'and password_no_temp = '0') or password_set = '1')then--只有输入密码正确后才能修改密码
                case current_set_state is
                when prepare=>
                    if(set_signal = '0')then
                        current_set_state <= start;
                        password_set <= '1';
                    else
                        current_set_state <= prepare;
                        password_set <= '0';
                    end if;
                when start =>
                    if(set_ok_signal = '0')then--设置完成
                        --重新装载密码
                        current_password1 <= current_password1_temp;
                        current_password2 <= current_password2_temp;
                        current_password3 <= current_password3_temp;
                        current_password4 <= current_password4_temp;
                        current_set_state <= prepare;
                        password_set <= '0';
                    else
                        password_set <= '1';
                        current_set_state <= start;
                    end if;
                when others=>null;
                end case;
            else
                null;
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:违时信号的产生
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
            current_state <= prepare; 
            start_flag_reg <= '0';
        elsif(clk'event and clk = '1')then--上升沿沿触发
            if(password_set = '0')then--非设置密码状态
                case current_state is
                when prepare=>
                    if(select_signal = '0')then
                        start_flag_reg <= '1';
                        current_state <= start; 
                    else
                        start_flag_reg <= '0';
                        current_state <= prepare;
                    end if;
                when start=>
                    if(ok_signal_counter = "100")then--输入密码完成
                        start_flag_reg <= '0';
                        current_state <= prepare;
                    elsif(fm_time_over = '1')then--蜂鸣器响应20s完成
                        start_flag_reg <= '0';
                        current_state <= prepare; 
                    else--两者未完成
                        start_flag_reg <= '1';
                        current_state <= start; 
                    end if;
                end case;
            else
                current_state <= prepare; 
                start_flag_reg <= '0';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:产生按键输入数字
    -- //  功能描述:
    -- //****************************************************************************************************
    process(select_signal,reset_n)
    begin
        if(reset_n = '0')then
            key_counter <= "0000";
        elsif(select_signal'event and select_signal = '0')then--下降沿触发
            if(key_counter = "1001")then
                key_counter <= "0000";
            else
                key_counter <= key_counter + '1';
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:统计输入密码的个数4个
    -- //  功能描述:
    -- //****************************************************************************************************
    process(ok_signal,reset_n)
    begin
        if(reset_n = '0')then
            ok_signal_counter <= "000";
        elsif(ok_signal'event and ok_signal = '0')then--下降沿触发
            if(fm_20 = '0')then--在不违时的情况下可以进行输入密码
                if(ok_signal_counter = "100")then
                    ok_signal_counter <= "001";
                    --密码输入完成
                else
                    ok_signal_counter <= ok_signal_counter + '1';
                end if;
            else
                ok_signal_counter <= "000";
            end if;
        end if;
    end process;
    -- //****************************************************************************************************
    -- //  模块名称:存储输入密码的个数4个
    -- //  功能描述:
    -- //****************************************************************************************************
    process(clk,reset_n)
    begin
        if(reset_n = '0')then
        ----------------------------------
            current_password1_temp <= "0000";
            current_password2_temp <= "0000";
            current_password3_temp <= "0000";
            current_password4_temp <= "0000";
        ----------------------------------
            password_yes_temp <= '0';
            password_no_temp <= '1';
            password1 <= "0000";
            password2 <= "0000";
            password3 <= "0000";
            password4 <= "0000";
            motor_open <= '1';--电机关
        elsif(clk'event and clk = '1')then--上升沿触发
            if(fm_20 = '0')then--在不违时的情况下可以进行输入密码
                case ok_signal_counter is
                when "001"=>
                            if(password_set = '0')then--非设置密码
                                password1 <= key_counter;
                            else--设置密码
                                current_password1_temp <= key_counter;
                                password1 <= "0000";
                                motor_open <= '1';--电机关
                                password_yes_temp <= '0';
                                password_no_temp <= '0';
                            end if;
                when "010"=>
                            if(password_set = '0')then--非设置密码
                                password2 <= key_counter;
                            else--设置密码
                                current_password2_temp <= key_counter;
                                password2 <= "0000";
                                motor_open <= '1';--电机关
                                password_yes_temp <= '0';
                                password_no_temp <= '0';
                            end if;
                when "011"=>
                            if(password_set = '0')then--非设置密码
                                password3 <= key_counter;
                            else--设置密码
                                current_password3_temp <= key_counter;
                                password3 <= "0000";
                                motor_open <= '1';--电机关
                                password_yes_temp <= '0';
                                password_no_temp <= '0';
                            end if;
                when "100"=>
                            if(password_set = '0')then--非设置密码
                                password4 <= key_counter;
                                if(current_password1 = password1 and 
                                    current_password2 = password2 and 
                                        current_password3 = password3 and 
                                            current_password4 = password4)then
                                    password_yes_temp <= '1';
                                    password_no_temp <= '0';
                                    motor_open <= '0';--电机开
                                else
                                    password_yes_temp <= '0';
                                    password_no_temp <= '1';
                                    motor_open <= '1';--电机关
                                end if;
                            else--设置密码
                                current_password4_temp <= key_counter;
                                password4 <= "0000";
                                motor_open <= '1';--电机关
                                password_yes_temp <= '0';
                                password_no_temp <= '0';
                            end if;
                when others=>null;
                end case;
            else
                password_yes_temp <= '0';
                password_no_temp <= '1';
                password1 <= "0000";
                password2 <= "0000";
                password3 <= "0000";
                password4 <= "0000";
                motor_open <= '1';--电机关
            end if;
        end if;
    end process;
    -- 当处于设置密码状态时，两个灯是不亮的
    password_yes <= not ((password_yes_temp) and (not password_set));--接绿色led，141引脚
    password_no <= not ((password_no_temp) and (not password_set));--接红色led，142引脚
    
    -- //****************************************************************************************************
    -- //  模块名称:数码管显示数字选择模块
    -- //  功能描述:
    -- //****************************************************************************************************
    process(reset_n,password_set,
    current_password1_temp,current_password2_temp,current_password3_temp,current_password4_temp,
    password1,password2,password3,password4)
    begin
        if(reset_n = '0')then
            password1_out <= "0000";
            password2_out <= "0000";
            password3_out <= "0000";
            password4_out <= "0000";
        elsif(password_set = '1')then--设置密码
            password1_out <= current_password1_temp;
            password2_out <= current_password2_temp;
            password3_out <= current_password3_temp;
            password4_out <= current_password4_temp;
        else--非设置密码
            password1_out <= password1;
            password2_out <= password2;
            password3_out <= password3;
            password4_out <= password4;
        end if;
    end process;
    

end control_behave;












