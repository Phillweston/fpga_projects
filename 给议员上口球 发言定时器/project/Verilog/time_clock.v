/******************************************************************************



*******************************************************************************/
module time_clock(
    clk,
    reset_n,
    hour_select_key,
    second_counter_key,
    second_countdown_key,
    pause_key,
    duan,
    wei
    );
    
    input           clk;                            //clk:50MHZ时钟输入；
    input           reset_n;                        //复位信号输入，低电平有效；
    
    input           hour_select_key;                //12、24小时可以调节按键，当为‘1’时为24，‘0’时为12小时；
    input           second_counter_key;             //当该按键为‘1’时为秒表计时功能，‘0’时为正常功能；
    input           second_countdown_key;           //当该按键为‘1’时为倒计时功能，‘0’时为正常功能；
    input           pause_key;                      //暂停功能按键，进行秒表计时和倒计时时可以通过该按键进行暂停，‘1’暂停，‘0’继续
    
    output  [7:0]   duan;                           //duan:数码管段码；
    output  [7:0]   wei;                            //wei:数码管位码；
    
    reg     [7:0]   duan;                           //duan:数码管段码；
    reg     [7:0]   wei;                            //wei:数码管位码；

    reg     [24:0]  count;                          //1HZ时钟计数器
    reg     [13:0]  count2;                         //扫描时钟计数器
    reg             clk_1hz;                        //1HZ时钟信号

    reg     [3:0]   miao_ge;                        //秒个位数BCD码
    reg     [2:0]   miao_shi;                       //秒十位BCD二进制码
    reg     [3:0]   fen_ge;                         //分钟个位数
    reg     [2:0]   fen_shi;                        //分钟十位数
    reg     [1:0]   shi_ge;                         //时钟个位数
    reg     [1:0]   shi_shi;                        //时钟十位数
    reg     [1:0]   shi_select_ge;                  //时钟选择个位数，用于调节时制
    reg     [1:0]   shi_select_shi;                 //时钟选择十位数，用于调节时制

    reg             clk_scan;                       //数码管扫描时钟
    reg     [2:0]   select;                         //用于扫描时选择显示位码

    //****************************************************************************************************
    //  模块名称:秒时钟分频模块
    //  功能描述:
    //****************************************************************************************************
    always @(posedge clk or negedge reset_n)//1HZ时钟进程
    begin
        if(reset_n == 1'b0)
        begin
            count <= 25'd0;
            clk_1hz <= 1'b0;
        end
        else
            if(count == 25'd25000000)
            begin
                clk_1hz <= ~clk_1hz;
                count <= 25'd0;
            end
            else
                count <= count + 1'b1;
    end
    
    reg     [17:0]  counter_count;
    reg             clk_100hz;
    always @(posedge clk or negedge reset_n)//100HZ时钟进程
    begin
        if(reset_n == 1'b0)
        begin
            counter_count <= 18'd0;
            clk_100hz <= 1'b0;
        end
        else
            if(~pause_key == 1'b0)
                if(counter_count == 18'd250000)
                begin
                    clk_100hz <= ~clk_100hz;
                    counter_count <= 18'd0;
                end
                else
                    counter_count <= counter_count + 1'b1;
            else
            begin
                clk_100hz <= 1'b0;
                counter_count <= 18'd0;
            end
    end
    //****************************************************************************************************
    //  模块名称:计时调节模块
    //  功能描述:
    //****************************************************************************************************
    always @(posedge clk or negedge reset_n)//1HZ时钟进程
    begin
        if(reset_n == 1'b0)
        begin
            shi_select_ge <= 2'd3;
            shi_select_shi <= 2'd2;
        end
        else
            if(hour_select_key == 1'b1)//12、24小时可以调节按键，当为‘1’时为24，‘0’时为12小时
            begin
                shi_select_ge <= 2'd3;
                shi_select_shi <= 2'd2;
            end
            else
            begin
                shi_select_ge <= 2'd1;
                shi_select_shi <= 2'd1;
            end
    end        
    //****************************************************************************************************
    //  模块名称:秒计时模块
    //  功能描述:
    //****************************************************************************************************
    always @(posedge clk_1hz or negedge reset_n)//秒分时各位累加功能进程
    begin
        if(reset_n == 1'b0)
        begin
            miao_ge <= 4'd9;
            miao_shi <= 3'd5;
            fen_ge <= 4'd9;
            fen_shi <= 3'd5;
            shi_ge <= 2'd3;
            shi_shi <= 2'd2;
        end
        else
            if(miao_ge ==4'd9)
            begin
                miao_ge <= 4'd0;
                if(miao_shi == 3'd5)
                begin
                    miao_shi <= 3'd0;
                    if(fen_ge == 4'd9)
                    begin
                        fen_ge <= 4'd0;
                        if(fen_shi == 3'd5)
                        begin
                            fen_shi <= 3'd0;
                            if(shi_ge == shi_select_ge)//24小时制对应3，12小时制则对应1
                            begin
                                shi_ge <= 2'd0;
                                if(shi_shi == shi_select_shi)//24小时制对应2，12小时制则对应1
                                    shi_shi <= 2'd0;
                                else
                                    shi_shi <= shi_shi + 1'b1;									  
                            end
                            else
                                shi_ge <= shi_ge + 1'b1;
                        end
                        else
                            fen_shi <= fen_shi + 1'b1;
                    end
                    else
                        fen_ge <= fen_ge + 1'b1;
                end
                else
                    miao_shi <= miao_shi + 1'b1;
            end
            else
                miao_ge <= miao_ge + 1'b1;
    end 
    //****************************************************************************************************
    //  模块名称:数码管位选择时钟产生模块
    //  功能描述:
    //****************************************************************************************************
    always @(posedge clk or negedge reset_n)//数码管扫描时钟产生进程
    begin
        if(reset_n == 1'b0)
        begin
            count2 <= 14'd0;
            clk_scan <= 1'b0;
        end
        else
            if(count2 == 14'd10000)
            begin
                count2 <= 14'd0;
                clk_scan <= ~clk_scan;
            end
            else
                count2 <= count2 + 1'b1;
    end
    //****************************************************************************************************
    //  模块名称:数码管位选择产生信号模块
    //  功能描述:
    //****************************************************************************************************
    always @(posedge clk_scan or negedge reset_n)
    begin 
        if(reset_n == 1'b0)
            select <= 3'b000;
        else
            select <= select + 1'b1;
    end
    //****************************************************************************************************
    //  模块名称:秒表计时
    //  功能描述:秒表计时
    //**************************************************************************************************** 
    reg     [3:0]   counter_haomiao_ge;             //秒表计时,毫秒个位数BCD码
    reg     [3:0]   counter_haomiao_shi;            //秒表计时,毫秒十位数BCD码
    reg     [3:0]   counter_miao_ge;                //秒表计时,秒个位数BCD码
    reg     [2:0]   counter_miao_shi;               //秒表计时,秒十位BCD二进制码
    reg     [3:0]   counter_fen_ge;                 //秒表计时,分钟个位数
    reg     [2:0]   counter_fen_shi;                //秒表计时,分钟十位数
    reg     [1:0]   counter_shi_ge;                 //秒表计时,时钟个位数
    reg     [1:0]   counter_shi_shi;                //秒表计时,时钟十位数
    always @(posedge clk_100hz or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            counter_haomiao_ge <= 4'd0;
            counter_haomiao_shi <= 4'd0;
            counter_miao_ge <= 4'd0;
            counter_miao_shi <= 3'd0;
            counter_fen_ge <= 4'd0;
            counter_fen_shi <= 3'd0;
            counter_shi_ge <= 2'd0;
            counter_shi_shi <= 2'd0;
        end
        else
            if(~second_counter_key == 1'b1)
                if(counter_haomiao_ge == 4'd9)
                begin
                    counter_haomiao_ge <= 4'd0;
                    if(counter_haomiao_shi == 4'd9)
                    begin
                        counter_haomiao_shi <= 4'd0;
                        if(counter_miao_ge ==4'd9)
                        begin
                            counter_miao_ge <= 4'd0;
                            if(counter_miao_shi == 3'd5)
                            begin
                                counter_miao_shi <= 3'd0;
                                if(counter_fen_ge == 4'd9)
                                begin
                                    counter_fen_ge <= 4'd0;
                                    if(counter_fen_shi == 3'd5)
                                    begin
                                        counter_fen_shi <= 3'd0;
                                        if(counter_shi_ge == 2'd3)//24小时制对应3，12小时制则对应1
                                        begin
                                            counter_shi_ge <= 2'd0;
                                            if(counter_shi_shi == 2'd2)//24小时制对应2，12小时制则对应1
                                                counter_shi_shi <= 2'd0;
                                            else
                                                counter_shi_shi <= counter_shi_shi + 1'b1;									  
                                        end
                                        else
                                            counter_shi_ge <= counter_shi_ge + 1'b1;
                                    end
                                    else
                                        counter_fen_shi <= counter_fen_shi + 1'b1;
                                end
                                else
                                    counter_fen_ge <= counter_fen_ge + 1'b1;
                            end
                            else
                               counter_miao_shi <= counter_miao_shi + 1'b1;
                        end
                        else
                            counter_miao_ge <= counter_miao_ge + 1'b1;
                    end
                    else
                        counter_haomiao_shi <= counter_haomiao_shi + 1'b1;
                end
                else
                    counter_haomiao_ge <= counter_haomiao_ge + 1'b1;
            else
            begin
                counter_haomiao_ge <= 4'd0;
                counter_haomiao_shi <= 4'd0;
                counter_miao_ge <= 4'd0;
                counter_miao_shi <= 3'd0;
                counter_fen_ge <= 4'd0;
                counter_fen_shi <= 3'd0;
                counter_shi_ge <= 2'd0;
                counter_shi_shi <= 2'd0;
            end
    end 
    //****************************************************************************************************
    //  模块名称:倒计时模块
    //  功能描述:
    //**************************************************************************************************** 
    reg     [3:0]   countdown_haomiao_ge;           //倒计时，毫秒个位数BCD码
    reg     [3:0]   countdown_haomiao_shi;          //倒计时，毫秒十位数BCD码
    reg     [3:0]   countdown_miao_ge;              //倒计时，秒个位数BCD码
    reg     [2:0]   countdown_miao_shi;             //倒计时，秒十位BCD二进制码
    always @(posedge clk_100hz or negedge reset_n)//秒分时各位累加功能进程
    begin
        if(reset_n == 1'b0)
        begin
            countdown_haomiao_ge <= 4'd9;
            countdown_haomiao_shi <= 4'd9;
            countdown_miao_ge <= 4'd9;
            countdown_miao_shi <= 3'd5;
        end
        else
            if(~second_countdown_key == 1'b1)
                if(countdown_haomiao_ge == 4'd0)
                begin
                    countdown_haomiao_ge <= 4'd9;
                    if(countdown_haomiao_shi == 4'd0)
                    begin
                        countdown_haomiao_shi <= 4'd9;
                        if(countdown_miao_ge ==4'd0)
                        begin
                            countdown_miao_ge <= 4'd9;
                            if(countdown_miao_shi == 3'd0)
                            begin
                                countdown_miao_shi <= 3'd5;
                            end
                            else
                               countdown_miao_shi <= countdown_miao_shi - 1'b1;
                        end
                        else
                            countdown_miao_ge <= countdown_miao_ge - 1'b1;
                    end
                    else
                        countdown_haomiao_shi <= countdown_haomiao_shi - 1'b1;
                end
                else
                    countdown_haomiao_ge <= countdown_haomiao_ge - 1'b1;
            else
            begin
                countdown_haomiao_ge <= 4'd9;
                countdown_haomiao_shi <= 4'd9;
                countdown_miao_ge <= 4'd9;
                countdown_miao_shi <= 3'd5;
            end    
    end 
    //****************************************************************************************************
    //  模块名称:功能选择模块
    //  功能描述:
    //****************************************************************************************************        
    reg     [3:0]   reg_haomiao_ge;                 //毫秒个位数BCD码
    reg     [3:0]   reg_haomiao_shi;                //毫秒十位数BCD码
    reg     [3:0]   reg_miao_ge;                    //秒个位数BCD码
    reg     [2:0]   reg_miao_shi;                   //秒十位BCD二进制码
    reg     [3:0]   reg_fen_ge;                     //分钟个位数
    reg     [2:0]   reg_fen_shi;                    //分钟十位数
    reg     [3:0]   reg_shi_ge;                     //时钟个位数
    reg     [1:0]   reg_shi_shi;                    //时钟十位数
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            reg_haomiao_ge <= 4'd9;
            reg_haomiao_shi <= 4'd9;
            reg_miao_ge <= 4'd9;
            reg_miao_shi <= 3'd5;
            reg_fen_ge <= 4'd9;
            reg_fen_shi <= 3'd5;
            reg_shi_ge <= 4'd3;
            reg_shi_shi <= 2'd2;
        end
        else
        begin
            case({~second_counter_key,~second_countdown_key})
                2'b10://秒表功能
                begin
                    reg_haomiao_ge <= counter_haomiao_ge;
                    reg_haomiao_shi <= counter_haomiao_shi;
                    reg_miao_ge <= counter_miao_ge;
                    reg_miao_shi <= counter_miao_shi;
                    reg_fen_ge <= counter_fen_ge;
                    reg_fen_shi <= counter_fen_shi;
                    reg_shi_ge <= counter_shi_ge;
                    reg_shi_shi <= counter_shi_shi;
                end
                2'b01://倒计时功能
                begin
                    reg_haomiao_ge <= countdown_haomiao_ge;
                    reg_haomiao_shi <= countdown_haomiao_shi;
                    reg_miao_ge <= countdown_miao_ge;
                    reg_miao_shi <= countdown_miao_shi;
                    reg_fen_ge <= 4'hf;             //不进行显示
                    reg_fen_shi <= 3'b111;          //不进行显示
                    reg_shi_ge <= 4'b1111;          //不进行显示
                    reg_shi_shi <= 2'b11;           //不进行显示
                end
                default://正常功能，显示时分秒
                begin
                    reg_haomiao_ge <= 4'hf;         //不进行显示
                    reg_haomiao_shi <= 4'hf;        //不进行显示
                    reg_miao_ge <= miao_ge;
                    reg_miao_shi <= miao_shi;
                    reg_fen_ge <= fen_ge;
                    reg_fen_shi <= fen_shi;
                    reg_shi_ge <= shi_ge;
                    reg_shi_shi <= shi_shi;
                end
            endcase
        end
    end
    //****************************************************************************************************
    //  模块名称:译码电路
    //  功能描述:
    //****************************************************************************************************
    always @(posedge clk)//敏感信号列表reg_haomiao_ge or miao_ge or miao_shi or fen_ge or fen_shi or shi_ge or shi_shi or select
    begin 
        if(select == 3'd0)
        begin
            wei <= 8'b11111110;//毫秒个位数显示
            case(reg_haomiao_ge)
                4'b0000:duan <= 8'b1100_0000;//0
                4'b0001:duan <= 8'b1111_1001;//1
                4'b0010:duan <= 8'b1010_0100;//2
                4'b0011:duan <= 8'b1011_0000;//3
                4'b0100:duan <= 8'b1001_1001;//4
                4'b0101:duan <= 8'b1001_0010;//5
                4'b0110:duan <= 8'b1000_0010;//6
                4'b0111:duan <= 8'b1111_1000;//7
                4'b1000:duan <= 8'b1000_0000;//8
                4'b1001:duan <= 8'b1001_0000;//9
                default:duan <= 8'hff;
            endcase
        end
        else if(select == 3'd1)
        begin
            wei <= 8'b11111101;//毫秒十位数显示
            case(reg_haomiao_shi)
                4'b0000:duan <= 8'b1100_0000;//0
                4'b0001:duan <= 8'b1111_1001;//1
                4'b0010:duan <= 8'b1010_0100;//2
                4'b0011:duan <= 8'b1011_0000;//3
                4'b0100:duan <= 8'b1001_1001;//4
                4'b0101:duan <= 8'b1001_0010;//5
                4'b0110:duan <= 8'b1000_0010;//6
                4'b0111:duan <= 8'b1111_1000;//7
                4'b1000:duan <= 8'b1000_0000;//8
                4'b1001:duan <= 8'b1001_0000;//9
                default:duan <= 8'hff;
            endcase
        end
        else if(select == 3'd2)
        begin
            wei <= 8'b11111011;//秒个位数显示
            case(reg_miao_ge)
                4'b0000:duan <= 8'b1100_0000;//0
                4'b0001:duan <= 8'b1111_1001;//1
                4'b0010:duan <= 8'b1010_0100;//2
                4'b0011:duan <= 8'b1011_0000;//3
                4'b0100:duan <= 8'b1001_1001;//4
                4'b0101:duan <= 8'b1001_0010;//5
                4'b0110:duan <= 8'b1000_0010;//6
                4'b0111:duan <= 8'b1111_1000;//7
                4'b1000:duan <= 8'b1000_0000;//8
                4'b1001:duan <= 8'b1001_0000;//9
                default:duan <= 8'hff;
            endcase
        end

        else if(select == 3'd3)
        begin
            wei <= 8'b11110111;//秒十位数显示
            case(reg_miao_shi)
                3'b000:duan <= 8'b1100_0000;
                3'b001:duan <= 8'b1111_1001;
                3'b010:duan <= 8'b1010_0100;
                3'b011:duan <= 8'b1011_0000;
                3'b100:duan <= 8'b1001_1001;
                3'b101:duan <= 8'b1001_0010;
                3'b110:duan <= 8'b1000_0010;
                default:duan <= 8'hff;
            endcase
        end

        else if(select == 3'd4)
        begin
            wei <= 8'b11101111;//分钟个位数显示
            case(reg_fen_ge)
            4'b0000:duan <= 8'b1100_0000;
            4'b0001:duan <= 8'b1111_1001;
            4'b0010:duan <= 8'b1010_0100;
            4'b0011:duan <= 8'b1011_0000;
            4'b0100:duan <= 8'b1001_1001;
            4'b0101:duan <= 8'b1001_0010;
            4'b0110:duan <= 8'b1000_0010;
            4'b0111:duan <= 8'b1111_1000;
            4'b1000:duan <= 8'b1000_0000;
            4'b1001:duan <= 8'b1001_0000;
            default:duan <= 8'hff;
            endcase
        end

        else if(select == 3'd5)
        begin
            wei <= 8'b11011111;//分钟十位数显示
            case(reg_fen_shi)
            3'b000:duan <= 8'b1100_0000;
            3'b001:duan <= 8'b1111_1001;
            3'b010:duan <= 8'b1010_0100;
            3'b011:duan <= 8'b1011_0000;
            3'b100:duan <= 8'b1001_1001;
            3'b101:duan <= 8'b1001_0010;
            3'b110:duan <= 8'b1000_0010;
            default:duan <= 8'hff;
            endcase
        end

        else if(select == 3'd6)
        begin
            wei <= 8'b10111111;//时钟个位数显示
            case(reg_shi_ge)
            4'b0000:duan <= 8'b1100_0000;
            4'b0001:duan <= 8'b1111_1001;
            4'b0010:duan <= 8'b1010_0100;
            4'b0011:duan <= 8'b1011_0000;
            default:duan <= 8'hff;
            endcase
        end

        else 
            begin
            wei <= 8'b01111111;//时钟十位数显示
            case(reg_shi_shi)
            3'b000:duan <= 8'b1100_0000;
            3'b001:duan <= 8'b1111_1001;
            3'b010:duan <= 8'b1010_0100;
            default:duan <= 8'hff;
            endcase
        end
    end
endmodule










