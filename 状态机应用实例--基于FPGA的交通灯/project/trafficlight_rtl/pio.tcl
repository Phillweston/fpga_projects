# ˵�������ʱ����Խ����¹ܽſ�����.qsfԼ���ļ���
# assignment sys_rst_n and sys_clk pin
# mux with KEY 4
set_location_assignment PIN_8  -to reset 
set_location_assignment PIN_17 -to clk

# assignment RS-232 UART pin
set_location_assignment PIN_141 -to uart_rxd
set_location_assignment PIN_139 -to uart_txd

# assignment SEG_LED pin
set_location_assignment PIN_87 -to seg_wei[0]
set_location_assignment PIN_86 -to seg_wei[1]
set_location_assignment PIN_79 -to seg_wei[2]
set_location_assignment PIN_76 -to seg_wei[3]

set_location_assignment PIN_94  -to seg_duan[0]
set_location_assignment PIN_96  -to seg_duan[1]
set_location_assignment PIN_100 -to seg_duan[2]
set_location_assignment PIN_92  -to seg_duan[3]
set_location_assignment PIN_93  -to seg_duan[4]
set_location_assignment PIN_101 -to seg_duan[5]
set_location_assignment PIN_99  -to seg_duan[6]
set_location_assignment PIN_103 -to seg_duan[7]

# assignment BEEP pin     
set_location_assignment PIN_28 -to beep

# assignment KEY pin  
set_location_assignment PIN_25 -to hold
set_location_assignment PIN_24 -to reset_n
set_location_assignment PIN_9  -to select_model
set_location_assignment PIN_8  -to key[3]

# assignment LED  pin                                       
set_location_assignment PIN_27  -to red1
set_location_assignment PIN_26  -to green1
set_location_assignment PIN_7   -to yellow1
set_location_assignment PIN_4   -to LED[3]
set_location_assignment PIN_3   -to LED[4]
set_location_assignment PIN_144 -to red2
set_location_assignment PIN_143 -to green2
set_location_assignment PIN_142 -to yellow2

# assignment AT24C02 pin

set_location_assignment PIN_126 -to sda_port
set_location_assignment PIN_125 -to clk_sclk

# assignment LM75A pin
set_location_assignment PIN_129 -to clk_sclk
set_location_assignment PIN_132 -to sda_port

# assignment VGA pin
set_location_assignment PIN_136 -to Hs
set_location_assignment PIN_137 -to Vs

set_location_assignment PIN_134 -to VGA_G
set_location_assignment PIN_133 -to VGA_B
set_location_assignment PIN_135 -to VGA_R

# assignment LCD1602 pin
set_location_assignment PIN_115 -to LCD_EN
set_location_assignment PIN_118 -to RS

set_location_assignment PIN_114 -to DB8[0]
set_location_assignment PIN_113 -to DB8[1]
set_location_assignment PIN_112 -to DB8[2]
set_location_assignment PIN_104 -to DB8[3]
set_location_assignment PIN_103 -to DB8[4]
set_location_assignment PIN_101 -to DB8[5]
set_location_assignment PIN_100 -to DB8[6]
set_location_assignment PIN_99  -to DB8[7]

# assignment SDRAM pin

set_location_assignment PIN_67 -to sdr_DQ[0]
set_location_assignment PIN_65 -to sdr_DQ[1]
set_location_assignment PIN_64 -to sdr_DQ[2]
set_location_assignment PIN_63 -to sdr_DQ[3]

set_location_assignment PIN_72 -to sdr_DQ[4]
set_location_assignment PIN_73 -to sdr_DQ[5]
set_location_assignment PIN_74 -to sdr_DQ[6]
set_location_assignment PIN_75 -to sdr_DQ[7]

set_location_assignment PIN_51 -to sdr_A[0]
set_location_assignment PIN_48 -to sdr_A[1]
set_location_assignment PIN_47 -to sdr_A[2]
set_location_assignment PIN_45 -to sdr_A[3]
set_location_assignment PIN_30 -to sdr_A[4]
set_location_assignment PIN_31 -to sdr_A[5]
set_location_assignment PIN_32 -to sdr_A[6]
set_location_assignment PIN_41 -to sdr_A[7]
set_location_assignment PIN_42 -to sdr_A[8]
set_location_assignment PIN_43 -to sdr_A[9]
set_location_assignment PIN_52 -to sdr_A[10]
set_location_assignment PIN_44 -to sdr_A[11]

set_location_assignment PIN_55 -to sdr_BA[0]
set_location_assignment PIN_53 -to sdr_BA[1]

set_location_assignment PIN_69 -to sdr_CKE
set_location_assignment PIN_70 -to sdr_CLK

set_location_assignment PIN_57 -to sdr_CSn
set_location_assignment PIN_58 -to sdr_RASn
set_location_assignment PIN_59 -to sdr_CASn
set_location_assignment PIN_60 -to sdr_WEn
set_location_assignment PIN_71 -to sdr_DQM