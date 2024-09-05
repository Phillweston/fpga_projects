--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: planegame_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jul 01 23:53:17 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm planegame -w -dir netgen/synthesis -ofmt vhdl -sim planegame.ngc planegame_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: planegame.ngc
-- Output file	: D:\Users\gg\netgen\synthesis\planegame_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: planegame
-- Xilinx	: D:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity planegame is
  port (
    start : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    fire : in STD_LOGIC := 'X'; 
    hs : out STD_LOGIC; 
    clk_0 : in STD_LOGIC := 'X'; 
    vs : out STD_LOGIC; 
    key_l : in STD_LOGIC := 'X'; 
    key_r : in STD_LOGIC := 'X'; 
    pic_rgb : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end planegame;

architecture Structure of planegame is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0000_cy_5_rt_104 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0000_cy_6_rt_106 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0000_cy_7_rt_108 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0000_cy_8_rt_110 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0000_cy_9_rt_112 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0001_cy_5_rt_116 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0001_cy_6_rt_118 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0001_cy_7_rt_120 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0001_cy_8_rt_122 : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0001_cy_9_rt_124 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0000_cy_6_rt_128 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0000_cy_7_rt_130 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0000_cy_8_rt_132 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0000_cy_9_rt_134 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0001_cy_6_rt_138 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0001_cy_7_rt_140 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0001_cy_8_rt_142 : STD_LOGIC; 
  signal a_Madd_enemy2_rgb_addsub0001_cy_9_rt_144 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0000_cy_6_rt_148 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0000_cy_7_rt_150 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0000_cy_8_rt_152 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0000_cy_9_rt_154 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0001_cy_6_rt_158 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0001_cy_7_rt_160 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0001_cy_8_rt_162 : STD_LOGIC; 
  signal a_Madd_enemy3_rgb_addsub0001_cy_9_rt_164 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0000_cy_6_rt_168 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0000_cy_7_rt_170 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0000_cy_8_rt_172 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0000_cy_9_rt_174 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0001_cy_6_rt_178 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0001_cy_7_rt_180 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0001_cy_8_rt_182 : STD_LOGIC; 
  signal a_Madd_enemy_rgb_addsub0001_cy_9_rt_184 : STD_LOGIC; 
  signal a_Madd_plane_rgb_addsub0000_cy_6_rt_188 : STD_LOGIC; 
  signal a_Madd_plane_rgb_addsub0000_cy_7_rt_190 : STD_LOGIC; 
  signal a_Madd_plane_rgb_addsub0000_cy_8_rt_192 : STD_LOGIC; 
  signal a_Madd_plane_rgb_addsub0000_cy_9_rt_194 : STD_LOGIC; 
  signal a_Madd_plane_rgb_addsub0001_xor_7_rt_196 : STD_LOGIC; 
  signal a_Madd_plane_rgb_addsub0001_xor_8_rt_197 : STD_LOGIC; 
  signal a_Mcompar_enemy2_rgb_cmp_le0000_lut_4_1_634 : STD_LOGIC; 
  signal a_Mcompar_enemy2_rgb_cmp_le0001_lut_4_1_698 : STD_LOGIC; 
  signal a_Mcompar_enemy3_rgb_cmp_le0000_lut_4_1_888 : STD_LOGIC; 
  signal a_Mcompar_enemy3_rgb_cmp_le0001_lut_4_1_952 : STD_LOGIC; 
  signal a_Mcompar_enemy_rgb_cmp_le0000_lut_4_1_1142 : STD_LOGIC; 
  signal a_Mcompar_enemy_rgb_cmp_le0001_lut_4_1_1206 : STD_LOGIC; 
  signal a_Mcompar_num1_cmp_ge0000_cy_0_rt_1213 : STD_LOGIC; 
  signal a_Mcompar_num1_cmp_ge0000_cy_2_rt_1216 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0000_lut_4_1_1409 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_cy_5_rt_1442 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_0_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_10_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_11_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_12_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_13_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_14_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_15_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_16_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_17_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_18_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_19_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_1_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_20_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_21_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_22_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_23_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_24_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_25_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_26_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_27_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_28_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_29_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_2_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_30_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_31_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_3_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_4_Q_1473 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_4_1_1474 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_6_Q : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_7_Q_1476 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_8_Q_1477 : STD_LOGIC; 
  signal a_Mcompar_plane_rgb_cmp_le0001_lut_9_Q : STD_LOGIC; 
  signal a_Msub_x_dis_g_cy_3_Q : STD_LOGIC; 
  signal a_Msub_x_dis_g_cy_6_Q : STD_LOGIC; 
  signal a_Msub_x_dis_g_cy_7_Q : STD_LOGIC; 
  signal a_Msub_y_dis_cy_1_rt_1518 : STD_LOGIC; 
  signal a_Msub_y_dis_cy_4_rt_1522 : STD_LOGIC; 
  signal a_Msub_y_dis_cy_5_rt_1524 : STD_LOGIC; 
  signal a_Msub_y_dis_lut_2_Q : STD_LOGIC; 
  signal a_Msub_y_dis_lut_3_Q : STD_LOGIC; 
  signal a_Msub_y_dis_lut_6_Q : STD_LOGIC; 
  signal a_Msub_y_dis_lut_7_Q : STD_LOGIC; 
  signal a_Msub_y_dis_lut_8_Q : STD_LOGIC; 
  signal a_Msub_y_dis_lut_9_Q : STD_LOGIC; 
  signal a_N18 : STD_LOGIC; 
  signal a_N19 : STD_LOGIC; 
  signal a_N20 : STD_LOGIC; 
  signal a_N5 : STD_LOGIC; 
  signal a_N52 : STD_LOGIC; 
  signal a_N53 : STD_LOGIC; 
  signal a_N54 : STD_LOGIC; 
  signal a_N7 : STD_LOGIC; 
  signal a_N85 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_10_1576 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_101_1577 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_10_f51 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_11 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_111_1580 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_112_1581 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_12_1582 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_121_1583 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_122_1584 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_6_f6_1585 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_7_f5_1586 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_8_1587 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_8_f5_1588 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_8_f6_1589 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_9_1590 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_91_1591 : STD_LOGIC; 
  signal a_a_Mmux_varindex0000_9_f5_1592 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000010 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000011_1594 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000012_1595 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000014 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000015 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000015_bdd4 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000022 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000023 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000024 : STD_LOGIC; 
  signal a_a_Mrom_d_rom000025 : STD_LOGIC; 
  signal a_addr_cmp_lt0000 : STD_LOGIC; 
  signal a_addr_g_cmp_lt0001 : STD_LOGIC; 
  signal a_addr_g_not0001 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_10_1615 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_101_1616 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_10_f5 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_10_f51_1618 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_11 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_111_1620 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_112_1621 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_11_f5_1622 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_122_1623 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_6_f6_1624 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_7_f5_1625 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_8_1626 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_8_f5_1627 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_8_f6_1628 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_9_1629 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_91_1630 : STD_LOGIC; 
  signal a_b1_Mmux_varindex0000_9_f5_1631 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000011 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000012 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000014_1634 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000015_1635 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000017_1636 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom00002_1637 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000022 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000023 : STD_LOGIC; 
  signal a_b1_Mrom_d_rom000025 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_10_1641 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_101_1642 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_10_f5 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_10_f51_1644 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_11 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_111_1646 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_112_1647 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_11_f5_1648 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_122_1649 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_6_f6_1650 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_7_f5_1651 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_8_1652 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_8_f5_1653 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_8_f6_1654 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_9_1655 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_91_1656 : STD_LOGIC; 
  signal a_b2_Mmux_varindex0000_9_f5_1657 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000011 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000012 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000014_1660 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000015_1661 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000017_1662 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom00002_1663 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000022 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000023 : STD_LOGIC; 
  signal a_b2_Mrom_d_rom000025 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_10_1667 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_101_1668 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_10_f5 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_10_f51_1670 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_11 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_111_1672 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_112_1673 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_11_f5_1674 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_122_1675 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_6_f6_1676 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_7_f5_1677 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_8_1678 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_8_f5_1679 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_8_f6_1680 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_9_1681 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_91_1682 : STD_LOGIC; 
  signal a_b3_Mmux_varindex0000_9_f5_1683 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000011 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000012 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000014_1686 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000015_1687 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000017_1688 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom00002_1689 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000022 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000023 : STD_LOGIC; 
  signal a_b3_Mrom_d_rom000025 : STD_LOGIC; 
  signal a_bullet_rgb_cmp_ge0000 : STD_LOGIC; 
  signal a_bullet_rgb_cmp_ge0001 : STD_LOGIC; 
  signal a_bullet_rgb_cmp_le0000 : STD_LOGIC; 
  signal a_bullet_rgb_cmp_le0001 : STD_LOGIC; 
  signal a_bullet_rgb_not0001 : STD_LOGIC; 
  signal a_c_Mmux_varindex0000_10_1714 : STD_LOGIC; 
  signal a_c_Mmux_varindex0000_3_1715 : STD_LOGIC; 
  signal a_c_Mmux_varindex0000_4_1716 : STD_LOGIC; 
  signal a_c_Mmux_varindex0000_7 : STD_LOGIC; 
  signal a_c_Mmux_varindex0000_8_1718 : STD_LOGIC; 
  signal a_c_Mmux_varindex0000_9_1719 : STD_LOGIC; 
  signal a_c_Mrom_d_rom000010 : STD_LOGIC; 
  signal a_c_Mrom_d_rom000011 : STD_LOGIC; 
  signal a_c_varindex0000 : STD_LOGIC; 
  signal a_d_Mmux_d_3_f5_1724 : STD_LOGIC; 
  signal a_d_Mmux_d_4_1725 : STD_LOGIC; 
  signal a_d_Mmux_d_4_f5_1726 : STD_LOGIC; 
  signal a_d_Mmux_d_5_1727 : STD_LOGIC; 
  signal a_d_Mmux_d_51_1728 : STD_LOGIC; 
  signal a_d_Mmux_d_6_1729 : STD_LOGIC; 
  signal a_dd : STD_LOGIC; 
  signal a_dd_g : STD_LOGIC; 
  signal a_e_Mmux_d_3_f5_1740 : STD_LOGIC; 
  signal a_e_Mmux_d_4_1741 : STD_LOGIC; 
  signal a_e_Mmux_d_4_f5_1742 : STD_LOGIC; 
  signal a_e_Mmux_d_5_1743 : STD_LOGIC; 
  signal a_e_Mmux_d_51_1744 : STD_LOGIC; 
  signal a_e_Mmux_d_6_1745 : STD_LOGIC; 
  signal a_en_0_not0001_1755 : STD_LOGIC; 
  signal a_en_0_or0000 : STD_LOGIC; 
  signal a_en_g_0_cmp_lt0000 : STD_LOGIC; 
  signal a_en_g_0_not0001 : STD_LOGIC; 
  signal a_en_g_0_or0000 : STD_LOGIC; 
  signal a_en_g_inv : STD_LOGIC; 
  signal a_enemy2_rgb_cmp_ge0000 : STD_LOGIC; 
  signal a_enemy2_rgb_cmp_ge0001 : STD_LOGIC; 
  signal a_enemy2_rgb_cmp_le0000 : STD_LOGIC; 
  signal a_enemy2_rgb_cmp_le0001 : STD_LOGIC; 
  signal a_enemy2_rgb_not0001 : STD_LOGIC; 
  signal a_enemy3_rgb_cmp_ge0000 : STD_LOGIC; 
  signal a_enemy3_rgb_cmp_ge0001 : STD_LOGIC; 
  signal a_enemy3_rgb_cmp_le0000 : STD_LOGIC; 
  signal a_enemy3_rgb_cmp_le0001 : STD_LOGIC; 
  signal a_enemy3_rgb_not0001 : STD_LOGIC; 
  signal a_enemy_rgb_cmp_ge0000 : STD_LOGIC; 
  signal a_enemy_rgb_cmp_ge0001 : STD_LOGIC; 
  signal a_enemy_rgb_cmp_le0000 : STD_LOGIC; 
  signal a_enemy_rgb_cmp_le0001 : STD_LOGIC; 
  signal a_enemy_rgb_not0001 : STD_LOGIC; 
  signal a_goal_rgb_1819 : STD_LOGIC; 
  signal a_plane_rgb_1821 : STD_LOGIC; 
  signal a_plane_rgb_cmp_ge0000 : STD_LOGIC; 
  signal a_plane_rgb_cmp_ge0001 : STD_LOGIC; 
  signal a_plane_rgb_cmp_le0000 : STD_LOGIC; 
  signal a_plane_rgb_cmp_le0001 : STD_LOGIC; 
  signal a_x_enemy2_2_1 : STD_LOGIC; 
  signal a_x_enemy2_2_2_1845 : STD_LOGIC; 
  signal a_x_enemy3_2_1 : STD_LOGIC; 
  signal a_x_enemy3_2_2_1852 : STD_LOGIC; 
  signal a_x_enemy_2_1 : STD_LOGIC; 
  signal a_x_enemy_2_2_1859 : STD_LOGIC; 
  signal a_x_plane_2_1_1865 : STD_LOGIC; 
  signal a_x_plane_2_2 : STD_LOGIC; 
  signal b_Madd_life_plane_tmp_0_index0000_inv_2038 : STD_LOGIC; 
  signal b_Madd_life_plane_tmp_0_index0000_inv1_2039 : STD_LOGIC; 
  signal b_Madd_life_plane_tmp_0_index0001_inv_2040 : STD_LOGIC; 
  signal b_Madd_mux0000_index0000_inv_2043 : STD_LOGIC; 
  signal b_Madd_mux0000_index0000_inv1_2044 : STD_LOGIC; 
  signal b_Madd_mux0000_index0001_inv : STD_LOGIC; 
  signal b_Madd_mux0001_index0000_inv_2048 : STD_LOGIC; 
  signal b_Madd_mux0001_index0000_inv1_2049 : STD_LOGIC; 
  signal b_Madd_mux0001_index0001_inv : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_5_rt_2297 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_0_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_1_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_2_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_3_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_4_Q_2306 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_7_Q_2307 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_8_Q_2308 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_5_rt_2335 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_0_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_1_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_2_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_3_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_4_Q_2344 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_7_Q_2345 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_8_Q_2346 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_5_rt_2373 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_0_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_1_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_2_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_3_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_4_Q_2382 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_7_Q_2383 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_8_Q_2384 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_5_rt_2411 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_0_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_1_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_2_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_3_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_4_Q_2419 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_6_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_7_Q_2421 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_8_Q_2422 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_9_Q_2423 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_5_rt_2450 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_0_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_1_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_2_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_3_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_4_Q_2458 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_6_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_7_Q_2460 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_8_Q_2461 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_9_Q_2462 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_5_rt_2489 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_0_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_1_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_2_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_3_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_4_Q_2497 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_6_Q : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_7_Q_2499 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_8_Q_2500 : STD_LOGIC; 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_9_Q_2501 : STD_LOGIC; 
  signal b_Msub_bullet_y_tmp_addsub0000_cy_1_rt_2523 : STD_LOGIC; 
  signal b_bullet_x_tmp_and0000 : STD_LOGIC; 
  signal b_bullet_y_tmp_and0000 : STD_LOGIC; 
  signal b_dx_e2_Acst_inv : STD_LOGIC; 
  signal b_dx_e2_and0000 : STD_LOGIC; 
  signal b_dx_e2_and000011_2612 : STD_LOGIC; 
  signal b_dx_e2_and000034_2613 : STD_LOGIC; 
  signal b_dx_e2_and000042 : STD_LOGIC; 
  signal b_dx_e2_and00006_2615 : STD_LOGIC; 
  signal b_dx_e2_cmp_ge0000 : STD_LOGIC; 
  signal b_dx_e2_cmp_ge000016_2617 : STD_LOGIC; 
  signal b_dx_e2_cmp_ge000019_2618 : STD_LOGIC; 
  signal b_dx_e2_cmp_ge0000_INV : STD_LOGIC; 
  signal b_dx_e3_and0000 : STD_LOGIC; 
  signal b_dx_e3_and000011_2624 : STD_LOGIC; 
  signal b_dx_e3_and000034_2625 : STD_LOGIC; 
  signal b_dx_e3_and000042 : STD_LOGIC; 
  signal b_dx_e3_and00006_2627 : STD_LOGIC; 
  signal b_dx_e3_cmp_ge0000 : STD_LOGIC; 
  signal b_dx_e3_cmp_ge000016_2629 : STD_LOGIC; 
  signal b_dx_e3_cmp_ge000019_2630 : STD_LOGIC; 
  signal b_dx_e3_cmp_ge0000_INV : STD_LOGIC; 
  signal b_dx_e_and0000 : STD_LOGIC; 
  signal b_dx_e_and000011_2636 : STD_LOGIC; 
  signal b_dx_e_and000034_2637 : STD_LOGIC; 
  signal b_dx_e_and000042 : STD_LOGIC; 
  signal b_dx_e_and00006_2639 : STD_LOGIC; 
  signal b_dx_e_cmp_ge0000 : STD_LOGIC; 
  signal b_dx_e_cmp_ge000016_2641 : STD_LOGIC; 
  signal b_dx_e_cmp_ge000019_2642 : STD_LOGIC; 
  signal b_dx_e_cmp_ge0000_INV : STD_LOGIC; 
  signal b_dy_e2_and0000 : STD_LOGIC; 
  signal b_dy_e2_and000022_2647 : STD_LOGIC; 
  signal b_dy_e2_and00008_2648 : STD_LOGIC; 
  signal b_dy_e2_cmp_ge0000 : STD_LOGIC; 
  signal b_dy_e2_cmp_ge000028_2650 : STD_LOGIC; 
  signal b_dy_e2_cmp_ge0000_INV : STD_LOGIC; 
  signal b_dy_e3_0_Q : STD_LOGIC; 
  signal b_dy_e3_2_Q : STD_LOGIC; 
  signal b_dy_e3_3_Q : STD_LOGIC; 
  signal b_dy_e3_and0000 : STD_LOGIC; 
  signal b_dy_e3_and000022_2656 : STD_LOGIC; 
  signal b_dy_e3_and00008_2657 : STD_LOGIC; 
  signal b_dy_e3_cmp_ge0000 : STD_LOGIC; 
  signal b_dy_e3_cmp_ge000028_2659 : STD_LOGIC; 
  signal b_dy_e_and0000 : STD_LOGIC; 
  signal b_dy_e_and000022_2664 : STD_LOGIC; 
  signal b_dy_e_and00008_2665 : STD_LOGIC; 
  signal b_dy_e_cmp_ge0000 : STD_LOGIC; 
  signal b_dy_e_cmp_ge000028_2667 : STD_LOGIC; 
  signal b_life_bullet_tmp_0_and0000 : STD_LOGIC; 
  signal b_life_bullet_tmp_0_and0001 : STD_LOGIC; 
  signal b_life_bullet_tmp_0_or0000 : STD_LOGIC; 
  signal b_life_bullet_tmp_0_or0001 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_and0000 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_and0001 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_cmp_ge0000 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_cmp_ge0001 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_cmp_le0000 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_cmp_le0001 : STD_LOGIC; 
  signal b_life_enemy_tmp2_0_or0000 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_and0000 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_and0001 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_cmp_ge0000 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_cmp_ge0001 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_cmp_le0000 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_cmp_le0001 : STD_LOGIC; 
  signal b_life_enemy_tmp3_0_or0000 : STD_LOGIC; 
  signal b_life_enemy_tmp_0_and0000 : STD_LOGIC; 
  signal b_life_enemy_tmp_0_and0001 : STD_LOGIC; 
  signal b_life_enemy_tmp_0_cmp_ge0000 : STD_LOGIC; 
  signal b_life_enemy_tmp_0_cmp_ge0001 : STD_LOGIC; 
  signal b_life_enemy_tmp_0_cmp_le0000 : STD_LOGIC; 
  signal b_life_enemy_tmp_0_or0000 : STD_LOGIC; 
  signal b_life_plane_tmp_0_addsub0001_9_inv_2881 : STD_LOGIC; 
  signal b_life_plane_tmp_0_addsub0003_9_inv_2884 : STD_LOGIC; 
  signal b_life_plane_tmp_0_addsub0005_9_inv_2887 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_ge0000 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_ge0001 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_ge0002 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_ge0004 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_ge0005 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_le0000 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_le0001 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_le0002 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_le0003 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_le0004 : STD_LOGIC; 
  signal b_life_plane_tmp_0_cmp_le0005 : STD_LOGIC; 
  signal b_life_plane_tmp_0_or0000 : STD_LOGIC; 
  signal b_life_plane_tmp_0_or000014_2910 : STD_LOGIC; 
  signal b_life_plane_tmp_0_or000022_SW0 : STD_LOGIC; 
  signal b_life_plane_tmp_0_or000022_SW01_2912 : STD_LOGIC; 
  signal b_life_plane_tmp_0_or00009_2913 : STD_LOGIC; 
  signal b_life_plane_tmp_0_sub0000 : STD_LOGIC; 
  signal b_plane_x_tmp_and0000 : STD_LOGIC; 
  signal b_plane_x_tmp_and000012_2953 : STD_LOGIC; 
  signal b_plane_x_tmp_and000017_2954 : STD_LOGIC; 
  signal b_plane_x_tmp_and000032_2955 : STD_LOGIC; 
  signal b_plane_x_tmp_and000064_2956 : STD_LOGIC; 
  signal b_plane_x_tmp_and000068_2957 : STD_LOGIC; 
  signal b_plane_x_tmp_not0001_inv : STD_LOGIC; 
  signal b_score_tmp_0_and0000 : STD_LOGIC; 
  signal b_score_tmp_0_or0000 : STD_LOGIC; 
  signal b_score_tmp_1_and0000 : STD_LOGIC; 
  signal b_score_tmp_1_or0000 : STD_LOGIC; 
  signal b_score_tmp_2_and0000 : STD_LOGIC; 
  signal b_score_tmp_2_or0000 : STD_LOGIC; 
  signal b_score_tmp_3_and0000 : STD_LOGIC; 
  signal b_score_tmp_3_or0000 : STD_LOGIC; 
  signal b_score_tmp_and0000 : STD_LOGIC; 
  signal b_score_tmp_and0001 : STD_LOGIC; 
  signal b_score_tmp_and0002 : STD_LOGIC; 
  signal b_score_tmp_cmp_le0000 : STD_LOGIC; 
  signal clk_2977 : STD_LOGIC; 
  signal clk1 : STD_LOGIC; 
  signal clk_0_BUFGP_2980 : STD_LOGIC; 
  signal clk_not0001 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_0_1_2983 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_0_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_0_1_rt_2985 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_0_rt_2986 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_1_1_2989 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_1_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_2_1_2992 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_2_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_2_0_rt_2994 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_2_rt_2995 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_3_1_2997 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_3_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_4_1_3000 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_4_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_4_rt_3002 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_5_1_3004 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_5_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_6_1_3007 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_6_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_7_1_3010 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_7_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_8_1_3013 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_8_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_9_1_3016 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_cy_9_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_1_1 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_1_2_3023 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_3_1_3026 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_3_2_3027 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_4_1_3029 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_5_1_3031 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_5_2_3032 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_6_1_3034 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_6_2_3035 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_7_1_3037 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_7_2_3038 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_8_1 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_8_2 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_9_1 : STD_LOGIC; 
  signal e_Mcompar_hs_cmp_ge0000_lut_9_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_0_1_3046 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_0_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_0_1_rt_3048 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_0_rt_3049 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_10_1 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_1_1_3055 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_1_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_2_1_3058 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_2_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_2_rt_3060 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_3_1_3062 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_3_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_4_1_3065 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_4_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_5_1_3068 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_5_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_5_1_rt_3070 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_6_1_3072 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_6_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_7_1_3075 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_7_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_8_1_3078 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_8_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_9_1_3081 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_cy_9_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_10_1_3085 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_11_1 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_1_1 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_1_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_2_1_3093 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_3_1_3095 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_3_2_3096 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_4_1_3098 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_4_2 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_5_1_3101 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_6_1_3103 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_6_2_3104 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_7_1_3106 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_7_2_3107 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_8_1_3109 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_8_2_3110 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_9_1 : STD_LOGIC; 
  signal e_Mcompar_vs_cmp_ge0000_lut_9_2_3113 : STD_LOGIC; 
  signal e_Mcount_hcnt : STD_LOGIC; 
  signal e_Mcount_hcnt1 : STD_LOGIC; 
  signal e_Mcount_hcnt10 : STD_LOGIC; 
  signal e_Mcount_hcnt11 : STD_LOGIC; 
  signal e_Mcount_hcnt12 : STD_LOGIC; 
  signal e_Mcount_hcnt13 : STD_LOGIC; 
  signal e_Mcount_hcnt14 : STD_LOGIC; 
  signal e_Mcount_hcnt15 : STD_LOGIC; 
  signal e_Mcount_hcnt16 : STD_LOGIC; 
  signal e_Mcount_hcnt17 : STD_LOGIC; 
  signal e_Mcount_hcnt18 : STD_LOGIC; 
  signal e_Mcount_hcnt19 : STD_LOGIC; 
  signal e_Mcount_hcnt2 : STD_LOGIC; 
  signal e_Mcount_hcnt20 : STD_LOGIC; 
  signal e_Mcount_hcnt21 : STD_LOGIC; 
  signal e_Mcount_hcnt22 : STD_LOGIC; 
  signal e_Mcount_hcnt23 : STD_LOGIC; 
  signal e_Mcount_hcnt24 : STD_LOGIC; 
  signal e_Mcount_hcnt25 : STD_LOGIC; 
  signal e_Mcount_hcnt26 : STD_LOGIC; 
  signal e_Mcount_hcnt27 : STD_LOGIC; 
  signal e_Mcount_hcnt28 : STD_LOGIC; 
  signal e_Mcount_hcnt29 : STD_LOGIC; 
  signal e_Mcount_hcnt3 : STD_LOGIC; 
  signal e_Mcount_hcnt30 : STD_LOGIC; 
  signal e_Mcount_hcnt31 : STD_LOGIC; 
  signal e_Mcount_hcnt4 : STD_LOGIC; 
  signal e_Mcount_hcnt5 : STD_LOGIC; 
  signal e_Mcount_hcnt6 : STD_LOGIC; 
  signal e_Mcount_hcnt7 : STD_LOGIC; 
  signal e_Mcount_hcnt8 : STD_LOGIC; 
  signal e_Mcount_hcnt9 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_10_rt_3211 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_11_rt_3213 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_12_rt_3215 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_13_rt_3217 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_14_rt_3219 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_15_rt_3221 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_16_rt_3223 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_17_rt_3225 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_18_rt_3227 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_19_rt_3229 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_1_rt_3231 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_20_rt_3233 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_21_rt_3235 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_22_rt_3237 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_23_rt_3239 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_24_rt_3241 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_25_rt_3243 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_26_rt_3245 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_27_rt_3247 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_28_rt_3249 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_29_rt_3251 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_2_rt_3253 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_30_rt_3255 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_3_rt_3257 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_4_rt_3259 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_5_rt_3261 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_6_rt_3263 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_7_rt_3265 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_8_rt_3267 : STD_LOGIC; 
  signal e_Mcount_vcnt_cy_9_rt_3269 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_0 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_1 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_10 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_11_3273 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_12 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_13 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_14 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_15 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_16 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_17 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_18 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_19 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_2 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_20 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_21_3284 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_22 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_23 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_24 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_25 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_26 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_27 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_28 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_29 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_3 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_30 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_31_3295 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_4 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_5 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_6 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_7 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_8 : STD_LOGIC; 
  signal e_Mcount_vcnt_eqn_9 : STD_LOGIC; 
  signal e_Mcount_vcnt_xor_31_rt_3303 : STD_LOGIC; 
  signal e_hcnt_not0001_inv : STD_LOGIC; 
  signal e_hs_3369 : STD_LOGIC; 
  signal e_hs_cmp_ge0000 : STD_LOGIC; 
  signal e_hs_mux0001 : STD_LOGIC; 
  signal e_vcnt_1_1_3384 : STD_LOGIC; 
  signal e_vcnt_2_1_3396 : STD_LOGIC; 
  signal e_vcnt_and00001 : STD_LOGIC; 
  signal e_vcnt_and00002 : STD_LOGIC; 
  signal e_vcnt_and00003 : STD_LOGIC; 
  signal e_vcnt_cmp_eq0000 : STD_LOGIC; 
  signal e_vcnt_not0001 : STD_LOGIC; 
  signal e_vcnt_not00011 : STD_LOGIC; 
  signal e_vcnt_not000111_3440 : STD_LOGIC; 
  signal e_vs_3441 : STD_LOGIC; 
  signal e_vs_cmp_ge0000 : STD_LOGIC; 
  signal e_vs_mux0001 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_10_rt_3446 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_11_rt_3448 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_12_rt_3450 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_13_rt_3452 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_14_rt_3454 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_15_rt_3456 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_16_rt_3458 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_17_rt_3460 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_18_rt_3462 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_19_rt_3464 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_1_rt_3466 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_20_rt_3468 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_21_rt_3470 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_22_rt_3472 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_23_rt_3474 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_24_rt_3476 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_25_rt_3478 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_26_rt_3480 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_27_rt_3482 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_28_rt_3484 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_29_rt_3486 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_2_rt_3488 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_30_rt_3490 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_3_rt_3492 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_4_rt_3494 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_5_rt_3496 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_6_rt_3498 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_7_rt_3500 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_8_rt_3502 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_cy_9_rt_3504 : STD_LOGIC; 
  signal f_Madd_q10hz_add0000_xor_31_rt_3506 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_10_rt_3509 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_11_rt_3511 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_12_rt_3513 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_13_rt_3515 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_14_rt_3517 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_15_rt_3519 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_16_rt_3521 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_17_rt_3523 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_18_rt_3525 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_19_rt_3527 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_1_rt_3529 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_20_rt_3531 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_21_rt_3533 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_22_rt_3535 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_23_rt_3537 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_24_rt_3539 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_25_rt_3541 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_26_rt_3543 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_27_rt_3545 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_28_rt_3547 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_29_rt_3549 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_2_rt_3551 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_30_rt_3553 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_3_rt_3555 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_4_rt_3557 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_5_rt_3559 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_6_rt_3561 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_7_rt_3563 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_8_rt_3565 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_cy_9_rt_3567 : STD_LOGIC; 
  signal f_Madd_q1khz_add0000_xor_31_rt_3569 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_10_rt_3572 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_11_rt_3574 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_12_rt_3576 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_13_rt_3578 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_14_rt_3580 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_15_rt_3582 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_16_rt_3584 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_17_rt_3586 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_18_rt_3588 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_19_rt_3590 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_1_rt_3592 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_20_rt_3594 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_21_rt_3596 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_22_rt_3598 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_23_rt_3600 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_24_rt_3602 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_25_rt_3604 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_26_rt_3606 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_27_rt_3608 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_28_rt_3610 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_29_rt_3612 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_2_rt_3614 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_30_rt_3616 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_3_rt_3618 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_4_rt_3620 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_5_rt_3622 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_6_rt_3624 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_7_rt_3626 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_8_rt_3628 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_cy_9_rt_3630 : STD_LOGIC; 
  signal f_Madd_q1mhz_add0000_xor_31_rt_3632 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_cy_1_rt_3636 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_0_Q : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_10_Q : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_11_Q : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_2_Q_3648 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_3_Q_3649 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_4_Q_3650 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_5_Q_3651 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_6_Q_3652 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_7_Q_3653 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_8_Q_3654 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_le0000_lut_9_Q_3655 : STD_LOGIC; 
  signal f_Mcompar_q10hz_cmp_lt0000_cy_0_rt_3657 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_cy_1_rt_3679 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_cy_4_rt_3683 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_0_Q_3689 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_10_Q_3690 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_11_Q : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_2_Q : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_3_Q_3693 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_5_Q_3694 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_6_Q_3695 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_7_Q_3696 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_8_Q_3697 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_le0000_lut_9_Q_3698 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_cy_0_rt_3700 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_cy_3_rt_3705 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_10_Q : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_1_Q : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_2_Q_3714 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_4_Q_3715 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_5_Q_3716 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_6_Q_3717 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_7_Q_3718 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_8_Q_3719 : STD_LOGIC; 
  signal f_Mcompar_q1khz_cmp_lt0000_lut_9_Q : STD_LOGIC; 
  signal f_Mcompar_q1mhz_cmp_lt0000_cy_0_rt_3741 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_10_rt_3764 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_11_rt_3766 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_12_rt_3768 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_13_rt_3770 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_14_rt_3772 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_15_rt_3774 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_16_rt_3776 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_17_rt_3778 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_18_rt_3780 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_19_rt_3782 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_1_rt_3784 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_20_rt_3786 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_21_rt_3788 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_22_rt_3790 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_23_rt_3792 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_24_rt_3794 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_25_rt_3796 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_26_rt_3798 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_27_rt_3800 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_28_rt_3802 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_29_rt_3804 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_2_rt_3806 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_30_rt_3808 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_3_rt_3810 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_4_rt_3812 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_5_rt_3814 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_6_rt_3816 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_7_rt_3818 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_8_rt_3820 : STD_LOGIC; 
  signal f_Mcount_cout0_cy_9_rt_3822 : STD_LOGIC; 
  signal f_Mcount_cout0_xor_31_rt_3824 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_10_rt_3827 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_11_rt_3829 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_12_rt_3831 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_13_rt_3833 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_14_rt_3835 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_15_rt_3837 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_16_rt_3839 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_17_rt_3841 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_18_rt_3843 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_19_rt_3845 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_1_rt_3847 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_20_rt_3849 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_21_rt_3851 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_22_rt_3853 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_23_rt_3855 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_24_rt_3857 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_25_rt_3859 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_26_rt_3861 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_27_rt_3863 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_28_rt_3865 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_29_rt_3867 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_2_rt_3869 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_30_rt_3871 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_3_rt_3873 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_4_rt_3875 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_5_rt_3877 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_6_rt_3879 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_7_rt_3881 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_8_rt_3883 : STD_LOGIC; 
  signal f_Mcount_cout1_cy_9_rt_3885 : STD_LOGIC; 
  signal f_Mcount_cout1_xor_31_rt_3887 : STD_LOGIC; 
  signal f_Mcount_cout_cy_10_rt_3890 : STD_LOGIC; 
  signal f_Mcount_cout_cy_11_rt_3892 : STD_LOGIC; 
  signal f_Mcount_cout_cy_12_rt_3894 : STD_LOGIC; 
  signal f_Mcount_cout_cy_13_rt_3896 : STD_LOGIC; 
  signal f_Mcount_cout_cy_14_rt_3898 : STD_LOGIC; 
  signal f_Mcount_cout_cy_15_rt_3900 : STD_LOGIC; 
  signal f_Mcount_cout_cy_16_rt_3902 : STD_LOGIC; 
  signal f_Mcount_cout_cy_17_rt_3904 : STD_LOGIC; 
  signal f_Mcount_cout_cy_18_rt_3906 : STD_LOGIC; 
  signal f_Mcount_cout_cy_19_rt_3908 : STD_LOGIC; 
  signal f_Mcount_cout_cy_1_rt_3910 : STD_LOGIC; 
  signal f_Mcount_cout_cy_20_rt_3912 : STD_LOGIC; 
  signal f_Mcount_cout_cy_21_rt_3914 : STD_LOGIC; 
  signal f_Mcount_cout_cy_22_rt_3916 : STD_LOGIC; 
  signal f_Mcount_cout_cy_23_rt_3918 : STD_LOGIC; 
  signal f_Mcount_cout_cy_24_rt_3920 : STD_LOGIC; 
  signal f_Mcount_cout_cy_25_rt_3922 : STD_LOGIC; 
  signal f_Mcount_cout_cy_26_rt_3924 : STD_LOGIC; 
  signal f_Mcount_cout_cy_27_rt_3926 : STD_LOGIC; 
  signal f_Mcount_cout_cy_28_rt_3928 : STD_LOGIC; 
  signal f_Mcount_cout_cy_29_rt_3930 : STD_LOGIC; 
  signal f_Mcount_cout_cy_2_rt_3932 : STD_LOGIC; 
  signal f_Mcount_cout_cy_30_rt_3934 : STD_LOGIC; 
  signal f_Mcount_cout_cy_3_rt_3936 : STD_LOGIC; 
  signal f_Mcount_cout_cy_4_rt_3938 : STD_LOGIC; 
  signal f_Mcount_cout_cy_5_rt_3940 : STD_LOGIC; 
  signal f_Mcount_cout_cy_6_rt_3942 : STD_LOGIC; 
  signal f_Mcount_cout_cy_7_rt_3944 : STD_LOGIC; 
  signal f_Mcount_cout_cy_8_rt_3946 : STD_LOGIC; 
  signal f_Mcount_cout_cy_9_rt_3948 : STD_LOGIC; 
  signal f_Mcount_cout_xor_31_rt_3950 : STD_LOGIC; 
  signal f_Result_0_1 : STD_LOGIC; 
  signal f_Result_0_2 : STD_LOGIC; 
  signal f_Result_10_1 : STD_LOGIC; 
  signal f_Result_10_2 : STD_LOGIC; 
  signal f_Result_11_1 : STD_LOGIC; 
  signal f_Result_11_2 : STD_LOGIC; 
  signal f_Result_12_1 : STD_LOGIC; 
  signal f_Result_12_2 : STD_LOGIC; 
  signal f_Result_13_1 : STD_LOGIC; 
  signal f_Result_13_2 : STD_LOGIC; 
  signal f_Result_14_1 : STD_LOGIC; 
  signal f_Result_14_2 : STD_LOGIC; 
  signal f_Result_15_1 : STD_LOGIC; 
  signal f_Result_15_2 : STD_LOGIC; 
  signal f_Result_16_1 : STD_LOGIC; 
  signal f_Result_16_2 : STD_LOGIC; 
  signal f_Result_17_1 : STD_LOGIC; 
  signal f_Result_17_2 : STD_LOGIC; 
  signal f_Result_18_1 : STD_LOGIC; 
  signal f_Result_18_2 : STD_LOGIC; 
  signal f_Result_19_1 : STD_LOGIC; 
  signal f_Result_19_2 : STD_LOGIC; 
  signal f_Result_1_1 : STD_LOGIC; 
  signal f_Result_1_2 : STD_LOGIC; 
  signal f_Result_20_1 : STD_LOGIC; 
  signal f_Result_20_2 : STD_LOGIC; 
  signal f_Result_21_1 : STD_LOGIC; 
  signal f_Result_21_2 : STD_LOGIC; 
  signal f_Result_22_1 : STD_LOGIC; 
  signal f_Result_22_2 : STD_LOGIC; 
  signal f_Result_23_1 : STD_LOGIC; 
  signal f_Result_23_2 : STD_LOGIC; 
  signal f_Result_24_1 : STD_LOGIC; 
  signal f_Result_24_2 : STD_LOGIC; 
  signal f_Result_25_1 : STD_LOGIC; 
  signal f_Result_25_2 : STD_LOGIC; 
  signal f_Result_26_1 : STD_LOGIC; 
  signal f_Result_26_2 : STD_LOGIC; 
  signal f_Result_27_1 : STD_LOGIC; 
  signal f_Result_27_2 : STD_LOGIC; 
  signal f_Result_28_1 : STD_LOGIC; 
  signal f_Result_28_2 : STD_LOGIC; 
  signal f_Result_29_1 : STD_LOGIC; 
  signal f_Result_29_2 : STD_LOGIC; 
  signal f_Result_2_1 : STD_LOGIC; 
  signal f_Result_2_2 : STD_LOGIC; 
  signal f_Result_30_1 : STD_LOGIC; 
  signal f_Result_30_2 : STD_LOGIC; 
  signal f_Result_31_1 : STD_LOGIC; 
  signal f_Result_31_2 : STD_LOGIC; 
  signal f_Result_3_1 : STD_LOGIC; 
  signal f_Result_3_2 : STD_LOGIC; 
  signal f_Result_4_1 : STD_LOGIC; 
  signal f_Result_4_2 : STD_LOGIC; 
  signal f_Result_5_1 : STD_LOGIC; 
  signal f_Result_5_2 : STD_LOGIC; 
  signal f_Result_6_1 : STD_LOGIC; 
  signal f_Result_6_2 : STD_LOGIC; 
  signal f_Result_7_1 : STD_LOGIC; 
  signal f_Result_7_2 : STD_LOGIC; 
  signal f_Result_8_1 : STD_LOGIC; 
  signal f_Result_8_2 : STD_LOGIC; 
  signal f_Result_9_1 : STD_LOGIC; 
  signal f_Result_9_2 : STD_LOGIC; 
  signal f_cout0_and0000 : STD_LOGIC; 
  signal f_cout1_and0000 : STD_LOGIC; 
  signal f_cout_and0000 : STD_LOGIC; 
  signal f_q10hz_4146 : STD_LOGIC; 
  signal f_q10hz1 : STD_LOGIC; 
  signal f_q10hz_cmp_le0000 : STD_LOGIC; 
  signal f_q10hz_cmp_lt0000 : STD_LOGIC; 
  signal f_q1khz_4182 : STD_LOGIC; 
  signal f_q1khz1 : STD_LOGIC; 
  signal f_q1khz_cmp_le0000 : STD_LOGIC; 
  signal f_q1khz_cmp_lt0000 : STD_LOGIC; 
  signal f_q1mhz_4218 : STD_LOGIC; 
  signal f_q1mhz1 : STD_LOGIC; 
  signal f_q1mhz_cmp_le0000 : STD_LOGIC; 
  signal f_q1mhz_cmp_lt0000 : STD_LOGIC; 
  signal fire_IBUF_4254 : STD_LOGIC; 
  signal key_l_IBUF_4257 : STD_LOGIC; 
  signal key_r_IBUF_4259 : STD_LOGIC; 
  signal pic_rgb_0_OBUF_4263 : STD_LOGIC; 
  signal pic_rgb_1_OBUF_4264 : STD_LOGIC; 
  signal reset_IBUF_4266 : STD_LOGIC; 
  signal reset_IBUF1 : STD_LOGIC; 
  signal start_IBUF_4269 : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_a_e_Mrom_data_rom00001_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal a_Madd_bullet_rgb_addsub0000_cy : STD_LOGIC_VECTOR ( 9 downto 4 ); 
  signal a_Madd_bullet_rgb_addsub0000_lut : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal a_Madd_bullet_rgb_addsub0001_cy : STD_LOGIC_VECTOR ( 9 downto 4 ); 
  signal a_Madd_bullet_rgb_addsub0001_lut : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal a_Madd_enemy2_rgb_addsub0000_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_enemy2_rgb_addsub0000_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Madd_enemy2_rgb_addsub0001_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_enemy2_rgb_addsub0001_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Madd_enemy3_rgb_addsub0000_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_enemy3_rgb_addsub0000_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Madd_enemy3_rgb_addsub0001_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_enemy3_rgb_addsub0001_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Madd_enemy_rgb_addsub0000_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_enemy_rgb_addsub0000_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Madd_enemy_rgb_addsub0001_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_enemy_rgb_addsub0001_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Madd_plane_rgb_addsub0000_cy : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal a_Madd_plane_rgb_addsub0000_lut : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal a_Mcompar_bullet_rgb_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_le0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_le0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_le0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_bullet_rgb_cmp_le0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_le0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_le0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_le0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy2_rgb_cmp_le0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_le0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_le0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_le0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy3_rgb_cmp_le0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_le0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_le0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_le0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_enemy_rgb_cmp_le0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_num1_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal a_Mcompar_num1_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_Mcompar_plane_rgb_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_plane_rgb_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_plane_rgb_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_plane_rgb_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_plane_rgb_cmp_le0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Mcompar_plane_rgb_cmp_le0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal a_Mcompar_plane_rgb_cmp_le0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal a_Msub_num2_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal a_Msub_x_bullet_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal a_Msub_x_enemy2_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_enemy2_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_enemy3_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_enemy3_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_enemy_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_enemy_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_plane_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_x_plane_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_bullet_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal a_Msub_y_dis_cy : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal a_Msub_y_dis_g_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal a_Msub_y_enemy2_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_enemy2_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_enemy3_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_enemy3_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_enemy_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_enemy_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_plane_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_Msub_y_plane_Madd_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_addr_g_mux0000 : STD_LOGIC_VECTOR ( 6 downto 3 ); 
  signal a_addr_mux0002 : STD_LOGIC_VECTOR ( 7 downto 3 ); 
  signal a_bullet_rgb : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_bullet_rgb_addsub0000 : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal a_bullet_rgb_addsub0001 : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal a_bullet_rgb_mux0001 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_d_Madd_data_not0000 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal a_d_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal a_e_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal a_en : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a_en_g : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a_enemy2_rgb : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_enemy2_rgb_addsub0000 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_enemy2_rgb_addsub0001 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_enemy2_rgb_mux0001 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_enemy3_rgb : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_enemy3_rgb_addsub0000 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_enemy3_rgb_addsub0001 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_enemy3_rgb_mux0001 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_enemy_rgb : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_enemy_rgb_addsub0000 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_enemy_rgb_addsub0001 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_enemy_rgb_mux0001 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal a_num1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a_plane_rgb_addsub0000 : STD_LOGIC_VECTOR ( 10 downto 5 ); 
  signal a_plane_rgb_addsub0001 : STD_LOGIC_VECTOR ( 8 downto 7 ); 
  signal a_plane_rgb_mux0001 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a_x_bullet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal a_x_dis_g : STD_LOGIC_VECTOR ( 9 downto 8 ); 
  signal a_x_enemy2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_x_enemy3 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_x_enemy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_x_plane : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_y_bullet : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal a_y_dis : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal a_y_dis_g : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal a_y_enemy2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_y_enemy3 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_y_enemy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal a_y_plane : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b_Maccum_plane_x_tmp_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Maccum_plane_x_tmp_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_bullet_x_tmp_add0000_cy : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal b_Madd_enemy_x_tmp2_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_enemy_x_tmp2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_enemy_x_tmp3_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_enemy_x_tmp3_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_enemy_x_tmp_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_enemy_x_tmp_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_enemy_y_tmp2_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_enemy_y_tmp2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_enemy_y_tmp3_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_enemy_y_tmp3_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_enemy_y_tmp_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Madd_enemy_y_tmp_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Madd_life_plane_tmp_0_addsub0006_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Madd_life_plane_tmp_0_addsub0007_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Madd_mux0000_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Madd_mux0000_addsub0001_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Madd_mux0001_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Madd_mux0001_addsub0001_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0001_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0002_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0002_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0003_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0004_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0004_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_life_plane_tmp_0_cmp_le0005_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b_Mcompar_score_tmp_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Mcompar_score_tmp_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_Msub_bullet_y_tmp_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal b_Msub_bullet_y_tmp_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal b_Msub_life_enemy_tmp_0_sub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_Msub_life_enemy_tmp_0_sub0001_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_Msub_life_plane_tmp_0_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Msub_life_plane_tmp_0_addsub0001_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Msub_life_plane_tmp_0_addsub0002_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Msub_life_plane_tmp_0_addsub0003_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Msub_life_plane_tmp_0_addsub0004_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Msub_life_plane_tmp_0_addsub0005_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_Msub_mux0000_sub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_Msub_mux0000_sub0001_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_Msub_mux0001_sub0000_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_Msub_mux0001_sub0001_cy : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_bullet_x_tmp : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_bullet_x_tmp_add0000 : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal b_bullet_y_tmp : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_bullet_y_tmp_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_bullet_y_tmp_mux0001 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b_dx_e2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal b_dx_e3 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal b_dx_e : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal b_dy_e2 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal b_dy_e : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal b_enemy_x_tmp2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp2_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp3 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp3_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp3_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_x_tmp_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp2_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp3 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp3_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp3_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_enemy_y_tmp_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_life_bullet_tmp : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal b_life_enemy_tmp2 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal b_life_enemy_tmp3 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal b_life_enemy_tmp : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal b_life_enemy_tmp_0_sub0000 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_life_enemy_tmp_0_sub0001 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_life_plane_tmp : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal b_life_plane_tmp_0_addsub0000 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_life_plane_tmp_0_addsub0001 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_life_plane_tmp_0_addsub0002 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_life_plane_tmp_0_addsub0003 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_life_plane_tmp_0_addsub0004 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_life_plane_tmp_0_addsub0005 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_life_plane_tmp_0_addsub0006 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b_life_plane_tmp_0_addsub0007 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b_mux0000_add0002 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal b_mux0000_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b_mux0000_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b_mux0000_sub0000 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_mux0000_sub0001 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_mux0001_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b_mux0001_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b_mux0001_sub0000 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_mux0001_sub0001 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal b_plane_x_tmp : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b_plane_y_tmp : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal b_score_tmp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b_score_tmp_mux0003 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal e_Mcompar_hs_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal e_Mcompar_hs_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal e_Mcompar_vs_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal e_Mcompar_vs_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal e_Mcount_hcnt_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal e_Mcount_hcnt_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal e_Mcount_vcnt_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal e_Mcount_vcnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal e_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal e_hcnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal e_vcnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal e_vcnt_and0000_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal e_vcnt_and0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal e_vcnt_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal e_vcnt_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal f_Madd_q10hz_add0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal f_Madd_q10hz_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal f_Madd_q1khz_add0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal f_Madd_q1khz_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal f_Madd_q1mhz_add0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal f_Madd_q1mhz_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal f_Mcompar_q10hz_cmp_le0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal f_Mcompar_q10hz_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal f_Mcompar_q10hz_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal f_Mcompar_q1khz_cmp_le0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal f_Mcompar_q1khz_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal f_Mcompar_q1mhz_cmp_le0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal f_Mcompar_q1mhz_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal f_Mcompar_q1mhz_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal f_Mcompar_q1mhz_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal f_Mcount_cout0_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal f_Mcount_cout0_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal f_Mcount_cout1_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal f_Mcount_cout1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal f_Mcount_cout_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal f_Mcount_cout_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal f_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal f_cout0 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal f_cout1 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal f_cout : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal f_q10hz_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal f_q1khz_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal f_q1mhz_add0000 : STD_LOGIC_VECTOR ( 31 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  clk : FDC
    port map (
      C => clk_0_BUFGP_2980,
      CLR => b_dx_e2_Acst_inv,
      D => clk_not0001,
      Q => clk1
    );
  e_Mcount_vcnt_xor_31_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(30),
      LI => e_Mcount_vcnt_xor_31_rt_3303,
      O => e_Result(31)
    );
  e_Mcount_vcnt_xor_30_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(29),
      LI => e_Mcount_vcnt_cy_30_rt_3255,
      O => e_Result(30)
    );
  e_Mcount_vcnt_cy_30_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(29),
      DI => N0,
      S => e_Mcount_vcnt_cy_30_rt_3255,
      O => e_Mcount_vcnt_cy(30)
    );
  e_Mcount_vcnt_xor_29_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(28),
      LI => e_Mcount_vcnt_cy_29_rt_3251,
      O => e_Result(29)
    );
  e_Mcount_vcnt_cy_29_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(28),
      DI => N0,
      S => e_Mcount_vcnt_cy_29_rt_3251,
      O => e_Mcount_vcnt_cy(29)
    );
  e_Mcount_vcnt_xor_28_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(27),
      LI => e_Mcount_vcnt_cy_28_rt_3249,
      O => e_Result(28)
    );
  e_Mcount_vcnt_cy_28_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(27),
      DI => N0,
      S => e_Mcount_vcnt_cy_28_rt_3249,
      O => e_Mcount_vcnt_cy(28)
    );
  e_Mcount_vcnt_xor_27_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(26),
      LI => e_Mcount_vcnt_cy_27_rt_3247,
      O => e_Result(27)
    );
  e_Mcount_vcnt_cy_27_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(26),
      DI => N0,
      S => e_Mcount_vcnt_cy_27_rt_3247,
      O => e_Mcount_vcnt_cy(27)
    );
  e_Mcount_vcnt_xor_26_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(25),
      LI => e_Mcount_vcnt_cy_26_rt_3245,
      O => e_Result(26)
    );
  e_Mcount_vcnt_cy_26_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(25),
      DI => N0,
      S => e_Mcount_vcnt_cy_26_rt_3245,
      O => e_Mcount_vcnt_cy(26)
    );
  e_Mcount_vcnt_xor_25_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(24),
      LI => e_Mcount_vcnt_cy_25_rt_3243,
      O => e_Result(25)
    );
  e_Mcount_vcnt_cy_25_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(24),
      DI => N0,
      S => e_Mcount_vcnt_cy_25_rt_3243,
      O => e_Mcount_vcnt_cy(25)
    );
  e_Mcount_vcnt_xor_24_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(23),
      LI => e_Mcount_vcnt_cy_24_rt_3241,
      O => e_Result(24)
    );
  e_Mcount_vcnt_cy_24_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(23),
      DI => N0,
      S => e_Mcount_vcnt_cy_24_rt_3241,
      O => e_Mcount_vcnt_cy(24)
    );
  e_Mcount_vcnt_xor_23_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(22),
      LI => e_Mcount_vcnt_cy_23_rt_3239,
      O => e_Result(23)
    );
  e_Mcount_vcnt_cy_23_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(22),
      DI => N0,
      S => e_Mcount_vcnt_cy_23_rt_3239,
      O => e_Mcount_vcnt_cy(23)
    );
  e_Mcount_vcnt_xor_22_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(21),
      LI => e_Mcount_vcnt_cy_22_rt_3237,
      O => e_Result(22)
    );
  e_Mcount_vcnt_cy_22_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(21),
      DI => N0,
      S => e_Mcount_vcnt_cy_22_rt_3237,
      O => e_Mcount_vcnt_cy(22)
    );
  e_Mcount_vcnt_xor_21_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(20),
      LI => e_Mcount_vcnt_cy_21_rt_3235,
      O => e_Result(21)
    );
  e_Mcount_vcnt_cy_21_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(20),
      DI => N0,
      S => e_Mcount_vcnt_cy_21_rt_3235,
      O => e_Mcount_vcnt_cy(21)
    );
  e_Mcount_vcnt_xor_20_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(19),
      LI => e_Mcount_vcnt_cy_20_rt_3233,
      O => e_Result(20)
    );
  e_Mcount_vcnt_cy_20_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(19),
      DI => N0,
      S => e_Mcount_vcnt_cy_20_rt_3233,
      O => e_Mcount_vcnt_cy(20)
    );
  e_Mcount_vcnt_xor_19_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(18),
      LI => e_Mcount_vcnt_cy_19_rt_3229,
      O => e_Result(19)
    );
  e_Mcount_vcnt_cy_19_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(18),
      DI => N0,
      S => e_Mcount_vcnt_cy_19_rt_3229,
      O => e_Mcount_vcnt_cy(19)
    );
  e_Mcount_vcnt_xor_18_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(17),
      LI => e_Mcount_vcnt_cy_18_rt_3227,
      O => e_Result(18)
    );
  e_Mcount_vcnt_cy_18_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(17),
      DI => N0,
      S => e_Mcount_vcnt_cy_18_rt_3227,
      O => e_Mcount_vcnt_cy(18)
    );
  e_Mcount_vcnt_xor_17_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(16),
      LI => e_Mcount_vcnt_cy_17_rt_3225,
      O => e_Result(17)
    );
  e_Mcount_vcnt_cy_17_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(16),
      DI => N0,
      S => e_Mcount_vcnt_cy_17_rt_3225,
      O => e_Mcount_vcnt_cy(17)
    );
  e_Mcount_vcnt_xor_16_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(15),
      LI => e_Mcount_vcnt_cy_16_rt_3223,
      O => e_Result(16)
    );
  e_Mcount_vcnt_cy_16_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(15),
      DI => N0,
      S => e_Mcount_vcnt_cy_16_rt_3223,
      O => e_Mcount_vcnt_cy(16)
    );
  e_Mcount_vcnt_xor_15_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(14),
      LI => e_Mcount_vcnt_cy_15_rt_3221,
      O => e_Result(15)
    );
  e_Mcount_vcnt_cy_15_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(14),
      DI => N0,
      S => e_Mcount_vcnt_cy_15_rt_3221,
      O => e_Mcount_vcnt_cy(15)
    );
  e_Mcount_vcnt_xor_14_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(13),
      LI => e_Mcount_vcnt_cy_14_rt_3219,
      O => e_Result(14)
    );
  e_Mcount_vcnt_cy_14_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(13),
      DI => N0,
      S => e_Mcount_vcnt_cy_14_rt_3219,
      O => e_Mcount_vcnt_cy(14)
    );
  e_Mcount_vcnt_xor_13_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(12),
      LI => e_Mcount_vcnt_cy_13_rt_3217,
      O => e_Result(13)
    );
  e_Mcount_vcnt_cy_13_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(12),
      DI => N0,
      S => e_Mcount_vcnt_cy_13_rt_3217,
      O => e_Mcount_vcnt_cy(13)
    );
  e_Mcount_vcnt_xor_12_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(11),
      LI => e_Mcount_vcnt_cy_12_rt_3215,
      O => e_Result(12)
    );
  e_Mcount_vcnt_cy_12_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(11),
      DI => N0,
      S => e_Mcount_vcnt_cy_12_rt_3215,
      O => e_Mcount_vcnt_cy(12)
    );
  e_Mcount_vcnt_xor_11_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(10),
      LI => e_Mcount_vcnt_cy_11_rt_3213,
      O => e_Result(11)
    );
  e_Mcount_vcnt_cy_11_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(10),
      DI => N0,
      S => e_Mcount_vcnt_cy_11_rt_3213,
      O => e_Mcount_vcnt_cy(11)
    );
  e_Mcount_vcnt_xor_10_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(9),
      LI => e_Mcount_vcnt_cy_10_rt_3211,
      O => e_Result(10)
    );
  e_Mcount_vcnt_cy_10_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(9),
      DI => N0,
      S => e_Mcount_vcnt_cy_10_rt_3211,
      O => e_Mcount_vcnt_cy(10)
    );
  e_Mcount_vcnt_xor_9_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(8),
      LI => e_Mcount_vcnt_cy_9_rt_3269,
      O => e_Result(9)
    );
  e_Mcount_vcnt_cy_9_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(8),
      DI => N0,
      S => e_Mcount_vcnt_cy_9_rt_3269,
      O => e_Mcount_vcnt_cy(9)
    );
  e_Mcount_vcnt_xor_8_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(7),
      LI => e_Mcount_vcnt_cy_8_rt_3267,
      O => e_Result(8)
    );
  e_Mcount_vcnt_cy_8_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(7),
      DI => N0,
      S => e_Mcount_vcnt_cy_8_rt_3267,
      O => e_Mcount_vcnt_cy(8)
    );
  e_Mcount_vcnt_xor_7_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(6),
      LI => e_Mcount_vcnt_cy_7_rt_3265,
      O => e_Result(7)
    );
  e_Mcount_vcnt_cy_7_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(6),
      DI => N0,
      S => e_Mcount_vcnt_cy_7_rt_3265,
      O => e_Mcount_vcnt_cy(7)
    );
  e_Mcount_vcnt_xor_6_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(5),
      LI => e_Mcount_vcnt_cy_6_rt_3263,
      O => e_Result(6)
    );
  e_Mcount_vcnt_cy_6_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(5),
      DI => N0,
      S => e_Mcount_vcnt_cy_6_rt_3263,
      O => e_Mcount_vcnt_cy(6)
    );
  e_Mcount_vcnt_xor_5_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(4),
      LI => e_Mcount_vcnt_cy_5_rt_3261,
      O => e_Result(5)
    );
  e_Mcount_vcnt_cy_5_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(4),
      DI => N0,
      S => e_Mcount_vcnt_cy_5_rt_3261,
      O => e_Mcount_vcnt_cy(5)
    );
  e_Mcount_vcnt_xor_4_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(3),
      LI => e_Mcount_vcnt_cy_4_rt_3259,
      O => e_Result(4)
    );
  e_Mcount_vcnt_cy_4_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(3),
      DI => N0,
      S => e_Mcount_vcnt_cy_4_rt_3259,
      O => e_Mcount_vcnt_cy(4)
    );
  e_Mcount_vcnt_xor_3_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(2),
      LI => e_Mcount_vcnt_cy_3_rt_3257,
      O => e_Result(3)
    );
  e_Mcount_vcnt_cy_3_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(2),
      DI => N0,
      S => e_Mcount_vcnt_cy_3_rt_3257,
      O => e_Mcount_vcnt_cy(3)
    );
  e_Mcount_vcnt_xor_2_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(1),
      LI => e_Mcount_vcnt_cy_2_rt_3253,
      O => e_Result(2)
    );
  e_Mcount_vcnt_cy_2_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(1),
      DI => N0,
      S => e_Mcount_vcnt_cy_2_rt_3253,
      O => e_Mcount_vcnt_cy(2)
    );
  e_Mcount_vcnt_xor_1_Q : XORCY
    port map (
      CI => e_Mcount_vcnt_cy(0),
      LI => e_Mcount_vcnt_cy_1_rt_3231,
      O => e_Result(1)
    );
  e_Mcount_vcnt_cy_1_Q : MUXCY
    port map (
      CI => e_Mcount_vcnt_cy(0),
      DI => N0,
      S => e_Mcount_vcnt_cy_1_rt_3231,
      O => e_Mcount_vcnt_cy(1)
    );
  e_Mcount_vcnt_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => e_Mcount_vcnt_lut(0),
      O => e_Result(0)
    );
  e_Mcount_vcnt_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => e_Mcount_vcnt_lut(0),
      O => e_Mcount_vcnt_cy(0)
    );
  e_Mcompar_vs_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(11),
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut(12),
      O => e_Mcompar_vs_cmp_ge0000_cy(12)
    );
  e_Mcompar_vs_cmp_ge0000_cy_11_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_10_1,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_11_1,
      O => e_Mcompar_vs_cmp_ge0000_cy(11)
    );
  e_Mcompar_vs_cmp_ge0000_cy_10_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_9_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_10_1_3085,
      O => e_Mcompar_vs_cmp_ge0000_cy_10_1
    );
  e_Mcompar_vs_cmp_ge0000_lut_10_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(26),
      I1 => e_vcnt(27),
      I2 => e_vcnt(28),
      I3 => e_vcnt(29),
      O => e_Mcompar_vs_cmp_ge0000_lut_10_1_3085
    );
  e_Mcompar_vs_cmp_ge0000_cy_9_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_8_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_9_2_3113,
      O => e_Mcompar_vs_cmp_ge0000_cy_9_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(22),
      I1 => e_vcnt(23),
      I2 => e_vcnt(24),
      I3 => e_vcnt(25),
      O => e_Mcompar_vs_cmp_ge0000_lut_9_2_3113
    );
  e_Mcompar_vs_cmp_ge0000_cy_8_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_7_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_8_2_3110,
      O => e_Mcompar_vs_cmp_ge0000_cy_8_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(18),
      I1 => e_vcnt(19),
      I2 => e_vcnt(20),
      I3 => e_vcnt(21),
      O => e_Mcompar_vs_cmp_ge0000_lut_8_2_3110
    );
  e_Mcompar_vs_cmp_ge0000_cy_7_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_6_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_7_2_3107,
      O => e_Mcompar_vs_cmp_ge0000_cy_7_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(14),
      I1 => e_vcnt(15),
      I2 => e_vcnt(16),
      I3 => e_vcnt(17),
      O => e_Mcompar_vs_cmp_ge0000_lut_7_2_3107
    );
  e_Mcompar_vs_cmp_ge0000_cy_6_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_5_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_6_2_3104,
      O => e_Mcompar_vs_cmp_ge0000_cy_6_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(10),
      I1 => e_vcnt(11),
      I2 => e_vcnt(12),
      I3 => e_vcnt(13),
      O => e_Mcompar_vs_cmp_ge0000_lut_6_2_3104
    );
  e_Mcompar_vs_cmp_ge0000_cy_5_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_4_2,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_cy_5_1_rt_3070,
      O => e_Mcompar_vs_cmp_ge0000_cy_5_2
    );
  e_Mcompar_vs_cmp_ge0000_cy_4_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_3_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_4_2,
      O => e_Mcompar_vs_cmp_ge0000_cy_4_2
    );
  e_Mcompar_vs_cmp_ge0000_cy_3_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_2_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_3_2_3096,
      O => e_Mcompar_vs_cmp_ge0000_cy_3_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => e_vcnt(6),
      I2 => e_vcnt(5),
      I3 => e_vcnt(4),
      O => e_Mcompar_vs_cmp_ge0000_lut_3_2_3096
    );
  e_Mcompar_vs_cmp_ge0000_cy_2_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_1_2,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut_2_1_3093,
      O => e_Mcompar_vs_cmp_ge0000_cy_2_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => e_vcnt(2),
      I1 => e_vcnt(3),
      O => e_Mcompar_vs_cmp_ge0000_lut_2_1_3093
    );
  e_Mcompar_vs_cmp_ge0000_cy_1_1 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_0_2,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_1_2,
      O => e_Mcompar_vs_cmp_ge0000_cy_1_2
    );
  e_Mcompar_vs_cmp_ge0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_cy_0_1_rt_3048,
      O => e_Mcompar_vs_cmp_ge0000_cy_0_2
    );
  e_Mcompar_vs_cmp_ge0000_cy_9_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_8_1_3078,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut_9_1,
      O => e_Mcompar_vs_cmp_ge0000_cy_9_1_3081
    );
  e_Mcompar_vs_cmp_ge0000_cy_8_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_7_1_3075,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_8_1_3109,
      O => e_Mcompar_vs_cmp_ge0000_cy_8_1_3078
    );
  e_Mcompar_vs_cmp_ge0000_lut_8_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => e_vcnt(29),
      I1 => e_vcnt(30),
      O => e_Mcompar_vs_cmp_ge0000_lut_8_1_3109
    );
  e_Mcompar_vs_cmp_ge0000_cy_7_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_6_1_3072,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_7_1_3106,
      O => e_Mcompar_vs_cmp_ge0000_cy_7_1_3075
    );
  e_Mcompar_vs_cmp_ge0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(25),
      I1 => e_vcnt(26),
      I2 => e_vcnt(27),
      I3 => e_vcnt(28),
      O => e_Mcompar_vs_cmp_ge0000_lut_7_1_3106
    );
  e_Mcompar_vs_cmp_ge0000_cy_6_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_5_1_3068,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_6_1_3103,
      O => e_Mcompar_vs_cmp_ge0000_cy_6_1_3072
    );
  e_Mcompar_vs_cmp_ge0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(21),
      I1 => e_vcnt(22),
      I2 => e_vcnt(23),
      I3 => e_vcnt(24),
      O => e_Mcompar_vs_cmp_ge0000_lut_6_1_3103
    );
  e_Mcompar_vs_cmp_ge0000_cy_5_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_4_1_3065,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_5_1_3101,
      O => e_Mcompar_vs_cmp_ge0000_cy_5_1_3068
    );
  e_Mcompar_vs_cmp_ge0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(17),
      I1 => e_vcnt(18),
      I2 => e_vcnt(19),
      I3 => e_vcnt(20),
      O => e_Mcompar_vs_cmp_ge0000_lut_5_1_3101
    );
  e_Mcompar_vs_cmp_ge0000_cy_4_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_3_1_3062,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_4_1_3098,
      O => e_Mcompar_vs_cmp_ge0000_cy_4_1_3065
    );
  e_Mcompar_vs_cmp_ge0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(13),
      I1 => e_vcnt(14),
      I2 => e_vcnt(15),
      I3 => e_vcnt(16),
      O => e_Mcompar_vs_cmp_ge0000_lut_4_1_3098
    );
  e_Mcompar_vs_cmp_ge0000_cy_3_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_2_1_3058,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_3_1_3095,
      O => e_Mcompar_vs_cmp_ge0000_cy_3_1_3062
    );
  e_Mcompar_vs_cmp_ge0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => e_vcnt(10),
      I2 => e_vcnt(11),
      I3 => e_vcnt(12),
      O => e_Mcompar_vs_cmp_ge0000_lut_3_1_3095
    );
  e_Mcompar_vs_cmp_ge0000_cy_2_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_1_1_3055,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut(2),
      O => e_Mcompar_vs_cmp_ge0000_cy_2_1_3058
    );
  e_Mcompar_vs_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => e_vcnt(6),
      I2 => e_vcnt(7),
      I3 => e_vcnt(8),
      O => e_Mcompar_vs_cmp_ge0000_lut(2)
    );
  e_Mcompar_vs_cmp_ge0000_cy_1_0 : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy_0_1_3046,
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut_1_1,
      O => e_Mcompar_vs_cmp_ge0000_cy_1_1_3055
    );
  e_Mcompar_vs_cmp_ge0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut(0),
      O => e_Mcompar_vs_cmp_ge0000_cy_0_1_3046
    );
  e_Mcompar_vs_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => e_vcnt(2),
      I1 => e_vcnt(3),
      O => e_Mcompar_vs_cmp_ge0000_lut(0)
    );
  e_Mcompar_vs_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(10),
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut(11),
      O => e_vs_cmp_ge0000
    );
  e_Mcompar_vs_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(9),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(10),
      O => e_Mcompar_vs_cmp_ge0000_cy(10)
    );
  e_Mcompar_vs_cmp_ge0000_lut_10_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => e_vcnt(29),
      I1 => e_vcnt(30),
      O => e_Mcompar_vs_cmp_ge0000_lut(10)
    );
  e_Mcompar_vs_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(8),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(9),
      O => e_Mcompar_vs_cmp_ge0000_cy(9)
    );
  e_Mcompar_vs_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(25),
      I1 => e_vcnt(26),
      I2 => e_vcnt(27),
      I3 => e_vcnt(28),
      O => e_Mcompar_vs_cmp_ge0000_lut(9)
    );
  e_Mcompar_vs_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(7),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(8),
      O => e_Mcompar_vs_cmp_ge0000_cy(8)
    );
  e_Mcompar_vs_cmp_ge0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(21),
      I1 => e_vcnt(22),
      I2 => e_vcnt(23),
      I3 => e_vcnt(24),
      O => e_Mcompar_vs_cmp_ge0000_lut(8)
    );
  e_Mcompar_vs_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(6),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(7),
      O => e_Mcompar_vs_cmp_ge0000_cy(7)
    );
  e_Mcompar_vs_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(17),
      I1 => e_vcnt(18),
      I2 => e_vcnt(19),
      I3 => e_vcnt(20),
      O => e_Mcompar_vs_cmp_ge0000_lut(7)
    );
  e_Mcompar_vs_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(5),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(6),
      O => e_Mcompar_vs_cmp_ge0000_cy(6)
    );
  e_Mcompar_vs_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(13),
      I1 => e_vcnt(14),
      I2 => e_vcnt(15),
      I3 => e_vcnt(16),
      O => e_Mcompar_vs_cmp_ge0000_lut(6)
    );
  e_Mcompar_vs_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(4),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(5),
      O => e_Mcompar_vs_cmp_ge0000_cy(5)
    );
  e_Mcompar_vs_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => e_vcnt(10),
      I2 => e_vcnt(11),
      I3 => e_vcnt(12),
      O => e_Mcompar_vs_cmp_ge0000_lut(5)
    );
  e_Mcompar_vs_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(3),
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_lut(4),
      O => e_Mcompar_vs_cmp_ge0000_cy(4)
    );
  e_Mcompar_vs_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => e_vcnt(6),
      I2 => e_vcnt(7),
      I3 => e_vcnt(8),
      O => e_Mcompar_vs_cmp_ge0000_lut(4)
    );
  e_Mcompar_vs_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(2),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(3),
      O => e_Mcompar_vs_cmp_ge0000_cy(3)
    );
  e_Mcompar_vs_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(1),
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_cy_2_rt_3060,
      O => e_Mcompar_vs_cmp_ge0000_cy(2)
    );
  e_Mcompar_vs_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => e_Mcompar_vs_cmp_ge0000_cy(0),
      DI => N1,
      S => e_Mcompar_vs_cmp_ge0000_lut(1),
      O => e_Mcompar_vs_cmp_ge0000_cy(1)
    );
  e_Mcompar_vs_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_Mcompar_vs_cmp_ge0000_cy_0_rt_3049,
      O => e_Mcompar_vs_cmp_ge0000_cy(0)
    );
  e_Mcompar_hs_cmp_ge0000_cy_9_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_8_2,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_lut_9_2,
      O => e_Mcompar_hs_cmp_ge0000_cy_9_2
    );
  e_Mcompar_hs_cmp_ge0000_cy_8_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_7_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_8_2,
      O => e_Mcompar_hs_cmp_ge0000_cy_8_2
    );
  e_Mcompar_hs_cmp_ge0000_cy_7_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_6_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_7_2_3038,
      O => e_Mcompar_hs_cmp_ge0000_cy_7_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(26),
      I1 => e_hcnt(27),
      I2 => e_hcnt(28),
      I3 => e_hcnt(29),
      O => e_Mcompar_hs_cmp_ge0000_lut_7_2_3038
    );
  e_Mcompar_hs_cmp_ge0000_cy_6_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_5_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_6_2_3035,
      O => e_Mcompar_hs_cmp_ge0000_cy_6_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(22),
      I1 => e_hcnt(23),
      I2 => e_hcnt(24),
      I3 => e_hcnt(25),
      O => e_Mcompar_hs_cmp_ge0000_lut_6_2_3035
    );
  e_Mcompar_hs_cmp_ge0000_cy_5_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_4_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_5_2_3032,
      O => e_Mcompar_hs_cmp_ge0000_cy_5_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(18),
      I1 => e_hcnt(19),
      I2 => e_hcnt(20),
      I3 => e_hcnt(21),
      O => e_Mcompar_hs_cmp_ge0000_lut_5_2_3032
    );
  e_Mcompar_hs_cmp_ge0000_cy_4_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_3_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_4_1_3029,
      O => e_Mcompar_hs_cmp_ge0000_cy_4_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(14),
      I1 => e_hcnt(15),
      I2 => e_hcnt(16),
      I3 => e_hcnt(17),
      O => e_Mcompar_hs_cmp_ge0000_lut_4_1_3029
    );
  e_Mcompar_hs_cmp_ge0000_cy_3_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_2_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_3_2_3027,
      O => e_Mcompar_hs_cmp_ge0000_cy_3_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(10),
      I1 => e_hcnt(11),
      I2 => e_hcnt(12),
      I3 => e_hcnt(13),
      O => e_Mcompar_hs_cmp_ge0000_lut_3_2_3027
    );
  e_Mcompar_hs_cmp_ge0000_cy_2_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_1_2,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_lut(2),
      O => e_Mcompar_hs_cmp_ge0000_cy_2_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => e_hcnt(8),
      O => e_Mcompar_hs_cmp_ge0000_lut(2)
    );
  e_Mcompar_hs_cmp_ge0000_cy_1_1 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_0_2,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_1_2_3023,
      O => e_Mcompar_hs_cmp_ge0000_cy_1_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_1_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => e_hcnt(7),
      O => e_Mcompar_hs_cmp_ge0000_lut_1_2_3023
    );
  e_Mcompar_hs_cmp_ge0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_cy_0_1_rt_2985,
      O => e_Mcompar_hs_cmp_ge0000_cy_0_2
    );
  e_Mcompar_hs_cmp_ge0000_cy_9_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_8_1_3013,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_lut_9_1,
      O => e_Mcompar_hs_cmp_ge0000_cy_9_1_3016
    );
  e_Mcompar_hs_cmp_ge0000_cy_8_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_7_1_3010,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_8_1,
      O => e_Mcompar_hs_cmp_ge0000_cy_8_1_3013
    );
  e_Mcompar_hs_cmp_ge0000_cy_7_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_6_1_3007,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_7_1_3037,
      O => e_Mcompar_hs_cmp_ge0000_cy_7_1_3010
    );
  e_Mcompar_hs_cmp_ge0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(26),
      I1 => e_hcnt(27),
      I2 => e_hcnt(28),
      I3 => e_hcnt(29),
      O => e_Mcompar_hs_cmp_ge0000_lut_7_1_3037
    );
  e_Mcompar_hs_cmp_ge0000_cy_6_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_5_1_3004,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_6_1_3034,
      O => e_Mcompar_hs_cmp_ge0000_cy_6_1_3007
    );
  e_Mcompar_hs_cmp_ge0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(22),
      I1 => e_hcnt(23),
      I2 => e_hcnt(24),
      I3 => e_hcnt(25),
      O => e_Mcompar_hs_cmp_ge0000_lut_6_1_3034
    );
  e_Mcompar_hs_cmp_ge0000_cy_5_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_4_1_3000,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_5_1_3031,
      O => e_Mcompar_hs_cmp_ge0000_cy_5_1_3004
    );
  e_Mcompar_hs_cmp_ge0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(18),
      I1 => e_hcnt(19),
      I2 => e_hcnt(20),
      I3 => e_hcnt(21),
      O => e_Mcompar_hs_cmp_ge0000_lut_5_1_3031
    );
  e_Mcompar_hs_cmp_ge0000_cy_4_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_3_1_2997,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(4),
      O => e_Mcompar_hs_cmp_ge0000_cy_4_1_3000
    );
  e_Mcompar_hs_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(14),
      I1 => e_hcnt(15),
      I2 => e_hcnt(16),
      I3 => e_hcnt(17),
      O => e_Mcompar_hs_cmp_ge0000_lut(4)
    );
  e_Mcompar_hs_cmp_ge0000_cy_3_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_2_1_2992,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_3_1_3026,
      O => e_Mcompar_hs_cmp_ge0000_cy_3_1_2997
    );
  e_Mcompar_hs_cmp_ge0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(10),
      I1 => e_hcnt(11),
      I2 => e_hcnt(12),
      I3 => e_hcnt(13),
      O => e_Mcompar_hs_cmp_ge0000_lut_3_1_3026
    );
  e_Mcompar_hs_cmp_ge0000_cy_2_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_1_1_2989,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_cy_2_0_rt_2994,
      O => e_Mcompar_hs_cmp_ge0000_cy_2_1_2992
    );
  e_Mcompar_hs_cmp_ge0000_cy_1_0 : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy_0_1_2983,
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut_1_1,
      O => e_Mcompar_hs_cmp_ge0000_cy_1_1_2989
    );
  e_Mcompar_hs_cmp_ge0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_lut(0),
      O => e_Mcompar_hs_cmp_ge0000_cy_0_1_2983
    );
  e_Mcompar_hs_cmp_ge0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => e_hcnt(5),
      I2 => e_hcnt(6),
      I3 => e_hcnt(7),
      O => e_Mcompar_hs_cmp_ge0000_lut(0)
    );
  e_Mcompar_hs_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(10),
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_lut(11),
      O => e_hs_cmp_ge0000
    );
  e_Mcompar_hs_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(9),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(10),
      O => e_Mcompar_hs_cmp_ge0000_cy(10)
    );
  e_Mcompar_hs_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(8),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(9),
      O => e_Mcompar_hs_cmp_ge0000_cy(9)
    );
  e_Mcompar_hs_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(26),
      I1 => e_hcnt(27),
      I2 => e_hcnt(28),
      I3 => e_hcnt(29),
      O => e_Mcompar_hs_cmp_ge0000_lut(9)
    );
  e_Mcompar_hs_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(7),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(8),
      O => e_Mcompar_hs_cmp_ge0000_cy(8)
    );
  e_Mcompar_hs_cmp_ge0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(22),
      I1 => e_hcnt(23),
      I2 => e_hcnt(24),
      I3 => e_hcnt(25),
      O => e_Mcompar_hs_cmp_ge0000_lut(8)
    );
  e_Mcompar_hs_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(6),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(7),
      O => e_Mcompar_hs_cmp_ge0000_cy(7)
    );
  e_Mcompar_hs_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(18),
      I1 => e_hcnt(19),
      I2 => e_hcnt(20),
      I3 => e_hcnt(21),
      O => e_Mcompar_hs_cmp_ge0000_lut(7)
    );
  e_Mcompar_hs_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(5),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(6),
      O => e_Mcompar_hs_cmp_ge0000_cy(6)
    );
  e_Mcompar_hs_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(14),
      I1 => e_hcnt(15),
      I2 => e_hcnt(16),
      I3 => e_hcnt(17),
      O => e_Mcompar_hs_cmp_ge0000_lut(6)
    );
  e_Mcompar_hs_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(4),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(5),
      O => e_Mcompar_hs_cmp_ge0000_cy(5)
    );
  e_Mcompar_hs_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(10),
      I1 => e_hcnt(11),
      I2 => e_hcnt(12),
      I3 => e_hcnt(13),
      O => e_Mcompar_hs_cmp_ge0000_lut(5)
    );
  e_Mcompar_hs_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(3),
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_cy_4_rt_3002,
      O => e_Mcompar_hs_cmp_ge0000_cy(4)
    );
  e_Mcompar_hs_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(2),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(3),
      O => e_Mcompar_hs_cmp_ge0000_cy(3)
    );
  e_Mcompar_hs_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(1),
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_cy_2_rt_2995,
      O => e_Mcompar_hs_cmp_ge0000_cy(2)
    );
  e_Mcompar_hs_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => e_Mcompar_hs_cmp_ge0000_cy(0),
      DI => N1,
      S => e_Mcompar_hs_cmp_ge0000_lut(1),
      O => e_Mcompar_hs_cmp_ge0000_cy(1)
    );
  e_Mcompar_hs_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => e_hcnt(6),
      O => e_Mcompar_hs_cmp_ge0000_lut(1)
    );
  e_Mcompar_hs_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_Mcompar_hs_cmp_ge0000_cy_0_rt_2986,
      O => e_Mcompar_hs_cmp_ge0000_cy(0)
    );
  e_vcnt_31 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_31_3295,
      Q => e_vcnt(31)
    );
  e_vcnt_30 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_30,
      Q => e_vcnt(30)
    );
  e_vcnt_29 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_29,
      Q => e_vcnt(29)
    );
  e_vcnt_28 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_28,
      Q => e_vcnt(28)
    );
  e_vcnt_27 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_27,
      Q => e_vcnt(27)
    );
  e_vcnt_26 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_26,
      Q => e_vcnt(26)
    );
  e_vcnt_25 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_25,
      Q => e_vcnt(25)
    );
  e_vcnt_24 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_24,
      Q => e_vcnt(24)
    );
  e_vcnt_23 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_23,
      Q => e_vcnt(23)
    );
  e_vcnt_22 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_22,
      Q => e_vcnt(22)
    );
  e_vcnt_21 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_21_3284,
      Q => e_vcnt(21)
    );
  e_vcnt_20 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_20,
      Q => e_vcnt(20)
    );
  e_vcnt_19 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_19,
      Q => e_vcnt(19)
    );
  e_vcnt_18 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_18,
      Q => e_vcnt(18)
    );
  e_vcnt_16 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_16,
      Q => e_vcnt(16)
    );
  e_vcnt_15 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_15,
      Q => e_vcnt(15)
    );
  e_vcnt_17 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_17,
      Q => e_vcnt(17)
    );
  e_vcnt_14 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_14,
      Q => e_vcnt(14)
    );
  e_vcnt_13 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_13,
      Q => e_vcnt(13)
    );
  e_vcnt_12 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_12,
      Q => e_vcnt(12)
    );
  e_vcnt_11 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_11_3273,
      Q => e_vcnt(11)
    );
  e_vcnt_10 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_10,
      Q => e_vcnt(10)
    );
  e_vcnt_9 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_9,
      Q => e_vcnt(9)
    );
  e_vcnt_7 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_7,
      Q => e_vcnt(7)
    );
  e_vcnt_6 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_6,
      Q => e_vcnt(6)
    );
  e_vcnt_8 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_8,
      Q => e_vcnt(8)
    );
  e_vcnt_5 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_5,
      Q => e_vcnt(5)
    );
  e_vcnt_4 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_4,
      Q => e_vcnt(4)
    );
  e_vcnt_3 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_3,
      Q => e_vcnt(3)
    );
  e_vcnt_2 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_2,
      Q => e_vcnt(2)
    );
  e_vcnt_1 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_1,
      Q => e_vcnt(1)
    );
  e_vcnt_0 : FDPE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      D => e_Mcount_vcnt_eqn_0,
      PRE => b_dx_e2_Acst_inv,
      Q => e_vcnt(0)
    );
  e_hcnt_31 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt31,
      Q => e_hcnt(31)
    );
  e_hcnt_30 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt30,
      Q => e_hcnt(30)
    );
  e_hcnt_29 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt29,
      Q => e_hcnt(29)
    );
  e_hcnt_28 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt28,
      Q => e_hcnt(28)
    );
  e_hcnt_27 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt27,
      Q => e_hcnt(27)
    );
  e_hcnt_26 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt26,
      Q => e_hcnt(26)
    );
  e_hcnt_25 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt25,
      Q => e_hcnt(25)
    );
  e_hcnt_24 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt24,
      Q => e_hcnt(24)
    );
  e_hcnt_22 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt22,
      Q => e_hcnt(22)
    );
  e_hcnt_21 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt21,
      Q => e_hcnt(21)
    );
  e_hcnt_23 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt23,
      Q => e_hcnt(23)
    );
  e_hcnt_20 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt20,
      Q => e_hcnt(20)
    );
  e_hcnt_19 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt19,
      Q => e_hcnt(19)
    );
  e_hcnt_18 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt18,
      Q => e_hcnt(18)
    );
  e_hcnt_17 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt17,
      Q => e_hcnt(17)
    );
  e_hcnt_16 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt16,
      Q => e_hcnt(16)
    );
  e_hcnt_15 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt15,
      Q => e_hcnt(15)
    );
  e_hcnt_13 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt13,
      Q => e_hcnt(13)
    );
  e_hcnt_12 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt12,
      Q => e_hcnt(12)
    );
  e_hcnt_14 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt14,
      Q => e_hcnt(14)
    );
  e_hcnt_11 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt11,
      Q => e_hcnt(11)
    );
  e_hcnt_10 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt10,
      Q => e_hcnt(10)
    );
  e_hcnt_9 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt9,
      Q => e_hcnt(9)
    );
  e_hcnt_8 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt8,
      Q => e_hcnt(8)
    );
  e_hcnt_7 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt7,
      Q => e_hcnt(7)
    );
  e_hcnt_6 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt6,
      Q => e_hcnt(6)
    );
  e_hcnt_4 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt4,
      Q => e_hcnt(4)
    );
  e_hcnt_3 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt3,
      Q => e_hcnt(3)
    );
  e_hcnt_5 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt5,
      Q => e_hcnt(5)
    );
  e_hcnt_2 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt2,
      Q => e_hcnt(2)
    );
  e_hcnt_1 : FDC
    port map (
      C => clk_2977,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_hcnt1,
      Q => e_hcnt(1)
    );
  e_hcnt_0 : FDP
    port map (
      C => clk_2977,
      D => e_Mcount_hcnt,
      PRE => b_dx_e2_Acst_inv,
      Q => e_hcnt(0)
    );
  e_Mcount_hcnt_xor_31_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(30),
      LI => e_Mcount_hcnt_lut(31),
      O => e_Mcount_hcnt31
    );
  e_Mcount_hcnt_lut_31_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(31),
      I2 => N0,
      O => e_Mcount_hcnt_lut(31)
    );
  e_Mcount_hcnt_xor_30_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(29),
      LI => e_Mcount_hcnt_lut(30),
      O => e_Mcount_hcnt30
    );
  e_Mcount_hcnt_cy_30_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(29),
      DI => N0,
      S => e_Mcount_hcnt_lut(30),
      O => e_Mcount_hcnt_cy(30)
    );
  e_Mcount_hcnt_lut_30_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(30),
      I2 => N0,
      O => e_Mcount_hcnt_lut(30)
    );
  e_Mcount_hcnt_xor_29_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(28),
      LI => e_Mcount_hcnt_lut(29),
      O => e_Mcount_hcnt29
    );
  e_Mcount_hcnt_cy_29_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(28),
      DI => N0,
      S => e_Mcount_hcnt_lut(29),
      O => e_Mcount_hcnt_cy(29)
    );
  e_Mcount_hcnt_lut_29_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(29),
      I2 => N0,
      O => e_Mcount_hcnt_lut(29)
    );
  e_Mcount_hcnt_xor_28_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(27),
      LI => e_Mcount_hcnt_lut(28),
      O => e_Mcount_hcnt28
    );
  e_Mcount_hcnt_cy_28_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(27),
      DI => N0,
      S => e_Mcount_hcnt_lut(28),
      O => e_Mcount_hcnt_cy(28)
    );
  e_Mcount_hcnt_lut_28_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(28),
      I2 => N0,
      O => e_Mcount_hcnt_lut(28)
    );
  e_Mcount_hcnt_xor_27_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(26),
      LI => e_Mcount_hcnt_lut(27),
      O => e_Mcount_hcnt27
    );
  e_Mcount_hcnt_cy_27_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(26),
      DI => N0,
      S => e_Mcount_hcnt_lut(27),
      O => e_Mcount_hcnt_cy(27)
    );
  e_Mcount_hcnt_lut_27_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(27),
      I2 => N0,
      O => e_Mcount_hcnt_lut(27)
    );
  e_Mcount_hcnt_xor_26_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(25),
      LI => e_Mcount_hcnt_lut(26),
      O => e_Mcount_hcnt26
    );
  e_Mcount_hcnt_cy_26_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(25),
      DI => N0,
      S => e_Mcount_hcnt_lut(26),
      O => e_Mcount_hcnt_cy(26)
    );
  e_Mcount_hcnt_lut_26_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(26),
      I2 => N0,
      O => e_Mcount_hcnt_lut(26)
    );
  e_Mcount_hcnt_xor_25_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(24),
      LI => e_Mcount_hcnt_lut(25),
      O => e_Mcount_hcnt25
    );
  e_Mcount_hcnt_cy_25_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(24),
      DI => N0,
      S => e_Mcount_hcnt_lut(25),
      O => e_Mcount_hcnt_cy(25)
    );
  e_Mcount_hcnt_lut_25_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(25),
      I2 => N0,
      O => e_Mcount_hcnt_lut(25)
    );
  e_Mcount_hcnt_xor_24_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(23),
      LI => e_Mcount_hcnt_lut(24),
      O => e_Mcount_hcnt24
    );
  e_Mcount_hcnt_cy_24_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(23),
      DI => N0,
      S => e_Mcount_hcnt_lut(24),
      O => e_Mcount_hcnt_cy(24)
    );
  e_Mcount_hcnt_lut_24_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(24),
      I2 => N0,
      O => e_Mcount_hcnt_lut(24)
    );
  e_Mcount_hcnt_xor_23_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(22),
      LI => e_Mcount_hcnt_lut(23),
      O => e_Mcount_hcnt23
    );
  e_Mcount_hcnt_cy_23_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(22),
      DI => N0,
      S => e_Mcount_hcnt_lut(23),
      O => e_Mcount_hcnt_cy(23)
    );
  e_Mcount_hcnt_lut_23_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(23),
      I2 => N0,
      O => e_Mcount_hcnt_lut(23)
    );
  e_Mcount_hcnt_xor_22_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(21),
      LI => e_Mcount_hcnt_lut(22),
      O => e_Mcount_hcnt22
    );
  e_Mcount_hcnt_cy_22_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(21),
      DI => N0,
      S => e_Mcount_hcnt_lut(22),
      O => e_Mcount_hcnt_cy(22)
    );
  e_Mcount_hcnt_lut_22_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(22),
      I2 => N0,
      O => e_Mcount_hcnt_lut(22)
    );
  e_Mcount_hcnt_xor_21_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(20),
      LI => e_Mcount_hcnt_lut(21),
      O => e_Mcount_hcnt21
    );
  e_Mcount_hcnt_cy_21_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(20),
      DI => N0,
      S => e_Mcount_hcnt_lut(21),
      O => e_Mcount_hcnt_cy(21)
    );
  e_Mcount_hcnt_lut_21_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(21),
      I2 => N0,
      O => e_Mcount_hcnt_lut(21)
    );
  e_Mcount_hcnt_xor_20_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(19),
      LI => e_Mcount_hcnt_lut(20),
      O => e_Mcount_hcnt20
    );
  e_Mcount_hcnt_cy_20_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(19),
      DI => N0,
      S => e_Mcount_hcnt_lut(20),
      O => e_Mcount_hcnt_cy(20)
    );
  e_Mcount_hcnt_lut_20_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(20),
      I2 => N0,
      O => e_Mcount_hcnt_lut(20)
    );
  e_Mcount_hcnt_xor_19_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(18),
      LI => e_Mcount_hcnt_lut(19),
      O => e_Mcount_hcnt19
    );
  e_Mcount_hcnt_cy_19_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(18),
      DI => N0,
      S => e_Mcount_hcnt_lut(19),
      O => e_Mcount_hcnt_cy(19)
    );
  e_Mcount_hcnt_lut_19_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(19),
      I2 => N0,
      O => e_Mcount_hcnt_lut(19)
    );
  e_Mcount_hcnt_xor_18_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(17),
      LI => e_Mcount_hcnt_lut(18),
      O => e_Mcount_hcnt18
    );
  e_Mcount_hcnt_cy_18_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(17),
      DI => N0,
      S => e_Mcount_hcnt_lut(18),
      O => e_Mcount_hcnt_cy(18)
    );
  e_Mcount_hcnt_lut_18_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(18),
      I2 => N0,
      O => e_Mcount_hcnt_lut(18)
    );
  e_Mcount_hcnt_xor_17_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(16),
      LI => e_Mcount_hcnt_lut(17),
      O => e_Mcount_hcnt17
    );
  e_Mcount_hcnt_cy_17_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(16),
      DI => N0,
      S => e_Mcount_hcnt_lut(17),
      O => e_Mcount_hcnt_cy(17)
    );
  e_Mcount_hcnt_lut_17_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(17),
      I2 => N0,
      O => e_Mcount_hcnt_lut(17)
    );
  e_Mcount_hcnt_xor_16_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(15),
      LI => e_Mcount_hcnt_lut(16),
      O => e_Mcount_hcnt16
    );
  e_Mcount_hcnt_cy_16_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(15),
      DI => N0,
      S => e_Mcount_hcnt_lut(16),
      O => e_Mcount_hcnt_cy(16)
    );
  e_Mcount_hcnt_lut_16_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(16),
      I2 => N0,
      O => e_Mcount_hcnt_lut(16)
    );
  e_Mcount_hcnt_xor_15_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(14),
      LI => e_Mcount_hcnt_lut(15),
      O => e_Mcount_hcnt15
    );
  e_Mcount_hcnt_cy_15_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(14),
      DI => N0,
      S => e_Mcount_hcnt_lut(15),
      O => e_Mcount_hcnt_cy(15)
    );
  e_Mcount_hcnt_lut_15_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(15),
      I2 => N0,
      O => e_Mcount_hcnt_lut(15)
    );
  e_Mcount_hcnt_xor_14_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(13),
      LI => e_Mcount_hcnt_lut(14),
      O => e_Mcount_hcnt14
    );
  e_Mcount_hcnt_cy_14_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(13),
      DI => N0,
      S => e_Mcount_hcnt_lut(14),
      O => e_Mcount_hcnt_cy(14)
    );
  e_Mcount_hcnt_lut_14_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(14),
      I2 => N0,
      O => e_Mcount_hcnt_lut(14)
    );
  e_Mcount_hcnt_xor_13_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(12),
      LI => e_Mcount_hcnt_lut(13),
      O => e_Mcount_hcnt13
    );
  e_Mcount_hcnt_cy_13_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(12),
      DI => N0,
      S => e_Mcount_hcnt_lut(13),
      O => e_Mcount_hcnt_cy(13)
    );
  e_Mcount_hcnt_lut_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(13),
      I2 => N0,
      O => e_Mcount_hcnt_lut(13)
    );
  e_Mcount_hcnt_xor_12_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(11),
      LI => e_Mcount_hcnt_lut(12),
      O => e_Mcount_hcnt12
    );
  e_Mcount_hcnt_cy_12_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(11),
      DI => N0,
      S => e_Mcount_hcnt_lut(12),
      O => e_Mcount_hcnt_cy(12)
    );
  e_Mcount_hcnt_lut_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(12),
      I2 => N0,
      O => e_Mcount_hcnt_lut(12)
    );
  e_Mcount_hcnt_xor_11_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(10),
      LI => e_Mcount_hcnt_lut(11),
      O => e_Mcount_hcnt11
    );
  e_Mcount_hcnt_cy_11_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(10),
      DI => N0,
      S => e_Mcount_hcnt_lut(11),
      O => e_Mcount_hcnt_cy(11)
    );
  e_Mcount_hcnt_lut_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(11),
      I2 => N0,
      O => e_Mcount_hcnt_lut(11)
    );
  e_Mcount_hcnt_xor_10_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(9),
      LI => e_Mcount_hcnt_lut(10),
      O => e_Mcount_hcnt10
    );
  e_Mcount_hcnt_cy_10_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(9),
      DI => N0,
      S => e_Mcount_hcnt_lut(10),
      O => e_Mcount_hcnt_cy(10)
    );
  e_Mcount_hcnt_lut_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(10),
      I2 => N0,
      O => e_Mcount_hcnt_lut(10)
    );
  e_Mcount_hcnt_xor_9_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(8),
      LI => e_Mcount_hcnt_lut(9),
      O => e_Mcount_hcnt9
    );
  e_Mcount_hcnt_cy_9_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(8),
      DI => N0,
      S => e_Mcount_hcnt_lut(9),
      O => e_Mcount_hcnt_cy(9)
    );
  e_Mcount_hcnt_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(9),
      I2 => N0,
      O => e_Mcount_hcnt_lut(9)
    );
  e_Mcount_hcnt_xor_8_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(7),
      LI => e_Mcount_hcnt_lut(8),
      O => e_Mcount_hcnt8
    );
  e_Mcount_hcnt_cy_8_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(7),
      DI => N0,
      S => e_Mcount_hcnt_lut(8),
      O => e_Mcount_hcnt_cy(8)
    );
  e_Mcount_hcnt_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(8),
      I2 => N0,
      O => e_Mcount_hcnt_lut(8)
    );
  e_Mcount_hcnt_xor_7_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(6),
      LI => e_Mcount_hcnt_lut(7),
      O => e_Mcount_hcnt7
    );
  e_Mcount_hcnt_cy_7_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(6),
      DI => N0,
      S => e_Mcount_hcnt_lut(7),
      O => e_Mcount_hcnt_cy(7)
    );
  e_Mcount_hcnt_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(7),
      I2 => N0,
      O => e_Mcount_hcnt_lut(7)
    );
  e_Mcount_hcnt_xor_6_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(5),
      LI => e_Mcount_hcnt_lut(6),
      O => e_Mcount_hcnt6
    );
  e_Mcount_hcnt_cy_6_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(5),
      DI => N0,
      S => e_Mcount_hcnt_lut(6),
      O => e_Mcount_hcnt_cy(6)
    );
  e_Mcount_hcnt_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      I1 => e_hcnt(6),
      I2 => N0,
      O => e_Mcount_hcnt_lut(6)
    );
  e_Mcount_hcnt_xor_5_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(4),
      LI => e_Mcount_hcnt_lut(5),
      O => e_Mcount_hcnt5
    );
  e_Mcount_hcnt_cy_5_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(4),
      DI => N0,
      S => e_Mcount_hcnt_lut(5),
      O => e_Mcount_hcnt_cy(5)
    );
  e_Mcount_hcnt_lut_5_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => e_hcnt(5),
      I2 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_Mcount_hcnt_lut(5)
    );
  e_Mcount_hcnt_xor_4_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(3),
      LI => e_Mcount_hcnt_lut(4),
      O => e_Mcount_hcnt4
    );
  e_Mcount_hcnt_cy_4_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(3),
      DI => N0,
      S => e_Mcount_hcnt_lut(4),
      O => e_Mcount_hcnt_cy(4)
    );
  e_Mcount_hcnt_lut_4_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => e_hcnt(4),
      I2 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_Mcount_hcnt_lut(4)
    );
  e_Mcount_hcnt_xor_3_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(2),
      LI => e_Mcount_hcnt_lut(3),
      O => e_Mcount_hcnt3
    );
  e_Mcount_hcnt_cy_3_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(2),
      DI => N0,
      S => e_Mcount_hcnt_lut(3),
      O => e_Mcount_hcnt_cy(3)
    );
  e_Mcount_hcnt_lut_3_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => e_hcnt(3),
      I2 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_Mcount_hcnt_lut(3)
    );
  e_Mcount_hcnt_xor_2_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(1),
      LI => e_Mcount_hcnt_lut(2),
      O => e_Mcount_hcnt2
    );
  e_Mcount_hcnt_cy_2_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(1),
      DI => N0,
      S => e_Mcount_hcnt_lut(2),
      O => e_Mcount_hcnt_cy(2)
    );
  e_Mcount_hcnt_lut_2_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => e_hcnt(2),
      I2 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_Mcount_hcnt_lut(2)
    );
  e_Mcount_hcnt_xor_1_Q : XORCY
    port map (
      CI => e_Mcount_hcnt_cy(0),
      LI => e_Mcount_hcnt_lut(1),
      O => e_Mcount_hcnt1
    );
  e_Mcount_hcnt_cy_1_Q : MUXCY
    port map (
      CI => e_Mcount_hcnt_cy(0),
      DI => N0,
      S => e_Mcount_hcnt_lut(1),
      O => e_Mcount_hcnt_cy(1)
    );
  e_Mcount_hcnt_lut_1_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => e_hcnt(1),
      I2 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_Mcount_hcnt_lut(1)
    );
  e_Mcount_hcnt_xor_0_Q : XORCY
    port map (
      CI => e_hcnt_not0001_inv,
      LI => e_Mcount_hcnt_lut(0),
      O => e_Mcount_hcnt
    );
  e_Mcount_hcnt_cy_0_Q : MUXCY
    port map (
      CI => e_hcnt_not0001_inv,
      DI => N0,
      S => e_Mcount_hcnt_lut(0),
      O => e_Mcount_hcnt_cy(0)
    );
  e_Mcount_hcnt_lut_0_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N1,
      I1 => e_hcnt(0),
      I2 => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_Mcount_hcnt_lut(0)
    );
  e_hs : FDP
    port map (
      C => clk_2977,
      D => e_hs_mux0001,
      PRE => b_dx_e2_Acst_inv,
      Q => e_hs_3369
    );
  e_vs : FDP
    port map (
      C => clk_2977,
      D => e_vs_mux0001,
      PRE => b_dx_e2_Acst_inv,
      Q => e_vs_3441
    );
  f_Mcompar_q1khz_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(10),
      DI => f_q1khz_add0000(31),
      S => f_Mcompar_q1khz_cmp_le0000_lut_11_Q,
      O => f_q1khz_cmp_le0000
    );
  f_Mcompar_q1khz_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(9),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_10_Q_3690,
      O => f_Mcompar_q1khz_cmp_le0000_cy(10)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q1khz_add0000(29),
      I1 => f_q1khz_add0000(30),
      O => f_Mcompar_q1khz_cmp_le0000_lut_10_Q_3690
    );
  f_Mcompar_q1khz_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(8),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_9_Q_3698,
      O => f_Mcompar_q1khz_cmp_le0000_cy(9)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(25),
      I1 => f_q1khz_add0000(26),
      I2 => f_q1khz_add0000(27),
      I3 => f_q1khz_add0000(28),
      O => f_Mcompar_q1khz_cmp_le0000_lut_9_Q_3698
    );
  f_Mcompar_q1khz_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(7),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_8_Q_3697,
      O => f_Mcompar_q1khz_cmp_le0000_cy(8)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(21),
      I1 => f_q1khz_add0000(22),
      I2 => f_q1khz_add0000(23),
      I3 => f_q1khz_add0000(24),
      O => f_Mcompar_q1khz_cmp_le0000_lut_8_Q_3697
    );
  f_Mcompar_q1khz_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(6),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_7_Q_3696,
      O => f_Mcompar_q1khz_cmp_le0000_cy(7)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(17),
      I1 => f_q1khz_add0000(18),
      I2 => f_q1khz_add0000(19),
      I3 => f_q1khz_add0000(20),
      O => f_Mcompar_q1khz_cmp_le0000_lut_7_Q_3696
    );
  f_Mcompar_q1khz_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(5),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_6_Q_3695,
      O => f_Mcompar_q1khz_cmp_le0000_cy(6)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(13),
      I1 => f_q1khz_add0000(14),
      I2 => f_q1khz_add0000(15),
      I3 => f_q1khz_add0000(16),
      O => f_Mcompar_q1khz_cmp_le0000_lut_6_Q_3695
    );
  f_Mcompar_q1khz_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(4),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_5_Q_3694,
      O => f_Mcompar_q1khz_cmp_le0000_cy(5)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(9),
      I1 => f_q1khz_add0000(10),
      I2 => f_q1khz_add0000(11),
      I3 => f_q1khz_add0000(12),
      O => f_Mcompar_q1khz_cmp_le0000_lut_5_Q_3694
    );
  f_Mcompar_q1khz_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(3),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_le0000_cy_4_rt_3683,
      O => f_Mcompar_q1khz_cmp_le0000_cy(4)
    );
  f_Mcompar_q1khz_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(2),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_le0000_lut_3_Q_3693,
      O => f_Mcompar_q1khz_cmp_le0000_cy(3)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => f_q1khz_add0000(4),
      I1 => f_q1khz_add0000(5),
      I2 => f_q1khz_add0000(6),
      I3 => f_q1khz_add0000(7),
      O => f_Mcompar_q1khz_cmp_le0000_lut_3_Q_3693
    );
  f_Mcompar_q1khz_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(1),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_2_Q,
      O => f_Mcompar_q1khz_cmp_le0000_cy(2)
    );
  f_Mcompar_q1khz_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_le0000_cy(0),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_le0000_cy_1_rt_3679,
      O => f_Mcompar_q1khz_cmp_le0000_cy(1)
    );
  f_Mcompar_q1khz_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => f_Mcompar_q1khz_cmp_le0000_lut_0_Q_3689,
      O => f_Mcompar_q1khz_cmp_le0000_cy(0)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q1khz_add0000(0),
      I1 => f_q1khz_add0000(1),
      O => f_Mcompar_q1khz_cmp_le0000_lut_0_Q_3689
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(8),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(9),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(9)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(7),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(8),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(8)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(27),
      I1 => f_q10hz_add0000(28),
      I2 => f_q10hz_add0000(29),
      I3 => f_q10hz_add0000(30),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(8)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(6),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(7),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(7)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(23),
      I1 => f_q10hz_add0000(24),
      I2 => f_q10hz_add0000(25),
      I3 => f_q10hz_add0000(26),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(7)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(5),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(6),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(6)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(19),
      I1 => f_q10hz_add0000(20),
      I2 => f_q10hz_add0000(21),
      I3 => f_q10hz_add0000(22),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(6)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(4),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(5),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(5)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(15),
      I1 => f_q10hz_add0000(16),
      I2 => f_q10hz_add0000(17),
      I3 => f_q10hz_add0000(18),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(5)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(3),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(4),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(4)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(11),
      I1 => f_q10hz_add0000(12),
      I2 => f_q10hz_add0000(13),
      I3 => f_q10hz_add0000(14),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(4)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(2),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(3),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(3)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(7),
      I1 => f_q10hz_add0000(8),
      I2 => f_q10hz_add0000(9),
      I3 => f_q10hz_add0000(10),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(3)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(1),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(2),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(2)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => f_q10hz_add0000(5),
      I1 => f_q10hz_add0000(6),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(2)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_lt0000_cy(0),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_lt0000_lut(1),
      O => f_Mcompar_q10hz_cmp_lt0000_cy(1)
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q10hz_add0000(3),
      I1 => f_q10hz_add0000(4),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(1)
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => f_Mcompar_q10hz_cmp_lt0000_cy_0_rt_3657,
      O => f_Mcompar_q10hz_cmp_lt0000_cy(0)
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_10_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(9),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_10_Q,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(10)
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(8),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_9_Q,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(9)
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(7),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_8_Q_3719,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(8)
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(26),
      I1 => f_q1khz_add0000(27),
      I2 => f_q1khz_add0000(28),
      I3 => f_q1khz_add0000(29),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_8_Q_3719
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(6),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_7_Q_3718,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(7)
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(22),
      I1 => f_q1khz_add0000(23),
      I2 => f_q1khz_add0000(24),
      I3 => f_q1khz_add0000(25),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_7_Q_3718
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(5),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_6_Q_3717,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(6)
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(18),
      I1 => f_q1khz_add0000(19),
      I2 => f_q1khz_add0000(20),
      I3 => f_q1khz_add0000(21),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_6_Q_3717
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(4),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_5_Q_3716,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(5)
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(14),
      I1 => f_q1khz_add0000(15),
      I2 => f_q1khz_add0000(16),
      I3 => f_q1khz_add0000(17),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_5_Q_3716
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(3),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_4_Q_3715,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(4)
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1khz_add0000(10),
      I1 => f_q1khz_add0000(11),
      I2 => f_q1khz_add0000(12),
      I3 => f_q1khz_add0000(13),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_4_Q_3715
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(2),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_lt0000_cy_3_rt_3705,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(3)
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(1),
      DI => N0,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_2_Q_3714,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(2)
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => f_q1khz_add0000(5),
      I1 => f_q1khz_add0000(6),
      I2 => f_q1khz_add0000(7),
      I3 => f_q1khz_add0000(8),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_2_Q_3714
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => f_Mcompar_q1khz_cmp_lt0000_cy(0),
      DI => N1,
      S => f_Mcompar_q1khz_cmp_lt0000_lut_1_Q,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(1)
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => f_Mcompar_q1khz_cmp_lt0000_cy_0_rt_3700,
      O => f_Mcompar_q1khz_cmp_lt0000_cy(0)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_10_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(9),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(10),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(10)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(8),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(9),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(9)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(7),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(8),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(8)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(26),
      I1 => f_q1mhz_add0000(27),
      I2 => f_q1mhz_add0000(28),
      I3 => f_q1mhz_add0000(29),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(8)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(6),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(7),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(7)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(22),
      I1 => f_q1mhz_add0000(23),
      I2 => f_q1mhz_add0000(24),
      I3 => f_q1mhz_add0000(25),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(7)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(5),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(6),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(6)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(18),
      I1 => f_q1mhz_add0000(19),
      I2 => f_q1mhz_add0000(20),
      I3 => f_q1mhz_add0000(21),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(6)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(4),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(5),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(5)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(14),
      I1 => f_q1mhz_add0000(15),
      I2 => f_q1mhz_add0000(16),
      I3 => f_q1mhz_add0000(17),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(5)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(3),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(4),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(4)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(10),
      I1 => f_q1mhz_add0000(11),
      I2 => f_q1mhz_add0000(12),
      I3 => f_q1mhz_add0000(13),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(4)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(2),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(3),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(3)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(6),
      I1 => f_q1mhz_add0000(7),
      I2 => f_q1mhz_add0000(8),
      I3 => f_q1mhz_add0000(9),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(3)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(1),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(2),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(2)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => f_q1mhz_add0000(4),
      I1 => f_q1mhz_add0000(5),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(2)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_lt0000_cy(0),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_lt0000_lut(1),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(1)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q1mhz_add0000(2),
      I1 => f_q1mhz_add0000(3),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(1)
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_lt0000_cy_0_rt_3741,
      O => f_Mcompar_q1mhz_cmp_lt0000_cy(0)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(8),
      DI => f_q1mhz_add0000(31),
      S => f_Mcompar_q1mhz_cmp_le0000_lut(9),
      O => f_q1mhz_cmp_le0000
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(7),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(8),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(8)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q1mhz_add0000(29),
      I1 => f_q1mhz_add0000(30),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(8)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(6),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(7),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(7)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(25),
      I1 => f_q1mhz_add0000(26),
      I2 => f_q1mhz_add0000(27),
      I3 => f_q1mhz_add0000(28),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(7)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(5),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(6),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(6)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(21),
      I1 => f_q1mhz_add0000(22),
      I2 => f_q1mhz_add0000(23),
      I3 => f_q1mhz_add0000(24),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(6)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(4),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(5),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(5)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(17),
      I1 => f_q1mhz_add0000(18),
      I2 => f_q1mhz_add0000(19),
      I3 => f_q1mhz_add0000(20),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(5)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(3),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(4),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(4)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(13),
      I1 => f_q1mhz_add0000(14),
      I2 => f_q1mhz_add0000(15),
      I3 => f_q1mhz_add0000(16),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(4)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(2),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(3),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(3)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(9),
      I1 => f_q1mhz_add0000(10),
      I2 => f_q1mhz_add0000(11),
      I3 => f_q1mhz_add0000(12),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(3)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(1),
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(2),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(2)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q1mhz_add0000(5),
      I1 => f_q1mhz_add0000(6),
      I2 => f_q1mhz_add0000(7),
      I3 => f_q1mhz_add0000(8),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(2)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => f_Mcompar_q1mhz_cmp_le0000_cy(0),
      DI => N1,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(1),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(1)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => f_q1mhz_add0000(3),
      I1 => f_q1mhz_add0000(4),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(1)
    );
  f_Mcompar_q1mhz_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => f_Mcompar_q1mhz_cmp_le0000_lut(0),
      O => f_Mcompar_q1mhz_cmp_le0000_cy(0)
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q1mhz_add0000(1),
      I1 => f_q1mhz_add0000(2),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(0)
    );
  f_Mcompar_q10hz_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(10),
      DI => f_q10hz_add0000(31),
      S => f_Mcompar_q10hz_cmp_le0000_lut_11_Q,
      O => f_q10hz_cmp_le0000
    );
  f_Mcompar_q10hz_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(9),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_10_Q,
      O => f_Mcompar_q10hz_cmp_le0000_cy(10)
    );
  f_Mcompar_q10hz_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(8),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_9_Q_3655,
      O => f_Mcompar_q10hz_cmp_le0000_cy(9)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(26),
      I1 => f_q10hz_add0000(27),
      I2 => f_q10hz_add0000(28),
      I3 => f_q10hz_add0000(29),
      O => f_Mcompar_q10hz_cmp_le0000_lut_9_Q_3655
    );
  f_Mcompar_q10hz_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(7),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_8_Q_3654,
      O => f_Mcompar_q10hz_cmp_le0000_cy(8)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(22),
      I1 => f_q10hz_add0000(23),
      I2 => f_q10hz_add0000(24),
      I3 => f_q10hz_add0000(25),
      O => f_Mcompar_q10hz_cmp_le0000_lut_8_Q_3654
    );
  f_Mcompar_q10hz_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(6),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_7_Q_3653,
      O => f_Mcompar_q10hz_cmp_le0000_cy(7)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(18),
      I1 => f_q10hz_add0000(19),
      I2 => f_q10hz_add0000(20),
      I3 => f_q10hz_add0000(21),
      O => f_Mcompar_q10hz_cmp_le0000_lut_7_Q_3653
    );
  f_Mcompar_q10hz_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(5),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_6_Q_3652,
      O => f_Mcompar_q10hz_cmp_le0000_cy(6)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(14),
      I1 => f_q10hz_add0000(15),
      I2 => f_q10hz_add0000(16),
      I3 => f_q10hz_add0000(17),
      O => f_Mcompar_q10hz_cmp_le0000_lut_6_Q_3652
    );
  f_Mcompar_q10hz_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(4),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_5_Q_3651,
      O => f_Mcompar_q10hz_cmp_le0000_cy(5)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(10),
      I1 => f_q10hz_add0000(11),
      I2 => f_q10hz_add0000(12),
      I3 => f_q10hz_add0000(13),
      O => f_Mcompar_q10hz_cmp_le0000_lut_5_Q_3651
    );
  f_Mcompar_q10hz_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(3),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_4_Q_3650,
      O => f_Mcompar_q10hz_cmp_le0000_cy(4)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => f_q10hz_add0000(6),
      I1 => f_q10hz_add0000(7),
      I2 => f_q10hz_add0000(8),
      I3 => f_q10hz_add0000(9),
      O => f_Mcompar_q10hz_cmp_le0000_lut_4_Q_3650
    );
  f_Mcompar_q10hz_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(2),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_le0000_lut_3_Q_3649,
      O => f_Mcompar_q10hz_cmp_le0000_cy(3)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => f_q10hz_add0000(4),
      I1 => f_q10hz_add0000(5),
      O => f_Mcompar_q10hz_cmp_le0000_lut_3_Q_3649
    );
  f_Mcompar_q10hz_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(1),
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_2_Q_3648,
      O => f_Mcompar_q10hz_cmp_le0000_cy(2)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => f_q10hz_add0000(2),
      I1 => f_q10hz_add0000(3),
      O => f_Mcompar_q10hz_cmp_le0000_lut_2_Q_3648
    );
  f_Mcompar_q10hz_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => f_Mcompar_q10hz_cmp_le0000_cy(0),
      DI => N1,
      S => f_Mcompar_q10hz_cmp_le0000_cy_1_rt_3636,
      O => f_Mcompar_q10hz_cmp_le0000_cy(1)
    );
  f_Mcompar_q10hz_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => f_Mcompar_q10hz_cmp_le0000_lut_0_Q,
      O => f_Mcompar_q10hz_cmp_le0000_cy(0)
    );
  f_Mcount_cout_xor_31_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(30),
      LI => f_Mcount_cout_xor_31_rt_3950,
      O => f_Result_31_1
    );
  f_Mcount_cout_xor_30_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(29),
      LI => f_Mcount_cout_cy_30_rt_3934,
      O => f_Result_30_1
    );
  f_Mcount_cout_cy_30_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(29),
      DI => N0,
      S => f_Mcount_cout_cy_30_rt_3934,
      O => f_Mcount_cout_cy(30)
    );
  f_Mcount_cout_xor_29_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(28),
      LI => f_Mcount_cout_cy_29_rt_3930,
      O => f_Result_29_1
    );
  f_Mcount_cout_cy_29_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(28),
      DI => N0,
      S => f_Mcount_cout_cy_29_rt_3930,
      O => f_Mcount_cout_cy(29)
    );
  f_Mcount_cout_xor_28_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(27),
      LI => f_Mcount_cout_cy_28_rt_3928,
      O => f_Result_28_1
    );
  f_Mcount_cout_cy_28_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(27),
      DI => N0,
      S => f_Mcount_cout_cy_28_rt_3928,
      O => f_Mcount_cout_cy(28)
    );
  f_Mcount_cout_xor_27_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(26),
      LI => f_Mcount_cout_cy_27_rt_3926,
      O => f_Result_27_1
    );
  f_Mcount_cout_cy_27_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(26),
      DI => N0,
      S => f_Mcount_cout_cy_27_rt_3926,
      O => f_Mcount_cout_cy(27)
    );
  f_Mcount_cout_xor_26_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(25),
      LI => f_Mcount_cout_cy_26_rt_3924,
      O => f_Result_26_1
    );
  f_Mcount_cout_cy_26_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(25),
      DI => N0,
      S => f_Mcount_cout_cy_26_rt_3924,
      O => f_Mcount_cout_cy(26)
    );
  f_Mcount_cout_xor_25_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(24),
      LI => f_Mcount_cout_cy_25_rt_3922,
      O => f_Result_25_1
    );
  f_Mcount_cout_cy_25_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(24),
      DI => N0,
      S => f_Mcount_cout_cy_25_rt_3922,
      O => f_Mcount_cout_cy(25)
    );
  f_Mcount_cout_xor_24_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(23),
      LI => f_Mcount_cout_cy_24_rt_3920,
      O => f_Result_24_1
    );
  f_Mcount_cout_cy_24_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(23),
      DI => N0,
      S => f_Mcount_cout_cy_24_rt_3920,
      O => f_Mcount_cout_cy(24)
    );
  f_Mcount_cout_xor_23_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(22),
      LI => f_Mcount_cout_cy_23_rt_3918,
      O => f_Result_23_1
    );
  f_Mcount_cout_cy_23_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(22),
      DI => N0,
      S => f_Mcount_cout_cy_23_rt_3918,
      O => f_Mcount_cout_cy(23)
    );
  f_Mcount_cout_xor_22_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(21),
      LI => f_Mcount_cout_cy_22_rt_3916,
      O => f_Result_22_1
    );
  f_Mcount_cout_cy_22_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(21),
      DI => N0,
      S => f_Mcount_cout_cy_22_rt_3916,
      O => f_Mcount_cout_cy(22)
    );
  f_Mcount_cout_xor_21_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(20),
      LI => f_Mcount_cout_cy_21_rt_3914,
      O => f_Result_21_1
    );
  f_Mcount_cout_cy_21_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(20),
      DI => N0,
      S => f_Mcount_cout_cy_21_rt_3914,
      O => f_Mcount_cout_cy(21)
    );
  f_Mcount_cout_xor_20_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(19),
      LI => f_Mcount_cout_cy_20_rt_3912,
      O => f_Result_20_1
    );
  f_Mcount_cout_cy_20_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(19),
      DI => N0,
      S => f_Mcount_cout_cy_20_rt_3912,
      O => f_Mcount_cout_cy(20)
    );
  f_Mcount_cout_xor_19_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(18),
      LI => f_Mcount_cout_cy_19_rt_3908,
      O => f_Result_19_1
    );
  f_Mcount_cout_cy_19_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(18),
      DI => N0,
      S => f_Mcount_cout_cy_19_rt_3908,
      O => f_Mcount_cout_cy(19)
    );
  f_Mcount_cout_xor_18_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(17),
      LI => f_Mcount_cout_cy_18_rt_3906,
      O => f_Result_18_1
    );
  f_Mcount_cout_cy_18_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(17),
      DI => N0,
      S => f_Mcount_cout_cy_18_rt_3906,
      O => f_Mcount_cout_cy(18)
    );
  f_Mcount_cout_xor_17_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(16),
      LI => f_Mcount_cout_cy_17_rt_3904,
      O => f_Result_17_1
    );
  f_Mcount_cout_cy_17_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(16),
      DI => N0,
      S => f_Mcount_cout_cy_17_rt_3904,
      O => f_Mcount_cout_cy(17)
    );
  f_Mcount_cout_xor_16_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(15),
      LI => f_Mcount_cout_cy_16_rt_3902,
      O => f_Result_16_1
    );
  f_Mcount_cout_cy_16_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(15),
      DI => N0,
      S => f_Mcount_cout_cy_16_rt_3902,
      O => f_Mcount_cout_cy(16)
    );
  f_Mcount_cout_xor_15_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(14),
      LI => f_Mcount_cout_cy_15_rt_3900,
      O => f_Result_15_1
    );
  f_Mcount_cout_cy_15_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(14),
      DI => N0,
      S => f_Mcount_cout_cy_15_rt_3900,
      O => f_Mcount_cout_cy(15)
    );
  f_Mcount_cout_xor_14_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(13),
      LI => f_Mcount_cout_cy_14_rt_3898,
      O => f_Result_14_1
    );
  f_Mcount_cout_cy_14_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(13),
      DI => N0,
      S => f_Mcount_cout_cy_14_rt_3898,
      O => f_Mcount_cout_cy(14)
    );
  f_Mcount_cout_xor_13_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(12),
      LI => f_Mcount_cout_cy_13_rt_3896,
      O => f_Result_13_1
    );
  f_Mcount_cout_cy_13_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(12),
      DI => N0,
      S => f_Mcount_cout_cy_13_rt_3896,
      O => f_Mcount_cout_cy(13)
    );
  f_Mcount_cout_xor_12_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(11),
      LI => f_Mcount_cout_cy_12_rt_3894,
      O => f_Result_12_1
    );
  f_Mcount_cout_cy_12_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(11),
      DI => N0,
      S => f_Mcount_cout_cy_12_rt_3894,
      O => f_Mcount_cout_cy(12)
    );
  f_Mcount_cout_xor_11_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(10),
      LI => f_Mcount_cout_cy_11_rt_3892,
      O => f_Result_11_1
    );
  f_Mcount_cout_cy_11_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(10),
      DI => N0,
      S => f_Mcount_cout_cy_11_rt_3892,
      O => f_Mcount_cout_cy(11)
    );
  f_Mcount_cout_xor_10_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(9),
      LI => f_Mcount_cout_cy_10_rt_3890,
      O => f_Result_10_1
    );
  f_Mcount_cout_cy_10_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(9),
      DI => N0,
      S => f_Mcount_cout_cy_10_rt_3890,
      O => f_Mcount_cout_cy(10)
    );
  f_Mcount_cout_xor_9_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(8),
      LI => f_Mcount_cout_cy_9_rt_3948,
      O => f_Result_9_1
    );
  f_Mcount_cout_cy_9_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(8),
      DI => N0,
      S => f_Mcount_cout_cy_9_rt_3948,
      O => f_Mcount_cout_cy(9)
    );
  f_Mcount_cout_xor_8_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(7),
      LI => f_Mcount_cout_cy_8_rt_3946,
      O => f_Result_8_1
    );
  f_Mcount_cout_cy_8_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(7),
      DI => N0,
      S => f_Mcount_cout_cy_8_rt_3946,
      O => f_Mcount_cout_cy(8)
    );
  f_Mcount_cout_xor_7_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(6),
      LI => f_Mcount_cout_cy_7_rt_3944,
      O => f_Result_7_1
    );
  f_Mcount_cout_cy_7_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(6),
      DI => N0,
      S => f_Mcount_cout_cy_7_rt_3944,
      O => f_Mcount_cout_cy(7)
    );
  f_Mcount_cout_xor_6_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(5),
      LI => f_Mcount_cout_cy_6_rt_3942,
      O => f_Result_6_1
    );
  f_Mcount_cout_cy_6_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(5),
      DI => N0,
      S => f_Mcount_cout_cy_6_rt_3942,
      O => f_Mcount_cout_cy(6)
    );
  f_Mcount_cout_xor_5_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(4),
      LI => f_Mcount_cout_cy_5_rt_3940,
      O => f_Result_5_1
    );
  f_Mcount_cout_cy_5_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(4),
      DI => N0,
      S => f_Mcount_cout_cy_5_rt_3940,
      O => f_Mcount_cout_cy(5)
    );
  f_Mcount_cout_xor_4_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(3),
      LI => f_Mcount_cout_cy_4_rt_3938,
      O => f_Result_4_1
    );
  f_Mcount_cout_cy_4_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(3),
      DI => N0,
      S => f_Mcount_cout_cy_4_rt_3938,
      O => f_Mcount_cout_cy(4)
    );
  f_Mcount_cout_xor_3_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(2),
      LI => f_Mcount_cout_cy_3_rt_3936,
      O => f_Result_3_1
    );
  f_Mcount_cout_cy_3_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(2),
      DI => N0,
      S => f_Mcount_cout_cy_3_rt_3936,
      O => f_Mcount_cout_cy(3)
    );
  f_Mcount_cout_xor_2_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(1),
      LI => f_Mcount_cout_cy_2_rt_3932,
      O => f_Result_2_1
    );
  f_Mcount_cout_cy_2_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(1),
      DI => N0,
      S => f_Mcount_cout_cy_2_rt_3932,
      O => f_Mcount_cout_cy(2)
    );
  f_Mcount_cout_xor_1_Q : XORCY
    port map (
      CI => f_Mcount_cout_cy(0),
      LI => f_Mcount_cout_cy_1_rt_3910,
      O => f_Result_1_1
    );
  f_Mcount_cout_cy_1_Q : MUXCY
    port map (
      CI => f_Mcount_cout_cy(0),
      DI => N0,
      S => f_Mcount_cout_cy_1_rt_3910,
      O => f_Mcount_cout_cy(1)
    );
  f_Mcount_cout_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => f_Mcount_cout_lut(0),
      O => f_Result_0_1
    );
  f_Mcount_cout_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => f_Mcount_cout_lut(0),
      O => f_Mcount_cout_cy(0)
    );
  f_Mcount_cout1_xor_31_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(30),
      LI => f_Mcount_cout1_xor_31_rt_3887,
      O => f_Result(31)
    );
  f_Mcount_cout1_xor_30_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(29),
      LI => f_Mcount_cout1_cy_30_rt_3871,
      O => f_Result(30)
    );
  f_Mcount_cout1_cy_30_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(29),
      DI => N0,
      S => f_Mcount_cout1_cy_30_rt_3871,
      O => f_Mcount_cout1_cy(30)
    );
  f_Mcount_cout1_xor_29_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(28),
      LI => f_Mcount_cout1_cy_29_rt_3867,
      O => f_Result(29)
    );
  f_Mcount_cout1_cy_29_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(28),
      DI => N0,
      S => f_Mcount_cout1_cy_29_rt_3867,
      O => f_Mcount_cout1_cy(29)
    );
  f_Mcount_cout1_xor_28_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(27),
      LI => f_Mcount_cout1_cy_28_rt_3865,
      O => f_Result(28)
    );
  f_Mcount_cout1_cy_28_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(27),
      DI => N0,
      S => f_Mcount_cout1_cy_28_rt_3865,
      O => f_Mcount_cout1_cy(28)
    );
  f_Mcount_cout1_xor_27_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(26),
      LI => f_Mcount_cout1_cy_27_rt_3863,
      O => f_Result(27)
    );
  f_Mcount_cout1_cy_27_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(26),
      DI => N0,
      S => f_Mcount_cout1_cy_27_rt_3863,
      O => f_Mcount_cout1_cy(27)
    );
  f_Mcount_cout1_xor_26_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(25),
      LI => f_Mcount_cout1_cy_26_rt_3861,
      O => f_Result(26)
    );
  f_Mcount_cout1_cy_26_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(25),
      DI => N0,
      S => f_Mcount_cout1_cy_26_rt_3861,
      O => f_Mcount_cout1_cy(26)
    );
  f_Mcount_cout1_xor_25_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(24),
      LI => f_Mcount_cout1_cy_25_rt_3859,
      O => f_Result(25)
    );
  f_Mcount_cout1_cy_25_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(24),
      DI => N0,
      S => f_Mcount_cout1_cy_25_rt_3859,
      O => f_Mcount_cout1_cy(25)
    );
  f_Mcount_cout1_xor_24_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(23),
      LI => f_Mcount_cout1_cy_24_rt_3857,
      O => f_Result(24)
    );
  f_Mcount_cout1_cy_24_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(23),
      DI => N0,
      S => f_Mcount_cout1_cy_24_rt_3857,
      O => f_Mcount_cout1_cy(24)
    );
  f_Mcount_cout1_xor_23_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(22),
      LI => f_Mcount_cout1_cy_23_rt_3855,
      O => f_Result(23)
    );
  f_Mcount_cout1_cy_23_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(22),
      DI => N0,
      S => f_Mcount_cout1_cy_23_rt_3855,
      O => f_Mcount_cout1_cy(23)
    );
  f_Mcount_cout1_xor_22_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(21),
      LI => f_Mcount_cout1_cy_22_rt_3853,
      O => f_Result(22)
    );
  f_Mcount_cout1_cy_22_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(21),
      DI => N0,
      S => f_Mcount_cout1_cy_22_rt_3853,
      O => f_Mcount_cout1_cy(22)
    );
  f_Mcount_cout1_xor_21_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(20),
      LI => f_Mcount_cout1_cy_21_rt_3851,
      O => f_Result(21)
    );
  f_Mcount_cout1_cy_21_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(20),
      DI => N0,
      S => f_Mcount_cout1_cy_21_rt_3851,
      O => f_Mcount_cout1_cy(21)
    );
  f_Mcount_cout1_xor_20_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(19),
      LI => f_Mcount_cout1_cy_20_rt_3849,
      O => f_Result(20)
    );
  f_Mcount_cout1_cy_20_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(19),
      DI => N0,
      S => f_Mcount_cout1_cy_20_rt_3849,
      O => f_Mcount_cout1_cy(20)
    );
  f_Mcount_cout1_xor_19_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(18),
      LI => f_Mcount_cout1_cy_19_rt_3845,
      O => f_Result(19)
    );
  f_Mcount_cout1_cy_19_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(18),
      DI => N0,
      S => f_Mcount_cout1_cy_19_rt_3845,
      O => f_Mcount_cout1_cy(19)
    );
  f_Mcount_cout1_xor_18_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(17),
      LI => f_Mcount_cout1_cy_18_rt_3843,
      O => f_Result(18)
    );
  f_Mcount_cout1_cy_18_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(17),
      DI => N0,
      S => f_Mcount_cout1_cy_18_rt_3843,
      O => f_Mcount_cout1_cy(18)
    );
  f_Mcount_cout1_xor_17_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(16),
      LI => f_Mcount_cout1_cy_17_rt_3841,
      O => f_Result(17)
    );
  f_Mcount_cout1_cy_17_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(16),
      DI => N0,
      S => f_Mcount_cout1_cy_17_rt_3841,
      O => f_Mcount_cout1_cy(17)
    );
  f_Mcount_cout1_xor_16_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(15),
      LI => f_Mcount_cout1_cy_16_rt_3839,
      O => f_Result(16)
    );
  f_Mcount_cout1_cy_16_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(15),
      DI => N0,
      S => f_Mcount_cout1_cy_16_rt_3839,
      O => f_Mcount_cout1_cy(16)
    );
  f_Mcount_cout1_xor_15_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(14),
      LI => f_Mcount_cout1_cy_15_rt_3837,
      O => f_Result(15)
    );
  f_Mcount_cout1_cy_15_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(14),
      DI => N0,
      S => f_Mcount_cout1_cy_15_rt_3837,
      O => f_Mcount_cout1_cy(15)
    );
  f_Mcount_cout1_xor_14_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(13),
      LI => f_Mcount_cout1_cy_14_rt_3835,
      O => f_Result(14)
    );
  f_Mcount_cout1_cy_14_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(13),
      DI => N0,
      S => f_Mcount_cout1_cy_14_rt_3835,
      O => f_Mcount_cout1_cy(14)
    );
  f_Mcount_cout1_xor_13_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(12),
      LI => f_Mcount_cout1_cy_13_rt_3833,
      O => f_Result(13)
    );
  f_Mcount_cout1_cy_13_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(12),
      DI => N0,
      S => f_Mcount_cout1_cy_13_rt_3833,
      O => f_Mcount_cout1_cy(13)
    );
  f_Mcount_cout1_xor_12_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(11),
      LI => f_Mcount_cout1_cy_12_rt_3831,
      O => f_Result(12)
    );
  f_Mcount_cout1_cy_12_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(11),
      DI => N0,
      S => f_Mcount_cout1_cy_12_rt_3831,
      O => f_Mcount_cout1_cy(12)
    );
  f_Mcount_cout1_xor_11_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(10),
      LI => f_Mcount_cout1_cy_11_rt_3829,
      O => f_Result(11)
    );
  f_Mcount_cout1_cy_11_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(10),
      DI => N0,
      S => f_Mcount_cout1_cy_11_rt_3829,
      O => f_Mcount_cout1_cy(11)
    );
  f_Mcount_cout1_xor_10_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(9),
      LI => f_Mcount_cout1_cy_10_rt_3827,
      O => f_Result(10)
    );
  f_Mcount_cout1_cy_10_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(9),
      DI => N0,
      S => f_Mcount_cout1_cy_10_rt_3827,
      O => f_Mcount_cout1_cy(10)
    );
  f_Mcount_cout1_xor_9_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(8),
      LI => f_Mcount_cout1_cy_9_rt_3885,
      O => f_Result(9)
    );
  f_Mcount_cout1_cy_9_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(8),
      DI => N0,
      S => f_Mcount_cout1_cy_9_rt_3885,
      O => f_Mcount_cout1_cy(9)
    );
  f_Mcount_cout1_xor_8_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(7),
      LI => f_Mcount_cout1_cy_8_rt_3883,
      O => f_Result(8)
    );
  f_Mcount_cout1_cy_8_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(7),
      DI => N0,
      S => f_Mcount_cout1_cy_8_rt_3883,
      O => f_Mcount_cout1_cy(8)
    );
  f_Mcount_cout1_xor_7_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(6),
      LI => f_Mcount_cout1_cy_7_rt_3881,
      O => f_Result(7)
    );
  f_Mcount_cout1_cy_7_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(6),
      DI => N0,
      S => f_Mcount_cout1_cy_7_rt_3881,
      O => f_Mcount_cout1_cy(7)
    );
  f_Mcount_cout1_xor_6_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(5),
      LI => f_Mcount_cout1_cy_6_rt_3879,
      O => f_Result(6)
    );
  f_Mcount_cout1_cy_6_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(5),
      DI => N0,
      S => f_Mcount_cout1_cy_6_rt_3879,
      O => f_Mcount_cout1_cy(6)
    );
  f_Mcount_cout1_xor_5_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(4),
      LI => f_Mcount_cout1_cy_5_rt_3877,
      O => f_Result(5)
    );
  f_Mcount_cout1_cy_5_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(4),
      DI => N0,
      S => f_Mcount_cout1_cy_5_rt_3877,
      O => f_Mcount_cout1_cy(5)
    );
  f_Mcount_cout1_xor_4_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(3),
      LI => f_Mcount_cout1_cy_4_rt_3875,
      O => f_Result(4)
    );
  f_Mcount_cout1_cy_4_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(3),
      DI => N0,
      S => f_Mcount_cout1_cy_4_rt_3875,
      O => f_Mcount_cout1_cy(4)
    );
  f_Mcount_cout1_xor_3_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(2),
      LI => f_Mcount_cout1_cy_3_rt_3873,
      O => f_Result(3)
    );
  f_Mcount_cout1_cy_3_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(2),
      DI => N0,
      S => f_Mcount_cout1_cy_3_rt_3873,
      O => f_Mcount_cout1_cy(3)
    );
  f_Mcount_cout1_xor_2_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(1),
      LI => f_Mcount_cout1_cy_2_rt_3869,
      O => f_Result(2)
    );
  f_Mcount_cout1_cy_2_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(1),
      DI => N0,
      S => f_Mcount_cout1_cy_2_rt_3869,
      O => f_Mcount_cout1_cy(2)
    );
  f_Mcount_cout1_xor_1_Q : XORCY
    port map (
      CI => f_Mcount_cout1_cy(0),
      LI => f_Mcount_cout1_cy_1_rt_3847,
      O => f_Result(1)
    );
  f_Mcount_cout1_cy_1_Q : MUXCY
    port map (
      CI => f_Mcount_cout1_cy(0),
      DI => N0,
      S => f_Mcount_cout1_cy_1_rt_3847,
      O => f_Mcount_cout1_cy(1)
    );
  f_Mcount_cout1_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => f_Mcount_cout1_lut(0),
      O => f_Result(0)
    );
  f_Mcount_cout1_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => f_Mcount_cout1_lut(0),
      O => f_Mcount_cout1_cy(0)
    );
  f_Mcount_cout0_xor_31_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(30),
      LI => f_Mcount_cout0_xor_31_rt_3824,
      O => f_Result_31_2
    );
  f_Mcount_cout0_xor_30_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(29),
      LI => f_Mcount_cout0_cy_30_rt_3808,
      O => f_Result_30_2
    );
  f_Mcount_cout0_cy_30_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(29),
      DI => N0,
      S => f_Mcount_cout0_cy_30_rt_3808,
      O => f_Mcount_cout0_cy(30)
    );
  f_Mcount_cout0_xor_29_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(28),
      LI => f_Mcount_cout0_cy_29_rt_3804,
      O => f_Result_29_2
    );
  f_Mcount_cout0_cy_29_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(28),
      DI => N0,
      S => f_Mcount_cout0_cy_29_rt_3804,
      O => f_Mcount_cout0_cy(29)
    );
  f_Mcount_cout0_xor_28_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(27),
      LI => f_Mcount_cout0_cy_28_rt_3802,
      O => f_Result_28_2
    );
  f_Mcount_cout0_cy_28_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(27),
      DI => N0,
      S => f_Mcount_cout0_cy_28_rt_3802,
      O => f_Mcount_cout0_cy(28)
    );
  f_Mcount_cout0_xor_27_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(26),
      LI => f_Mcount_cout0_cy_27_rt_3800,
      O => f_Result_27_2
    );
  f_Mcount_cout0_cy_27_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(26),
      DI => N0,
      S => f_Mcount_cout0_cy_27_rt_3800,
      O => f_Mcount_cout0_cy(27)
    );
  f_Mcount_cout0_xor_26_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(25),
      LI => f_Mcount_cout0_cy_26_rt_3798,
      O => f_Result_26_2
    );
  f_Mcount_cout0_cy_26_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(25),
      DI => N0,
      S => f_Mcount_cout0_cy_26_rt_3798,
      O => f_Mcount_cout0_cy(26)
    );
  f_Mcount_cout0_xor_25_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(24),
      LI => f_Mcount_cout0_cy_25_rt_3796,
      O => f_Result_25_2
    );
  f_Mcount_cout0_cy_25_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(24),
      DI => N0,
      S => f_Mcount_cout0_cy_25_rt_3796,
      O => f_Mcount_cout0_cy(25)
    );
  f_Mcount_cout0_xor_24_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(23),
      LI => f_Mcount_cout0_cy_24_rt_3794,
      O => f_Result_24_2
    );
  f_Mcount_cout0_cy_24_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(23),
      DI => N0,
      S => f_Mcount_cout0_cy_24_rt_3794,
      O => f_Mcount_cout0_cy(24)
    );
  f_Mcount_cout0_xor_23_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(22),
      LI => f_Mcount_cout0_cy_23_rt_3792,
      O => f_Result_23_2
    );
  f_Mcount_cout0_cy_23_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(22),
      DI => N0,
      S => f_Mcount_cout0_cy_23_rt_3792,
      O => f_Mcount_cout0_cy(23)
    );
  f_Mcount_cout0_xor_22_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(21),
      LI => f_Mcount_cout0_cy_22_rt_3790,
      O => f_Result_22_2
    );
  f_Mcount_cout0_cy_22_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(21),
      DI => N0,
      S => f_Mcount_cout0_cy_22_rt_3790,
      O => f_Mcount_cout0_cy(22)
    );
  f_Mcount_cout0_xor_21_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(20),
      LI => f_Mcount_cout0_cy_21_rt_3788,
      O => f_Result_21_2
    );
  f_Mcount_cout0_cy_21_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(20),
      DI => N0,
      S => f_Mcount_cout0_cy_21_rt_3788,
      O => f_Mcount_cout0_cy(21)
    );
  f_Mcount_cout0_xor_20_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(19),
      LI => f_Mcount_cout0_cy_20_rt_3786,
      O => f_Result_20_2
    );
  f_Mcount_cout0_cy_20_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(19),
      DI => N0,
      S => f_Mcount_cout0_cy_20_rt_3786,
      O => f_Mcount_cout0_cy(20)
    );
  f_Mcount_cout0_xor_19_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(18),
      LI => f_Mcount_cout0_cy_19_rt_3782,
      O => f_Result_19_2
    );
  f_Mcount_cout0_cy_19_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(18),
      DI => N0,
      S => f_Mcount_cout0_cy_19_rt_3782,
      O => f_Mcount_cout0_cy(19)
    );
  f_Mcount_cout0_xor_18_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(17),
      LI => f_Mcount_cout0_cy_18_rt_3780,
      O => f_Result_18_2
    );
  f_Mcount_cout0_cy_18_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(17),
      DI => N0,
      S => f_Mcount_cout0_cy_18_rt_3780,
      O => f_Mcount_cout0_cy(18)
    );
  f_Mcount_cout0_xor_17_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(16),
      LI => f_Mcount_cout0_cy_17_rt_3778,
      O => f_Result_17_2
    );
  f_Mcount_cout0_cy_17_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(16),
      DI => N0,
      S => f_Mcount_cout0_cy_17_rt_3778,
      O => f_Mcount_cout0_cy(17)
    );
  f_Mcount_cout0_xor_16_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(15),
      LI => f_Mcount_cout0_cy_16_rt_3776,
      O => f_Result_16_2
    );
  f_Mcount_cout0_cy_16_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(15),
      DI => N0,
      S => f_Mcount_cout0_cy_16_rt_3776,
      O => f_Mcount_cout0_cy(16)
    );
  f_Mcount_cout0_xor_15_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(14),
      LI => f_Mcount_cout0_cy_15_rt_3774,
      O => f_Result_15_2
    );
  f_Mcount_cout0_cy_15_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(14),
      DI => N0,
      S => f_Mcount_cout0_cy_15_rt_3774,
      O => f_Mcount_cout0_cy(15)
    );
  f_Mcount_cout0_xor_14_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(13),
      LI => f_Mcount_cout0_cy_14_rt_3772,
      O => f_Result_14_2
    );
  f_Mcount_cout0_cy_14_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(13),
      DI => N0,
      S => f_Mcount_cout0_cy_14_rt_3772,
      O => f_Mcount_cout0_cy(14)
    );
  f_Mcount_cout0_xor_13_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(12),
      LI => f_Mcount_cout0_cy_13_rt_3770,
      O => f_Result_13_2
    );
  f_Mcount_cout0_cy_13_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(12),
      DI => N0,
      S => f_Mcount_cout0_cy_13_rt_3770,
      O => f_Mcount_cout0_cy(13)
    );
  f_Mcount_cout0_xor_12_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(11),
      LI => f_Mcount_cout0_cy_12_rt_3768,
      O => f_Result_12_2
    );
  f_Mcount_cout0_cy_12_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(11),
      DI => N0,
      S => f_Mcount_cout0_cy_12_rt_3768,
      O => f_Mcount_cout0_cy(12)
    );
  f_Mcount_cout0_xor_11_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(10),
      LI => f_Mcount_cout0_cy_11_rt_3766,
      O => f_Result_11_2
    );
  f_Mcount_cout0_cy_11_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(10),
      DI => N0,
      S => f_Mcount_cout0_cy_11_rt_3766,
      O => f_Mcount_cout0_cy(11)
    );
  f_Mcount_cout0_xor_10_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(9),
      LI => f_Mcount_cout0_cy_10_rt_3764,
      O => f_Result_10_2
    );
  f_Mcount_cout0_cy_10_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(9),
      DI => N0,
      S => f_Mcount_cout0_cy_10_rt_3764,
      O => f_Mcount_cout0_cy(10)
    );
  f_Mcount_cout0_xor_9_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(8),
      LI => f_Mcount_cout0_cy_9_rt_3822,
      O => f_Result_9_2
    );
  f_Mcount_cout0_cy_9_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(8),
      DI => N0,
      S => f_Mcount_cout0_cy_9_rt_3822,
      O => f_Mcount_cout0_cy(9)
    );
  f_Mcount_cout0_xor_8_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(7),
      LI => f_Mcount_cout0_cy_8_rt_3820,
      O => f_Result_8_2
    );
  f_Mcount_cout0_cy_8_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(7),
      DI => N0,
      S => f_Mcount_cout0_cy_8_rt_3820,
      O => f_Mcount_cout0_cy(8)
    );
  f_Mcount_cout0_xor_7_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(6),
      LI => f_Mcount_cout0_cy_7_rt_3818,
      O => f_Result_7_2
    );
  f_Mcount_cout0_cy_7_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(6),
      DI => N0,
      S => f_Mcount_cout0_cy_7_rt_3818,
      O => f_Mcount_cout0_cy(7)
    );
  f_Mcount_cout0_xor_6_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(5),
      LI => f_Mcount_cout0_cy_6_rt_3816,
      O => f_Result_6_2
    );
  f_Mcount_cout0_cy_6_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(5),
      DI => N0,
      S => f_Mcount_cout0_cy_6_rt_3816,
      O => f_Mcount_cout0_cy(6)
    );
  f_Mcount_cout0_xor_5_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(4),
      LI => f_Mcount_cout0_cy_5_rt_3814,
      O => f_Result_5_2
    );
  f_Mcount_cout0_cy_5_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(4),
      DI => N0,
      S => f_Mcount_cout0_cy_5_rt_3814,
      O => f_Mcount_cout0_cy(5)
    );
  f_Mcount_cout0_xor_4_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(3),
      LI => f_Mcount_cout0_cy_4_rt_3812,
      O => f_Result_4_2
    );
  f_Mcount_cout0_cy_4_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(3),
      DI => N0,
      S => f_Mcount_cout0_cy_4_rt_3812,
      O => f_Mcount_cout0_cy(4)
    );
  f_Mcount_cout0_xor_3_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(2),
      LI => f_Mcount_cout0_cy_3_rt_3810,
      O => f_Result_3_2
    );
  f_Mcount_cout0_cy_3_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(2),
      DI => N0,
      S => f_Mcount_cout0_cy_3_rt_3810,
      O => f_Mcount_cout0_cy(3)
    );
  f_Mcount_cout0_xor_2_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(1),
      LI => f_Mcount_cout0_cy_2_rt_3806,
      O => f_Result_2_2
    );
  f_Mcount_cout0_cy_2_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(1),
      DI => N0,
      S => f_Mcount_cout0_cy_2_rt_3806,
      O => f_Mcount_cout0_cy(2)
    );
  f_Mcount_cout0_xor_1_Q : XORCY
    port map (
      CI => f_Mcount_cout0_cy(0),
      LI => f_Mcount_cout0_cy_1_rt_3784,
      O => f_Result_1_2
    );
  f_Mcount_cout0_cy_1_Q : MUXCY
    port map (
      CI => f_Mcount_cout0_cy(0),
      DI => N0,
      S => f_Mcount_cout0_cy_1_rt_3784,
      O => f_Mcount_cout0_cy(1)
    );
  f_Mcount_cout0_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => f_Mcount_cout0_lut(0),
      O => f_Result_0_2
    );
  f_Mcount_cout0_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => f_Mcount_cout0_lut(0),
      O => f_Mcount_cout0_cy(0)
    );
  f_Madd_q10hz_add0000_xor_31_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(30),
      LI => f_Madd_q10hz_add0000_xor_31_rt_3506,
      O => f_q10hz_add0000(31)
    );
  f_Madd_q10hz_add0000_xor_30_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(29),
      LI => f_Madd_q10hz_add0000_cy_30_rt_3490,
      O => f_q10hz_add0000(30)
    );
  f_Madd_q10hz_add0000_cy_30_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(29),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_30_rt_3490,
      O => f_Madd_q10hz_add0000_cy(30)
    );
  f_Madd_q10hz_add0000_xor_29_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(28),
      LI => f_Madd_q10hz_add0000_cy_29_rt_3486,
      O => f_q10hz_add0000(29)
    );
  f_Madd_q10hz_add0000_cy_29_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(28),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_29_rt_3486,
      O => f_Madd_q10hz_add0000_cy(29)
    );
  f_Madd_q10hz_add0000_xor_28_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(27),
      LI => f_Madd_q10hz_add0000_cy_28_rt_3484,
      O => f_q10hz_add0000(28)
    );
  f_Madd_q10hz_add0000_cy_28_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(27),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_28_rt_3484,
      O => f_Madd_q10hz_add0000_cy(28)
    );
  f_Madd_q10hz_add0000_xor_27_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(26),
      LI => f_Madd_q10hz_add0000_cy_27_rt_3482,
      O => f_q10hz_add0000(27)
    );
  f_Madd_q10hz_add0000_cy_27_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(26),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_27_rt_3482,
      O => f_Madd_q10hz_add0000_cy(27)
    );
  f_Madd_q10hz_add0000_xor_26_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(25),
      LI => f_Madd_q10hz_add0000_cy_26_rt_3480,
      O => f_q10hz_add0000(26)
    );
  f_Madd_q10hz_add0000_cy_26_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(25),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_26_rt_3480,
      O => f_Madd_q10hz_add0000_cy(26)
    );
  f_Madd_q10hz_add0000_xor_25_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(24),
      LI => f_Madd_q10hz_add0000_cy_25_rt_3478,
      O => f_q10hz_add0000(25)
    );
  f_Madd_q10hz_add0000_cy_25_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(24),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_25_rt_3478,
      O => f_Madd_q10hz_add0000_cy(25)
    );
  f_Madd_q10hz_add0000_xor_24_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(23),
      LI => f_Madd_q10hz_add0000_cy_24_rt_3476,
      O => f_q10hz_add0000(24)
    );
  f_Madd_q10hz_add0000_cy_24_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(23),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_24_rt_3476,
      O => f_Madd_q10hz_add0000_cy(24)
    );
  f_Madd_q10hz_add0000_xor_23_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(22),
      LI => f_Madd_q10hz_add0000_cy_23_rt_3474,
      O => f_q10hz_add0000(23)
    );
  f_Madd_q10hz_add0000_cy_23_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(22),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_23_rt_3474,
      O => f_Madd_q10hz_add0000_cy(23)
    );
  f_Madd_q10hz_add0000_xor_22_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(21),
      LI => f_Madd_q10hz_add0000_cy_22_rt_3472,
      O => f_q10hz_add0000(22)
    );
  f_Madd_q10hz_add0000_cy_22_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(21),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_22_rt_3472,
      O => f_Madd_q10hz_add0000_cy(22)
    );
  f_Madd_q10hz_add0000_xor_21_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(20),
      LI => f_Madd_q10hz_add0000_cy_21_rt_3470,
      O => f_q10hz_add0000(21)
    );
  f_Madd_q10hz_add0000_cy_21_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(20),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_21_rt_3470,
      O => f_Madd_q10hz_add0000_cy(21)
    );
  f_Madd_q10hz_add0000_xor_20_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(19),
      LI => f_Madd_q10hz_add0000_cy_20_rt_3468,
      O => f_q10hz_add0000(20)
    );
  f_Madd_q10hz_add0000_cy_20_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(19),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_20_rt_3468,
      O => f_Madd_q10hz_add0000_cy(20)
    );
  f_Madd_q10hz_add0000_xor_19_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(18),
      LI => f_Madd_q10hz_add0000_cy_19_rt_3464,
      O => f_q10hz_add0000(19)
    );
  f_Madd_q10hz_add0000_cy_19_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(18),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_19_rt_3464,
      O => f_Madd_q10hz_add0000_cy(19)
    );
  f_Madd_q10hz_add0000_xor_18_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(17),
      LI => f_Madd_q10hz_add0000_cy_18_rt_3462,
      O => f_q10hz_add0000(18)
    );
  f_Madd_q10hz_add0000_cy_18_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(17),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_18_rt_3462,
      O => f_Madd_q10hz_add0000_cy(18)
    );
  f_Madd_q10hz_add0000_xor_17_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(16),
      LI => f_Madd_q10hz_add0000_cy_17_rt_3460,
      O => f_q10hz_add0000(17)
    );
  f_Madd_q10hz_add0000_cy_17_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(16),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_17_rt_3460,
      O => f_Madd_q10hz_add0000_cy(17)
    );
  f_Madd_q10hz_add0000_xor_16_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(15),
      LI => f_Madd_q10hz_add0000_cy_16_rt_3458,
      O => f_q10hz_add0000(16)
    );
  f_Madd_q10hz_add0000_cy_16_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(15),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_16_rt_3458,
      O => f_Madd_q10hz_add0000_cy(16)
    );
  f_Madd_q10hz_add0000_xor_15_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(14),
      LI => f_Madd_q10hz_add0000_cy_15_rt_3456,
      O => f_q10hz_add0000(15)
    );
  f_Madd_q10hz_add0000_cy_15_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(14),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_15_rt_3456,
      O => f_Madd_q10hz_add0000_cy(15)
    );
  f_Madd_q10hz_add0000_xor_14_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(13),
      LI => f_Madd_q10hz_add0000_cy_14_rt_3454,
      O => f_q10hz_add0000(14)
    );
  f_Madd_q10hz_add0000_cy_14_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(13),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_14_rt_3454,
      O => f_Madd_q10hz_add0000_cy(14)
    );
  f_Madd_q10hz_add0000_xor_13_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(12),
      LI => f_Madd_q10hz_add0000_cy_13_rt_3452,
      O => f_q10hz_add0000(13)
    );
  f_Madd_q10hz_add0000_cy_13_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(12),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_13_rt_3452,
      O => f_Madd_q10hz_add0000_cy(13)
    );
  f_Madd_q10hz_add0000_xor_12_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(11),
      LI => f_Madd_q10hz_add0000_cy_12_rt_3450,
      O => f_q10hz_add0000(12)
    );
  f_Madd_q10hz_add0000_cy_12_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(11),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_12_rt_3450,
      O => f_Madd_q10hz_add0000_cy(12)
    );
  f_Madd_q10hz_add0000_xor_11_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(10),
      LI => f_Madd_q10hz_add0000_cy_11_rt_3448,
      O => f_q10hz_add0000(11)
    );
  f_Madd_q10hz_add0000_cy_11_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(10),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_11_rt_3448,
      O => f_Madd_q10hz_add0000_cy(11)
    );
  f_Madd_q10hz_add0000_xor_10_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(9),
      LI => f_Madd_q10hz_add0000_cy_10_rt_3446,
      O => f_q10hz_add0000(10)
    );
  f_Madd_q10hz_add0000_cy_10_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(9),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_10_rt_3446,
      O => f_Madd_q10hz_add0000_cy(10)
    );
  f_Madd_q10hz_add0000_xor_9_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(8),
      LI => f_Madd_q10hz_add0000_cy_9_rt_3504,
      O => f_q10hz_add0000(9)
    );
  f_Madd_q10hz_add0000_cy_9_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(8),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_9_rt_3504,
      O => f_Madd_q10hz_add0000_cy(9)
    );
  f_Madd_q10hz_add0000_xor_8_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(7),
      LI => f_Madd_q10hz_add0000_cy_8_rt_3502,
      O => f_q10hz_add0000(8)
    );
  f_Madd_q10hz_add0000_cy_8_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(7),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_8_rt_3502,
      O => f_Madd_q10hz_add0000_cy(8)
    );
  f_Madd_q10hz_add0000_xor_7_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(6),
      LI => f_Madd_q10hz_add0000_cy_7_rt_3500,
      O => f_q10hz_add0000(7)
    );
  f_Madd_q10hz_add0000_cy_7_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(6),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_7_rt_3500,
      O => f_Madd_q10hz_add0000_cy(7)
    );
  f_Madd_q10hz_add0000_xor_6_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(5),
      LI => f_Madd_q10hz_add0000_cy_6_rt_3498,
      O => f_q10hz_add0000(6)
    );
  f_Madd_q10hz_add0000_cy_6_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(5),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_6_rt_3498,
      O => f_Madd_q10hz_add0000_cy(6)
    );
  f_Madd_q10hz_add0000_xor_5_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(4),
      LI => f_Madd_q10hz_add0000_cy_5_rt_3496,
      O => f_q10hz_add0000(5)
    );
  f_Madd_q10hz_add0000_cy_5_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(4),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_5_rt_3496,
      O => f_Madd_q10hz_add0000_cy(5)
    );
  f_Madd_q10hz_add0000_xor_4_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(3),
      LI => f_Madd_q10hz_add0000_cy_4_rt_3494,
      O => f_q10hz_add0000(4)
    );
  f_Madd_q10hz_add0000_cy_4_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(3),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_4_rt_3494,
      O => f_Madd_q10hz_add0000_cy(4)
    );
  f_Madd_q10hz_add0000_xor_3_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(2),
      LI => f_Madd_q10hz_add0000_cy_3_rt_3492,
      O => f_q10hz_add0000(3)
    );
  f_Madd_q10hz_add0000_cy_3_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(2),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_3_rt_3492,
      O => f_Madd_q10hz_add0000_cy(3)
    );
  f_Madd_q10hz_add0000_xor_2_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(1),
      LI => f_Madd_q10hz_add0000_cy_2_rt_3488,
      O => f_q10hz_add0000(2)
    );
  f_Madd_q10hz_add0000_cy_2_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(1),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_2_rt_3488,
      O => f_Madd_q10hz_add0000_cy(2)
    );
  f_Madd_q10hz_add0000_xor_1_Q : XORCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(0),
      LI => f_Madd_q10hz_add0000_cy_1_rt_3466,
      O => f_q10hz_add0000(1)
    );
  f_Madd_q10hz_add0000_cy_1_Q : MUXCY
    port map (
      CI => f_Madd_q10hz_add0000_cy(0),
      DI => N0,
      S => f_Madd_q10hz_add0000_cy_1_rt_3466,
      O => f_Madd_q10hz_add0000_cy(1)
    );
  f_Madd_q10hz_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => f_Madd_q10hz_add0000_lut(0),
      O => f_q10hz_add0000(0)
    );
  f_Madd_q10hz_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => f_Madd_q10hz_add0000_lut(0),
      O => f_Madd_q10hz_add0000_cy(0)
    );
  f_Madd_q1mhz_add0000_xor_31_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(30),
      LI => f_Madd_q1mhz_add0000_xor_31_rt_3632,
      O => f_q1mhz_add0000(31)
    );
  f_Madd_q1mhz_add0000_xor_30_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(29),
      LI => f_Madd_q1mhz_add0000_cy_30_rt_3616,
      O => f_q1mhz_add0000(30)
    );
  f_Madd_q1mhz_add0000_cy_30_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(29),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_30_rt_3616,
      O => f_Madd_q1mhz_add0000_cy(30)
    );
  f_Madd_q1mhz_add0000_xor_29_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(28),
      LI => f_Madd_q1mhz_add0000_cy_29_rt_3612,
      O => f_q1mhz_add0000(29)
    );
  f_Madd_q1mhz_add0000_cy_29_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(28),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_29_rt_3612,
      O => f_Madd_q1mhz_add0000_cy(29)
    );
  f_Madd_q1mhz_add0000_xor_28_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(27),
      LI => f_Madd_q1mhz_add0000_cy_28_rt_3610,
      O => f_q1mhz_add0000(28)
    );
  f_Madd_q1mhz_add0000_cy_28_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(27),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_28_rt_3610,
      O => f_Madd_q1mhz_add0000_cy(28)
    );
  f_Madd_q1mhz_add0000_xor_27_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(26),
      LI => f_Madd_q1mhz_add0000_cy_27_rt_3608,
      O => f_q1mhz_add0000(27)
    );
  f_Madd_q1mhz_add0000_cy_27_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(26),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_27_rt_3608,
      O => f_Madd_q1mhz_add0000_cy(27)
    );
  f_Madd_q1mhz_add0000_xor_26_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(25),
      LI => f_Madd_q1mhz_add0000_cy_26_rt_3606,
      O => f_q1mhz_add0000(26)
    );
  f_Madd_q1mhz_add0000_cy_26_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(25),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_26_rt_3606,
      O => f_Madd_q1mhz_add0000_cy(26)
    );
  f_Madd_q1mhz_add0000_xor_25_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(24),
      LI => f_Madd_q1mhz_add0000_cy_25_rt_3604,
      O => f_q1mhz_add0000(25)
    );
  f_Madd_q1mhz_add0000_cy_25_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(24),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_25_rt_3604,
      O => f_Madd_q1mhz_add0000_cy(25)
    );
  f_Madd_q1mhz_add0000_xor_24_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(23),
      LI => f_Madd_q1mhz_add0000_cy_24_rt_3602,
      O => f_q1mhz_add0000(24)
    );
  f_Madd_q1mhz_add0000_cy_24_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(23),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_24_rt_3602,
      O => f_Madd_q1mhz_add0000_cy(24)
    );
  f_Madd_q1mhz_add0000_xor_23_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(22),
      LI => f_Madd_q1mhz_add0000_cy_23_rt_3600,
      O => f_q1mhz_add0000(23)
    );
  f_Madd_q1mhz_add0000_cy_23_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(22),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_23_rt_3600,
      O => f_Madd_q1mhz_add0000_cy(23)
    );
  f_Madd_q1mhz_add0000_xor_22_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(21),
      LI => f_Madd_q1mhz_add0000_cy_22_rt_3598,
      O => f_q1mhz_add0000(22)
    );
  f_Madd_q1mhz_add0000_cy_22_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(21),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_22_rt_3598,
      O => f_Madd_q1mhz_add0000_cy(22)
    );
  f_Madd_q1mhz_add0000_xor_21_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(20),
      LI => f_Madd_q1mhz_add0000_cy_21_rt_3596,
      O => f_q1mhz_add0000(21)
    );
  f_Madd_q1mhz_add0000_cy_21_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(20),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_21_rt_3596,
      O => f_Madd_q1mhz_add0000_cy(21)
    );
  f_Madd_q1mhz_add0000_xor_20_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(19),
      LI => f_Madd_q1mhz_add0000_cy_20_rt_3594,
      O => f_q1mhz_add0000(20)
    );
  f_Madd_q1mhz_add0000_cy_20_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(19),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_20_rt_3594,
      O => f_Madd_q1mhz_add0000_cy(20)
    );
  f_Madd_q1mhz_add0000_xor_19_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(18),
      LI => f_Madd_q1mhz_add0000_cy_19_rt_3590,
      O => f_q1mhz_add0000(19)
    );
  f_Madd_q1mhz_add0000_cy_19_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(18),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_19_rt_3590,
      O => f_Madd_q1mhz_add0000_cy(19)
    );
  f_Madd_q1mhz_add0000_xor_18_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(17),
      LI => f_Madd_q1mhz_add0000_cy_18_rt_3588,
      O => f_q1mhz_add0000(18)
    );
  f_Madd_q1mhz_add0000_cy_18_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(17),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_18_rt_3588,
      O => f_Madd_q1mhz_add0000_cy(18)
    );
  f_Madd_q1mhz_add0000_xor_17_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(16),
      LI => f_Madd_q1mhz_add0000_cy_17_rt_3586,
      O => f_q1mhz_add0000(17)
    );
  f_Madd_q1mhz_add0000_cy_17_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(16),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_17_rt_3586,
      O => f_Madd_q1mhz_add0000_cy(17)
    );
  f_Madd_q1mhz_add0000_xor_16_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(15),
      LI => f_Madd_q1mhz_add0000_cy_16_rt_3584,
      O => f_q1mhz_add0000(16)
    );
  f_Madd_q1mhz_add0000_cy_16_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(15),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_16_rt_3584,
      O => f_Madd_q1mhz_add0000_cy(16)
    );
  f_Madd_q1mhz_add0000_xor_15_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(14),
      LI => f_Madd_q1mhz_add0000_cy_15_rt_3582,
      O => f_q1mhz_add0000(15)
    );
  f_Madd_q1mhz_add0000_cy_15_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(14),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_15_rt_3582,
      O => f_Madd_q1mhz_add0000_cy(15)
    );
  f_Madd_q1mhz_add0000_xor_14_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(13),
      LI => f_Madd_q1mhz_add0000_cy_14_rt_3580,
      O => f_q1mhz_add0000(14)
    );
  f_Madd_q1mhz_add0000_cy_14_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(13),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_14_rt_3580,
      O => f_Madd_q1mhz_add0000_cy(14)
    );
  f_Madd_q1mhz_add0000_xor_13_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(12),
      LI => f_Madd_q1mhz_add0000_cy_13_rt_3578,
      O => f_q1mhz_add0000(13)
    );
  f_Madd_q1mhz_add0000_cy_13_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(12),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_13_rt_3578,
      O => f_Madd_q1mhz_add0000_cy(13)
    );
  f_Madd_q1mhz_add0000_xor_12_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(11),
      LI => f_Madd_q1mhz_add0000_cy_12_rt_3576,
      O => f_q1mhz_add0000(12)
    );
  f_Madd_q1mhz_add0000_cy_12_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(11),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_12_rt_3576,
      O => f_Madd_q1mhz_add0000_cy(12)
    );
  f_Madd_q1mhz_add0000_xor_11_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(10),
      LI => f_Madd_q1mhz_add0000_cy_11_rt_3574,
      O => f_q1mhz_add0000(11)
    );
  f_Madd_q1mhz_add0000_cy_11_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(10),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_11_rt_3574,
      O => f_Madd_q1mhz_add0000_cy(11)
    );
  f_Madd_q1mhz_add0000_xor_10_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(9),
      LI => f_Madd_q1mhz_add0000_cy_10_rt_3572,
      O => f_q1mhz_add0000(10)
    );
  f_Madd_q1mhz_add0000_cy_10_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(9),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_10_rt_3572,
      O => f_Madd_q1mhz_add0000_cy(10)
    );
  f_Madd_q1mhz_add0000_xor_9_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(8),
      LI => f_Madd_q1mhz_add0000_cy_9_rt_3630,
      O => f_q1mhz_add0000(9)
    );
  f_Madd_q1mhz_add0000_cy_9_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(8),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_9_rt_3630,
      O => f_Madd_q1mhz_add0000_cy(9)
    );
  f_Madd_q1mhz_add0000_xor_8_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(7),
      LI => f_Madd_q1mhz_add0000_cy_8_rt_3628,
      O => f_q1mhz_add0000(8)
    );
  f_Madd_q1mhz_add0000_cy_8_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(7),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_8_rt_3628,
      O => f_Madd_q1mhz_add0000_cy(8)
    );
  f_Madd_q1mhz_add0000_xor_7_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(6),
      LI => f_Madd_q1mhz_add0000_cy_7_rt_3626,
      O => f_q1mhz_add0000(7)
    );
  f_Madd_q1mhz_add0000_cy_7_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(6),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_7_rt_3626,
      O => f_Madd_q1mhz_add0000_cy(7)
    );
  f_Madd_q1mhz_add0000_xor_6_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(5),
      LI => f_Madd_q1mhz_add0000_cy_6_rt_3624,
      O => f_q1mhz_add0000(6)
    );
  f_Madd_q1mhz_add0000_cy_6_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(5),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_6_rt_3624,
      O => f_Madd_q1mhz_add0000_cy(6)
    );
  f_Madd_q1mhz_add0000_xor_5_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(4),
      LI => f_Madd_q1mhz_add0000_cy_5_rt_3622,
      O => f_q1mhz_add0000(5)
    );
  f_Madd_q1mhz_add0000_cy_5_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(4),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_5_rt_3622,
      O => f_Madd_q1mhz_add0000_cy(5)
    );
  f_Madd_q1mhz_add0000_xor_4_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(3),
      LI => f_Madd_q1mhz_add0000_cy_4_rt_3620,
      O => f_q1mhz_add0000(4)
    );
  f_Madd_q1mhz_add0000_cy_4_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(3),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_4_rt_3620,
      O => f_Madd_q1mhz_add0000_cy(4)
    );
  f_Madd_q1mhz_add0000_xor_3_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(2),
      LI => f_Madd_q1mhz_add0000_cy_3_rt_3618,
      O => f_q1mhz_add0000(3)
    );
  f_Madd_q1mhz_add0000_cy_3_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(2),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_3_rt_3618,
      O => f_Madd_q1mhz_add0000_cy(3)
    );
  f_Madd_q1mhz_add0000_xor_2_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(1),
      LI => f_Madd_q1mhz_add0000_cy_2_rt_3614,
      O => f_q1mhz_add0000(2)
    );
  f_Madd_q1mhz_add0000_cy_2_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(1),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_2_rt_3614,
      O => f_Madd_q1mhz_add0000_cy(2)
    );
  f_Madd_q1mhz_add0000_xor_1_Q : XORCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(0),
      LI => f_Madd_q1mhz_add0000_cy_1_rt_3592,
      O => f_q1mhz_add0000(1)
    );
  f_Madd_q1mhz_add0000_cy_1_Q : MUXCY
    port map (
      CI => f_Madd_q1mhz_add0000_cy(0),
      DI => N0,
      S => f_Madd_q1mhz_add0000_cy_1_rt_3592,
      O => f_Madd_q1mhz_add0000_cy(1)
    );
  f_Madd_q1mhz_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => f_Madd_q1mhz_add0000_lut(0),
      O => f_Madd_q1mhz_add0000_cy(0)
    );
  f_Madd_q1khz_add0000_xor_31_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(30),
      LI => f_Madd_q1khz_add0000_xor_31_rt_3569,
      O => f_q1khz_add0000(31)
    );
  f_Madd_q1khz_add0000_xor_30_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(29),
      LI => f_Madd_q1khz_add0000_cy_30_rt_3553,
      O => f_q1khz_add0000(30)
    );
  f_Madd_q1khz_add0000_cy_30_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(29),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_30_rt_3553,
      O => f_Madd_q1khz_add0000_cy(30)
    );
  f_Madd_q1khz_add0000_xor_29_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(28),
      LI => f_Madd_q1khz_add0000_cy_29_rt_3549,
      O => f_q1khz_add0000(29)
    );
  f_Madd_q1khz_add0000_cy_29_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(28),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_29_rt_3549,
      O => f_Madd_q1khz_add0000_cy(29)
    );
  f_Madd_q1khz_add0000_xor_28_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(27),
      LI => f_Madd_q1khz_add0000_cy_28_rt_3547,
      O => f_q1khz_add0000(28)
    );
  f_Madd_q1khz_add0000_cy_28_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(27),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_28_rt_3547,
      O => f_Madd_q1khz_add0000_cy(28)
    );
  f_Madd_q1khz_add0000_xor_27_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(26),
      LI => f_Madd_q1khz_add0000_cy_27_rt_3545,
      O => f_q1khz_add0000(27)
    );
  f_Madd_q1khz_add0000_cy_27_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(26),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_27_rt_3545,
      O => f_Madd_q1khz_add0000_cy(27)
    );
  f_Madd_q1khz_add0000_xor_26_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(25),
      LI => f_Madd_q1khz_add0000_cy_26_rt_3543,
      O => f_q1khz_add0000(26)
    );
  f_Madd_q1khz_add0000_cy_26_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(25),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_26_rt_3543,
      O => f_Madd_q1khz_add0000_cy(26)
    );
  f_Madd_q1khz_add0000_xor_25_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(24),
      LI => f_Madd_q1khz_add0000_cy_25_rt_3541,
      O => f_q1khz_add0000(25)
    );
  f_Madd_q1khz_add0000_cy_25_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(24),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_25_rt_3541,
      O => f_Madd_q1khz_add0000_cy(25)
    );
  f_Madd_q1khz_add0000_xor_24_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(23),
      LI => f_Madd_q1khz_add0000_cy_24_rt_3539,
      O => f_q1khz_add0000(24)
    );
  f_Madd_q1khz_add0000_cy_24_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(23),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_24_rt_3539,
      O => f_Madd_q1khz_add0000_cy(24)
    );
  f_Madd_q1khz_add0000_xor_23_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(22),
      LI => f_Madd_q1khz_add0000_cy_23_rt_3537,
      O => f_q1khz_add0000(23)
    );
  f_Madd_q1khz_add0000_cy_23_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(22),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_23_rt_3537,
      O => f_Madd_q1khz_add0000_cy(23)
    );
  f_Madd_q1khz_add0000_xor_22_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(21),
      LI => f_Madd_q1khz_add0000_cy_22_rt_3535,
      O => f_q1khz_add0000(22)
    );
  f_Madd_q1khz_add0000_cy_22_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(21),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_22_rt_3535,
      O => f_Madd_q1khz_add0000_cy(22)
    );
  f_Madd_q1khz_add0000_xor_21_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(20),
      LI => f_Madd_q1khz_add0000_cy_21_rt_3533,
      O => f_q1khz_add0000(21)
    );
  f_Madd_q1khz_add0000_cy_21_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(20),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_21_rt_3533,
      O => f_Madd_q1khz_add0000_cy(21)
    );
  f_Madd_q1khz_add0000_xor_20_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(19),
      LI => f_Madd_q1khz_add0000_cy_20_rt_3531,
      O => f_q1khz_add0000(20)
    );
  f_Madd_q1khz_add0000_cy_20_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(19),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_20_rt_3531,
      O => f_Madd_q1khz_add0000_cy(20)
    );
  f_Madd_q1khz_add0000_xor_19_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(18),
      LI => f_Madd_q1khz_add0000_cy_19_rt_3527,
      O => f_q1khz_add0000(19)
    );
  f_Madd_q1khz_add0000_cy_19_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(18),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_19_rt_3527,
      O => f_Madd_q1khz_add0000_cy(19)
    );
  f_Madd_q1khz_add0000_xor_18_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(17),
      LI => f_Madd_q1khz_add0000_cy_18_rt_3525,
      O => f_q1khz_add0000(18)
    );
  f_Madd_q1khz_add0000_cy_18_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(17),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_18_rt_3525,
      O => f_Madd_q1khz_add0000_cy(18)
    );
  f_Madd_q1khz_add0000_xor_17_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(16),
      LI => f_Madd_q1khz_add0000_cy_17_rt_3523,
      O => f_q1khz_add0000(17)
    );
  f_Madd_q1khz_add0000_cy_17_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(16),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_17_rt_3523,
      O => f_Madd_q1khz_add0000_cy(17)
    );
  f_Madd_q1khz_add0000_xor_16_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(15),
      LI => f_Madd_q1khz_add0000_cy_16_rt_3521,
      O => f_q1khz_add0000(16)
    );
  f_Madd_q1khz_add0000_cy_16_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(15),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_16_rt_3521,
      O => f_Madd_q1khz_add0000_cy(16)
    );
  f_Madd_q1khz_add0000_xor_15_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(14),
      LI => f_Madd_q1khz_add0000_cy_15_rt_3519,
      O => f_q1khz_add0000(15)
    );
  f_Madd_q1khz_add0000_cy_15_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(14),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_15_rt_3519,
      O => f_Madd_q1khz_add0000_cy(15)
    );
  f_Madd_q1khz_add0000_xor_14_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(13),
      LI => f_Madd_q1khz_add0000_cy_14_rt_3517,
      O => f_q1khz_add0000(14)
    );
  f_Madd_q1khz_add0000_cy_14_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(13),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_14_rt_3517,
      O => f_Madd_q1khz_add0000_cy(14)
    );
  f_Madd_q1khz_add0000_xor_13_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(12),
      LI => f_Madd_q1khz_add0000_cy_13_rt_3515,
      O => f_q1khz_add0000(13)
    );
  f_Madd_q1khz_add0000_cy_13_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(12),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_13_rt_3515,
      O => f_Madd_q1khz_add0000_cy(13)
    );
  f_Madd_q1khz_add0000_xor_12_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(11),
      LI => f_Madd_q1khz_add0000_cy_12_rt_3513,
      O => f_q1khz_add0000(12)
    );
  f_Madd_q1khz_add0000_cy_12_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(11),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_12_rt_3513,
      O => f_Madd_q1khz_add0000_cy(12)
    );
  f_Madd_q1khz_add0000_xor_11_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(10),
      LI => f_Madd_q1khz_add0000_cy_11_rt_3511,
      O => f_q1khz_add0000(11)
    );
  f_Madd_q1khz_add0000_cy_11_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(10),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_11_rt_3511,
      O => f_Madd_q1khz_add0000_cy(11)
    );
  f_Madd_q1khz_add0000_xor_10_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(9),
      LI => f_Madd_q1khz_add0000_cy_10_rt_3509,
      O => f_q1khz_add0000(10)
    );
  f_Madd_q1khz_add0000_cy_10_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(9),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_10_rt_3509,
      O => f_Madd_q1khz_add0000_cy(10)
    );
  f_Madd_q1khz_add0000_xor_9_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(8),
      LI => f_Madd_q1khz_add0000_cy_9_rt_3567,
      O => f_q1khz_add0000(9)
    );
  f_Madd_q1khz_add0000_cy_9_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(8),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_9_rt_3567,
      O => f_Madd_q1khz_add0000_cy(9)
    );
  f_Madd_q1khz_add0000_xor_8_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(7),
      LI => f_Madd_q1khz_add0000_cy_8_rt_3565,
      O => f_q1khz_add0000(8)
    );
  f_Madd_q1khz_add0000_cy_8_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(7),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_8_rt_3565,
      O => f_Madd_q1khz_add0000_cy(8)
    );
  f_Madd_q1khz_add0000_xor_7_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(6),
      LI => f_Madd_q1khz_add0000_cy_7_rt_3563,
      O => f_q1khz_add0000(7)
    );
  f_Madd_q1khz_add0000_cy_7_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(6),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_7_rt_3563,
      O => f_Madd_q1khz_add0000_cy(7)
    );
  f_Madd_q1khz_add0000_xor_6_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(5),
      LI => f_Madd_q1khz_add0000_cy_6_rt_3561,
      O => f_q1khz_add0000(6)
    );
  f_Madd_q1khz_add0000_cy_6_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(5),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_6_rt_3561,
      O => f_Madd_q1khz_add0000_cy(6)
    );
  f_Madd_q1khz_add0000_xor_5_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(4),
      LI => f_Madd_q1khz_add0000_cy_5_rt_3559,
      O => f_q1khz_add0000(5)
    );
  f_Madd_q1khz_add0000_cy_5_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(4),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_5_rt_3559,
      O => f_Madd_q1khz_add0000_cy(5)
    );
  f_Madd_q1khz_add0000_xor_4_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(3),
      LI => f_Madd_q1khz_add0000_cy_4_rt_3557,
      O => f_q1khz_add0000(4)
    );
  f_Madd_q1khz_add0000_cy_4_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(3),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_4_rt_3557,
      O => f_Madd_q1khz_add0000_cy(4)
    );
  f_Madd_q1khz_add0000_xor_3_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(2),
      LI => f_Madd_q1khz_add0000_cy_3_rt_3555,
      O => f_q1khz_add0000(3)
    );
  f_Madd_q1khz_add0000_cy_3_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(2),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_3_rt_3555,
      O => f_Madd_q1khz_add0000_cy(3)
    );
  f_Madd_q1khz_add0000_xor_2_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(1),
      LI => f_Madd_q1khz_add0000_cy_2_rt_3551,
      O => f_q1khz_add0000(2)
    );
  f_Madd_q1khz_add0000_cy_2_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(1),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_2_rt_3551,
      O => f_Madd_q1khz_add0000_cy(2)
    );
  f_Madd_q1khz_add0000_xor_1_Q : XORCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(0),
      LI => f_Madd_q1khz_add0000_cy_1_rt_3529,
      O => f_q1khz_add0000(1)
    );
  f_Madd_q1khz_add0000_cy_1_Q : MUXCY
    port map (
      CI => f_Madd_q1khz_add0000_cy(0),
      DI => N0,
      S => f_Madd_q1khz_add0000_cy_1_rt_3529,
      O => f_Madd_q1khz_add0000_cy(1)
    );
  f_Madd_q1khz_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => f_Madd_q1khz_add0000_lut(0),
      O => f_q1khz_add0000(0)
    );
  f_Madd_q1khz_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => f_Madd_q1khz_add0000_lut(0),
      O => f_Madd_q1khz_add0000_cy(0)
    );
  f_cout0_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_31_2,
      R => f_cout0_and0000,
      Q => f_cout0(31)
    );
  f_cout0_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_30_2,
      R => f_cout0_and0000,
      Q => f_cout0(30)
    );
  f_cout0_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_29_2,
      R => f_cout0_and0000,
      Q => f_cout0(29)
    );
  f_cout0_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_28_2,
      R => f_cout0_and0000,
      Q => f_cout0(28)
    );
  f_cout0_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_27_2,
      R => f_cout0_and0000,
      Q => f_cout0(27)
    );
  f_cout0_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_26_2,
      R => f_cout0_and0000,
      Q => f_cout0(26)
    );
  f_cout0_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_25_2,
      R => f_cout0_and0000,
      Q => f_cout0(25)
    );
  f_cout0_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_24_2,
      R => f_cout0_and0000,
      Q => f_cout0(24)
    );
  f_cout0_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_23_2,
      R => f_cout0_and0000,
      Q => f_cout0(23)
    );
  f_cout0_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_22_2,
      R => f_cout0_and0000,
      Q => f_cout0(22)
    );
  f_cout0_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_21_2,
      R => f_cout0_and0000,
      Q => f_cout0(21)
    );
  f_cout0_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_20_2,
      R => f_cout0_and0000,
      Q => f_cout0(20)
    );
  f_cout0_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_19_2,
      R => f_cout0_and0000,
      Q => f_cout0(19)
    );
  f_cout0_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_18_2,
      R => f_cout0_and0000,
      Q => f_cout0(18)
    );
  f_cout0_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_17_2,
      R => f_cout0_and0000,
      Q => f_cout0(17)
    );
  f_cout0_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_16_2,
      R => f_cout0_and0000,
      Q => f_cout0(16)
    );
  f_cout0_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_15_2,
      R => f_cout0_and0000,
      Q => f_cout0(15)
    );
  f_cout0_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_14_2,
      R => f_cout0_and0000,
      Q => f_cout0(14)
    );
  f_cout0_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_13_2,
      R => f_cout0_and0000,
      Q => f_cout0(13)
    );
  f_cout0_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_12_2,
      R => f_cout0_and0000,
      Q => f_cout0(12)
    );
  f_cout0_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_11_2,
      R => f_cout0_and0000,
      Q => f_cout0(11)
    );
  f_cout0_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_10_2,
      R => f_cout0_and0000,
      Q => f_cout0(10)
    );
  f_cout0_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_9_2,
      R => f_cout0_and0000,
      Q => f_cout0(9)
    );
  f_cout0_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_8_2,
      R => f_cout0_and0000,
      Q => f_cout0(8)
    );
  f_cout0_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_7_2,
      R => f_cout0_and0000,
      Q => f_cout0(7)
    );
  f_cout0_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_6_2,
      R => f_cout0_and0000,
      Q => f_cout0(6)
    );
  f_cout0_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_5_2,
      R => f_cout0_and0000,
      Q => f_cout0(5)
    );
  f_cout0_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_4_2,
      R => f_cout0_and0000,
      Q => f_cout0(4)
    );
  f_cout0_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_3_2,
      R => f_cout0_and0000,
      Q => f_cout0(3)
    );
  f_cout0_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_2_2,
      R => f_cout0_and0000,
      Q => f_cout0(2)
    );
  f_cout0_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_1_2,
      R => f_cout0_and0000,
      Q => f_cout0(1)
    );
  f_cout0_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1mhz_4218,
      D => f_Result_0_2,
      R => f_cout0_and0000,
      Q => f_cout0(0)
    );
  f_cout_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_31_1,
      R => f_cout_and0000,
      Q => f_cout(31)
    );
  f_cout_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_30_1,
      R => f_cout_and0000,
      Q => f_cout(30)
    );
  f_cout_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_29_1,
      R => f_cout_and0000,
      Q => f_cout(29)
    );
  f_cout_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_28_1,
      R => f_cout_and0000,
      Q => f_cout(28)
    );
  f_cout_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_27_1,
      R => f_cout_and0000,
      Q => f_cout(27)
    );
  f_cout_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_26_1,
      R => f_cout_and0000,
      Q => f_cout(26)
    );
  f_cout_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_25_1,
      R => f_cout_and0000,
      Q => f_cout(25)
    );
  f_cout_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_24_1,
      R => f_cout_and0000,
      Q => f_cout(24)
    );
  f_cout_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_23_1,
      R => f_cout_and0000,
      Q => f_cout(23)
    );
  f_cout_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_22_1,
      R => f_cout_and0000,
      Q => f_cout(22)
    );
  f_cout_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_21_1,
      R => f_cout_and0000,
      Q => f_cout(21)
    );
  f_cout_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_20_1,
      R => f_cout_and0000,
      Q => f_cout(20)
    );
  f_cout_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_19_1,
      R => f_cout_and0000,
      Q => f_cout(19)
    );
  f_cout_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_18_1,
      R => f_cout_and0000,
      Q => f_cout(18)
    );
  f_cout_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_17_1,
      R => f_cout_and0000,
      Q => f_cout(17)
    );
  f_cout_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_16_1,
      R => f_cout_and0000,
      Q => f_cout(16)
    );
  f_cout_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_15_1,
      R => f_cout_and0000,
      Q => f_cout(15)
    );
  f_cout_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_14_1,
      R => f_cout_and0000,
      Q => f_cout(14)
    );
  f_cout_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_13_1,
      R => f_cout_and0000,
      Q => f_cout(13)
    );
  f_cout_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_12_1,
      R => f_cout_and0000,
      Q => f_cout(12)
    );
  f_cout_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_11_1,
      R => f_cout_and0000,
      Q => f_cout(11)
    );
  f_cout_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_10_1,
      R => f_cout_and0000,
      Q => f_cout(10)
    );
  f_cout_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_9_1,
      R => f_cout_and0000,
      Q => f_cout(9)
    );
  f_cout_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_8_1,
      R => f_cout_and0000,
      Q => f_cout(8)
    );
  f_cout_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_7_1,
      R => f_cout_and0000,
      Q => f_cout(7)
    );
  f_cout_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_6_1,
      R => f_cout_and0000,
      Q => f_cout(6)
    );
  f_cout_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_5_1,
      R => f_cout_and0000,
      Q => f_cout(5)
    );
  f_cout_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_4_1,
      R => f_cout_and0000,
      Q => f_cout(4)
    );
  f_cout_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_3_1,
      R => f_cout_and0000,
      Q => f_cout(3)
    );
  f_cout_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_2_1,
      R => f_cout_and0000,
      Q => f_cout(2)
    );
  f_cout_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_1_1,
      R => f_cout_and0000,
      Q => f_cout(1)
    );
  f_cout_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_0_BUFGP_2980,
      D => f_Result_0_1,
      R => f_cout_and0000,
      Q => f_cout(0)
    );
  f_cout1_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(31),
      R => f_cout1_and0000,
      Q => f_cout1(31)
    );
  f_cout1_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(30),
      R => f_cout1_and0000,
      Q => f_cout1(30)
    );
  f_cout1_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(29),
      R => f_cout1_and0000,
      Q => f_cout1(29)
    );
  f_cout1_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(28),
      R => f_cout1_and0000,
      Q => f_cout1(28)
    );
  f_cout1_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(27),
      R => f_cout1_and0000,
      Q => f_cout1(27)
    );
  f_cout1_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(26),
      R => f_cout1_and0000,
      Q => f_cout1(26)
    );
  f_cout1_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(25),
      R => f_cout1_and0000,
      Q => f_cout1(25)
    );
  f_cout1_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(24),
      R => f_cout1_and0000,
      Q => f_cout1(24)
    );
  f_cout1_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(23),
      R => f_cout1_and0000,
      Q => f_cout1(23)
    );
  f_cout1_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(22),
      R => f_cout1_and0000,
      Q => f_cout1(22)
    );
  f_cout1_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(21),
      R => f_cout1_and0000,
      Q => f_cout1(21)
    );
  f_cout1_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(20),
      R => f_cout1_and0000,
      Q => f_cout1(20)
    );
  f_cout1_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(19),
      R => f_cout1_and0000,
      Q => f_cout1(19)
    );
  f_cout1_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(18),
      R => f_cout1_and0000,
      Q => f_cout1(18)
    );
  f_cout1_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(17),
      R => f_cout1_and0000,
      Q => f_cout1(17)
    );
  f_cout1_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(16),
      R => f_cout1_and0000,
      Q => f_cout1(16)
    );
  f_cout1_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(15),
      R => f_cout1_and0000,
      Q => f_cout1(15)
    );
  f_cout1_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(14),
      R => f_cout1_and0000,
      Q => f_cout1(14)
    );
  f_cout1_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(13),
      R => f_cout1_and0000,
      Q => f_cout1(13)
    );
  f_cout1_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(12),
      R => f_cout1_and0000,
      Q => f_cout1(12)
    );
  f_cout1_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(11),
      R => f_cout1_and0000,
      Q => f_cout1(11)
    );
  f_cout1_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(10),
      R => f_cout1_and0000,
      Q => f_cout1(10)
    );
  f_cout1_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(9),
      R => f_cout1_and0000,
      Q => f_cout1(9)
    );
  f_cout1_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(8),
      R => f_cout1_and0000,
      Q => f_cout1(8)
    );
  f_cout1_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(7),
      R => f_cout1_and0000,
      Q => f_cout1(7)
    );
  f_cout1_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(6),
      R => f_cout1_and0000,
      Q => f_cout1(6)
    );
  f_cout1_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(5),
      R => f_cout1_and0000,
      Q => f_cout1(5)
    );
  f_cout1_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(4),
      R => f_cout1_and0000,
      Q => f_cout1(4)
    );
  f_cout1_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(3),
      R => f_cout1_and0000,
      Q => f_cout1(3)
    );
  f_cout1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(2),
      R => f_cout1_and0000,
      Q => f_cout1(2)
    );
  f_cout1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(1),
      R => f_cout1_and0000,
      Q => f_cout1(1)
    );
  f_cout1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q1khz_4182,
      D => f_Result(0),
      R => f_cout1_and0000,
      Q => f_cout1(0)
    );
  f_q10hz : FDRE
    port map (
      C => f_q1khz_4182,
      CE => f_q10hz_cmp_lt0000,
      D => N1,
      R => f_q10hz_cmp_le0000,
      Q => f_q10hz1
    );
  f_q1khz : FDRE
    port map (
      C => f_q1mhz_4218,
      CE => f_q1khz_cmp_lt0000,
      D => N1,
      R => f_q1khz_cmp_le0000,
      Q => f_q1khz1
    );
  f_q1mhz : FDRE
    port map (
      C => clk_0_BUFGP_2980,
      CE => f_q1mhz_cmp_lt0000,
      D => N1,
      R => f_q1mhz_cmp_le0000,
      Q => f_q1mhz1
    );
  b_enemy_y_tmp_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(7),
      Q => b_enemy_y_tmp(2)
    );
  b_enemy_y_tmp_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(9),
      Q => b_enemy_y_tmp(0)
    );
  b_enemy_y_tmp_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(8),
      Q => b_enemy_y_tmp(1)
    );
  b_enemy_y_tmp_3 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_y_tmp_mux0001(6),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_y_tmp(3)
    );
  b_enemy_y_tmp_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(5),
      Q => b_enemy_y_tmp(4)
    );
  b_enemy_y_tmp_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(2),
      Q => b_enemy_y_tmp(7)
    );
  b_enemy_y_tmp_5 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_y_tmp_mux0001(4),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_y_tmp(5)
    );
  b_enemy_y_tmp_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(3),
      Q => b_enemy_y_tmp(6)
    );
  b_enemy_y_tmp_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(1),
      Q => b_enemy_y_tmp(8)
    );
  b_enemy_y_tmp_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp_mux0001(0),
      Q => b_enemy_y_tmp(9)
    );
  b_plane_y_tmp_8 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => N1,
      G => reset_IBUF_4266,
      Q => b_plane_y_tmp(8)
    );
  b_enemy_x_tmp2_2 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp2_mux0001(7),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp2(2)
    );
  b_enemy_x_tmp2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(9),
      Q => b_enemy_x_tmp2(0)
    );
  b_enemy_x_tmp2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(8),
      Q => b_enemy_x_tmp2(1)
    );
  b_enemy_x_tmp2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(6),
      Q => b_enemy_x_tmp2(3)
    );
  b_enemy_x_tmp2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(5),
      Q => b_enemy_x_tmp2(4)
    );
  b_enemy_x_tmp2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(2),
      Q => b_enemy_x_tmp2(7)
    );
  b_enemy_x_tmp2_5 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp2_mux0001(4),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp2(5)
    );
  b_enemy_x_tmp2_6 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp2_mux0001(3),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp2(6)
    );
  b_enemy_x_tmp2_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(1),
      Q => b_enemy_x_tmp2(8)
    );
  b_enemy_x_tmp2_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp2_mux0001(0),
      Q => b_enemy_x_tmp2(9)
    );
  b_enemy_x_tmp3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(7),
      Q => b_enemy_x_tmp3(2)
    );
  b_enemy_x_tmp3_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(9),
      Q => b_enemy_x_tmp3(0)
    );
  b_enemy_x_tmp3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(8),
      Q => b_enemy_x_tmp3(1)
    );
  b_enemy_x_tmp3_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(6),
      Q => b_enemy_x_tmp3(3)
    );
  b_enemy_x_tmp3_4 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp3_mux0001(5),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp3(4)
    );
  b_enemy_x_tmp3_7 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp3_mux0001(2),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp3(7)
    );
  b_enemy_x_tmp3_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(4),
      Q => b_enemy_x_tmp3(5)
    );
  b_enemy_x_tmp3_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(3),
      Q => b_enemy_x_tmp3(6)
    );
  b_enemy_x_tmp3_8 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp3_mux0001(1),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp3(8)
    );
  b_enemy_x_tmp3_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp3_mux0001(0),
      Q => b_enemy_x_tmp3(9)
    );
  b_enemy_y_tmp2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(7),
      Q => b_enemy_y_tmp2(2)
    );
  b_enemy_y_tmp2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(9),
      Q => b_enemy_y_tmp2(0)
    );
  b_enemy_y_tmp2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(8),
      Q => b_enemy_y_tmp2(1)
    );
  b_enemy_y_tmp2_3 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_y_tmp2_mux0001(6),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_y_tmp2(3)
    );
  b_enemy_y_tmp2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(5),
      Q => b_enemy_y_tmp2(4)
    );
  b_enemy_y_tmp2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(2),
      Q => b_enemy_y_tmp2(7)
    );
  b_enemy_y_tmp2_5 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_y_tmp2_mux0001(4),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_y_tmp2(5)
    );
  b_enemy_y_tmp2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(3),
      Q => b_enemy_y_tmp2(6)
    );
  b_enemy_y_tmp2_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(1),
      Q => b_enemy_y_tmp2(8)
    );
  b_enemy_y_tmp2_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp2_mux0001(0),
      Q => b_enemy_y_tmp2(9)
    );
  b_enemy_y_tmp3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(7),
      Q => b_enemy_y_tmp3(2)
    );
  b_enemy_y_tmp3_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(9),
      Q => b_enemy_y_tmp3(0)
    );
  b_enemy_y_tmp3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(8),
      Q => b_enemy_y_tmp3(1)
    );
  b_enemy_y_tmp3_3 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_y_tmp3_mux0001(6),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_y_tmp3(3)
    );
  b_enemy_y_tmp3_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(5),
      Q => b_enemy_y_tmp3(4)
    );
  b_enemy_y_tmp3_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(2),
      Q => b_enemy_y_tmp3(7)
    );
  b_enemy_y_tmp3_5 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_y_tmp3_mux0001(4),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_y_tmp3(5)
    );
  b_enemy_y_tmp3_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(3),
      Q => b_enemy_y_tmp3(6)
    );
  b_enemy_y_tmp3_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(1),
      Q => b_enemy_y_tmp3(8)
    );
  b_enemy_y_tmp3_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_y_tmp3_mux0001(0),
      Q => b_enemy_y_tmp3(9)
    );
  b_enemy_x_tmp_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(7),
      Q => b_enemy_x_tmp(2)
    );
  b_enemy_x_tmp_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(9),
      Q => b_enemy_x_tmp(0)
    );
  b_enemy_x_tmp_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(8),
      Q => b_enemy_x_tmp(1)
    );
  b_enemy_x_tmp_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(6),
      Q => b_enemy_x_tmp(3)
    );
  b_enemy_x_tmp_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(5),
      Q => b_enemy_x_tmp(4)
    );
  b_enemy_x_tmp_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(2),
      Q => b_enemy_x_tmp(7)
    );
  b_enemy_x_tmp_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(4),
      Q => b_enemy_x_tmp(5)
    );
  b_enemy_x_tmp_6 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp_mux0001(3),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp(6)
    );
  b_enemy_x_tmp_8 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      D => b_enemy_x_tmp_mux0001(1),
      PRE => b_dx_e2_Acst_inv,
      Q => b_enemy_x_tmp(8)
    );
  b_enemy_x_tmp_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => start_IBUF_4269,
      CLR => b_dx_e2_Acst_inv,
      D => b_enemy_x_tmp_mux0001(0),
      Q => b_enemy_x_tmp(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(8),
      DI => b_bullet_y_tmp(9),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(9),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(7),
      DI => b_bullet_y_tmp(8),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(8),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(8)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(6),
      DI => b_bullet_y_tmp(7),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(7)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(7),
      I1 => b_life_enemy_tmp_0_sub0001(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(7)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(5),
      DI => b_bullet_y_tmp(6),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(6),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(6)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(4),
      DI => b_bullet_y_tmp(5),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(5)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(3),
      DI => b_bullet_y_tmp(4),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(4)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(2),
      DI => b_bullet_y_tmp(3),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(3),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(3)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(3),
      I1 => b_enemy_y_tmp(3),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(3)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(1),
      DI => b_bullet_y_tmp(2),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(2),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(2)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(2),
      I1 => b_enemy_y_tmp(2),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(2)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(0),
      DI => b_bullet_y_tmp(1),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(1),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(1)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => b_enemy_y_tmp(1),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(1)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(0),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(0)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(8),
      DI => b_bullet_x_tmp(9),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(9),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(7),
      DI => b_bullet_x_tmp(8),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(8),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(8)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(6),
      DI => b_bullet_x_tmp(7),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(7)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(7),
      I1 => b_life_enemy_tmp_0_sub0000(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(7)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(5),
      DI => b_bullet_x_tmp(6),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(6),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(6)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(4),
      DI => b_bullet_x_tmp(5),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(5)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(3),
      DI => b_bullet_x_tmp(4),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(4)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(2),
      DI => b_bullet_x_tmp(3),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(3),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(3)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(3),
      I1 => b_enemy_x_tmp(3),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(3)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(1),
      DI => b_bullet_x_tmp(2),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(2),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(2)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(2),
      I1 => b_enemy_x_tmp(2),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(2)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(0),
      DI => b_bullet_x_tmp(1),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(1),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(1)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(1),
      I1 => b_enemy_x_tmp(1),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(1)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_bullet_x_tmp(0),
      S => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(0),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(0)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => b_enemy_x_tmp(0),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(0)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(9),
      DI => N1,
      S => b_Madd_life_plane_tmp_0_index0000_inv1_2039,
      O => b_life_enemy_tmp_0_cmp_le0000
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(8),
      DI => b_life_plane_tmp_0_addsub0006(9),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(9),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(7),
      DI => b_life_plane_tmp_0_addsub0006(8),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(8),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(8)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_life_plane_tmp_0_addsub0006(8),
      I1 => b_bullet_x_tmp(8),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(8)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(6),
      DI => b_life_plane_tmp_0_addsub0006(7),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(7)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(5),
      DI => b_life_plane_tmp_0_addsub0006(6),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(6),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(6)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(4),
      DI => b_life_plane_tmp_0_addsub0006(5),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(5)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp(4),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(4)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => b_bullet_x_tmp(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(4)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp(3),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(3),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(3)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(3),
      I1 => b_bullet_x_tmp(3),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(3)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp(2),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(2),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(2)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(2),
      I1 => b_bullet_x_tmp(2),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(2)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp(1),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(1),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(1)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(1),
      I1 => b_bullet_x_tmp(1),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(1)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp(0),
      S => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(0),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_cy(0)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(0),
      I1 => b_bullet_x_tmp(0),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(9),
      DI => N1,
      S => b_Madd_mux0000_index0001_inv,
      O => b_life_enemy_tmp3_0_cmp_le0001
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(8),
      DI => b_mux0000_addsub0001(9),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(9),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(7),
      DI => b_mux0000_addsub0001(8),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0000_addsub0001(8),
      I1 => b_bullet_y_tmp(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(6),
      DI => b_mux0000_addsub0001(7),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(5),
      DI => b_mux0000_addsub0001(6),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(6),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(4),
      DI => b_mux0000_addsub0001(5),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(3),
      DI => b_enemy_y_tmp3(4),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => b_bullet_y_tmp(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(2),
      DI => b_enemy_y_tmp3(3),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(3),
      I1 => b_bullet_y_tmp(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(1),
      DI => b_enemy_y_tmp3(2),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(2),
      I1 => b_bullet_y_tmp(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(0),
      DI => b_enemy_y_tmp3(1),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(1),
      I1 => b_bullet_y_tmp(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp3(0),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_cy(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(9),
      DI => N1,
      S => b_Madd_mux0000_index0000_inv1_2044,
      O => b_life_enemy_tmp3_0_cmp_le0000
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(8),
      DI => b_mux0000_addsub0000(9),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(9),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(7),
      DI => b_mux0000_addsub0000(8),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0000_addsub0000(8),
      I1 => b_bullet_x_tmp(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(6),
      DI => b_mux0000_addsub0000(7),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(5),
      DI => b_mux0000_addsub0000(6),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(6),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(4),
      DI => b_mux0000_addsub0000(5),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp3(4),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => b_bullet_x_tmp(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp3(3),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(3),
      I1 => b_bullet_x_tmp(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp3(2),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(2),
      I1 => b_bullet_x_tmp(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp3(1),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(1),
      I1 => b_bullet_x_tmp(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp3(0),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_cy(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(0),
      I1 => b_bullet_x_tmp(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(8),
      DI => b_bullet_x_tmp(9),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(9),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(7),
      DI => b_bullet_x_tmp(8),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(6),
      DI => b_bullet_x_tmp(7),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(7),
      I1 => b_mux0000_sub0000(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(5),
      DI => b_bullet_x_tmp(6),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(6),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(4),
      DI => b_bullet_x_tmp(5),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(3),
      DI => b_bullet_x_tmp(4),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(2),
      DI => b_bullet_x_tmp(3),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(3),
      I1 => b_enemy_x_tmp3(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(1),
      DI => b_bullet_x_tmp(2),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(2),
      I1 => b_enemy_x_tmp3(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(0),
      DI => b_bullet_x_tmp(1),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(1),
      I1 => b_enemy_x_tmp3(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_bullet_x_tmp(0),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => b_enemy_x_tmp3(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(8),
      DI => b_bullet_y_tmp(9),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(9),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(7),
      DI => b_bullet_y_tmp(8),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(6),
      DI => b_bullet_y_tmp(7),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(7),
      I1 => b_mux0000_sub0001(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(5),
      DI => b_bullet_y_tmp(6),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(6),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(4),
      DI => b_bullet_y_tmp(5),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(3),
      DI => b_bullet_y_tmp(4),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(2),
      DI => b_bullet_y_tmp(3),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(3),
      I1 => b_enemy_y_tmp3(3),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(3)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(1),
      DI => b_bullet_y_tmp(2),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(2),
      I1 => b_enemy_y_tmp3(2),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(2)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(0),
      DI => b_bullet_y_tmp(1),
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => b_enemy_y_tmp3(1),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(1)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(8),
      DI => b_bullet_y_tmp(9),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(9),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(7),
      DI => b_bullet_y_tmp(8),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(6),
      DI => b_bullet_y_tmp(7),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(7),
      I1 => b_mux0001_sub0001(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(5),
      DI => b_bullet_y_tmp(6),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(6),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(4),
      DI => b_bullet_y_tmp(5),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(3),
      DI => b_bullet_y_tmp(4),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(2),
      DI => b_bullet_y_tmp(3),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(3),
      I1 => b_enemy_y_tmp2(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(1),
      DI => b_bullet_y_tmp(2),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(2),
      I1 => b_enemy_y_tmp2(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(0),
      DI => b_bullet_y_tmp(1),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => b_enemy_y_tmp2(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(9),
      DI => N1,
      S => b_Madd_mux0001_index0000_inv1_2049,
      O => b_life_enemy_tmp2_0_cmp_le0000
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(8),
      DI => b_mux0001_addsub0000(9),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(9),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(7),
      DI => b_mux0001_addsub0000(8),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0001_addsub0000(8),
      I1 => b_bullet_x_tmp(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(6),
      DI => b_mux0001_addsub0000(7),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(5),
      DI => b_mux0001_addsub0000(6),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(6),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(4),
      DI => b_mux0001_addsub0000(5),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp2(4),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => b_bullet_x_tmp(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp2(3),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(3),
      I1 => b_bullet_x_tmp(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp2(2),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(2),
      I1 => b_bullet_x_tmp(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp2(1),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(1),
      I1 => b_bullet_x_tmp(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp2(0),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_cy(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(0),
      I1 => b_bullet_x_tmp(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(9),
      DI => N1,
      S => b_Madd_mux0001_index0001_inv,
      O => b_life_enemy_tmp2_0_cmp_le0001
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(8),
      DI => b_mux0001_addsub0001(9),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(9),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(7),
      DI => b_mux0001_addsub0001(8),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0001_addsub0001(8),
      I1 => b_bullet_y_tmp(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(6),
      DI => b_mux0001_addsub0001(7),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(5),
      DI => b_mux0001_addsub0001(6),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(6),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(4),
      DI => b_mux0001_addsub0001(5),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(3),
      DI => b_enemy_y_tmp2(4),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => b_bullet_y_tmp(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(2),
      DI => b_enemy_y_tmp2(3),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(3),
      I1 => b_bullet_y_tmp(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(1),
      DI => b_enemy_y_tmp2(2),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(2),
      I1 => b_bullet_y_tmp(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(0),
      DI => b_enemy_y_tmp2(1),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(1),
      I1 => b_bullet_y_tmp(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp2(0),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_cy(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(8),
      DI => b_bullet_x_tmp(9),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(9),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(7),
      DI => b_bullet_x_tmp(8),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(6),
      DI => b_bullet_x_tmp(7),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(7),
      I1 => b_mux0001_sub0000(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(5),
      DI => b_bullet_x_tmp(6),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(6),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(4),
      DI => b_bullet_x_tmp(5),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(3),
      DI => b_bullet_x_tmp(4),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(2),
      DI => b_bullet_x_tmp(3),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(3),
      I1 => b_enemy_x_tmp2(3),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(1),
      DI => b_bullet_x_tmp(2),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(2),
      I1 => b_enemy_x_tmp2(2),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(2)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(0),
      DI => b_bullet_x_tmp(1),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(1),
      I1 => b_enemy_x_tmp2(1),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(1)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_bullet_x_tmp(0),
      S => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => b_enemy_x_tmp2(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(8),
      DI => N0,
      S => b_life_plane_tmp_0_addsub0005_9_inv_2887,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(7),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_8_Q_2384,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_life_plane_tmp_0_addsub0005(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_8_Q_2384
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(6),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_7_Q_2383,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(5),
      DI => N0,
      S => b_mux0000_addsub0001(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(4),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_5_rt_2373,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(3),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_4_Q_2382,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_enemy_y_tmp3(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_4_Q_2382
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(2),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_3_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(1),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_2_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(0),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_1_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_0_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(9),
      DI => N1,
      S => b_Madd_mux0000_index0000_inv_2043,
      O => b_life_plane_tmp_0_cmp_le0004
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(8),
      DI => b_mux0000_addsub0000(9),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(7),
      DI => b_mux0000_addsub0000(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0000_addsub0000(8),
      I1 => b_plane_x_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(6),
      DI => b_mux0000_addsub0000(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(7),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(5),
      DI => b_mux0000_addsub0000(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(4),
      DI => b_mux0000_addsub0000(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(3),
      DI => b_enemy_x_tmp3(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => b_plane_x_tmp(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(2),
      DI => b_enemy_x_tmp3(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(3),
      I1 => b_plane_x_tmp(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(1),
      DI => b_enemy_x_tmp3(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(2),
      I1 => b_plane_x_tmp(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(0),
      DI => b_enemy_x_tmp3(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(1),
      I1 => b_plane_x_tmp(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp3(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(0),
      I1 => b_plane_x_tmp(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(8),
      DI => N1,
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_9_Q_2501,
      O => b_life_plane_tmp_0_cmp_le0005
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(7),
      DI => b_mux0000_addsub0001(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_8_Q_2500,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0000_addsub0001(8),
      I1 => b_plane_y_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_8_Q_2500
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(6),
      DI => b_mux0000_addsub0001(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_7_Q_2499,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(5),
      DI => b_mux0000_addsub0001(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_6_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(4),
      DI => b_mux0000_addsub0001(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_5_rt_2489,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(3),
      DI => b_enemy_y_tmp3(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_4_Q_2497,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => b_plane_y_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_4_Q_2497
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(2),
      DI => b_enemy_y_tmp3(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_3_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(1),
      DI => b_enemy_y_tmp3(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_2_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(0),
      DI => b_enemy_y_tmp3(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_1_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp3(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_0_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(8),
      DI => b_plane_x_tmp(9),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(7),
      DI => b_plane_x_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      I1 => b_life_plane_tmp_0_addsub0004(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(6),
      DI => b_plane_x_tmp(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(7),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(5),
      DI => b_plane_x_tmp(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(4),
      DI => b_plane_x_tmp(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(3),
      DI => b_plane_x_tmp(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_enemy_x_tmp3(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(2),
      DI => b_plane_x_tmp(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(3),
      I1 => b_enemy_x_tmp3(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(1),
      DI => b_plane_x_tmp(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(2),
      I1 => b_enemy_x_tmp3(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(0),
      DI => b_plane_x_tmp(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(1),
      I1 => b_enemy_x_tmp3(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_plane_x_tmp(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(0),
      I1 => b_enemy_x_tmp3(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(8),
      DI => N1,
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_9_Q_2462,
      O => b_life_plane_tmp_0_cmp_le0003
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(7),
      DI => b_mux0001_addsub0001(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_8_Q_2461,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0001_addsub0001(8),
      I1 => b_plane_y_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_8_Q_2461
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(6),
      DI => b_mux0001_addsub0001(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_7_Q_2460,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(5),
      DI => b_mux0001_addsub0001(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_6_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(4),
      DI => b_mux0001_addsub0001(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_5_rt_2450,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(3),
      DI => b_enemy_y_tmp2(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_4_Q_2458,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => b_plane_y_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_4_Q_2458
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(2),
      DI => b_enemy_y_tmp2(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_3_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(1),
      DI => b_enemy_y_tmp2(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_2_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(0),
      DI => b_enemy_y_tmp2(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_1_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp2(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_0_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(9),
      DI => N1,
      S => b_Madd_mux0001_index0000_inv_2048,
      O => b_life_plane_tmp_0_cmp_le0002
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(8),
      DI => b_mux0001_addsub0000(9),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(7),
      DI => b_mux0001_addsub0000(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_mux0001_addsub0000(8),
      I1 => b_plane_x_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(6),
      DI => b_mux0001_addsub0000(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(7),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(5),
      DI => b_mux0001_addsub0000(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(4),
      DI => b_mux0001_addsub0000(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(3),
      DI => b_enemy_x_tmp2(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => b_plane_x_tmp(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(2),
      DI => b_enemy_x_tmp2(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(3),
      I1 => b_plane_x_tmp(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(1),
      DI => b_enemy_x_tmp2(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(2),
      I1 => b_plane_x_tmp(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(0),
      DI => b_enemy_x_tmp2(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(1),
      I1 => b_plane_x_tmp(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp2(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(0),
      I1 => b_plane_x_tmp(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(8),
      DI => b_plane_x_tmp(9),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(7),
      DI => b_plane_x_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      I1 => b_life_plane_tmp_0_addsub0002(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(6),
      DI => b_plane_x_tmp(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(7),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(5),
      DI => b_plane_x_tmp(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(4),
      DI => b_plane_x_tmp(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(3),
      DI => b_plane_x_tmp(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_enemy_x_tmp2(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(2),
      DI => b_plane_x_tmp(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(3),
      I1 => b_enemy_x_tmp2(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(1),
      DI => b_plane_x_tmp(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(2),
      I1 => b_enemy_x_tmp2(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(0),
      DI => b_plane_x_tmp(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(1),
      I1 => b_enemy_x_tmp2(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_plane_x_tmp(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(0),
      I1 => b_enemy_x_tmp2(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(8),
      DI => N0,
      S => b_life_plane_tmp_0_addsub0003_9_inv_2884,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(7),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_8_Q_2346,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_life_plane_tmp_0_addsub0003(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_8_Q_2346
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(6),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_7_Q_2345,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(5),
      DI => N0,
      S => b_mux0001_addsub0001(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(4),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_5_rt_2335,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(3),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_4_Q_2344,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_enemy_y_tmp2(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_4_Q_2344
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(2),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_3_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(1),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_2_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(0),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_1_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_0_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(8),
      DI => N1,
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_9_Q_2423,
      O => b_life_plane_tmp_0_cmp_le0001
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(7),
      DI => b_life_plane_tmp_0_addsub0007(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_8_Q_2422,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_life_plane_tmp_0_addsub0007(8),
      I1 => b_plane_y_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_8_Q_2422
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(6),
      DI => b_life_plane_tmp_0_addsub0007(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_7_Q_2421,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(5),
      DI => b_life_plane_tmp_0_addsub0007(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_6_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(4),
      DI => b_life_plane_tmp_0_addsub0007(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_5_rt_2411,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(3),
      DI => b_enemy_y_tmp(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_4_Q_2419,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => b_plane_y_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_4_Q_2419
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(2),
      DI => b_enemy_y_tmp(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_3_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(1),
      DI => b_enemy_y_tmp(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_2_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(0),
      DI => b_enemy_y_tmp(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_1_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_0_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(8),
      DI => N0,
      S => b_life_plane_tmp_0_addsub0001_9_inv_2881,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(7),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_8_Q_2308,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_life_plane_tmp_0_addsub0001(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_8_Q_2308
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(6),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_7_Q_2307,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(5),
      DI => N0,
      S => b_life_plane_tmp_0_addsub0007(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(4),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_5_rt_2297,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(3),
      DI => b_plane_y_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_4_Q_2306,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_enemy_y_tmp(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_4_Q_2306
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(2),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_3_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(1),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_2_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(0),
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_1_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_0_Q,
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(8),
      DI => b_plane_x_tmp(9),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(7),
      DI => b_plane_x_tmp(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      I1 => b_life_plane_tmp_0_addsub0000(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(6),
      DI => b_plane_x_tmp(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(7),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(5),
      DI => b_plane_x_tmp(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(4),
      DI => b_plane_x_tmp(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(3),
      DI => b_plane_x_tmp(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_enemy_x_tmp(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(2),
      DI => b_plane_x_tmp(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(3),
      I1 => b_enemy_x_tmp(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(1),
      DI => b_plane_x_tmp(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(2),
      I1 => b_enemy_x_tmp(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(0),
      DI => b_plane_x_tmp(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(1),
      I1 => b_enemy_x_tmp(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_plane_x_tmp(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(0),
      I1 => b_enemy_x_tmp(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(0)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(9),
      DI => N1,
      S => b_Madd_life_plane_tmp_0_index0001_inv_2040,
      O => b_score_tmp_cmp_le0000
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(8),
      DI => b_life_plane_tmp_0_addsub0007(9),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(9),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(9)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(7),
      DI => b_life_plane_tmp_0_addsub0007(8),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(8),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(8)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_life_plane_tmp_0_addsub0007(8),
      I1 => b_bullet_y_tmp(8),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(8)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(6),
      DI => b_life_plane_tmp_0_addsub0007(7),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(7),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(7)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(5),
      DI => b_life_plane_tmp_0_addsub0007(6),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(6),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(6)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(4),
      DI => b_life_plane_tmp_0_addsub0007(5),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(5),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(5)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(3),
      DI => b_enemy_y_tmp(4),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(4),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(4)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => b_bullet_y_tmp(4),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(4)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(2),
      DI => b_enemy_y_tmp(3),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(3),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(3)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(3),
      I1 => b_bullet_y_tmp(3),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(3)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(1),
      DI => b_enemy_y_tmp(2),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(2),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(2)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(2),
      I1 => b_bullet_y_tmp(2),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(2)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_score_tmp_cmp_le0000_cy(0),
      DI => b_enemy_y_tmp(1),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(1),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(1)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(1),
      I1 => b_bullet_y_tmp(1),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(1)
    );
  b_Mcompar_score_tmp_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp(0),
      S => b_Mcompar_score_tmp_cmp_le0000_lut(0),
      O => b_Mcompar_score_tmp_cmp_le0000_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(9),
      DI => N1,
      S => b_Madd_life_plane_tmp_0_index0000_inv_2038,
      O => b_life_plane_tmp_0_cmp_le0000
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(8),
      DI => b_life_plane_tmp_0_addsub0006(9),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(7),
      DI => b_life_plane_tmp_0_addsub0006(8),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_life_plane_tmp_0_addsub0006(8),
      I1 => b_plane_x_tmp(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(8)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(6),
      DI => b_life_plane_tmp_0_addsub0006(7),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(7),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(5),
      DI => b_life_plane_tmp_0_addsub0006(6),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(4),
      DI => b_life_plane_tmp_0_addsub0006(5),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp(4),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => b_plane_x_tmp(4),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(4)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp(3),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(3),
      I1 => b_plane_x_tmp(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(3)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp(2),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(2),
      I1 => b_plane_x_tmp(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(2)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp(1),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(1),
      I1 => b_plane_x_tmp(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(1)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp(0),
      S => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_cy(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(0),
      I1 => b_plane_x_tmp(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(0)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(8),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(9),
      O => b_enemy_x_tmp_addsub0000(9)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(9)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(7),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(8),
      O => b_enemy_x_tmp_addsub0000(8)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(7),
      DI => b_enemy_x_tmp(8),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(8),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(8)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(8),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(8)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(6),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(7),
      O => b_enemy_x_tmp_addsub0000(7)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(6),
      DI => b_enemy_x_tmp(7),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(7),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(7)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(7)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(5),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(6),
      O => b_enemy_x_tmp_addsub0000(6)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(5),
      DI => b_enemy_x_tmp(6),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(6),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(6)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(6)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(4),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(5),
      O => b_enemy_x_tmp_addsub0000(5)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(4),
      DI => b_enemy_x_tmp(5),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(5),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(5)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(5),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(5)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(3),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(4),
      O => b_enemy_x_tmp_addsub0000(4)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(3),
      DI => b_enemy_x_tmp(4),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(4),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(4)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(4)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(2),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(3),
      O => b_enemy_x_tmp_addsub0000(3)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(2),
      DI => b_enemy_x_tmp(3),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(3),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(3)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(3),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(3)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(1),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(2),
      O => b_enemy_x_tmp_addsub0000(2)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(1),
      DI => b_enemy_x_tmp(2),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(2),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(2)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(2),
      I1 => b_dx_e(2),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(2)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(0),
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(1),
      O => b_enemy_x_tmp_addsub0000(1)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp_addsub0000_cy(0),
      DI => b_enemy_x_tmp(1),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(1),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(1)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(1),
      I1 => b_dx_e(1),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(1)
    );
  b_Madd_enemy_x_tmp_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_enemy_x_tmp_addsub0000_lut(0),
      O => b_enemy_x_tmp_addsub0000(0)
    );
  b_Madd_enemy_x_tmp_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_enemy_x_tmp(0),
      S => b_Madd_enemy_x_tmp_addsub0000_lut(0),
      O => b_Madd_enemy_x_tmp_addsub0000_cy(0)
    );
  b_Madd_enemy_x_tmp_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(0),
      I1 => b_dx_e(0),
      O => b_Madd_enemy_x_tmp_addsub0000_lut(0)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(8),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(9),
      O => b_enemy_y_tmp3_addsub0000(9)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(9)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(7),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(8),
      O => b_enemy_y_tmp3_addsub0000(8)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(7),
      DI => b_enemy_y_tmp3(8),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(8),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(8)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(8),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(8)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(6),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(7),
      O => b_enemy_y_tmp3_addsub0000(7)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(6),
      DI => b_enemy_y_tmp3(7),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(7),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(7)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(7)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(5),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(6),
      O => b_enemy_y_tmp3_addsub0000(6)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(5),
      DI => b_enemy_y_tmp3(6),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(6),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(6)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(6)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(4),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(5),
      O => b_enemy_y_tmp3_addsub0000(5)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(4),
      DI => b_enemy_y_tmp3(5),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(5),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(5)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(5),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(5)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(3),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(4),
      O => b_enemy_y_tmp3_addsub0000(4)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(3),
      DI => b_enemy_y_tmp3(4),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(4),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(4)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(4)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(2),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(3),
      O => b_enemy_y_tmp3_addsub0000(3)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(2),
      DI => b_enemy_y_tmp3(3),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(3),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(3)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(3),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(3)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(1),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(2),
      O => b_enemy_y_tmp3_addsub0000(2)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(1),
      DI => b_enemy_y_tmp3(2),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(2),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(2)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(2),
      I1 => b_dy_e3_2_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(2)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(0),
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(1),
      O => b_enemy_y_tmp3_addsub0000(1)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp3_addsub0000_cy(0),
      DI => b_enemy_y_tmp3(1),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(1),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(1)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(1),
      I1 => b_dy_e3_3_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(1)
    );
  b_Madd_enemy_y_tmp3_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_enemy_y_tmp3_addsub0000_lut(0),
      O => b_enemy_y_tmp3_addsub0000(0)
    );
  b_Madd_enemy_y_tmp3_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_enemy_y_tmp3(0),
      S => b_Madd_enemy_y_tmp3_addsub0000_lut(0),
      O => b_Madd_enemy_y_tmp3_addsub0000_cy(0)
    );
  b_Madd_enemy_y_tmp3_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(0),
      I1 => b_dy_e3_0_Q,
      O => b_Madd_enemy_y_tmp3_addsub0000_lut(0)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(8),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(9),
      O => b_enemy_y_tmp2_addsub0000(9)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(9)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(7),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(8),
      O => b_enemy_y_tmp2_addsub0000(8)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(7),
      DI => b_enemy_y_tmp2(8),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(8),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(8)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(8),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(8)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(6),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(7),
      O => b_enemy_y_tmp2_addsub0000(7)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(6),
      DI => b_enemy_y_tmp2(7),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(7),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(7)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(7)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(5),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(6),
      O => b_enemy_y_tmp2_addsub0000(6)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(5),
      DI => b_enemy_y_tmp2(6),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(6),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(6)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(6)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(4),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(5),
      O => b_enemy_y_tmp2_addsub0000(5)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(4),
      DI => b_enemy_y_tmp2(5),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(5),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(5)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(5),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(5)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(3),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(4),
      O => b_enemy_y_tmp2_addsub0000(4)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(3),
      DI => b_enemy_y_tmp2(4),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(4),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(4)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(4)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(2),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(3),
      O => b_enemy_y_tmp2_addsub0000(3)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(2),
      DI => b_enemy_y_tmp2(3),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(3),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(3)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(3),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(3)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(1),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(2),
      O => b_enemy_y_tmp2_addsub0000(2)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(1),
      DI => b_enemy_y_tmp2(2),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(2),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(2)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(2),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(2)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(0),
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(1),
      O => b_enemy_y_tmp2_addsub0000(1)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp2_addsub0000_cy(0),
      DI => b_enemy_y_tmp2(1),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(1)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(1),
      I1 => b_dy_e2(1),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(1)
    );
  b_Madd_enemy_y_tmp2_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_enemy_y_tmp2_addsub0000_lut(0),
      O => b_enemy_y_tmp2_addsub0000(0)
    );
  b_Madd_enemy_y_tmp2_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_enemy_y_tmp2(0),
      S => b_Madd_enemy_y_tmp2_addsub0000_lut(0),
      O => b_Madd_enemy_y_tmp2_addsub0000_cy(0)
    );
  b_Madd_enemy_y_tmp2_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(0),
      I1 => b_dy_e2(0),
      O => b_Madd_enemy_y_tmp2_addsub0000_lut(0)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(8),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(9),
      O => b_enemy_x_tmp3_addsub0000(9)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(9)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(7),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(8),
      O => b_enemy_x_tmp3_addsub0000(8)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(7),
      DI => b_enemy_x_tmp3(8),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(8),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(8)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(8),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(8)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(6),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(7),
      O => b_enemy_x_tmp3_addsub0000(7)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(6),
      DI => b_enemy_x_tmp3(7),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(7),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(7)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(7)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(5),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(6),
      O => b_enemy_x_tmp3_addsub0000(6)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(5),
      DI => b_enemy_x_tmp3(6),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(6),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(6)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(6)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(4),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(5),
      O => b_enemy_x_tmp3_addsub0000(5)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(4),
      DI => b_enemy_x_tmp3(5),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(5),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(5)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(5),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(5)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(3),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(4),
      O => b_enemy_x_tmp3_addsub0000(4)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(3),
      DI => b_enemy_x_tmp3(4),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(4),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(4)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(4)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(2),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(3),
      O => b_enemy_x_tmp3_addsub0000(3)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(2),
      DI => b_enemy_x_tmp3(3),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(3),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(3)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(3),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(3)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(1),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(2),
      O => b_enemy_x_tmp3_addsub0000(2)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(1),
      DI => b_enemy_x_tmp3(2),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(2)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(2),
      I1 => b_dx_e3(2),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(2)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(0),
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(1),
      O => b_enemy_x_tmp3_addsub0000(1)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp3_addsub0000_cy(0),
      DI => b_enemy_x_tmp3(1),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(1),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(1)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(1),
      I1 => b_dx_e3(1),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(1)
    );
  b_Madd_enemy_x_tmp3_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_enemy_x_tmp3_addsub0000_lut(0),
      O => b_enemy_x_tmp3_addsub0000(0)
    );
  b_Madd_enemy_x_tmp3_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_enemy_x_tmp3(0),
      S => b_Madd_enemy_x_tmp3_addsub0000_lut(0),
      O => b_Madd_enemy_x_tmp3_addsub0000_cy(0)
    );
  b_Madd_enemy_x_tmp3_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(0),
      I1 => b_dx_e3(0),
      O => b_Madd_enemy_x_tmp3_addsub0000_lut(0)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(8),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(9),
      O => b_enemy_x_tmp2_addsub0000(9)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(9)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(7),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(8),
      O => b_enemy_x_tmp2_addsub0000(8)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(7),
      DI => b_enemy_x_tmp2(8),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(8),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(8)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(8),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(8)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(6),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(7),
      O => b_enemy_x_tmp2_addsub0000(7)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(6),
      DI => b_enemy_x_tmp2(7),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(7),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(7)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(7)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(5),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(6),
      O => b_enemy_x_tmp2_addsub0000(6)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(5),
      DI => b_enemy_x_tmp2(6),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(6),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(6)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(6)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(4),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(5),
      O => b_enemy_x_tmp2_addsub0000(5)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(4),
      DI => b_enemy_x_tmp2(5),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(5),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(5)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(5),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(5)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(3),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(4),
      O => b_enemy_x_tmp2_addsub0000(4)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(3),
      DI => b_enemy_x_tmp2(4),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(4),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(4)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(4)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(2),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(3),
      O => b_enemy_x_tmp2_addsub0000(3)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(2),
      DI => b_enemy_x_tmp2(3),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(3),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(3)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(3),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(3)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(1),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(2),
      O => b_enemy_x_tmp2_addsub0000(2)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(1),
      DI => b_enemy_x_tmp2(2),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(2)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(2),
      I1 => b_dx_e2(2),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(2)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(0),
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(1),
      O => b_enemy_x_tmp2_addsub0000(1)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_enemy_x_tmp2_addsub0000_cy(0),
      DI => b_enemy_x_tmp2(1),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(1),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(1)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(1),
      I1 => b_dx_e2(1),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(1)
    );
  b_Madd_enemy_x_tmp2_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_enemy_x_tmp2_addsub0000_lut(0),
      O => b_enemy_x_tmp2_addsub0000(0)
    );
  b_Madd_enemy_x_tmp2_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_enemy_x_tmp2(0),
      S => b_Madd_enemy_x_tmp2_addsub0000_lut(0),
      O => b_Madd_enemy_x_tmp2_addsub0000_cy(0)
    );
  b_Madd_enemy_x_tmp2_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(0),
      I1 => b_dx_e2(0),
      O => b_Madd_enemy_x_tmp2_addsub0000_lut(0)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(8),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(9),
      O => b_enemy_y_tmp_addsub0000(9)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(9)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(7),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(8),
      O => b_enemy_y_tmp_addsub0000(8)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(7),
      DI => b_enemy_y_tmp(8),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(8),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(8)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(8),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(8)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(6),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(7),
      O => b_enemy_y_tmp_addsub0000(7)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(6),
      DI => b_enemy_y_tmp(7),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(7),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(7)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(7)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(5),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(6),
      O => b_enemy_y_tmp_addsub0000(6)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(5),
      DI => b_enemy_y_tmp(6),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(6),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(6)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(6)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(4),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(5),
      O => b_enemy_y_tmp_addsub0000(5)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(4),
      DI => b_enemy_y_tmp(5),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(5),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(5)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(5),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(5)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(3),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(4),
      O => b_enemy_y_tmp_addsub0000(4)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(3),
      DI => b_enemy_y_tmp(4),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(4),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(4)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(4)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(2),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(3),
      O => b_enemy_y_tmp_addsub0000(3)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(2),
      DI => b_enemy_y_tmp(3),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(3),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(3)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(3),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(3)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(1),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(2),
      O => b_enemy_y_tmp_addsub0000(2)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(1),
      DI => b_enemy_y_tmp(2),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(2),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(2)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(2),
      I1 => b_dy_e(2),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(2)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_1_Q : XORCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(0),
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(1),
      O => b_enemy_y_tmp_addsub0000(1)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => b_Madd_enemy_y_tmp_addsub0000_cy(0),
      DI => b_enemy_y_tmp(1),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(1),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(1)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(1),
      I1 => b_dy_e(1),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(1)
    );
  b_Madd_enemy_y_tmp_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => b_Madd_enemy_y_tmp_addsub0000_lut(0),
      O => b_enemy_y_tmp_addsub0000(0)
    );
  b_Madd_enemy_y_tmp_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => b_enemy_y_tmp(0),
      S => b_Madd_enemy_y_tmp_addsub0000_lut(0),
      O => b_Madd_enemy_y_tmp_addsub0000_cy(0)
    );
  b_Madd_enemy_y_tmp_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(0),
      I1 => b_dy_e(0),
      O => b_Madd_enemy_y_tmp_addsub0000_lut(0)
    );
  b_Maccum_plane_x_tmp_xor_9_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(8),
      LI => b_Maccum_plane_x_tmp_lut(9),
      O => b_Result(9)
    );
  b_Maccum_plane_x_tmp_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(9),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(9)
    );
  b_Maccum_plane_x_tmp_xor_8_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(7),
      LI => b_Maccum_plane_x_tmp_lut(8),
      O => b_Result(8)
    );
  b_Maccum_plane_x_tmp_cy_8_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(7),
      DI => b_plane_x_tmp(8),
      S => b_Maccum_plane_x_tmp_lut(8),
      O => b_Maccum_plane_x_tmp_cy(8)
    );
  b_Maccum_plane_x_tmp_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(8)
    );
  b_Maccum_plane_x_tmp_xor_7_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(6),
      LI => b_Maccum_plane_x_tmp_lut(7),
      O => b_Result(7)
    );
  b_Maccum_plane_x_tmp_cy_7_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(6),
      DI => b_plane_x_tmp(7),
      S => b_Maccum_plane_x_tmp_lut(7),
      O => b_Maccum_plane_x_tmp_cy(7)
    );
  b_Maccum_plane_x_tmp_xor_6_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(5),
      LI => b_Maccum_plane_x_tmp_lut(6),
      O => b_Result(6)
    );
  b_Maccum_plane_x_tmp_cy_6_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(5),
      DI => b_plane_x_tmp(6),
      S => b_Maccum_plane_x_tmp_lut(6),
      O => b_Maccum_plane_x_tmp_cy(6)
    );
  b_Maccum_plane_x_tmp_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(6),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(6)
    );
  b_Maccum_plane_x_tmp_xor_5_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(4),
      LI => b_Maccum_plane_x_tmp_lut(5),
      O => b_Result(5)
    );
  b_Maccum_plane_x_tmp_cy_5_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(4),
      DI => b_plane_x_tmp(5),
      S => b_Maccum_plane_x_tmp_lut(5),
      O => b_Maccum_plane_x_tmp_cy(5)
    );
  b_Maccum_plane_x_tmp_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(5),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(5)
    );
  b_Maccum_plane_x_tmp_xor_4_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(3),
      LI => b_Maccum_plane_x_tmp_lut(4),
      O => b_Result(4)
    );
  b_Maccum_plane_x_tmp_cy_4_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(3),
      DI => b_plane_x_tmp(4),
      S => b_Maccum_plane_x_tmp_lut(4),
      O => b_Maccum_plane_x_tmp_cy(4)
    );
  b_Maccum_plane_x_tmp_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(4)
    );
  b_Maccum_plane_x_tmp_xor_3_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(2),
      LI => b_Maccum_plane_x_tmp_lut(3),
      O => b_Result(3)
    );
  b_Maccum_plane_x_tmp_cy_3_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(2),
      DI => b_plane_x_tmp(3),
      S => b_Maccum_plane_x_tmp_lut(3),
      O => b_Maccum_plane_x_tmp_cy(3)
    );
  b_Maccum_plane_x_tmp_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(3),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(3)
    );
  b_Maccum_plane_x_tmp_xor_2_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(1),
      LI => b_Maccum_plane_x_tmp_lut(2),
      O => b_Result(2)
    );
  b_Maccum_plane_x_tmp_cy_2_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(1),
      DI => b_plane_x_tmp(2),
      S => b_Maccum_plane_x_tmp_lut(2),
      O => b_Maccum_plane_x_tmp_cy(2)
    );
  b_Maccum_plane_x_tmp_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(2),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(2)
    );
  b_Maccum_plane_x_tmp_xor_1_Q : XORCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(0),
      LI => b_Maccum_plane_x_tmp_lut(1),
      O => b_Result(1)
    );
  b_Maccum_plane_x_tmp_cy_1_Q : MUXCY
    port map (
      CI => b_Maccum_plane_x_tmp_cy(0),
      DI => b_plane_x_tmp(1),
      S => b_Maccum_plane_x_tmp_lut(1),
      O => b_Maccum_plane_x_tmp_cy(1)
    );
  b_Maccum_plane_x_tmp_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(1),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(1)
    );
  b_Maccum_plane_x_tmp_xor_0_Q : XORCY
    port map (
      CI => b_plane_x_tmp_not0001_inv,
      LI => b_Maccum_plane_x_tmp_lut(0),
      O => b_Result(0)
    );
  b_Maccum_plane_x_tmp_cy_0_Q : MUXCY
    port map (
      CI => b_plane_x_tmp_not0001_inv,
      DI => b_plane_x_tmp(0),
      S => b_Maccum_plane_x_tmp_lut(0),
      O => b_Maccum_plane_x_tmp_cy(0)
    );
  b_Maccum_plane_x_tmp_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(0),
      I1 => b_plane_x_tmp_not0001_inv,
      O => b_Maccum_plane_x_tmp_lut(0)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_9_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(8),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(9),
      O => b_bullet_y_tmp_addsub0000(9)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_8_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(7),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(8),
      O => b_bullet_y_tmp_addsub0000(8)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(7),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(8),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(8)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_7_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(6),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(7),
      O => b_bullet_y_tmp_addsub0000(7)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(6),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(7),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(7)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_6_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(5),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(6),
      O => b_bullet_y_tmp_addsub0000(6)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(5),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(6),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(6)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_5_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(4),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(5),
      O => b_bullet_y_tmp_addsub0000(5)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(4),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(5),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(5)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_4_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(3),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(4),
      O => b_bullet_y_tmp_addsub0000(4)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(3),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(4),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(4)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_3_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(2),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(3),
      O => b_bullet_y_tmp_addsub0000(3)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(2),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(3),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(3)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_2_Q : XORCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(1),
      LI => b_Msub_bullet_y_tmp_addsub0000_lut(2),
      O => b_bullet_y_tmp_addsub0000(2)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => b_Msub_bullet_y_tmp_addsub0000_cy(1),
      DI => N1,
      S => b_Msub_bullet_y_tmp_addsub0000_lut(2),
      O => b_Msub_bullet_y_tmp_addsub0000_cy(2)
    );
  b_Msub_bullet_y_tmp_addsub0000_xor_1_Q : XORCY
    port map (
      CI => N1,
      LI => b_Msub_bullet_y_tmp_addsub0000_cy_1_rt_2523,
      O => b_bullet_y_tmp_addsub0000(1)
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => b_Msub_bullet_y_tmp_addsub0000_cy_1_rt_2523,
      O => b_Msub_bullet_y_tmp_addsub0000_cy(1)
    );
  b_plane_x_tmp_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(9),
      Q => b_plane_x_tmp(9)
    );
  b_plane_x_tmp_8 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      D => b_Result(8),
      PRE => b_dx_e2_Acst_inv,
      Q => b_plane_x_tmp(8)
    );
  b_plane_x_tmp_6 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      D => b_Result(6),
      PRE => b_dx_e2_Acst_inv,
      Q => b_plane_x_tmp(6)
    );
  b_plane_x_tmp_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(5),
      Q => b_plane_x_tmp(5)
    );
  b_plane_x_tmp_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(7),
      Q => b_plane_x_tmp(7)
    );
  b_plane_x_tmp_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(3),
      Q => b_plane_x_tmp(3)
    );
  b_plane_x_tmp_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(2),
      Q => b_plane_x_tmp(2)
    );
  b_plane_x_tmp_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(4),
      Q => b_plane_x_tmp(4)
    );
  b_plane_x_tmp_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(0),
      Q => b_plane_x_tmp(0)
    );
  b_plane_x_tmp_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_plane_x_tmp_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_Result(1),
      Q => b_plane_x_tmp(1)
    );
  b_dx_e_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dx_e_cmp_ge0000,
      Q => b_dx_e(2)
    );
  b_dx_e_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e_and0000,
      D => b_dx_e_cmp_ge0000_INV,
      PRE => b_dx_e2_Acst_inv,
      Q => b_dx_e(0)
    );
  b_dx_e_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => N1,
      Q => b_dx_e(1)
    );
  b_dy_e2_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e2_and0000,
      D => b_dy_e2_cmp_ge0000_INV,
      PRE => b_dx_e2_Acst_inv,
      Q => b_dy_e2(0)
    );
  b_dy_e2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e2_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dy_e2_cmp_ge0000,
      Q => b_dy_e2(1)
    );
  b_dy_e3_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e3_and0000,
      D => N0,
      PRE => b_dx_e2_Acst_inv,
      Q => b_dy_e3_0_Q
    );
  b_dy_e3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e3_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => N1,
      Q => b_dy_e3_2_Q
    );
  b_dy_e3_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e3_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dy_e3_cmp_ge0000,
      Q => b_dy_e3_3_Q
    );
  b_dy_e_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dy_e_cmp_ge0000,
      Q => b_dy_e(2)
    );
  b_dy_e_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e_and0000,
      D => b_dy_e_cmp_ge0000,
      PRE => b_dx_e2_Acst_inv,
      Q => b_dy_e(0)
    );
  b_dy_e_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dy_e_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => N1,
      Q => b_dy_e(1)
    );
  b_score_tmp_3 : LDCPE
    generic map(
      INIT => '0'
    )
    port map (
      CLR => b_score_tmp_3_or0000,
      D => b_mux0000_add0002(3),
      G => b_score_tmp_and0000,
      GE => b_score_tmp_cmp_le0000,
      PRE => b_score_tmp_3_and0000,
      Q => b_score_tmp(3)
    );
  b_score_tmp_2 : LDCPE
    generic map(
      INIT => '0'
    )
    port map (
      CLR => b_score_tmp_2_or0000,
      D => b_mux0000_add0002(2),
      G => b_score_tmp_and0000,
      GE => b_score_tmp_cmp_le0000,
      PRE => b_score_tmp_2_and0000,
      Q => b_score_tmp(2)
    );
  b_score_tmp_1 : LDCPE
    generic map(
      INIT => '0'
    )
    port map (
      CLR => b_score_tmp_1_or0000,
      D => b_mux0000_add0002(1),
      G => b_score_tmp_and0000,
      GE => b_score_tmp_cmp_le0000,
      PRE => b_score_tmp_1_and0000,
      Q => b_score_tmp(1)
    );
  b_score_tmp_0 : LDCPE
    generic map(
      INIT => '0'
    )
    port map (
      CLR => b_score_tmp_0_or0000,
      D => b_score_tmp_mux0003(0),
      G => b_score_tmp_and0000,
      GE => b_score_tmp_cmp_le0000,
      PRE => b_score_tmp_0_and0000,
      Q => b_score_tmp(0)
    );
  b_dx_e2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e2_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dx_e2_cmp_ge0000,
      Q => b_dx_e2(2)
    );
  b_dx_e2_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e2_and0000,
      D => b_dx_e2_cmp_ge0000,
      PRE => b_dx_e2_Acst_inv,
      Q => b_dx_e2(0)
    );
  b_dx_e2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e2_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dx_e2_cmp_ge0000_INV,
      Q => b_dx_e2(1)
    );
  b_dx_e3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e3_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dx_e3_cmp_ge0000,
      Q => b_dx_e3(2)
    );
  b_dx_e3_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e3_and0000,
      D => N0,
      PRE => b_dx_e2_Acst_inv,
      Q => b_dx_e3(0)
    );
  b_dx_e3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_dx_e3_and0000,
      CLR => b_dx_e2_Acst_inv,
      D => b_dx_e3_cmp_ge0000_INV,
      Q => b_dx_e3(1)
    );
  b_life_plane_tmp_0 : LDP
    generic map(
      INIT => '0'
    )
    port map (
      D => b_life_plane_tmp_0_sub0000,
      G => b_life_plane_tmp_0_or0000,
      PRE => b_dx_e2_Acst_inv,
      Q => b_life_plane_tmp(0)
    );
  b_bullet_x_tmp_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(9),
      Q => b_bullet_x_tmp(9)
    );
  b_bullet_x_tmp_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(8),
      Q => b_bullet_x_tmp(8)
    );
  b_bullet_x_tmp_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(7),
      Q => b_bullet_x_tmp(7)
    );
  b_bullet_x_tmp_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(6),
      Q => b_bullet_x_tmp(6)
    );
  b_bullet_x_tmp_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(5),
      Q => b_bullet_x_tmp(5)
    );
  b_bullet_x_tmp_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(4),
      Q => b_bullet_x_tmp(4)
    );
  b_bullet_x_tmp_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_bullet_x_tmp_add0000(3),
      Q => b_bullet_x_tmp(3)
    );
  b_bullet_x_tmp_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_plane_x_tmp(2),
      Q => b_bullet_x_tmp(2)
    );
  b_bullet_x_tmp_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_plane_x_tmp(1),
      Q => b_bullet_x_tmp(1)
    );
  b_bullet_x_tmp_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_x_tmp_and0000,
      D => b_plane_x_tmp(0),
      Q => b_bullet_x_tmp(0)
    );
  b_bullet_y_tmp_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(9),
      Q => b_bullet_y_tmp(9)
    );
  b_bullet_y_tmp_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(8),
      Q => b_bullet_y_tmp(8)
    );
  b_bullet_y_tmp_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(7),
      Q => b_bullet_y_tmp(7)
    );
  b_bullet_y_tmp_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(6),
      Q => b_bullet_y_tmp(6)
    );
  b_bullet_y_tmp_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(5),
      Q => b_bullet_y_tmp(5)
    );
  b_bullet_y_tmp_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(4),
      Q => b_bullet_y_tmp(4)
    );
  b_bullet_y_tmp_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(3),
      Q => b_bullet_y_tmp(3)
    );
  b_bullet_y_tmp_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(2),
      Q => b_bullet_y_tmp(2)
    );
  b_bullet_y_tmp_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_bullet_y_tmp_and0000,
      D => b_bullet_y_tmp_mux0001(1),
      Q => b_bullet_y_tmp(1)
    );
  b_life_bullet_tmp_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_life_bullet_tmp_0_and0001,
      CLR => b_life_bullet_tmp_0_and0000,
      D => N1,
      PRE => b_life_bullet_tmp_0_or0000,
      Q => b_life_bullet_tmp(0)
    );
  b_life_enemy_tmp_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_life_enemy_tmp_0_and0001,
      CLR => b_life_enemy_tmp_0_and0000,
      D => N1,
      PRE => b_life_enemy_tmp_0_or0000,
      Q => b_life_enemy_tmp(0)
    );
  b_life_enemy_tmp3_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_life_enemy_tmp3_0_and0001,
      CLR => b_life_enemy_tmp3_0_and0000,
      D => N1,
      PRE => b_life_enemy_tmp3_0_or0000,
      Q => b_life_enemy_tmp3(0)
    );
  b_life_enemy_tmp2_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => f_q10hz_4146,
      CE => b_life_enemy_tmp2_0_and0001,
      CLR => b_life_enemy_tmp2_0_and0000,
      D => N1,
      PRE => b_life_enemy_tmp2_0_or0000,
      Q => b_life_enemy_tmp2(0)
    );
  a_b1_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_b1_Mrom_d_rom000022,
      I2 => a_b1_Mrom_d_rom000023,
      O => a_b1_Mmux_varindex0000_8_1626
    );
  a_b1_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => a_b1_Mmux_varindex0000_9_1629,
      I1 => a_b1_Mmux_varindex0000_8_1626,
      S => a_x_enemy(1),
      O => a_b1_Mmux_varindex0000_7_f5_1625
    );
  a_b1_Mmux_varindex0000_10 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_b1_Mrom_d_rom000017_1636,
      I2 => a_b1_Mrom_d_rom000015_1635,
      O => a_b1_Mmux_varindex0000_10_1615
    );
  a_b1_Mmux_varindex0000_8_f5 : MUXF5
    port map (
      I0 => a_b1_Mmux_varindex0000_10_1615,
      I1 => a_b1_Mmux_varindex0000_91_1630,
      S => a_x_enemy(1),
      O => a_b1_Mmux_varindex0000_8_f5_1627
    );
  a_b1_Mmux_varindex0000_6_f6 : MUXF6
    port map (
      I0 => a_b1_Mmux_varindex0000_8_f5_1627,
      I1 => a_b1_Mmux_varindex0000_7_f5_1625,
      S => a_x_enemy(2),
      O => a_b1_Mmux_varindex0000_6_f6_1624
    );
  a_b1_Mmux_varindex0000_101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_b1_Mrom_d_rom000015_1635,
      I2 => a_b1_Mrom_d_rom000014_1634,
      O => a_b1_Mmux_varindex0000_101_1616
    );
  a_b1_Mmux_varindex0000_9_f5 : MUXF5
    port map (
      I0 => a_b1_Mmux_varindex0000_111_1620,
      I1 => a_b1_Mmux_varindex0000_101_1616,
      S => a_x_enemy(1),
      O => a_b1_Mmux_varindex0000_9_f5_1631
    );
  a_b1_Mmux_varindex0000_122 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_b1_Mrom_d_rom000022,
      I2 => a_b1_Mrom_d_rom000023,
      O => a_b1_Mmux_varindex0000_122_1623
    );
  a_b1_Mmux_varindex0000_10_f5_0 : MUXF5
    port map (
      I0 => a_b1_Mmux_varindex0000_122_1623,
      I1 => a_b1_Mmux_varindex0000_112_1621,
      S => a_x_enemy(1),
      O => a_b1_Mmux_varindex0000_10_f51_1618
    );
  a_b1_Mmux_varindex0000_8_f6 : MUXF6
    port map (
      I0 => a_b1_Mmux_varindex0000_10_f51_1618,
      I1 => a_b1_Mmux_varindex0000_9_f5_1631,
      S => a_x_enemy(2),
      O => a_b1_Mmux_varindex0000_8_f6_1628
    );
  a_b2_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_b2_Mrom_d_rom000022,
      I2 => a_b2_Mrom_d_rom000023,
      O => a_b2_Mmux_varindex0000_8_1652
    );
  a_b2_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => a_b2_Mmux_varindex0000_9_1655,
      I1 => a_b2_Mmux_varindex0000_8_1652,
      S => a_x_enemy2(1),
      O => a_b2_Mmux_varindex0000_7_f5_1651
    );
  a_b2_Mmux_varindex0000_10 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_b2_Mrom_d_rom000017_1662,
      I2 => a_b2_Mrom_d_rom000015_1661,
      O => a_b2_Mmux_varindex0000_10_1641
    );
  a_b2_Mmux_varindex0000_8_f5 : MUXF5
    port map (
      I0 => a_b2_Mmux_varindex0000_10_1641,
      I1 => a_b2_Mmux_varindex0000_91_1656,
      S => a_x_enemy2(1),
      O => a_b2_Mmux_varindex0000_8_f5_1653
    );
  a_b2_Mmux_varindex0000_6_f6 : MUXF6
    port map (
      I0 => a_b2_Mmux_varindex0000_8_f5_1653,
      I1 => a_b2_Mmux_varindex0000_7_f5_1651,
      S => a_x_enemy2(2),
      O => a_b2_Mmux_varindex0000_6_f6_1650
    );
  a_b2_Mmux_varindex0000_101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_b2_Mrom_d_rom000015_1661,
      I2 => a_b2_Mrom_d_rom000014_1660,
      O => a_b2_Mmux_varindex0000_101_1642
    );
  a_b2_Mmux_varindex0000_9_f5 : MUXF5
    port map (
      I0 => a_b2_Mmux_varindex0000_111_1646,
      I1 => a_b2_Mmux_varindex0000_101_1642,
      S => a_x_enemy2(1),
      O => a_b2_Mmux_varindex0000_9_f5_1657
    );
  a_b2_Mmux_varindex0000_122 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_b2_Mrom_d_rom000022,
      I2 => a_b2_Mrom_d_rom000023,
      O => a_b2_Mmux_varindex0000_122_1649
    );
  a_b2_Mmux_varindex0000_10_f5_0 : MUXF5
    port map (
      I0 => a_b2_Mmux_varindex0000_122_1649,
      I1 => a_b2_Mmux_varindex0000_112_1647,
      S => a_x_enemy2(1),
      O => a_b2_Mmux_varindex0000_10_f51_1644
    );
  a_b2_Mmux_varindex0000_8_f6 : MUXF6
    port map (
      I0 => a_b2_Mmux_varindex0000_10_f51_1644,
      I1 => a_b2_Mmux_varindex0000_9_f5_1657,
      S => a_x_enemy2(2),
      O => a_b2_Mmux_varindex0000_8_f6_1654
    );
  a_b3_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_b3_Mrom_d_rom000022,
      I2 => a_b3_Mrom_d_rom000023,
      O => a_b3_Mmux_varindex0000_8_1678
    );
  a_b3_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => a_b3_Mmux_varindex0000_9_1681,
      I1 => a_b3_Mmux_varindex0000_8_1678,
      S => a_x_enemy3(1),
      O => a_b3_Mmux_varindex0000_7_f5_1677
    );
  a_b3_Mmux_varindex0000_10 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_b3_Mrom_d_rom000017_1688,
      I2 => a_b3_Mrom_d_rom000015_1687,
      O => a_b3_Mmux_varindex0000_10_1667
    );
  a_b3_Mmux_varindex0000_8_f5 : MUXF5
    port map (
      I0 => a_b3_Mmux_varindex0000_10_1667,
      I1 => a_b3_Mmux_varindex0000_91_1682,
      S => a_x_enemy3(1),
      O => a_b3_Mmux_varindex0000_8_f5_1679
    );
  a_b3_Mmux_varindex0000_6_f6 : MUXF6
    port map (
      I0 => a_b3_Mmux_varindex0000_8_f5_1679,
      I1 => a_b3_Mmux_varindex0000_7_f5_1677,
      S => a_x_enemy3(2),
      O => a_b3_Mmux_varindex0000_6_f6_1676
    );
  a_b3_Mmux_varindex0000_101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_b3_Mrom_d_rom000015_1687,
      I2 => a_b3_Mrom_d_rom000014_1686,
      O => a_b3_Mmux_varindex0000_101_1668
    );
  a_b3_Mmux_varindex0000_9_f5 : MUXF5
    port map (
      I0 => a_b3_Mmux_varindex0000_111_1672,
      I1 => a_b3_Mmux_varindex0000_101_1668,
      S => a_x_enemy3(1),
      O => a_b3_Mmux_varindex0000_9_f5_1683
    );
  a_b3_Mmux_varindex0000_122 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_b3_Mrom_d_rom000022,
      I2 => a_b3_Mrom_d_rom000023,
      O => a_b3_Mmux_varindex0000_122_1675
    );
  a_b3_Mmux_varindex0000_10_f5_0 : MUXF5
    port map (
      I0 => a_b3_Mmux_varindex0000_122_1675,
      I1 => a_b3_Mmux_varindex0000_112_1673,
      S => a_x_enemy3(1),
      O => a_b3_Mmux_varindex0000_10_f51_1670
    );
  a_b3_Mmux_varindex0000_8_f6 : MUXF6
    port map (
      I0 => a_b3_Mmux_varindex0000_10_f51_1670,
      I1 => a_b3_Mmux_varindex0000_9_f5_1683,
      S => a_x_enemy3(2),
      O => a_b3_Mmux_varindex0000_8_f6_1680
    );
  a_a_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000022,
      I2 => a_a_Mrom_d_rom000023,
      O => a_a_Mmux_varindex0000_8_1587
    );
  a_a_Mmux_varindex0000_9 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000010,
      I2 => a_a_Mrom_d_rom000011_1594,
      O => a_a_Mmux_varindex0000_9_1590
    );
  a_a_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => a_a_Mmux_varindex0000_9_1590,
      I1 => a_a_Mmux_varindex0000_8_1587,
      S => a_x_plane(1),
      O => a_a_Mmux_varindex0000_7_f5_1586
    );
  a_a_Mmux_varindex0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000015,
      I2 => a_a_Mrom_d_rom000014,
      O => a_a_Mmux_varindex0000_10_1576
    );
  a_a_Mmux_varindex0000_8_f5 : MUXF5
    port map (
      I0 => a_a_Mmux_varindex0000_10_1576,
      I1 => a_a_Mmux_varindex0000_91_1591,
      S => a_x_plane(1),
      O => a_a_Mmux_varindex0000_8_f5_1588
    );
  a_a_Mmux_varindex0000_6_f6 : MUXF6
    port map (
      I0 => a_a_Mmux_varindex0000_8_f5_1588,
      I1 => a_a_Mmux_varindex0000_7_f5_1586,
      S => a_x_plane(2),
      O => a_a_Mmux_varindex0000_6_f6_1585
    );
  a_a_Mmux_varindex0000_12 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000024,
      I2 => N207,
      O => a_a_Mmux_varindex0000_12_1582
    );
  a_a_Mmux_varindex0000_101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000015,
      I2 => a_a_Mrom_d_rom000014,
      O => a_a_Mmux_varindex0000_101_1577
    );
  a_a_Mmux_varindex0000_9_f5 : MUXF5
    port map (
      I0 => a_a_Mmux_varindex0000_111_1580,
      I1 => a_a_Mmux_varindex0000_101_1577,
      S => a_x_plane(1),
      O => a_a_Mmux_varindex0000_9_f5_1592
    );
  a_a_Mmux_varindex0000_112 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000010,
      I2 => a_a_Mrom_d_rom000011_1594,
      O => a_a_Mmux_varindex0000_112_1581
    );
  a_a_Mmux_varindex0000_122 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000023,
      I2 => a_a_Mrom_d_rom000022,
      O => a_a_Mmux_varindex0000_122_1584
    );
  a_a_Mmux_varindex0000_10_f5_0 : MUXF5
    port map (
      I0 => a_a_Mmux_varindex0000_122_1584,
      I1 => a_a_Mmux_varindex0000_112_1581,
      S => a_x_plane(1),
      O => a_a_Mmux_varindex0000_10_f51
    );
  a_a_Mmux_varindex0000_8_f6 : MUXF6
    port map (
      I0 => a_a_Mmux_varindex0000_10_f51,
      I1 => a_a_Mmux_varindex0000_9_f5_1592,
      S => a_x_plane(2),
      O => a_a_Mmux_varindex0000_8_f6_1589
    );
  a_c_Mmux_varindex0000_3 : LUT4
    generic map(
      INIT => X"FEDC"
    )
    port map (
      I0 => a_x_bullet(1),
      I1 => a_x_bullet(2),
      I2 => a_c_Mmux_varindex0000_7,
      I3 => a_c_Mmux_varindex0000_8_1718,
      O => a_c_Mmux_varindex0000_3_1715
    );
  a_c_Mmux_varindex0000_4 : LUT4
    generic map(
      INIT => X"EF4F"
    )
    port map (
      I0 => a_x_bullet(1),
      I1 => a_c_Mmux_varindex0000_9_1719,
      I2 => a_x_bullet(2),
      I3 => a_c_Mmux_varindex0000_10_1714,
      O => a_c_Mmux_varindex0000_4_1716
    );
  a_c_Mmux_varindex0000_2_f5 : MUXF5
    port map (
      I0 => a_c_Mmux_varindex0000_4_1716,
      I1 => a_c_Mmux_varindex0000_3_1715,
      S => a_x_bullet(3),
      O => a_c_varindex0000
    );
  a_d_Mmux_d_3_f5 : MUXF5
    port map (
      I0 => a_d_Mmux_d_5_1727,
      I1 => a_d_Mmux_d_4_1725,
      S => e_hcnt(2),
      O => a_d_Mmux_d_3_f5_1724
    );
  a_d_Mmux_d_4_f5 : MUXF5
    port map (
      I0 => a_d_Mmux_d_6_1729,
      I1 => a_d_Mmux_d_51_1728,
      S => e_hcnt(2),
      O => a_d_Mmux_d_4_f5_1726
    );
  a_d_Mmux_d_2_f6 : MUXF6
    port map (
      I0 => a_d_Mmux_d_4_f5_1726,
      I1 => a_d_Mmux_d_3_f5_1724,
      S => a_d_Madd_data_not0000(2),
      O => a_dd
    );
  a_e_Mmux_d_3_f5 : MUXF5
    port map (
      I0 => a_e_Mmux_d_5_1743,
      I1 => a_e_Mmux_d_4_1741,
      S => e_hcnt(2),
      O => a_e_Mmux_d_3_f5_1740
    );
  a_e_Mmux_d_4_f5 : MUXF5
    port map (
      I0 => a_e_Mmux_d_6_1745,
      I1 => a_e_Mmux_d_51_1744,
      S => e_hcnt(2),
      O => a_e_Mmux_d_4_f5_1742
    );
  a_e_Mmux_d_2_f6 : MUXF6
    port map (
      I0 => a_e_Mmux_d_4_f5_1742,
      I1 => a_e_Mmux_d_3_f5_1740,
      S => a_d_Madd_data_not0000(2),
      O => a_dd_g
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(30),
      DI => e_vcnt(31),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(31),
      O => a_enemy2_rgb_cmp_le0001
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(29),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(30),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(30)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(28),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(29),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(29)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(27),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(28),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(28)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(26),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(27),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(27)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(25),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(26),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(26)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(24),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(25),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(25)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(23),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(24),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(24)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(22),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(23),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(23)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(21),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(22),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(22)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(20),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(21),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(21)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(19),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(20),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(20)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(18),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(19),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(19)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(17),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(18),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(18)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(16),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(17),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(17)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(15),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(16),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(16)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(14),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(15),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(15)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(13),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(14),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(14)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(12),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(13),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(13)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(11),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(12),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(12)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(10),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(11),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(11)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(9),
      DI => a_enemy2_rgb_addsub0001(10),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(10),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(10)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0001(10),
      I1 => e_vcnt(10),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(10)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(8),
      DI => a_enemy2_rgb_addsub0001(9),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(9),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(9)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0001(9),
      I1 => e_vcnt(9),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(9)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(7),
      DI => a_enemy2_rgb_addsub0001(8),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(8),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(8)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0001(8),
      I1 => e_vcnt(8),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(8)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(6),
      DI => a_enemy2_rgb_addsub0001(7),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(7),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(7)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0001(7),
      I1 => e_vcnt(7),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(7)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(5),
      DI => a_enemy2_rgb_addsub0001(6),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(6),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(6)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0001(6),
      I1 => e_vcnt(6),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(6)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(4),
      DI => a_enemy2_rgb_addsub0001(5),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(5),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(5)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0001(5),
      I1 => e_vcnt(5),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(5)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(3),
      DI => b_enemy_y_tmp2(4),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(4),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(4)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(4)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(2),
      DI => b_enemy_y_tmp2(3),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(3),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(3)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(3),
      I1 => e_vcnt(3),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(3)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(1),
      DI => b_enemy_y_tmp2(2),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(2),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(2)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(2),
      I1 => e_vcnt(2),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(2)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0001_cy(0),
      DI => b_enemy_y_tmp2(1),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(1),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(1)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(1),
      I1 => e_vcnt(1),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(1)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp2(0),
      S => a_Mcompar_enemy2_rgb_cmp_le0001_lut(0),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_cy(0)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(0),
      I1 => e_vcnt(0),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(0)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(30),
      DI => e_hcnt(31),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(31),
      O => a_enemy2_rgb_cmp_le0000
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(29),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(30),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(30)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(28),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(29),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(29)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(27),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(28),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(28)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(26),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(27),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(27)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(25),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(26),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(26)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(24),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(25),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(25)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(23),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(24),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(24)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(22),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(23),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(23)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(21),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(22),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(22)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(20),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(21),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(21)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(19),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(20),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(20)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(18),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(19),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(19)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(17),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(18),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(18)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(16),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(17),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(17)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(15),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(16),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(16)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(14),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(15),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(15)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(13),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(14),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(14)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(12),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(13),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(13)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(11),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(12),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(12)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(10),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(11),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(11)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(9),
      DI => a_enemy2_rgb_addsub0000(10),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(10),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(10)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0000(10),
      I1 => e_hcnt(10),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(10)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(8),
      DI => a_enemy2_rgb_addsub0000(9),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(9),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(9)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0000(9),
      I1 => e_hcnt(9),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(9)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(7),
      DI => a_enemy2_rgb_addsub0000(8),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(8),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(8)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0000(8),
      I1 => e_hcnt(8),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(8)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(6),
      DI => a_enemy2_rgb_addsub0000(7),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(7),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(7)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0000(7),
      I1 => e_hcnt(7),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(7)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(5),
      DI => a_enemy2_rgb_addsub0000(6),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(6),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(6)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0000(6),
      I1 => e_hcnt(6),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(6)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(4),
      DI => a_enemy2_rgb_addsub0000(5),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(5),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(5)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy2_rgb_addsub0000(5),
      I1 => e_hcnt(5),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(5)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp2(4),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(4),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(4)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(4)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp2(3),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(3),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(3)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(3),
      I1 => e_hcnt(3),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(3)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp2(2),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(2),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(2)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(2),
      I1 => e_hcnt(2),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(2)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp2(1),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(1),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(1)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(1),
      I1 => e_hcnt(1),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(1)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp2(0),
      S => a_Mcompar_enemy2_rgb_cmp_le0000_lut(0),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_cy(0)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(0),
      I1 => e_hcnt(0),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(0)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(30),
      DI => e_vcnt(31),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(31),
      O => a_bullet_rgb_cmp_le0001
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(29),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(30),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(30)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(28),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(29),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(29)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(27),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(28),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(28)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(26),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(27),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(27)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(25),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(26),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(26)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(24),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(25),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(25)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(23),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(24),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(24)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(22),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(23),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(23)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(21),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(22),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(22)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(20),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(21),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(21)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(19),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(20),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(20)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(18),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(19),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(19)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(17),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(18),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(18)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(16),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(17),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(17)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(15),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(16),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(16)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(14),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(15),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(15)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(13),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(14),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(14)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(12),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(13),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(13)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(11),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(12),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(12)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(10),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(11),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(11)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(9),
      DI => a_bullet_rgb_addsub0001(10),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(10),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(10)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(10),
      I1 => e_vcnt(10),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(10)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(8),
      DI => a_bullet_rgb_addsub0001(9),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(9),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(9)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(9),
      I1 => e_vcnt(9),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(9)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(7),
      DI => a_bullet_rgb_addsub0001(8),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(8),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(8)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(8),
      I1 => e_vcnt(8),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(8)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(6),
      DI => a_bullet_rgb_addsub0001(7),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(7),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(7)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(7),
      I1 => e_vcnt(7),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(7)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(5),
      DI => a_bullet_rgb_addsub0001(6),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(6),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(6)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(6),
      I1 => e_vcnt(6),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(6)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(4),
      DI => a_bullet_rgb_addsub0001(5),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(5),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(5)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(5),
      I1 => e_vcnt(5),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(5)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(3),
      DI => a_bullet_rgb_addsub0001(4),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(4),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(4)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0001(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(4)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(2),
      DI => b_bullet_y_tmp(3),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(3),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(3)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(3),
      I1 => e_vcnt(3),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(3)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(1),
      DI => b_bullet_y_tmp(2),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(2),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(2)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(2),
      I1 => e_vcnt(2),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(2)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0001_cy(0),
      DI => b_bullet_y_tmp(1),
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(1),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(1)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => e_vcnt(1),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(1)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0001_lut(0),
      O => a_Mcompar_bullet_rgb_cmp_le0001_cy(0)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(30),
      DI => e_hcnt(31),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(31),
      O => a_bullet_rgb_cmp_le0000
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(29),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(30),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(30)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(28),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(29),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(29)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(27),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(28),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(28)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(26),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(27),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(27)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(25),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(26),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(26)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(24),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(25),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(25)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(23),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(24),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(24)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(22),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(23),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(23)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(21),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(22),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(22)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(20),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(21),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(21)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(19),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(20),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(20)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(18),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(19),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(19)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(17),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(18),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(18)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(16),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(17),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(17)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(15),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(16),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(16)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(14),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(15),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(15)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(13),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(14),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(14)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(12),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(13),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(13)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(11),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(12),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(12)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(10),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(11),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(11)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(9),
      DI => a_bullet_rgb_addsub0000(10),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(10),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(10)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(10),
      I1 => e_hcnt(10),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(10)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(8),
      DI => a_bullet_rgb_addsub0000(9),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(9),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(9)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(9),
      I1 => e_hcnt(9),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(9)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(7),
      DI => a_bullet_rgb_addsub0000(8),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(8),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(8)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(8),
      I1 => e_hcnt(8),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(8)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(6),
      DI => a_bullet_rgb_addsub0000(7),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(7),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(7)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(7),
      I1 => e_hcnt(7),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(7)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(5),
      DI => a_bullet_rgb_addsub0000(6),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(6),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(6)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(6),
      I1 => e_hcnt(6),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(6)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(4),
      DI => a_bullet_rgb_addsub0000(5),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(5),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(5)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(5),
      I1 => e_hcnt(5),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(5)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(3),
      DI => a_bullet_rgb_addsub0000(4),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(4),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(4)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_bullet_rgb_addsub0000(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(4)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(2),
      DI => b_bullet_x_tmp(3),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(3),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(3)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(3),
      I1 => e_hcnt(3),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(3)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(1),
      DI => b_bullet_x_tmp(2),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(2),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(2)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(2),
      I1 => e_hcnt(2),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(2)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_le0000_cy(0),
      DI => b_bullet_x_tmp(1),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(1),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(1)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(1),
      I1 => e_hcnt(1),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(1)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_bullet_x_tmp(0),
      S => a_Mcompar_bullet_rgb_cmp_le0000_lut(0),
      O => a_Mcompar_bullet_rgb_cmp_le0000_cy(0)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => e_hcnt(0),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(0)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(30),
      DI => e_vcnt(31),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(31),
      O => a_enemy_rgb_cmp_le0001
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(29),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(30),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(30)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(28),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(29),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(29)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(27),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(28),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(28)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(26),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(27),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(27)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(25),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(26),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(26)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(24),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(25),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(25)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(23),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(24),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(24)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(22),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(23),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(23)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(21),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(22),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(22)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(20),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(21),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(21)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(19),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(20),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(20)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(18),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(19),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(19)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(17),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(18),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(18)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(16),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(17),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(17)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(15),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(16),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(16)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(14),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(15),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(15)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(13),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(14),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(14)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(12),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(13),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(13)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(11),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(12),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(12)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(10),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(11),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(11)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(9),
      DI => a_enemy_rgb_addsub0001(10),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(10),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(10)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0001(10),
      I1 => e_vcnt(10),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(10)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(8),
      DI => a_enemy_rgb_addsub0001(9),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(9),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(9)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0001(9),
      I1 => e_vcnt(9),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(9)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(7),
      DI => a_enemy_rgb_addsub0001(8),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(8),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(8)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0001(8),
      I1 => e_vcnt(8),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(8)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(6),
      DI => a_enemy_rgb_addsub0001(7),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(7),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(7)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0001(7),
      I1 => e_vcnt(7),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(7)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(5),
      DI => a_enemy_rgb_addsub0001(6),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(6),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(6)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0001(6),
      I1 => e_vcnt(6),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(6)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(4),
      DI => a_enemy_rgb_addsub0001(5),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(5),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(5)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0001(5),
      I1 => e_vcnt(5),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(5)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(3),
      DI => b_enemy_y_tmp(4),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(4),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(4)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(4)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(2),
      DI => b_enemy_y_tmp(3),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(3),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(3)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(3),
      I1 => e_vcnt(3),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(3)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(1),
      DI => b_enemy_y_tmp(2),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(2),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(2)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(2),
      I1 => e_vcnt(2),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(2)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0001_cy(0),
      DI => b_enemy_y_tmp(1),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(1),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(1)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(1),
      I1 => e_vcnt(1),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(1)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp(0),
      S => a_Mcompar_enemy_rgb_cmp_le0001_lut(0),
      O => a_Mcompar_enemy_rgb_cmp_le0001_cy(0)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(0),
      I1 => e_vcnt(0),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(0)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(30),
      DI => e_hcnt(31),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(31),
      O => a_enemy_rgb_cmp_le0000
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(29),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(30),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(30)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(28),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(29),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(29)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(27),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(28),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(28)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(26),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(27),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(27)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(25),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(26),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(26)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(24),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(25),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(25)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(23),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(24),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(24)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(22),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(23),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(23)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(21),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(22),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(22)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(20),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(21),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(21)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(19),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(20),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(20)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(18),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(19),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(19)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(17),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(18),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(18)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(16),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(17),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(17)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(15),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(16),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(16)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(14),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(15),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(15)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(13),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(14),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(14)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(12),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(13),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(13)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(11),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(12),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(12)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(10),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(11),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(11)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(9),
      DI => a_enemy_rgb_addsub0000(10),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(10),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(10)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0000(10),
      I1 => e_hcnt(10),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(10)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(8),
      DI => a_enemy_rgb_addsub0000(9),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(9),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(9)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0000(9),
      I1 => e_hcnt(9),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(9)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(7),
      DI => a_enemy_rgb_addsub0000(8),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(8),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(8)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0000(8),
      I1 => e_hcnt(8),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(8)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(6),
      DI => a_enemy_rgb_addsub0000(7),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(7),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(7)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0000(7),
      I1 => e_hcnt(7),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(7)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(5),
      DI => a_enemy_rgb_addsub0000(6),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(6),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(6)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0000(6),
      I1 => e_hcnt(6),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(6)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(4),
      DI => a_enemy_rgb_addsub0000(5),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(5),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(5)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy_rgb_addsub0000(5),
      I1 => e_hcnt(5),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(5)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp(4),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(4),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(4)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(4)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp(3),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(3),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(3)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(3),
      I1 => e_hcnt(3),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(3)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp(2),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(2),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(2)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(2),
      I1 => e_hcnt(2),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(2)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp(1),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(1),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(1)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(1),
      I1 => e_hcnt(1),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(1)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp(0),
      S => a_Mcompar_enemy_rgb_cmp_le0000_lut(0),
      O => a_Mcompar_enemy_rgb_cmp_le0000_cy(0)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(0),
      I1 => e_hcnt(0),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(0)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(30),
      DI => e_vcnt(31),
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_31_Q,
      O => a_plane_rgb_cmp_le0001
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(29),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_30_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(30)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(28),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_29_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(29)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(27),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_28_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(28)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(26),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_27_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(27)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(25),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_26_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(26)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(24),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_25_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(25)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(23),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_24_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(24)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(22),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_23_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(23)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(21),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_22_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(22)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(20),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_21_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(21)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(19),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_20_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(20)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(18),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_19_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(19)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(17),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_18_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(18)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(16),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_17_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(17)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(15),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_16_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(16)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(14),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_15_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(15)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(13),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_14_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(14)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(12),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_13_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(13)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(11),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_12_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(12)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(10),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_11_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(11)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(9),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_10_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(10)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(8),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_9_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(9)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(7),
      DI => a_plane_rgb_addsub0001(8),
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_8_Q_1477,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(8)
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0001(8),
      I1 => e_vcnt(8),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_8_Q_1477
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(6),
      DI => a_plane_rgb_addsub0001(7),
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_7_Q_1476,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(7)
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0001(7),
      I1 => e_vcnt(7),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_7_Q_1476
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(5),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_6_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(6)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(4),
      DI => N1,
      S => a_Mcompar_plane_rgb_cmp_le0001_cy_5_rt_1442,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(5)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(3),
      DI => b_plane_y_tmp(8),
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_4_Q_1473,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(4)
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => e_vcnt(4),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_4_Q_1473
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(2),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_3_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(3)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(1),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_2_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(2)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0001_cy(0),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_1_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(1)
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0001_lut_0_Q,
      O => a_Mcompar_plane_rgb_cmp_le0001_cy(0)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(30),
      DI => e_hcnt(31),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(31),
      O => a_plane_rgb_cmp_le0000
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(29),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(30),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(30)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(28),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(29),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(29)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(27),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(28),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(28)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(26),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(27),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(27)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(25),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(26),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(26)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(24),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(25),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(25)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(23),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(24),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(24)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(22),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(23),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(23)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(21),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(22),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(22)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(20),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(21),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(21)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(19),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(20),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(20)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(18),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(19),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(19)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(17),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(18),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(18)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(16),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(17),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(17)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(15),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(16),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(16)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(14),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(15),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(15)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(13),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(14),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(14)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(12),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(13),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(13)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(11),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(12),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(12)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(10),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(11),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(11)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(9),
      DI => a_plane_rgb_addsub0000(10),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(10),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(10)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0000(10),
      I1 => e_hcnt(10),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(10)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(8),
      DI => a_plane_rgb_addsub0000(9),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(9),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(9)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0000(9),
      I1 => e_hcnt(9),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(9)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(7),
      DI => a_plane_rgb_addsub0000(8),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(8),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(8)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0000(8),
      I1 => e_hcnt(8),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(8)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(6),
      DI => a_plane_rgb_addsub0000(7),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(7),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(7)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0000(7),
      I1 => e_hcnt(7),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(7)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(5),
      DI => a_plane_rgb_addsub0000(6),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(6),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(6)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0000(6),
      I1 => e_hcnt(6),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(6)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(4),
      DI => a_plane_rgb_addsub0000(5),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(5),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(5)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_plane_rgb_addsub0000(5),
      I1 => e_hcnt(5),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(5)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(3),
      DI => b_plane_x_tmp(4),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(4),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(4)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(4)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(2),
      DI => b_plane_x_tmp(3),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(3),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(3)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(3),
      I1 => e_hcnt(3),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(3)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(1),
      DI => b_plane_x_tmp(2),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(2),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(2)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(2),
      I1 => e_hcnt(2),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(2)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_le0000_cy(0),
      DI => b_plane_x_tmp(1),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(1),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(1)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(1),
      I1 => e_hcnt(1),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(1)
    );
  a_Mcompar_plane_rgb_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_plane_x_tmp(0),
      S => a_Mcompar_plane_rgb_cmp_le0000_lut(0),
      O => a_Mcompar_plane_rgb_cmp_le0000_cy(0)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(0),
      I1 => e_hcnt(0),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(0)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(30),
      DI => e_vcnt(31),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(31),
      O => a_enemy3_rgb_cmp_le0001
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(29),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(30),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(30)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(28),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(29),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(29)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(27),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(28),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(28)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(26),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(27),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(27)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(25),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(26),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(26)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(24),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(25),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(25)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(23),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(24),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(24)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(22),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(23),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(23)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(21),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(22),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(22)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(20),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(21),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(21)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(19),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(20),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(20)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(18),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(19),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(19)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(17),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(18),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(18)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(16),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(17),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(17)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(15),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(16),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(16)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(14),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(15),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(15)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(13),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(14),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(14)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(12),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(13),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(13)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(11),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(12),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(12)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(10),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(11),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(11)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(9),
      DI => a_enemy3_rgb_addsub0001(10),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(10),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(10)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0001(10),
      I1 => e_vcnt(10),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(10)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(8),
      DI => a_enemy3_rgb_addsub0001(9),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(9),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(9)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0001(9),
      I1 => e_vcnt(9),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(9)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(7),
      DI => a_enemy3_rgb_addsub0001(8),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(8),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(8)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0001(8),
      I1 => e_vcnt(8),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(8)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(6),
      DI => a_enemy3_rgb_addsub0001(7),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(7),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(7)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0001(7),
      I1 => e_vcnt(7),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(7)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(5),
      DI => a_enemy3_rgb_addsub0001(6),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(6),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(6)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0001(6),
      I1 => e_vcnt(6),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(6)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(4),
      DI => a_enemy3_rgb_addsub0001(5),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(5),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(5)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0001(5),
      I1 => e_vcnt(5),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(5)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(3),
      DI => b_enemy_y_tmp3(4),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(4),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(4)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(4)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(2),
      DI => b_enemy_y_tmp3(3),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(3),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(3)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(3),
      I1 => e_vcnt(3),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(3)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(1),
      DI => b_enemy_y_tmp3(2),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(2),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(2)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(2),
      I1 => e_vcnt(2),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(2)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0001_cy(0),
      DI => b_enemy_y_tmp3(1),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(1),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(1)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(1),
      I1 => e_vcnt(1),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(1)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_y_tmp3(0),
      S => a_Mcompar_enemy3_rgb_cmp_le0001_lut(0),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_cy(0)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(0),
      I1 => e_vcnt(0),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(0)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(30),
      DI => e_hcnt(31),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(31),
      O => a_enemy3_rgb_cmp_le0000
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(29),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(30),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(30)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(28),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(29),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(29)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(27),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(28),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(28)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(26),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(27),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(27)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(25),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(26),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(26)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(24),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(25),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(25)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(23),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(24),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(24)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(22),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(23),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(23)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(21),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(22),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(22)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(20),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(21),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(21)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(19),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(20),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(20)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(18),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(19),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(19)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(17),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(18),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(18)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(16),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(17),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(17)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(15),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(16),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(16)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(14),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(15),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(15)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(13),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(14),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(14)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(12),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(13),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(13)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(11),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(12),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(12)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(10),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(11),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(11)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(9),
      DI => a_enemy3_rgb_addsub0000(10),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(10),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(10)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0000(10),
      I1 => e_hcnt(10),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(10)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(8),
      DI => a_enemy3_rgb_addsub0000(9),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(9),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(9)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0000(9),
      I1 => e_hcnt(9),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(9)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(7),
      DI => a_enemy3_rgb_addsub0000(8),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(8),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(8)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0000(8),
      I1 => e_hcnt(8),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(8)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(6),
      DI => a_enemy3_rgb_addsub0000(7),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(7),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(7)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0000(7),
      I1 => e_hcnt(7),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(7)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(5),
      DI => a_enemy3_rgb_addsub0000(6),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(6),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(6)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0000(6),
      I1 => e_hcnt(6),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(6)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(4),
      DI => a_enemy3_rgb_addsub0000(5),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(5),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(5)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_enemy3_rgb_addsub0000(5),
      I1 => e_hcnt(5),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(5)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(3),
      DI => b_enemy_x_tmp3(4),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(4),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(4)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(4)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(2),
      DI => b_enemy_x_tmp3(3),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(3),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(3)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(3),
      I1 => e_hcnt(3),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(3)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(1),
      DI => b_enemy_x_tmp3(2),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(2),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(2)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(2),
      I1 => e_hcnt(2),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(2)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_le0000_cy(0),
      DI => b_enemy_x_tmp3(1),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(1),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(1)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(1),
      I1 => e_hcnt(1),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(1)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => b_enemy_x_tmp3(0),
      S => a_Mcompar_enemy3_rgb_cmp_le0000_lut(0),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_cy(0)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(0),
      I1 => e_hcnt(0),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(0)
    );
  a_Msub_x_plane_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(3),
      LI => a_Mcompar_plane_rgb_cmp_le0000_lut_4_1_1409,
      O => a_x_plane(4)
    );
  a_Msub_x_plane_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(2),
      LI => a_Msub_x_plane_Madd_lut(3),
      O => a_x_plane(3)
    );
  a_Msub_x_plane_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(2),
      DI => e_hcnt(3),
      S => a_Msub_x_plane_Madd_lut(3),
      O => a_Msub_x_plane_Madd_cy(3)
    );
  a_Msub_x_plane_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_plane_x_tmp(3),
      O => a_Msub_x_plane_Madd_lut(3)
    );
  a_Msub_x_plane_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(1),
      LI => a_Msub_x_plane_Madd_lut(2),
      O => a_x_plane(2)
    );
  a_Msub_x_plane_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(1),
      DI => e_hcnt(2),
      S => a_Msub_x_plane_Madd_lut(2),
      O => a_Msub_x_plane_Madd_cy(2)
    );
  a_Msub_x_plane_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_plane_x_tmp(2),
      O => a_Msub_x_plane_Madd_lut(2)
    );
  a_Msub_x_plane_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(0),
      LI => a_Msub_x_plane_Madd_lut(1),
      O => a_x_plane(1)
    );
  a_Msub_x_plane_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_x_plane_Madd_cy(0),
      DI => e_hcnt(1),
      S => a_Msub_x_plane_Madd_lut(1),
      O => a_Msub_x_plane_Madd_cy(1)
    );
  a_Msub_x_plane_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_plane_x_tmp(1),
      O => a_Msub_x_plane_Madd_lut(1)
    );
  a_Msub_x_plane_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_x_plane_Madd_lut(0),
      O => a_x_plane(0)
    );
  a_Msub_x_plane_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Msub_x_plane_Madd_lut(0),
      O => a_Msub_x_plane_Madd_cy(0)
    );
  a_Msub_x_plane_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_plane_x_tmp(0),
      O => a_Msub_x_plane_Madd_lut(0)
    );
  a_Msub_y_plane_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(3),
      LI => a_Mcompar_plane_rgb_cmp_le0001_lut_4_1_1474,
      O => a_y_plane(4)
    );
  a_Msub_y_plane_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(2),
      LI => a_Msub_y_plane_Madd_lut(3),
      O => a_y_plane(3)
    );
  a_Msub_y_plane_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(2),
      DI => e_vcnt(3),
      S => a_Msub_y_plane_Madd_lut(3),
      O => a_Msub_y_plane_Madd_cy(3)
    );
  a_Msub_y_plane_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(1),
      LI => a_Msub_y_plane_Madd_lut(2),
      O => a_y_plane(2)
    );
  a_Msub_y_plane_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Msub_y_plane_Madd_lut(2),
      O => a_Msub_y_plane_Madd_cy(2)
    );
  a_Msub_y_plane_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(0),
      LI => a_Msub_y_plane_Madd_lut(1),
      O => a_y_plane(1)
    );
  a_Msub_y_plane_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_y_plane_Madd_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Msub_y_plane_Madd_lut(1),
      O => a_Msub_y_plane_Madd_cy(1)
    );
  a_Msub_y_plane_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_y_plane_Madd_lut(0),
      O => a_y_plane(0)
    );
  a_Msub_y_plane_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Msub_y_plane_Madd_lut(0),
      O => a_Msub_y_plane_Madd_cy(0)
    );
  a_Msub_x_enemy3_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(3),
      LI => a_Mcompar_enemy3_rgb_cmp_le0000_lut_4_1_888,
      O => a_x_enemy3(4)
    );
  a_Msub_x_enemy3_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(2),
      LI => a_Msub_x_enemy3_Madd_lut(3),
      O => a_x_enemy3(3)
    );
  a_Msub_x_enemy3_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(2),
      DI => e_hcnt(3),
      S => a_Msub_x_enemy3_Madd_lut(3),
      O => a_Msub_x_enemy3_Madd_cy(3)
    );
  a_Msub_x_enemy3_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_enemy_x_tmp3(3),
      O => a_Msub_x_enemy3_Madd_lut(3)
    );
  a_Msub_x_enemy3_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(1),
      LI => a_Msub_x_enemy3_Madd_lut(2),
      O => a_x_enemy3(2)
    );
  a_Msub_x_enemy3_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(1),
      DI => e_hcnt(2),
      S => a_Msub_x_enemy3_Madd_lut(2),
      O => a_Msub_x_enemy3_Madd_cy(2)
    );
  a_Msub_x_enemy3_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_enemy_x_tmp3(2),
      O => a_Msub_x_enemy3_Madd_lut(2)
    );
  a_Msub_x_enemy3_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(0),
      LI => a_Msub_x_enemy3_Madd_lut(1),
      O => a_x_enemy3(1)
    );
  a_Msub_x_enemy3_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy3_Madd_cy(0),
      DI => e_hcnt(1),
      S => a_Msub_x_enemy3_Madd_lut(1),
      O => a_Msub_x_enemy3_Madd_cy(1)
    );
  a_Msub_x_enemy3_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_enemy_x_tmp3(1),
      O => a_Msub_x_enemy3_Madd_lut(1)
    );
  a_Msub_x_enemy3_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_x_enemy3_Madd_lut(0),
      O => a_x_enemy3(0)
    );
  a_Msub_x_enemy3_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Msub_x_enemy3_Madd_lut(0),
      O => a_Msub_x_enemy3_Madd_cy(0)
    );
  a_Msub_x_enemy3_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_enemy_x_tmp3(0),
      O => a_Msub_x_enemy3_Madd_lut(0)
    );
  a_Msub_y_enemy3_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(3),
      LI => a_Mcompar_enemy3_rgb_cmp_le0001_lut_4_1_952,
      O => a_y_enemy3(4)
    );
  a_Msub_y_enemy3_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(2),
      LI => a_Msub_y_enemy3_Madd_lut(3),
      O => a_y_enemy3(3)
    );
  a_Msub_y_enemy3_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(2),
      DI => e_vcnt(3),
      S => a_Msub_y_enemy3_Madd_lut(3),
      O => a_Msub_y_enemy3_Madd_cy(3)
    );
  a_Msub_y_enemy3_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(3),
      I1 => e_vcnt(3),
      O => a_Msub_y_enemy3_Madd_lut(3)
    );
  a_Msub_y_enemy3_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(1),
      LI => a_Msub_y_enemy3_Madd_lut(2),
      O => a_y_enemy3(2)
    );
  a_Msub_y_enemy3_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Msub_y_enemy3_Madd_lut(2),
      O => a_Msub_y_enemy3_Madd_cy(2)
    );
  a_Msub_y_enemy3_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(2),
      I1 => e_vcnt_2_1_3396,
      O => a_Msub_y_enemy3_Madd_lut(2)
    );
  a_Msub_y_enemy3_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(0),
      LI => a_Msub_y_enemy3_Madd_lut(1),
      O => a_y_enemy3(1)
    );
  a_Msub_y_enemy3_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy3_Madd_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Msub_y_enemy3_Madd_lut(1),
      O => a_Msub_y_enemy3_Madd_cy(1)
    );
  a_Msub_y_enemy3_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(1),
      I1 => e_vcnt_1_1_3384,
      O => a_Msub_y_enemy3_Madd_lut(1)
    );
  a_Msub_y_enemy3_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_y_enemy3_Madd_lut(0),
      O => a_y_enemy3(0)
    );
  a_Msub_y_enemy3_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Msub_y_enemy3_Madd_lut(0),
      O => a_Msub_y_enemy3_Madd_cy(0)
    );
  a_Msub_y_enemy3_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(0),
      I1 => e_vcnt(0),
      O => a_Msub_y_enemy3_Madd_lut(0)
    );
  a_Msub_y_enemy2_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(3),
      LI => a_Mcompar_enemy2_rgb_cmp_le0001_lut_4_1_698,
      O => a_y_enemy2(4)
    );
  a_Msub_y_enemy2_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(2),
      LI => a_Msub_y_enemy2_Madd_lut(3),
      O => a_y_enemy2(3)
    );
  a_Msub_y_enemy2_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(2),
      DI => e_vcnt(3),
      S => a_Msub_y_enemy2_Madd_lut(3),
      O => a_Msub_y_enemy2_Madd_cy(3)
    );
  a_Msub_y_enemy2_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(3),
      I1 => e_vcnt(3),
      O => a_Msub_y_enemy2_Madd_lut(3)
    );
  a_Msub_y_enemy2_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(1),
      LI => a_Msub_y_enemy2_Madd_lut(2),
      O => a_y_enemy2(2)
    );
  a_Msub_y_enemy2_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Msub_y_enemy2_Madd_lut(2),
      O => a_Msub_y_enemy2_Madd_cy(2)
    );
  a_Msub_y_enemy2_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(2),
      I1 => e_vcnt_2_1_3396,
      O => a_Msub_y_enemy2_Madd_lut(2)
    );
  a_Msub_y_enemy2_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(0),
      LI => a_Msub_y_enemy2_Madd_lut(1),
      O => a_y_enemy2(1)
    );
  a_Msub_y_enemy2_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy2_Madd_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Msub_y_enemy2_Madd_lut(1),
      O => a_Msub_y_enemy2_Madd_cy(1)
    );
  a_Msub_y_enemy2_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(1),
      I1 => e_vcnt_1_1_3384,
      O => a_Msub_y_enemy2_Madd_lut(1)
    );
  a_Msub_y_enemy2_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_y_enemy2_Madd_lut(0),
      O => a_y_enemy2(0)
    );
  a_Msub_y_enemy2_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Msub_y_enemy2_Madd_lut(0),
      O => a_Msub_y_enemy2_Madd_cy(0)
    );
  a_Msub_y_enemy2_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(0),
      I1 => e_vcnt(0),
      O => a_Msub_y_enemy2_Madd_lut(0)
    );
  a_Msub_x_enemy2_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(3),
      LI => a_Mcompar_enemy2_rgb_cmp_le0000_lut_4_1_634,
      O => a_x_enemy2(4)
    );
  a_Msub_x_enemy2_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(2),
      LI => a_Msub_x_enemy2_Madd_lut(3),
      O => a_x_enemy2(3)
    );
  a_Msub_x_enemy2_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(2),
      DI => e_hcnt(3),
      S => a_Msub_x_enemy2_Madd_lut(3),
      O => a_Msub_x_enemy2_Madd_cy(3)
    );
  a_Msub_x_enemy2_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_enemy_x_tmp2(3),
      O => a_Msub_x_enemy2_Madd_lut(3)
    );
  a_Msub_x_enemy2_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(1),
      LI => a_Msub_x_enemy2_Madd_lut(2),
      O => a_x_enemy2(2)
    );
  a_Msub_x_enemy2_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(1),
      DI => e_hcnt(2),
      S => a_Msub_x_enemy2_Madd_lut(2),
      O => a_Msub_x_enemy2_Madd_cy(2)
    );
  a_Msub_x_enemy2_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_enemy_x_tmp2(2),
      O => a_Msub_x_enemy2_Madd_lut(2)
    );
  a_Msub_x_enemy2_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(0),
      LI => a_Msub_x_enemy2_Madd_lut(1),
      O => a_x_enemy2(1)
    );
  a_Msub_x_enemy2_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy2_Madd_cy(0),
      DI => e_hcnt(1),
      S => a_Msub_x_enemy2_Madd_lut(1),
      O => a_Msub_x_enemy2_Madd_cy(1)
    );
  a_Msub_x_enemy2_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_enemy_x_tmp2(1),
      O => a_Msub_x_enemy2_Madd_lut(1)
    );
  a_Msub_x_enemy2_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_x_enemy2_Madd_lut(0),
      O => a_x_enemy2(0)
    );
  a_Msub_x_enemy2_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Msub_x_enemy2_Madd_lut(0),
      O => a_Msub_x_enemy2_Madd_cy(0)
    );
  a_Msub_x_enemy2_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_enemy_x_tmp2(0),
      O => a_Msub_x_enemy2_Madd_lut(0)
    );
  a_Msub_x_enemy_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(3),
      LI => a_Mcompar_enemy_rgb_cmp_le0000_lut_4_1_1142,
      O => a_x_enemy(4)
    );
  a_Msub_x_enemy_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(2),
      LI => a_Msub_x_enemy_Madd_lut(3),
      O => a_x_enemy(3)
    );
  a_Msub_x_enemy_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(2),
      DI => e_hcnt(3),
      S => a_Msub_x_enemy_Madd_lut(3),
      O => a_Msub_x_enemy_Madd_cy(3)
    );
  a_Msub_x_enemy_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_enemy_x_tmp(3),
      O => a_Msub_x_enemy_Madd_lut(3)
    );
  a_Msub_x_enemy_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(1),
      LI => a_Msub_x_enemy_Madd_lut(2),
      O => a_x_enemy(2)
    );
  a_Msub_x_enemy_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(1),
      DI => e_hcnt(2),
      S => a_Msub_x_enemy_Madd_lut(2),
      O => a_Msub_x_enemy_Madd_cy(2)
    );
  a_Msub_x_enemy_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_enemy_x_tmp(2),
      O => a_Msub_x_enemy_Madd_lut(2)
    );
  a_Msub_x_enemy_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(0),
      LI => a_Msub_x_enemy_Madd_lut(1),
      O => a_x_enemy(1)
    );
  a_Msub_x_enemy_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_x_enemy_Madd_cy(0),
      DI => e_hcnt(1),
      S => a_Msub_x_enemy_Madd_lut(1),
      O => a_Msub_x_enemy_Madd_cy(1)
    );
  a_Msub_x_enemy_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_enemy_x_tmp(1),
      O => a_Msub_x_enemy_Madd_lut(1)
    );
  a_Msub_x_enemy_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_x_enemy_Madd_lut(0),
      O => a_x_enemy(0)
    );
  a_Msub_x_enemy_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Msub_x_enemy_Madd_lut(0),
      O => a_Msub_x_enemy_Madd_cy(0)
    );
  a_Msub_x_enemy_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_enemy_x_tmp(0),
      O => a_Msub_x_enemy_Madd_lut(0)
    );
  a_Msub_y_enemy_Madd_xor_4_Q : XORCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(3),
      LI => a_Mcompar_enemy_rgb_cmp_le0001_lut_4_1_1206,
      O => a_y_enemy(4)
    );
  a_Msub_y_enemy_Madd_xor_3_Q : XORCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(2),
      LI => a_Msub_y_enemy_Madd_lut(3),
      O => a_y_enemy(3)
    );
  a_Msub_y_enemy_Madd_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(2),
      DI => e_vcnt(3),
      S => a_Msub_y_enemy_Madd_lut(3),
      O => a_Msub_y_enemy_Madd_cy(3)
    );
  a_Msub_y_enemy_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(3),
      I1 => e_vcnt(3),
      O => a_Msub_y_enemy_Madd_lut(3)
    );
  a_Msub_y_enemy_Madd_xor_2_Q : XORCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(1),
      LI => a_Msub_y_enemy_Madd_lut(2),
      O => a_y_enemy(2)
    );
  a_Msub_y_enemy_Madd_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Msub_y_enemy_Madd_lut(2),
      O => a_Msub_y_enemy_Madd_cy(2)
    );
  a_Msub_y_enemy_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(2),
      I1 => e_vcnt_2_1_3396,
      O => a_Msub_y_enemy_Madd_lut(2)
    );
  a_Msub_y_enemy_Madd_xor_1_Q : XORCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(0),
      LI => a_Msub_y_enemy_Madd_lut(1),
      O => a_y_enemy(1)
    );
  a_Msub_y_enemy_Madd_cy_1_Q : MUXCY
    port map (
      CI => a_Msub_y_enemy_Madd_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Msub_y_enemy_Madd_lut(1),
      O => a_Msub_y_enemy_Madd_cy(1)
    );
  a_Msub_y_enemy_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(1),
      I1 => e_vcnt_1_1_3384,
      O => a_Msub_y_enemy_Madd_lut(1)
    );
  a_Msub_y_enemy_Madd_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => a_Msub_y_enemy_Madd_lut(0),
      O => a_y_enemy(0)
    );
  a_Msub_y_enemy_Madd_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Msub_y_enemy_Madd_lut(0),
      O => a_Msub_y_enemy_Madd_cy(0)
    );
  a_Msub_y_enemy_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(0),
      I1 => e_vcnt(0),
      O => a_Msub_y_enemy_Madd_lut(0)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(30),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(31),
      O => a_enemy2_rgb_cmp_ge0001
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(29),
      DI => e_vcnt(30),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(30),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(30)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(28),
      DI => e_vcnt(29),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(29),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(29)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(27),
      DI => e_vcnt(28),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(28),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(28)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(26),
      DI => e_vcnt(27),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(27),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(27)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(25),
      DI => e_vcnt(26),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(26),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(26)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(24),
      DI => e_vcnt(25),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(25),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(25)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(23),
      DI => e_vcnt(24),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(24),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(24)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(22),
      DI => e_vcnt(23),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(23),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(23)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(21),
      DI => e_vcnt(22),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(22),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(22)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(20),
      DI => e_vcnt(21),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(21),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(21)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(19),
      DI => e_vcnt(20),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(20),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(20)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(18),
      DI => e_vcnt(19),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(19),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(19)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(17),
      DI => e_vcnt(18),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(18),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(18)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(16),
      DI => e_vcnt(17),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(17),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(17)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(15),
      DI => e_vcnt(16),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(16),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(16)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(14),
      DI => e_vcnt(15),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(15),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(15)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(13),
      DI => e_vcnt(14),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(14),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(14)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(12),
      DI => e_vcnt(13),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(13),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(13)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(11),
      DI => e_vcnt(12),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(12),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(12)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(10),
      DI => e_vcnt(11),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(11),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(11)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(9),
      DI => e_vcnt(10),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(10),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(10)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(8),
      DI => e_vcnt(9),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(9),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(9)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => b_enemy_y_tmp2(9),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(9)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(7),
      DI => e_vcnt(8),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(8),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(8)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(8),
      I1 => b_enemy_y_tmp2(8),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(8)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(6),
      DI => e_vcnt(7),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(7),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(7)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => b_enemy_y_tmp2(7),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(7)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(5),
      DI => e_vcnt(6),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(6),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(6)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(6),
      I1 => b_enemy_y_tmp2(6),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(6)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(4),
      DI => e_vcnt(5),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(5),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(5)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => b_enemy_y_tmp2(5),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(5)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(3),
      DI => e_vcnt(4),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(4),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(4)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(4),
      I1 => b_enemy_y_tmp2(4),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(4)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(2),
      DI => e_vcnt(3),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(3),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(3)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => b_enemy_y_tmp2(3),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(3)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(2),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(2)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_2_1_3396,
      I1 => b_enemy_y_tmp2(2),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(2)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(1),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(1)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_1_1_3384,
      I1 => b_enemy_y_tmp2(1),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(1)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(0),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_cy(0)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(0),
      I1 => b_enemy_y_tmp2(0),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(0)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(30),
      DI => N0,
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(31),
      O => a_enemy2_rgb_cmp_ge0000
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(29),
      DI => e_hcnt(30),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(30),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(30)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(28),
      DI => e_hcnt(29),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(29),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(29)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(27),
      DI => e_hcnt(28),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(28),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(28)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(26),
      DI => e_hcnt(27),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(27),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(27)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(25),
      DI => e_hcnt(26),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(26),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(26)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(24),
      DI => e_hcnt(25),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(25),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(25)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(23),
      DI => e_hcnt(24),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(24),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(24)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(22),
      DI => e_hcnt(23),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(23),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(23)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(21),
      DI => e_hcnt(22),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(22),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(22)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(20),
      DI => e_hcnt(21),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(21),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(21)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(19),
      DI => e_hcnt(20),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(20),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(20)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(18),
      DI => e_hcnt(19),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(19),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(19)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(17),
      DI => e_hcnt(18),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(18),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(18)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(16),
      DI => e_hcnt(17),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(17),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(17)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(15),
      DI => e_hcnt(16),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(16),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(16)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(14),
      DI => e_hcnt(15),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(15),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(15)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(13),
      DI => e_hcnt(14),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(14),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(14)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(12),
      DI => e_hcnt(13),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(13),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(13)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(11),
      DI => e_hcnt(12),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(12),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(12)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(10),
      DI => e_hcnt(11),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(11),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(11)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(9),
      DI => e_hcnt(10),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(10),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(10)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(8),
      DI => e_hcnt(9),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(9),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(9)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => b_enemy_x_tmp2(9),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(9)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(7),
      DI => e_hcnt(8),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(8),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(8)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => b_enemy_x_tmp2(8),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(8)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(6),
      DI => e_hcnt(7),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(7),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(7)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(7),
      I1 => b_enemy_x_tmp2(7),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(7)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(5),
      DI => e_hcnt(6),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(6),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(6)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => b_enemy_x_tmp2(6),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(6)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(4),
      DI => e_hcnt(5),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(5),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(5)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => b_enemy_x_tmp2(5),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(5)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(3),
      DI => e_hcnt(4),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(4),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(4)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => b_enemy_x_tmp2(4),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(4)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(2),
      DI => e_hcnt(3),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(3),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(3)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_enemy_x_tmp2(3),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(3)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(1),
      DI => e_hcnt(2),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(2),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(2)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_enemy_x_tmp2(2),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(2)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(0),
      DI => e_hcnt(1),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(1),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(1)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_enemy_x_tmp2(1),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(1)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(0),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_cy(0)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_enemy_x_tmp2(0),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(0)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(30),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(31),
      O => a_bullet_rgb_cmp_ge0001
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(29),
      DI => e_vcnt(30),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(30),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(30)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(28),
      DI => e_vcnt(29),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(29),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(29)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(27),
      DI => e_vcnt(28),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(28),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(28)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(26),
      DI => e_vcnt(27),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(27),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(27)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(25),
      DI => e_vcnt(26),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(26),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(26)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(24),
      DI => e_vcnt(25),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(25),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(25)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(23),
      DI => e_vcnt(24),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(24),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(24)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(22),
      DI => e_vcnt(23),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(23),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(23)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(21),
      DI => e_vcnt(22),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(22),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(22)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(20),
      DI => e_vcnt(21),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(21),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(21)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(19),
      DI => e_vcnt(20),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(20),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(20)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(18),
      DI => e_vcnt(19),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(19),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(19)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(17),
      DI => e_vcnt(18),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(18),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(18)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(16),
      DI => e_vcnt(17),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(17),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(17)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(15),
      DI => e_vcnt(16),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(16),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(16)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(14),
      DI => e_vcnt(15),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(15),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(15)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(13),
      DI => e_vcnt(14),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(14),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(14)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(12),
      DI => e_vcnt(13),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(13),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(13)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(11),
      DI => e_vcnt(12),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(12),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(12)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(10),
      DI => e_vcnt(11),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(11),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(11)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(9),
      DI => e_vcnt(10),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(10),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(10)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(8),
      DI => e_vcnt(9),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(9),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(9)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => b_bullet_y_tmp(9),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(9)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(7),
      DI => e_vcnt(8),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(8),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(8)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(8),
      I1 => b_bullet_y_tmp(8),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(8)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(6),
      DI => e_vcnt(7),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(7),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(7)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => b_bullet_y_tmp(7),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(7)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(5),
      DI => e_vcnt(6),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(6),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(6)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(6),
      I1 => b_bullet_y_tmp(6),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(6)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(4),
      DI => e_vcnt(5),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(5),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(5)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => b_bullet_y_tmp(5),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(5)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(3),
      DI => e_vcnt(4),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(4),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(4)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(4),
      I1 => b_bullet_y_tmp(4),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(4)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(2),
      DI => e_vcnt(3),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(3),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(3)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => b_bullet_y_tmp(3),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(3)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(2),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(2)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_2_1_3396,
      I1 => b_bullet_y_tmp(2),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(2)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0001_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(1),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(1)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_1_1_3384,
      I1 => b_bullet_y_tmp(1),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(1)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Mcompar_bullet_rgb_cmp_ge0001_lut(0),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_cy(0)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(30),
      DI => N0,
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(31),
      O => a_bullet_rgb_cmp_ge0000
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(29),
      DI => e_hcnt(30),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(30),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(30)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(28),
      DI => e_hcnt(29),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(29),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(29)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(27),
      DI => e_hcnt(28),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(28),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(28)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(26),
      DI => e_hcnt(27),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(27),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(27)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(25),
      DI => e_hcnt(26),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(26),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(26)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(24),
      DI => e_hcnt(25),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(25),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(25)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(23),
      DI => e_hcnt(24),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(24),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(24)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(22),
      DI => e_hcnt(23),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(23),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(23)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(21),
      DI => e_hcnt(22),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(22),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(22)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(20),
      DI => e_hcnt(21),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(21),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(21)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(19),
      DI => e_hcnt(20),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(20),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(20)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(18),
      DI => e_hcnt(19),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(19),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(19)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(17),
      DI => e_hcnt(18),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(18),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(18)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(16),
      DI => e_hcnt(17),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(17),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(17)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(15),
      DI => e_hcnt(16),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(16),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(16)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(14),
      DI => e_hcnt(15),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(15),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(15)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(13),
      DI => e_hcnt(14),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(14),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(14)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(12),
      DI => e_hcnt(13),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(13),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(13)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(11),
      DI => e_hcnt(12),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(12),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(12)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(10),
      DI => e_hcnt(11),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(11),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(11)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(9),
      DI => e_hcnt(10),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(10),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(10)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(8),
      DI => e_hcnt(9),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(9),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(9)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => b_bullet_x_tmp(9),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(9)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(7),
      DI => e_hcnt(8),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(8),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(8)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => b_bullet_x_tmp(8),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(8)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(6),
      DI => e_hcnt(7),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(7),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(7)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(7),
      I1 => b_bullet_x_tmp(7),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(7)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(5),
      DI => e_hcnt(6),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(6),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(6)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => b_bullet_x_tmp(6),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(6)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(4),
      DI => e_hcnt(5),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(5),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(5)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => b_bullet_x_tmp(5),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(5)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(3),
      DI => e_hcnt(4),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(4),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(4)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => b_bullet_x_tmp(4),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(4)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(2),
      DI => e_hcnt(3),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(3),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(3)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_bullet_x_tmp(3),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(3)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(1),
      DI => e_hcnt(2),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(2),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(2)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_bullet_x_tmp(2),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(2)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_bullet_rgb_cmp_ge0000_cy(0),
      DI => e_hcnt(1),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(1),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(1)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_bullet_x_tmp(1),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(1)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Mcompar_bullet_rgb_cmp_ge0000_lut(0),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_cy(0)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_bullet_x_tmp(0),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(0)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(30),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(31),
      O => a_enemy_rgb_cmp_ge0001
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(29),
      DI => e_vcnt(30),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(30),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(30)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(28),
      DI => e_vcnt(29),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(29),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(29)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(27),
      DI => e_vcnt(28),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(28),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(28)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(26),
      DI => e_vcnt(27),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(27),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(27)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(25),
      DI => e_vcnt(26),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(26),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(26)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(24),
      DI => e_vcnt(25),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(25),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(25)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(23),
      DI => e_vcnt(24),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(24),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(24)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(22),
      DI => e_vcnt(23),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(23),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(23)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(21),
      DI => e_vcnt(22),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(22),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(22)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(20),
      DI => e_vcnt(21),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(21),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(21)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(19),
      DI => e_vcnt(20),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(20),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(20)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(18),
      DI => e_vcnt(19),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(19),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(19)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(17),
      DI => e_vcnt(18),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(18),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(18)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(16),
      DI => e_vcnt(17),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(17),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(17)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(15),
      DI => e_vcnt(16),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(16),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(16)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(14),
      DI => e_vcnt(15),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(15),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(15)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(13),
      DI => e_vcnt(14),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(14),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(14)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(12),
      DI => e_vcnt(13),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(13),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(13)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(11),
      DI => e_vcnt(12),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(12),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(12)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(10),
      DI => e_vcnt(11),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(11),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(11)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(9),
      DI => e_vcnt(10),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(10),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(10)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(8),
      DI => e_vcnt(9),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(9),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(9)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => b_enemy_y_tmp(9),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(9)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(7),
      DI => e_vcnt(8),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(8),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(8)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(8),
      I1 => b_enemy_y_tmp(8),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(8)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(6),
      DI => e_vcnt(7),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(7),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(7)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => b_enemy_y_tmp(7),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(7)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(5),
      DI => e_vcnt(6),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(6),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(6)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(6),
      I1 => b_enemy_y_tmp(6),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(6)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(4),
      DI => e_vcnt(5),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(5),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(5)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => b_enemy_y_tmp(5),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(5)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(3),
      DI => e_vcnt(4),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(4),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(4)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(4),
      I1 => b_enemy_y_tmp(4),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(4)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(2),
      DI => e_vcnt(3),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(3),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(3)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => b_enemy_y_tmp(3),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(3)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(2),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(2)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_2_1_3396,
      I1 => b_enemy_y_tmp(2),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(2)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0001_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(1),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(1)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_1_1_3384,
      I1 => b_enemy_y_tmp(1),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(1)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Mcompar_enemy_rgb_cmp_ge0001_lut(0),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_cy(0)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(0),
      I1 => b_enemy_y_tmp(0),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(0)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(30),
      DI => N0,
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(31),
      O => a_enemy_rgb_cmp_ge0000
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(29),
      DI => e_hcnt(30),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(30),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(30)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(28),
      DI => e_hcnt(29),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(29),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(29)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(27),
      DI => e_hcnt(28),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(28),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(28)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(26),
      DI => e_hcnt(27),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(27),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(27)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(25),
      DI => e_hcnt(26),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(26),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(26)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(24),
      DI => e_hcnt(25),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(25),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(25)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(23),
      DI => e_hcnt(24),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(24),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(24)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(22),
      DI => e_hcnt(23),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(23),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(23)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(21),
      DI => e_hcnt(22),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(22),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(22)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(20),
      DI => e_hcnt(21),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(21),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(21)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(19),
      DI => e_hcnt(20),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(20),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(20)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(18),
      DI => e_hcnt(19),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(19),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(19)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(17),
      DI => e_hcnt(18),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(18),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(18)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(16),
      DI => e_hcnt(17),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(17),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(17)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(15),
      DI => e_hcnt(16),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(16),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(16)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(14),
      DI => e_hcnt(15),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(15),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(15)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(13),
      DI => e_hcnt(14),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(14),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(14)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(12),
      DI => e_hcnt(13),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(13),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(13)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(11),
      DI => e_hcnt(12),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(12),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(12)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(10),
      DI => e_hcnt(11),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(11),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(11)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(9),
      DI => e_hcnt(10),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(10),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(10)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(8),
      DI => e_hcnt(9),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(9),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(9)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => b_enemy_x_tmp(9),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(9)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(7),
      DI => e_hcnt(8),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(8),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(8)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => b_enemy_x_tmp(8),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(8)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(6),
      DI => e_hcnt(7),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(7),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(7)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(7),
      I1 => b_enemy_x_tmp(7),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(7)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(5),
      DI => e_hcnt(6),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(6),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(6)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => b_enemy_x_tmp(6),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(6)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(4),
      DI => e_hcnt(5),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(5),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(5)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => b_enemy_x_tmp(5),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(5)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(3),
      DI => e_hcnt(4),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(4),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(4)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => b_enemy_x_tmp(4),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(4)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(2),
      DI => e_hcnt(3),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(3),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(3)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_enemy_x_tmp(3),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(3)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(1),
      DI => e_hcnt(2),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(2),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(2)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_enemy_x_tmp(2),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(2)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy_rgb_cmp_ge0000_cy(0),
      DI => e_hcnt(1),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(1),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(1)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_enemy_x_tmp(1),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(1)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Mcompar_enemy_rgb_cmp_ge0000_lut(0),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_cy(0)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_enemy_x_tmp(0),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(0)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(30),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(31),
      O => a_plane_rgb_cmp_ge0001
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(29),
      DI => e_vcnt(30),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(30),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(30)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(28),
      DI => e_vcnt(29),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(29),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(29)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(27),
      DI => e_vcnt(28),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(28),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(28)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(26),
      DI => e_vcnt(27),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(27),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(27)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(25),
      DI => e_vcnt(26),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(26),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(26)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(24),
      DI => e_vcnt(25),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(25),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(25)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(23),
      DI => e_vcnt(24),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(24),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(24)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(22),
      DI => e_vcnt(23),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(23),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(23)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(21),
      DI => e_vcnt(22),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(22),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(22)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(20),
      DI => e_vcnt(21),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(21),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(21)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(19),
      DI => e_vcnt(20),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(20),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(20)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(18),
      DI => e_vcnt(19),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(19),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(19)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(17),
      DI => e_vcnt(18),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(18),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(18)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(16),
      DI => e_vcnt(17),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(17),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(17)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(15),
      DI => e_vcnt(16),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(16),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(16)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(14),
      DI => e_vcnt(15),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(15),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(15)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(13),
      DI => e_vcnt(14),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(14),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(14)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(12),
      DI => e_vcnt(13),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(13),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(13)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(11),
      DI => e_vcnt(12),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(12),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(12)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(10),
      DI => e_vcnt(11),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(11),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(11)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(9),
      DI => e_vcnt(10),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(10),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(10)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(8),
      DI => e_vcnt(9),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(9),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(9)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(7),
      DI => e_vcnt(8),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(8),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(8)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(8),
      I1 => b_plane_y_tmp(8),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(8)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(6),
      DI => e_vcnt(7),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(7),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(7)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => b_plane_y_tmp(8),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(7)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(5),
      DI => e_vcnt(6),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(6),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(6)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(4),
      DI => e_vcnt(5),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(5),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(5)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(3),
      DI => e_vcnt(4),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(4),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(4)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(4),
      I1 => b_plane_y_tmp(8),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(4)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(2),
      DI => e_vcnt(3),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(3),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(3)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(2),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(2)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0001_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(1),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(1)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Mcompar_plane_rgb_cmp_ge0001_lut(0),
      O => a_Mcompar_plane_rgb_cmp_ge0001_cy(0)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(30),
      DI => N0,
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(31),
      O => a_plane_rgb_cmp_ge0000
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(29),
      DI => e_hcnt(30),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(30),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(30)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(28),
      DI => e_hcnt(29),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(29),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(29)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(27),
      DI => e_hcnt(28),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(28),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(28)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(26),
      DI => e_hcnt(27),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(27),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(27)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(25),
      DI => e_hcnt(26),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(26),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(26)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(24),
      DI => e_hcnt(25),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(25),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(25)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(23),
      DI => e_hcnt(24),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(24),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(24)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(22),
      DI => e_hcnt(23),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(23),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(23)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(21),
      DI => e_hcnt(22),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(22),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(22)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(20),
      DI => e_hcnt(21),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(21),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(21)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(19),
      DI => e_hcnt(20),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(20),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(20)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(18),
      DI => e_hcnt(19),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(19),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(19)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(17),
      DI => e_hcnt(18),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(18),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(18)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(16),
      DI => e_hcnt(17),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(17),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(17)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(15),
      DI => e_hcnt(16),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(16),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(16)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(14),
      DI => e_hcnt(15),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(15),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(15)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(13),
      DI => e_hcnt(14),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(14),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(14)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(12),
      DI => e_hcnt(13),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(13),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(13)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(11),
      DI => e_hcnt(12),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(12),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(12)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(10),
      DI => e_hcnt(11),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(11),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(11)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(9),
      DI => e_hcnt(10),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(10),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(10)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(8),
      DI => e_hcnt(9),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(9),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(9)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => b_plane_x_tmp(9),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(9)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(7),
      DI => e_hcnt(8),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(8),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(8)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => b_plane_x_tmp(8),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(8)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(6),
      DI => e_hcnt(7),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(7),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(7)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(7),
      I1 => b_plane_x_tmp(7),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(7)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(5),
      DI => e_hcnt(6),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(6),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(6)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => b_plane_x_tmp(6),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(6)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(4),
      DI => e_hcnt(5),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(5),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(5)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => b_plane_x_tmp(5),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(5)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(3),
      DI => e_hcnt(4),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(4),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(4)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => b_plane_x_tmp(4),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(4)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(2),
      DI => e_hcnt(3),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(3),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(3)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_plane_x_tmp(3),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(3)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(1),
      DI => e_hcnt(2),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(2),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(2)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_plane_x_tmp(2),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(2)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_plane_rgb_cmp_ge0000_cy(0),
      DI => e_hcnt(1),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(1),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(1)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_plane_x_tmp(1),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(1)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Mcompar_plane_rgb_cmp_ge0000_lut(0),
      O => a_Mcompar_plane_rgb_cmp_ge0000_cy(0)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_plane_x_tmp(0),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(0)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(30),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(31),
      O => a_enemy3_rgb_cmp_ge0000
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(29),
      DI => e_hcnt(30),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(30),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(30)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(28),
      DI => e_hcnt(29),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(29),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(29)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(27),
      DI => e_hcnt(28),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(28),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(28)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(26),
      DI => e_hcnt(27),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(27),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(27)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(25),
      DI => e_hcnt(26),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(26),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(26)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(24),
      DI => e_hcnt(25),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(25),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(25)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(23),
      DI => e_hcnt(24),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(24),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(24)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(22),
      DI => e_hcnt(23),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(23),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(23)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(21),
      DI => e_hcnt(22),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(22),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(22)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(20),
      DI => e_hcnt(21),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(21),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(21)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(19),
      DI => e_hcnt(20),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(20),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(20)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(18),
      DI => e_hcnt(19),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(19),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(19)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(17),
      DI => e_hcnt(18),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(18),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(18)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(16),
      DI => e_hcnt(17),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(17),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(17)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(15),
      DI => e_hcnt(16),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(16),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(16)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(14),
      DI => e_hcnt(15),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(15),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(15)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(13),
      DI => e_hcnt(14),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(14),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(14)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(12),
      DI => e_hcnt(13),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(13),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(13)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(11),
      DI => e_hcnt(12),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(12),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(12)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(10),
      DI => e_hcnt(11),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(11),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(11)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(9),
      DI => e_hcnt(10),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(10),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(10)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(8),
      DI => e_hcnt(9),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(9),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(9)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => b_enemy_x_tmp3(9),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(9)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(7),
      DI => e_hcnt(8),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(8),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(8)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => b_enemy_x_tmp3(8),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(8)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(6),
      DI => e_hcnt(7),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(7),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(7)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(7),
      I1 => b_enemy_x_tmp3(7),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(7)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(5),
      DI => e_hcnt(6),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(6),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(6)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => b_enemy_x_tmp3(6),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(6)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(4),
      DI => e_hcnt(5),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(5),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(5)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => b_enemy_x_tmp3(5),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(5)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(3),
      DI => e_hcnt(4),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(4),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(4)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => b_enemy_x_tmp3(4),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(4)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(2),
      DI => e_hcnt(3),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(3),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(3)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_enemy_x_tmp3(3),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(3)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(1),
      DI => e_hcnt(2),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(2),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(2)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(2),
      I1 => b_enemy_x_tmp3(2),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(2)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(0),
      DI => e_hcnt(1),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(1),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(1)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => b_enemy_x_tmp3(1),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(1)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_hcnt(0),
      S => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(0),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_cy(0)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_enemy_x_tmp3(0),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(0)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_31_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(30),
      DI => N0,
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(31),
      O => a_enemy3_rgb_cmp_ge0001
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_30_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(29),
      DI => e_vcnt(30),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(30),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(30)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_29_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(28),
      DI => e_vcnt(29),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(29),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(29)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_28_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(27),
      DI => e_vcnt(28),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(28),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(28)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_27_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(26),
      DI => e_vcnt(27),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(27),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(27)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_26_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(25),
      DI => e_vcnt(26),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(26),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(26)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_25_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(24),
      DI => e_vcnt(25),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(25),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(25)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_24_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(23),
      DI => e_vcnt(24),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(24),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(24)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_23_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(22),
      DI => e_vcnt(23),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(23),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(23)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_22_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(21),
      DI => e_vcnt(22),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(22),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(22)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_21_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(20),
      DI => e_vcnt(21),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(21),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(21)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_20_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(19),
      DI => e_vcnt(20),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(20),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(20)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_19_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(18),
      DI => e_vcnt(19),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(19),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(19)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_18_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(17),
      DI => e_vcnt(18),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(18),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(18)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_17_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(16),
      DI => e_vcnt(17),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(17),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(17)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_16_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(15),
      DI => e_vcnt(16),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(16),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(16)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_15_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(14),
      DI => e_vcnt(15),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(15),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(15)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_14_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(13),
      DI => e_vcnt(14),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(14),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(14)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_13_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(12),
      DI => e_vcnt(13),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(13),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(13)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_12_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(11),
      DI => e_vcnt(12),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(12),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(12)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(10),
      DI => e_vcnt(11),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(11),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(11)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(9),
      DI => e_vcnt(10),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(10),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(10)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(8),
      DI => e_vcnt(9),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(9),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(9)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => b_enemy_y_tmp3(9),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(9)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(7),
      DI => e_vcnt(8),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(8),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(8)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(8),
      I1 => b_enemy_y_tmp3(8),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(8)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(6),
      DI => e_vcnt(7),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(7),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(7)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => b_enemy_y_tmp3(7),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(7)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(5),
      DI => e_vcnt(6),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(6),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(6)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(6),
      I1 => b_enemy_y_tmp3(6),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(6)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(4),
      DI => e_vcnt(5),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(5),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(5)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => b_enemy_y_tmp3(5),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(5)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(3),
      DI => e_vcnt(4),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(4),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(4)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(4),
      I1 => b_enemy_y_tmp3(4),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(4)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(2),
      DI => e_vcnt(3),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(3),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(3)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => b_enemy_y_tmp3(3),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(3)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(1),
      DI => e_vcnt_2_1_3396,
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(2),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(2)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_2_1_3396,
      I1 => b_enemy_y_tmp3(2),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(2)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(0),
      DI => e_vcnt_1_1_3384,
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(1),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(1)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt_1_1_3384,
      I1 => b_enemy_y_tmp3(1),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(1)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => e_vcnt(0),
      S => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(0),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_cy(0)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(0),
      I1 => b_enemy_y_tmp3(0),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(0)
    );
  a_Mcompar_num1_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(9),
      DI => N0,
      S => N1,
      O => a_num1(0)
    );
  a_Mcompar_num1_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(8),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(9)
    );
  a_Mcompar_num1_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(7),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(8)
    );
  a_Mcompar_num1_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(6),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(7)
    );
  a_Mcompar_num1_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(5),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(6)
    );
  a_Mcompar_num1_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(4),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(5)
    );
  a_Mcompar_num1_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(3),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(4)
    );
  a_Mcompar_num1_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(2),
      DI => N0,
      S => N1,
      O => a_Mcompar_num1_cmp_ge0000_cy(3)
    );
  a_Mcompar_num1_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(1),
      DI => N0,
      S => a_Mcompar_num1_cmp_ge0000_cy_2_rt_1216,
      O => a_Mcompar_num1_cmp_ge0000_cy(2)
    );
  a_Mcompar_num1_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => a_Mcompar_num1_cmp_ge0000_cy(0),
      DI => N1,
      S => a_Mcompar_num1_cmp_ge0000_lut(1),
      O => a_Mcompar_num1_cmp_ge0000_cy(1)
    );
  a_Mcompar_num1_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => a_Mcompar_num1_cmp_ge0000_cy_0_rt_1213,
      O => a_Mcompar_num1_cmp_ge0000_cy(0)
    );
  a_Madd_enemy2_rgb_addsub0000_xor_10_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(9),
      LI => N0,
      O => a_enemy2_rgb_addsub0000(10)
    );
  a_Madd_enemy2_rgb_addsub0000_xor_9_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(8),
      LI => a_Madd_enemy2_rgb_addsub0000_cy_9_rt_134,
      O => a_enemy2_rgb_addsub0000(9)
    );
  a_Madd_enemy2_rgb_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(8),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0000_cy_9_rt_134,
      O => a_Madd_enemy2_rgb_addsub0000_cy(9)
    );
  a_Madd_enemy2_rgb_addsub0000_xor_8_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(7),
      LI => a_Madd_enemy2_rgb_addsub0000_cy_8_rt_132,
      O => a_enemy2_rgb_addsub0000(8)
    );
  a_Madd_enemy2_rgb_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(7),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0000_cy_8_rt_132,
      O => a_Madd_enemy2_rgb_addsub0000_cy(8)
    );
  a_Madd_enemy2_rgb_addsub0000_xor_7_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(6),
      LI => a_Madd_enemy2_rgb_addsub0000_cy_7_rt_130,
      O => a_enemy2_rgb_addsub0000(7)
    );
  a_Madd_enemy2_rgb_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(6),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0000_cy_7_rt_130,
      O => a_Madd_enemy2_rgb_addsub0000_cy(7)
    );
  a_Madd_enemy2_rgb_addsub0000_xor_6_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(5),
      LI => a_Madd_enemy2_rgb_addsub0000_cy_6_rt_128,
      O => a_enemy2_rgb_addsub0000(6)
    );
  a_Madd_enemy2_rgb_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0000_cy(5),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0000_cy_6_rt_128,
      O => a_Madd_enemy2_rgb_addsub0000_cy(6)
    );
  a_Madd_enemy2_rgb_addsub0000_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_enemy2_rgb_addsub0000_lut(5),
      O => a_enemy2_rgb_addsub0000(5)
    );
  a_Madd_enemy2_rgb_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_enemy2_rgb_addsub0000_lut(5),
      O => a_Madd_enemy2_rgb_addsub0000_cy(5)
    );
  a_Madd_bullet_rgb_addsub0001_xor_10_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(9),
      LI => N0,
      O => a_bullet_rgb_addsub0001(10)
    );
  a_Madd_bullet_rgb_addsub0001_xor_9_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(8),
      LI => a_Madd_bullet_rgb_addsub0001_cy_9_rt_124,
      O => a_bullet_rgb_addsub0001(9)
    );
  a_Madd_bullet_rgb_addsub0001_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(8),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0001_cy_9_rt_124,
      O => a_Madd_bullet_rgb_addsub0001_cy(9)
    );
  a_Madd_bullet_rgb_addsub0001_xor_8_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(7),
      LI => a_Madd_bullet_rgb_addsub0001_cy_8_rt_122,
      O => a_bullet_rgb_addsub0001(8)
    );
  a_Madd_bullet_rgb_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(7),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0001_cy_8_rt_122,
      O => a_Madd_bullet_rgb_addsub0001_cy(8)
    );
  a_Madd_bullet_rgb_addsub0001_xor_7_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(6),
      LI => a_Madd_bullet_rgb_addsub0001_cy_7_rt_120,
      O => a_bullet_rgb_addsub0001(7)
    );
  a_Madd_bullet_rgb_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(6),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0001_cy_7_rt_120,
      O => a_Madd_bullet_rgb_addsub0001_cy(7)
    );
  a_Madd_bullet_rgb_addsub0001_xor_6_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(5),
      LI => a_Madd_bullet_rgb_addsub0001_cy_6_rt_118,
      O => a_bullet_rgb_addsub0001(6)
    );
  a_Madd_bullet_rgb_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(5),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0001_cy_6_rt_118,
      O => a_Madd_bullet_rgb_addsub0001_cy(6)
    );
  a_Madd_bullet_rgb_addsub0001_xor_5_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(4),
      LI => a_Madd_bullet_rgb_addsub0001_cy_5_rt_116,
      O => a_bullet_rgb_addsub0001(5)
    );
  a_Madd_bullet_rgb_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0001_cy(4),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0001_cy_5_rt_116,
      O => a_Madd_bullet_rgb_addsub0001_cy(5)
    );
  a_Madd_bullet_rgb_addsub0001_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_bullet_rgb_addsub0001_lut(4),
      O => a_bullet_rgb_addsub0001(4)
    );
  a_Madd_bullet_rgb_addsub0001_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_bullet_rgb_addsub0001_lut(4),
      O => a_Madd_bullet_rgb_addsub0001_cy(4)
    );
  a_Madd_enemy2_rgb_addsub0001_xor_10_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(9),
      LI => N0,
      O => a_enemy2_rgb_addsub0001(10)
    );
  a_Madd_enemy2_rgb_addsub0001_xor_9_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(8),
      LI => a_Madd_enemy2_rgb_addsub0001_cy_9_rt_144,
      O => a_enemy2_rgb_addsub0001(9)
    );
  a_Madd_enemy2_rgb_addsub0001_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(8),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0001_cy_9_rt_144,
      O => a_Madd_enemy2_rgb_addsub0001_cy(9)
    );
  a_Madd_enemy2_rgb_addsub0001_xor_8_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(7),
      LI => a_Madd_enemy2_rgb_addsub0001_cy_8_rt_142,
      O => a_enemy2_rgb_addsub0001(8)
    );
  a_Madd_enemy2_rgb_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(7),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0001_cy_8_rt_142,
      O => a_Madd_enemy2_rgb_addsub0001_cy(8)
    );
  a_Madd_enemy2_rgb_addsub0001_xor_7_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(6),
      LI => a_Madd_enemy2_rgb_addsub0001_cy_7_rt_140,
      O => a_enemy2_rgb_addsub0001(7)
    );
  a_Madd_enemy2_rgb_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(6),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0001_cy_7_rt_140,
      O => a_Madd_enemy2_rgb_addsub0001_cy(7)
    );
  a_Madd_enemy2_rgb_addsub0001_xor_6_Q : XORCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(5),
      LI => a_Madd_enemy2_rgb_addsub0001_cy_6_rt_138,
      O => a_enemy2_rgb_addsub0001(6)
    );
  a_Madd_enemy2_rgb_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_enemy2_rgb_addsub0001_cy(5),
      DI => N0,
      S => a_Madd_enemy2_rgb_addsub0001_cy_6_rt_138,
      O => a_Madd_enemy2_rgb_addsub0001_cy(6)
    );
  a_Madd_enemy2_rgb_addsub0001_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_enemy2_rgb_addsub0001_lut(5),
      O => a_enemy2_rgb_addsub0001(5)
    );
  a_Madd_enemy2_rgb_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_enemy2_rgb_addsub0001_lut(5),
      O => a_Madd_enemy2_rgb_addsub0001_cy(5)
    );
  a_Madd_bullet_rgb_addsub0000_xor_10_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(9),
      LI => N0,
      O => a_bullet_rgb_addsub0000(10)
    );
  a_Madd_bullet_rgb_addsub0000_xor_9_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(8),
      LI => a_Madd_bullet_rgb_addsub0000_cy_9_rt_112,
      O => a_bullet_rgb_addsub0000(9)
    );
  a_Madd_bullet_rgb_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(8),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0000_cy_9_rt_112,
      O => a_Madd_bullet_rgb_addsub0000_cy(9)
    );
  a_Madd_bullet_rgb_addsub0000_xor_8_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(7),
      LI => a_Madd_bullet_rgb_addsub0000_cy_8_rt_110,
      O => a_bullet_rgb_addsub0000(8)
    );
  a_Madd_bullet_rgb_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(7),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0000_cy_8_rt_110,
      O => a_Madd_bullet_rgb_addsub0000_cy(8)
    );
  a_Madd_bullet_rgb_addsub0000_xor_7_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(6),
      LI => a_Madd_bullet_rgb_addsub0000_cy_7_rt_108,
      O => a_bullet_rgb_addsub0000(7)
    );
  a_Madd_bullet_rgb_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(6),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0000_cy_7_rt_108,
      O => a_Madd_bullet_rgb_addsub0000_cy(7)
    );
  a_Madd_bullet_rgb_addsub0000_xor_6_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(5),
      LI => a_Madd_bullet_rgb_addsub0000_cy_6_rt_106,
      O => a_bullet_rgb_addsub0000(6)
    );
  a_Madd_bullet_rgb_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(5),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0000_cy_6_rt_106,
      O => a_Madd_bullet_rgb_addsub0000_cy(6)
    );
  a_Madd_bullet_rgb_addsub0000_xor_5_Q : XORCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(4),
      LI => a_Madd_bullet_rgb_addsub0000_cy_5_rt_104,
      O => a_bullet_rgb_addsub0000(5)
    );
  a_Madd_bullet_rgb_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => a_Madd_bullet_rgb_addsub0000_cy(4),
      DI => N0,
      S => a_Madd_bullet_rgb_addsub0000_cy_5_rt_104,
      O => a_Madd_bullet_rgb_addsub0000_cy(5)
    );
  a_Madd_bullet_rgb_addsub0000_xor_4_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_bullet_rgb_addsub0000_lut(4),
      O => a_bullet_rgb_addsub0000(4)
    );
  a_Madd_bullet_rgb_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_bullet_rgb_addsub0000_lut(4),
      O => a_Madd_bullet_rgb_addsub0000_cy(4)
    );
  a_Madd_enemy_rgb_addsub0001_xor_10_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(9),
      LI => N0,
      O => a_enemy_rgb_addsub0001(10)
    );
  a_Madd_enemy_rgb_addsub0001_xor_9_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(8),
      LI => a_Madd_enemy_rgb_addsub0001_cy_9_rt_184,
      O => a_enemy_rgb_addsub0001(9)
    );
  a_Madd_enemy_rgb_addsub0001_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(8),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0001_cy_9_rt_184,
      O => a_Madd_enemy_rgb_addsub0001_cy(9)
    );
  a_Madd_enemy_rgb_addsub0001_xor_8_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(7),
      LI => a_Madd_enemy_rgb_addsub0001_cy_8_rt_182,
      O => a_enemy_rgb_addsub0001(8)
    );
  a_Madd_enemy_rgb_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(7),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0001_cy_8_rt_182,
      O => a_Madd_enemy_rgb_addsub0001_cy(8)
    );
  a_Madd_enemy_rgb_addsub0001_xor_7_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(6),
      LI => a_Madd_enemy_rgb_addsub0001_cy_7_rt_180,
      O => a_enemy_rgb_addsub0001(7)
    );
  a_Madd_enemy_rgb_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(6),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0001_cy_7_rt_180,
      O => a_Madd_enemy_rgb_addsub0001_cy(7)
    );
  a_Madd_enemy_rgb_addsub0001_xor_6_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(5),
      LI => a_Madd_enemy_rgb_addsub0001_cy_6_rt_178,
      O => a_enemy_rgb_addsub0001(6)
    );
  a_Madd_enemy_rgb_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0001_cy(5),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0001_cy_6_rt_178,
      O => a_Madd_enemy_rgb_addsub0001_cy(6)
    );
  a_Madd_enemy_rgb_addsub0001_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_enemy_rgb_addsub0001_lut(5),
      O => a_enemy_rgb_addsub0001(5)
    );
  a_Madd_enemy_rgb_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_enemy_rgb_addsub0001_lut(5),
      O => a_Madd_enemy_rgb_addsub0001_cy(5)
    );
  a_Madd_plane_rgb_addsub0001_xor_8_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_plane_rgb_addsub0001_xor_8_rt_197,
      O => a_plane_rgb_addsub0001(8)
    );
  a_Madd_plane_rgb_addsub0001_xor_7_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_plane_rgb_addsub0001_xor_7_rt_196,
      O => a_plane_rgb_addsub0001(7)
    );
  a_Madd_plane_rgb_addsub0000_xor_10_Q : XORCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(9),
      LI => N0,
      O => a_plane_rgb_addsub0000(10)
    );
  a_Madd_plane_rgb_addsub0000_xor_9_Q : XORCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(8),
      LI => a_Madd_plane_rgb_addsub0000_cy_9_rt_194,
      O => a_plane_rgb_addsub0000(9)
    );
  a_Madd_plane_rgb_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(8),
      DI => N0,
      S => a_Madd_plane_rgb_addsub0000_cy_9_rt_194,
      O => a_Madd_plane_rgb_addsub0000_cy(9)
    );
  a_Madd_plane_rgb_addsub0000_xor_8_Q : XORCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(7),
      LI => a_Madd_plane_rgb_addsub0000_cy_8_rt_192,
      O => a_plane_rgb_addsub0000(8)
    );
  a_Madd_plane_rgb_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(7),
      DI => N0,
      S => a_Madd_plane_rgb_addsub0000_cy_8_rt_192,
      O => a_Madd_plane_rgb_addsub0000_cy(8)
    );
  a_Madd_plane_rgb_addsub0000_xor_7_Q : XORCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(6),
      LI => a_Madd_plane_rgb_addsub0000_cy_7_rt_190,
      O => a_plane_rgb_addsub0000(7)
    );
  a_Madd_plane_rgb_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(6),
      DI => N0,
      S => a_Madd_plane_rgb_addsub0000_cy_7_rt_190,
      O => a_Madd_plane_rgb_addsub0000_cy(7)
    );
  a_Madd_plane_rgb_addsub0000_xor_6_Q : XORCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(5),
      LI => a_Madd_plane_rgb_addsub0000_cy_6_rt_188,
      O => a_plane_rgb_addsub0000(6)
    );
  a_Madd_plane_rgb_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_plane_rgb_addsub0000_cy(5),
      DI => N0,
      S => a_Madd_plane_rgb_addsub0000_cy_6_rt_188,
      O => a_Madd_plane_rgb_addsub0000_cy(6)
    );
  a_Madd_plane_rgb_addsub0000_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_plane_rgb_addsub0000_lut(5),
      O => a_plane_rgb_addsub0000(5)
    );
  a_Madd_plane_rgb_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_plane_rgb_addsub0000_lut(5),
      O => a_Madd_plane_rgb_addsub0000_cy(5)
    );
  a_Madd_enemy_rgb_addsub0000_xor_10_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(9),
      LI => N0,
      O => a_enemy_rgb_addsub0000(10)
    );
  a_Madd_enemy_rgb_addsub0000_xor_9_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(8),
      LI => a_Madd_enemy_rgb_addsub0000_cy_9_rt_174,
      O => a_enemy_rgb_addsub0000(9)
    );
  a_Madd_enemy_rgb_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(8),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0000_cy_9_rt_174,
      O => a_Madd_enemy_rgb_addsub0000_cy(9)
    );
  a_Madd_enemy_rgb_addsub0000_xor_8_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(7),
      LI => a_Madd_enemy_rgb_addsub0000_cy_8_rt_172,
      O => a_enemy_rgb_addsub0000(8)
    );
  a_Madd_enemy_rgb_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(7),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0000_cy_8_rt_172,
      O => a_Madd_enemy_rgb_addsub0000_cy(8)
    );
  a_Madd_enemy_rgb_addsub0000_xor_7_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(6),
      LI => a_Madd_enemy_rgb_addsub0000_cy_7_rt_170,
      O => a_enemy_rgb_addsub0000(7)
    );
  a_Madd_enemy_rgb_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(6),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0000_cy_7_rt_170,
      O => a_Madd_enemy_rgb_addsub0000_cy(7)
    );
  a_Madd_enemy_rgb_addsub0000_xor_6_Q : XORCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(5),
      LI => a_Madd_enemy_rgb_addsub0000_cy_6_rt_168,
      O => a_enemy_rgb_addsub0000(6)
    );
  a_Madd_enemy_rgb_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_enemy_rgb_addsub0000_cy(5),
      DI => N0,
      S => a_Madd_enemy_rgb_addsub0000_cy_6_rt_168,
      O => a_Madd_enemy_rgb_addsub0000_cy(6)
    );
  a_Madd_enemy_rgb_addsub0000_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_enemy_rgb_addsub0000_lut(5),
      O => a_enemy_rgb_addsub0000(5)
    );
  a_Madd_enemy_rgb_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_enemy_rgb_addsub0000_lut(5),
      O => a_Madd_enemy_rgb_addsub0000_cy(5)
    );
  a_Madd_enemy3_rgb_addsub0001_xor_10_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(9),
      LI => N0,
      O => a_enemy3_rgb_addsub0001(10)
    );
  a_Madd_enemy3_rgb_addsub0001_xor_9_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(8),
      LI => a_Madd_enemy3_rgb_addsub0001_cy_9_rt_164,
      O => a_enemy3_rgb_addsub0001(9)
    );
  a_Madd_enemy3_rgb_addsub0001_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(8),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0001_cy_9_rt_164,
      O => a_Madd_enemy3_rgb_addsub0001_cy(9)
    );
  a_Madd_enemy3_rgb_addsub0001_xor_8_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(7),
      LI => a_Madd_enemy3_rgb_addsub0001_cy_8_rt_162,
      O => a_enemy3_rgb_addsub0001(8)
    );
  a_Madd_enemy3_rgb_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(7),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0001_cy_8_rt_162,
      O => a_Madd_enemy3_rgb_addsub0001_cy(8)
    );
  a_Madd_enemy3_rgb_addsub0001_xor_7_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(6),
      LI => a_Madd_enemy3_rgb_addsub0001_cy_7_rt_160,
      O => a_enemy3_rgb_addsub0001(7)
    );
  a_Madd_enemy3_rgb_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(6),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0001_cy_7_rt_160,
      O => a_Madd_enemy3_rgb_addsub0001_cy(7)
    );
  a_Madd_enemy3_rgb_addsub0001_xor_6_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(5),
      LI => a_Madd_enemy3_rgb_addsub0001_cy_6_rt_158,
      O => a_enemy3_rgb_addsub0001(6)
    );
  a_Madd_enemy3_rgb_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0001_cy(5),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0001_cy_6_rt_158,
      O => a_Madd_enemy3_rgb_addsub0001_cy(6)
    );
  a_Madd_enemy3_rgb_addsub0001_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_enemy3_rgb_addsub0001_lut(5),
      O => a_enemy3_rgb_addsub0001(5)
    );
  a_Madd_enemy3_rgb_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_enemy3_rgb_addsub0001_lut(5),
      O => a_Madd_enemy3_rgb_addsub0001_cy(5)
    );
  a_Madd_enemy3_rgb_addsub0000_xor_10_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(9),
      LI => N0,
      O => a_enemy3_rgb_addsub0000(10)
    );
  a_Madd_enemy3_rgb_addsub0000_xor_9_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(8),
      LI => a_Madd_enemy3_rgb_addsub0000_cy_9_rt_154,
      O => a_enemy3_rgb_addsub0000(9)
    );
  a_Madd_enemy3_rgb_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(8),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0000_cy_9_rt_154,
      O => a_Madd_enemy3_rgb_addsub0000_cy(9)
    );
  a_Madd_enemy3_rgb_addsub0000_xor_8_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(7),
      LI => a_Madd_enemy3_rgb_addsub0000_cy_8_rt_152,
      O => a_enemy3_rgb_addsub0000(8)
    );
  a_Madd_enemy3_rgb_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(7),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0000_cy_8_rt_152,
      O => a_Madd_enemy3_rgb_addsub0000_cy(8)
    );
  a_Madd_enemy3_rgb_addsub0000_xor_7_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(6),
      LI => a_Madd_enemy3_rgb_addsub0000_cy_7_rt_150,
      O => a_enemy3_rgb_addsub0000(7)
    );
  a_Madd_enemy3_rgb_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(6),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0000_cy_7_rt_150,
      O => a_Madd_enemy3_rgb_addsub0000_cy(7)
    );
  a_Madd_enemy3_rgb_addsub0000_xor_6_Q : XORCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(5),
      LI => a_Madd_enemy3_rgb_addsub0000_cy_6_rt_148,
      O => a_enemy3_rgb_addsub0000(6)
    );
  a_Madd_enemy3_rgb_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => a_Madd_enemy3_rgb_addsub0000_cy(5),
      DI => N0,
      S => a_Madd_enemy3_rgb_addsub0000_cy_6_rt_148,
      O => a_Madd_enemy3_rgb_addsub0000_cy(6)
    );
  a_Madd_enemy3_rgb_addsub0000_xor_5_Q : XORCY
    port map (
      CI => N0,
      LI => a_Madd_enemy3_rgb_addsub0000_lut(5),
      O => a_enemy3_rgb_addsub0000(5)
    );
  a_Madd_enemy3_rgb_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a_Madd_enemy3_rgb_addsub0000_lut(5),
      O => a_Madd_enemy3_rgb_addsub0000_cy(5)
    );
  a_Msub_y_dis_xor_9_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(8),
      LI => a_Msub_y_dis_lut_9_Q,
      O => a_y_dis(9)
    );
  a_Msub_y_dis_xor_8_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(7),
      LI => a_Msub_y_dis_lut_8_Q,
      O => a_y_dis(8)
    );
  a_Msub_y_dis_cy_8_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(7),
      DI => N1,
      S => a_Msub_y_dis_lut_8_Q,
      O => a_Msub_y_dis_cy(8)
    );
  a_Msub_y_dis_xor_7_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(6),
      LI => a_Msub_y_dis_lut_7_Q,
      O => a_y_dis(7)
    );
  a_Msub_y_dis_cy_7_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(6),
      DI => N1,
      S => a_Msub_y_dis_lut_7_Q,
      O => a_Msub_y_dis_cy(7)
    );
  a_Msub_y_dis_xor_6_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(5),
      LI => a_Msub_y_dis_lut_6_Q,
      O => a_y_dis(6)
    );
  a_Msub_y_dis_cy_6_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(5),
      DI => N1,
      S => a_Msub_y_dis_lut_6_Q,
      O => a_Msub_y_dis_cy(6)
    );
  a_Msub_y_dis_xor_5_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(4),
      LI => a_Msub_y_dis_cy_5_rt_1524,
      O => a_y_dis(5)
    );
  a_Msub_y_dis_cy_5_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(4),
      DI => N0,
      S => a_Msub_y_dis_cy_5_rt_1524,
      O => a_Msub_y_dis_cy(5)
    );
  a_Msub_y_dis_xor_4_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(3),
      LI => a_Msub_y_dis_cy_4_rt_1522,
      O => a_y_dis(4)
    );
  a_Msub_y_dis_cy_4_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(3),
      DI => N0,
      S => a_Msub_y_dis_cy_4_rt_1522,
      O => a_Msub_y_dis_cy(4)
    );
  a_Msub_y_dis_xor_3_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(2),
      LI => a_Msub_y_dis_lut_3_Q,
      O => a_y_dis(3)
    );
  a_Msub_y_dis_cy_3_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(2),
      DI => N1,
      S => a_Msub_y_dis_lut_3_Q,
      O => a_Msub_y_dis_cy(3)
    );
  a_Msub_y_dis_xor_2_Q : XORCY
    port map (
      CI => a_Msub_y_dis_cy(1),
      LI => a_Msub_y_dis_lut_2_Q,
      O => a_y_dis(2)
    );
  a_Msub_y_dis_cy_2_Q : MUXCY
    port map (
      CI => a_Msub_y_dis_cy(1),
      DI => N1,
      S => a_Msub_y_dis_lut_2_Q,
      O => a_Msub_y_dis_cy(2)
    );
  a_Msub_y_dis_xor_1_Q : XORCY
    port map (
      CI => N1,
      LI => e_Mcompar_vs_cmp_ge0000_cy_0_rt_3049,
      O => a_y_dis(1)
    );
  a_Msub_y_dis_cy_1_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => a_Msub_y_dis_cy_1_rt_1518,
      O => a_Msub_y_dis_cy(1)
    );
  a_goal_rgb : FDR
    port map (
      C => clk_2977,
      D => a_dd_g,
      R => a_en_g_inv,
      Q => a_goal_rgb_1819
    );
  a_en_0 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_2977,
      D => N0,
      R => a_en_0_not0001_1755,
      S => a_en_0_or0000,
      Q => a_en(0)
    );
  a_enemy2_rgb_1 : FDE
    port map (
      C => clk_2977,
      CE => a_enemy2_rgb_not0001,
      D => a_enemy2_rgb_mux0001(1),
      Q => a_enemy2_rgb(1)
    );
  a_enemy_rgb_1 : FDE
    port map (
      C => clk_2977,
      CE => a_enemy_rgb_not0001,
      D => a_enemy_rgb_mux0001(1),
      Q => a_enemy_rgb(1)
    );
  a_bullet_rgb_1 : FDE
    port map (
      C => clk_2977,
      CE => a_bullet_rgb_not0001,
      D => a_bullet_rgb_mux0001(1),
      Q => a_bullet_rgb(1)
    );
  a_plane_rgb : FDE
    port map (
      C => clk_2977,
      CE => b_life_plane_tmp(0),
      D => a_plane_rgb_mux0001(0),
      Q => a_plane_rgb_1821
    );
  a_enemy3_rgb_1 : FDE
    port map (
      C => clk_2977,
      CE => a_enemy3_rgb_not0001,
      D => a_enemy3_rgb_mux0001(1),
      Q => a_enemy3_rgb(1)
    );
  a_en_g_0 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_2977,
      D => N0,
      R => a_en_g_0_not0001,
      S => a_en_g_0_or0000,
      Q => a_en_g(0)
    );
  e_vcnt_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => e_hcnt(10),
      I1 => e_hcnt(9),
      I2 => e_hcnt(8),
      I3 => e_hcnt(7),
      O => e_vcnt_cmp_eq0000_wg_lut(0)
    );
  e_vcnt_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(0),
      O => e_vcnt_cmp_eq0000_wg_cy(0)
    );
  e_vcnt_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(11),
      I1 => e_hcnt(12),
      I2 => e_hcnt(6),
      I3 => e_hcnt(13),
      O => e_vcnt_cmp_eq0000_wg_lut(1)
    );
  e_vcnt_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(1),
      O => e_vcnt_cmp_eq0000_wg_cy(1)
    );
  e_vcnt_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => e_hcnt(16),
      I1 => e_hcnt(15),
      I2 => e_hcnt(14),
      I3 => e_hcnt(5),
      O => e_vcnt_cmp_eq0000_wg_lut(2)
    );
  e_vcnt_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(2),
      O => e_vcnt_cmp_eq0000_wg_cy(2)
    );
  e_vcnt_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(19),
      I1 => e_hcnt(18),
      I2 => e_hcnt(17),
      I3 => e_hcnt(4),
      O => e_vcnt_cmp_eq0000_wg_lut(3)
    );
  e_vcnt_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(3),
      O => e_vcnt_cmp_eq0000_wg_cy(3)
    );
  e_vcnt_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(20),
      I1 => e_hcnt(21),
      I2 => e_hcnt(3),
      I3 => e_hcnt(22),
      O => e_vcnt_cmp_eq0000_wg_lut(4)
    );
  e_vcnt_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(4),
      O => e_vcnt_cmp_eq0000_wg_cy(4)
    );
  e_vcnt_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(25),
      I1 => e_hcnt(24),
      I2 => e_hcnt(23),
      I3 => e_hcnt(2),
      O => e_vcnt_cmp_eq0000_wg_lut(5)
    );
  e_vcnt_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(5),
      O => e_vcnt_cmp_eq0000_wg_cy(5)
    );
  e_vcnt_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(28),
      I1 => e_hcnt(27),
      I2 => e_hcnt(26),
      I3 => e_hcnt(1),
      O => e_vcnt_cmp_eq0000_wg_lut(6)
    );
  e_vcnt_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(6),
      O => e_vcnt_cmp_eq0000_wg_cy(6)
    );
  e_vcnt_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_hcnt(29),
      I1 => e_hcnt(30),
      I2 => e_hcnt(0),
      I3 => e_hcnt(31),
      O => e_vcnt_cmp_eq0000_wg_lut(7)
    );
  e_vcnt_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => e_vcnt_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => e_vcnt_cmp_eq0000_wg_lut(7),
      O => e_vcnt_cmp_eq0000
    );
  e_vcnt_and0000_wg_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => e_vcnt(7),
      I1 => e_vcnt(8),
      O => e_vcnt_and0000_wg_lut(0)
    );
  e_vcnt_and0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => e_vcnt_and0000_wg_lut(0),
      O => e_vcnt_and0000_wg_cy(0)
    );
  e_vcnt_and0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => e_vcnt(9),
      I1 => e_vcnt(10),
      I2 => e_vcnt(6),
      I3 => e_vcnt(11),
      O => e_vcnt_and0000_wg_lut(1)
    );
  e_vcnt_and0000_wg_cy_1_Q : MUXCY
    port map (
      CI => e_vcnt_and0000_wg_cy(0),
      DI => N0,
      S => e_vcnt_and0000_wg_lut(1),
      O => e_vcnt_and0000_wg_cy(1)
    );
  e_vcnt_and0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(12),
      I1 => e_vcnt(13),
      I2 => e_vcnt(5),
      I3 => e_vcnt(14),
      O => e_vcnt_and0000_wg_lut(2)
    );
  e_vcnt_and0000_wg_cy_2_Q : MUXCY
    port map (
      CI => e_vcnt_and0000_wg_cy(1),
      DI => N0,
      S => e_vcnt_and0000_wg_lut(2),
      O => e_vcnt_and0000_wg_cy(2)
    );
  e_vcnt_and0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(17),
      I1 => e_vcnt(15),
      I2 => e_vcnt(4),
      I3 => e_vcnt(16),
      O => e_vcnt_and0000_wg_lut(3)
    );
  e_vcnt_and0000_wg_cy_3_Q : MUXCY
    port map (
      CI => e_vcnt_and0000_wg_cy(2),
      DI => N0,
      S => e_vcnt_and0000_wg_lut(3),
      O => e_vcnt_and0000_wg_cy(3)
    );
  e_vcnt_and0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => e_vcnt(18),
      I2 => e_vcnt(19),
      I3 => e_vcnt(20),
      O => e_vcnt_and0000_wg_lut(4)
    );
  e_vcnt_and0000_wg_cy_4_Q : MUXCY
    port map (
      CI => e_vcnt_and0000_wg_cy(3),
      DI => N0,
      S => e_vcnt_and0000_wg_lut(4),
      O => e_vcnt_and0000_wg_cy(4)
    );
  e_vcnt_and0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => e_vcnt(2),
      I1 => e_vcnt(21),
      I2 => e_vcnt(22),
      I3 => e_vcnt(23),
      O => e_vcnt_and0000_wg_lut(5)
    );
  e_vcnt_and0000_wg_cy_5_Q : MUXCY
    port map (
      CI => e_vcnt_and0000_wg_cy(4),
      DI => N0,
      S => e_vcnt_and0000_wg_lut(5),
      O => e_vcnt_and0000_wg_cy(5)
    );
  e_vcnt_and0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => e_vcnt(24),
      I1 => e_vcnt(25),
      I2 => e_vcnt(1),
      I3 => e_vcnt(26),
      O => e_vcnt_and0000_wg_lut(6)
    );
  e_vcnt_and0000_wg_cy_6_Q : MUXCY
    port map (
      CI => e_vcnt_and0000_wg_cy(5),
      DI => N0,
      S => e_vcnt_and0000_wg_lut(6),
      O => e_vcnt_and00001
    );
  a_enemy_rgb_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_plane_tmp(0),
      I1 => b_life_enemy_tmp(0),
      O => a_enemy_rgb_not0001
    );
  a_enemy3_rgb_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_plane_tmp(0),
      I1 => b_life_enemy_tmp3(0),
      O => a_enemy3_rgb_not0001
    );
  a_enemy2_rgb_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_plane_tmp(0),
      I1 => b_life_enemy_tmp2(0),
      O => a_enemy2_rgb_not0001
    );
  a_bullet_rgb_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_plane_tmp(0),
      I1 => b_life_bullet_tmp(0),
      O => a_bullet_rgb_not0001
    );
  b_Madd_mux0001_addsub0001_xor_9_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      I1 => b_Madd_mux0001_addsub0001_cy(8),
      O => b_mux0001_addsub0001(9)
    );
  b_Madd_mux0001_addsub0001_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_enemy_y_tmp2(5),
      O => b_mux0001_addsub0001(6)
    );
  b_Madd_mux0001_addsub0000_xor_9_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Madd_mux0001_addsub0000_cy(8),
      O => b_mux0001_addsub0000(9)
    );
  b_Madd_mux0001_addsub0000_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_enemy_x_tmp2(5),
      O => b_mux0001_addsub0000(6)
    );
  b_Madd_mux0000_addsub0001_xor_9_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      I1 => b_Madd_mux0000_addsub0001_cy(8),
      O => b_mux0000_addsub0001(9)
    );
  b_Madd_mux0000_addsub0001_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_enemy_y_tmp3(5),
      O => b_mux0000_addsub0001(6)
    );
  b_Madd_mux0000_addsub0000_xor_9_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Madd_mux0000_addsub0000_cy(8),
      O => b_mux0000_addsub0000(9)
    );
  b_Madd_mux0000_addsub0000_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_enemy_x_tmp3(5),
      O => b_mux0000_addsub0000(6)
    );
  b_Madd_life_plane_tmp_0_addsub0007_xor_9_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0007_cy(8),
      O => b_life_plane_tmp_0_addsub0007(9)
    );
  b_Madd_life_plane_tmp_0_addsub0007_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_enemy_y_tmp(5),
      O => b_life_plane_tmp_0_addsub0007(6)
    );
  b_Madd_life_plane_tmp_0_addsub0006_xor_9_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0006_cy(8),
      O => b_life_plane_tmp_0_addsub0006(9)
    );
  b_Madd_life_plane_tmp_0_addsub0006_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_enemy_x_tmp(5),
      O => b_life_plane_tmp_0_addsub0006(6)
    );
  b_score_tmp_3_and00001 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => b_mux0000_add0002(3),
      I1 => b_score_tmp_and0001,
      I2 => b_score_tmp_and0002,
      O => b_score_tmp_3_and0000
    );
  b_score_tmp_2_and00001 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => b_mux0000_add0002(2),
      I1 => b_score_tmp_and0001,
      I2 => b_score_tmp_and0002,
      O => b_score_tmp_2_and0000
    );
  b_score_tmp_0_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => b_score_tmp(0),
      I1 => b_score_tmp_and0001,
      I2 => b_score_tmp_and0002,
      O => b_score_tmp_0_and0000
    );
  b_life_enemy_tmp3_0_or00001 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_score_tmp_and0001,
      I2 => reset_IBUF1,
      O => b_life_enemy_tmp3_0_or0000
    );
  b_life_enemy_tmp3_0_and00002 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_score_tmp_and0001,
      I1 => reset_IBUF1,
      I2 => b_life_enemy_tmp3(0),
      O => b_life_enemy_tmp3_0_and0000
    );
  b_life_enemy_tmp2_0_or00001 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_score_tmp_and0002,
      I2 => reset_IBUF1,
      O => b_life_enemy_tmp2_0_or0000
    );
  b_life_enemy_tmp2_0_and00002 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_score_tmp_and0002,
      I1 => reset_IBUF1,
      I2 => b_life_enemy_tmp2(0),
      O => b_life_enemy_tmp2_0_and0000
    );
  b_life_bullet_tmp_0_or0001111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_life_enemy_tmp_0_cmp_le0000,
      I1 => b_life_enemy_tmp_0_cmp_ge0000,
      I2 => b_life_enemy_tmp_0_cmp_ge0001,
      O => b_score_tmp_and0000
    );
  b_life_bullet_tmp_0_or00001 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => b_life_bullet_tmp(0),
      I1 => b_life_bullet_tmp_0_or0001,
      I2 => reset_IBUF1,
      O => b_life_bullet_tmp_0_or0000
    );
  b_life_bullet_tmp_0_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_life_bullet_tmp(0),
      I1 => b_life_bullet_tmp_0_or0001,
      I2 => reset_IBUF1,
      O => b_life_bullet_tmp_0_and0000
    );
  a_Msub_num2_addsub0000_Madd_cy_3_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => b_score_tmp(3),
      I1 => b_score_tmp(1),
      I2 => b_score_tmp(2),
      O => a_Msub_num2_addsub0000_Madd_cy(3)
    );
  b_Madd_mux0001_addsub0001_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_enemy_y_tmp2(6),
      I2 => b_enemy_y_tmp2(5),
      O => b_mux0001_addsub0001(7)
    );
  b_Madd_mux0001_addsub0000_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_enemy_x_tmp2(6),
      I2 => b_enemy_x_tmp2(5),
      O => b_mux0001_addsub0000(7)
    );
  b_Madd_mux0000_addsub0001_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_enemy_y_tmp3(6),
      I2 => b_enemy_y_tmp3(5),
      O => b_mux0000_addsub0001(7)
    );
  b_Madd_mux0000_addsub0000_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_enemy_x_tmp3(6),
      I2 => b_enemy_x_tmp3(5),
      O => b_mux0000_addsub0000(7)
    );
  b_Madd_life_plane_tmp_0_addsub0007_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_enemy_y_tmp(6),
      I2 => b_enemy_y_tmp(5),
      O => b_life_plane_tmp_0_addsub0007(7)
    );
  b_Madd_life_plane_tmp_0_addsub0006_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_enemy_x_tmp(6),
      I2 => b_enemy_x_tmp(5),
      O => b_life_plane_tmp_0_addsub0006(7)
    );
  b_score_tmp_3_or00001 : LUT4
    generic map(
      INIT => X"54FF"
    )
    port map (
      I0 => b_mux0000_add0002(3),
      I1 => b_score_tmp_and0002,
      I2 => b_score_tmp_and0001,
      I3 => reset_IBUF1,
      O => b_score_tmp_3_or0000
    );
  b_score_tmp_2_or00001 : LUT4
    generic map(
      INIT => X"54FF"
    )
    port map (
      I0 => b_mux0000_add0002(2),
      I1 => b_score_tmp_and0002,
      I2 => b_score_tmp_and0001,
      I3 => reset_IBUF1,
      O => b_score_tmp_2_or0000
    );
  b_score_tmp_1_or00001 : LUT4
    generic map(
      INIT => X"54FF"
    )
    port map (
      I0 => b_mux0000_add0002(1),
      I1 => b_score_tmp_and0002,
      I2 => b_score_tmp_and0001,
      I3 => reset_IBUF1,
      O => b_score_tmp_1_or0000
    );
  b_score_tmp_0_or00001 : LUT4
    generic map(
      INIT => X"A8FF"
    )
    port map (
      I0 => b_score_tmp(0),
      I1 => b_score_tmp_and0002,
      I2 => b_score_tmp_and0001,
      I3 => reset_IBUF1,
      O => b_score_tmp_0_or0000
    );
  b_life_enemy_tmp_0_or00001 : LUT4
    generic map(
      INIT => X"55D5"
    )
    port map (
      I0 => reset_IBUF1,
      I1 => b_score_tmp_cmp_le0000,
      I2 => b_score_tmp_and0000,
      I3 => b_life_enemy_tmp(0),
      O => b_life_enemy_tmp_0_or0000
    );
  b_life_enemy_tmp_0_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => reset_IBUF1,
      I1 => b_life_enemy_tmp(0),
      I2 => b_score_tmp_and0000,
      I3 => b_score_tmp_cmp_le0000,
      O => b_life_enemy_tmp_0_and0000
    );
  b_life_enemy_tmp3_0_and000011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_life_enemy_tmp3_0_cmp_ge0001,
      I1 => b_life_enemy_tmp3_0_cmp_ge0000,
      I2 => b_life_enemy_tmp3_0_cmp_le0001,
      I3 => b_life_enemy_tmp3_0_cmp_le0000,
      O => b_score_tmp_and0001
    );
  b_life_enemy_tmp2_0_and000011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_life_enemy_tmp2_0_cmp_ge0001,
      I1 => b_life_enemy_tmp2_0_cmp_ge0000,
      I2 => b_life_enemy_tmp2_0_cmp_le0001,
      I3 => b_life_enemy_tmp2_0_cmp_le0000,
      O => b_score_tmp_and0002
    );
  b_life_bullet_tmp_0_or00011 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => b_score_tmp_cmp_le0000,
      I1 => b_score_tmp_and0000,
      I2 => b_score_tmp_and0001,
      I3 => b_score_tmp_and0002,
      O => b_life_bullet_tmp_0_or0001
    );
  b_Msub_mux0001_sub0001_cy_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => b_enemy_y_tmp2(5),
      I2 => b_enemy_y_tmp2(7),
      I3 => b_enemy_y_tmp2(6),
      O => b_Msub_mux0001_sub0001_cy(7)
    );
  b_Msub_mux0001_sub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => b_enemy_x_tmp2(5),
      I2 => b_enemy_x_tmp2(7),
      I3 => b_enemy_x_tmp2(6),
      O => b_Msub_mux0001_sub0000_cy(7)
    );
  b_Msub_mux0000_sub0001_cy_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => b_enemy_y_tmp3(5),
      I2 => b_enemy_y_tmp3(7),
      I3 => b_enemy_y_tmp3(6),
      O => b_Msub_mux0000_sub0001_cy(7)
    );
  b_Msub_mux0000_sub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => b_enemy_x_tmp3(5),
      I2 => b_enemy_x_tmp3(7),
      I3 => b_enemy_x_tmp3(6),
      O => b_Msub_mux0000_sub0000_cy(7)
    );
  b_Msub_life_plane_tmp_0_addsub0005_cy_8_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp3(5),
      I1 => b_enemy_y_tmp3(6),
      I2 => b_enemy_y_tmp3(8),
      I3 => b_enemy_y_tmp3(7),
      O => b_Msub_life_plane_tmp_0_addsub0005_cy(8)
    );
  b_Msub_life_plane_tmp_0_addsub0004_cy_8_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp3(5),
      I1 => b_enemy_x_tmp3(6),
      I2 => b_enemy_x_tmp3(8),
      I3 => b_enemy_x_tmp3(7),
      O => b_Msub_life_plane_tmp_0_addsub0004_cy(8)
    );
  b_Msub_life_plane_tmp_0_addsub0003_cy_8_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp2(5),
      I1 => b_enemy_y_tmp2(6),
      I2 => b_enemy_y_tmp2(8),
      I3 => b_enemy_y_tmp2(7),
      O => b_Msub_life_plane_tmp_0_addsub0003_cy(8)
    );
  b_Msub_life_plane_tmp_0_addsub0002_cy_8_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp2(5),
      I1 => b_enemy_x_tmp2(6),
      I2 => b_enemy_x_tmp2(8),
      I3 => b_enemy_x_tmp2(7),
      O => b_Msub_life_plane_tmp_0_addsub0002_cy(8)
    );
  b_Msub_life_plane_tmp_0_addsub0001_cy_8_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp(5),
      I1 => b_enemy_y_tmp(6),
      I2 => b_enemy_y_tmp(8),
      I3 => b_enemy_y_tmp(7),
      O => b_Msub_life_plane_tmp_0_addsub0001_cy(8)
    );
  b_Msub_life_plane_tmp_0_addsub0000_cy_8_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp(5),
      I1 => b_enemy_x_tmp(6),
      I2 => b_enemy_x_tmp(8),
      I3 => b_enemy_x_tmp(7),
      O => b_Msub_life_plane_tmp_0_addsub0000_cy(8)
    );
  b_Msub_life_enemy_tmp_0_sub0001_cy_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => b_enemy_y_tmp(5),
      I2 => b_enemy_y_tmp(7),
      I3 => b_enemy_y_tmp(6),
      O => b_Msub_life_enemy_tmp_0_sub0001_cy(7)
    );
  b_Msub_life_enemy_tmp_0_sub0000_cy_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => b_enemy_x_tmp(5),
      I2 => b_enemy_x_tmp(7),
      I3 => b_enemy_x_tmp(6),
      O => b_Msub_life_enemy_tmp_0_sub0000_cy(7)
    );
  b_Madd_mux0001_addsub0001_cy_8_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_enemy_y_tmp2(5),
      I3 => b_enemy_y_tmp2(6),
      O => b_Madd_mux0001_addsub0001_cy(8)
    );
  b_Madd_mux0001_addsub0000_cy_8_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_enemy_x_tmp2(8),
      I2 => b_enemy_x_tmp2(5),
      I3 => b_enemy_x_tmp2(6),
      O => b_Madd_mux0001_addsub0000_cy(8)
    );
  b_Madd_mux0000_addsub0001_cy_8_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_enemy_y_tmp3(5),
      I3 => b_enemy_y_tmp3(6),
      O => b_Madd_mux0000_addsub0001_cy(8)
    );
  b_Madd_mux0000_addsub0000_cy_8_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_enemy_x_tmp3(8),
      I2 => b_enemy_x_tmp3(5),
      I3 => b_enemy_x_tmp3(6),
      O => b_Madd_mux0000_addsub0000_cy(8)
    );
  b_Madd_life_plane_tmp_0_addsub0007_cy_8_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_enemy_y_tmp(8),
      I2 => b_enemy_y_tmp(5),
      I3 => b_enemy_y_tmp(6),
      O => b_Madd_life_plane_tmp_0_addsub0007_cy(8)
    );
  b_Madd_life_plane_tmp_0_addsub0006_cy_8_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_enemy_x_tmp(8),
      I2 => b_enemy_x_tmp(5),
      I3 => b_enemy_x_tmp(6),
      O => b_Madd_life_plane_tmp_0_addsub0006_cy(8)
    );
  b_Msub_mux0001_sub0001_xor_7_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_enemy_y_tmp2(7),
      I2 => b_enemy_y_tmp2(5),
      I3 => b_enemy_y_tmp2(4),
      O => b_mux0001_sub0001(7)
    );
  b_Msub_mux0001_sub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_enemy_x_tmp2(7),
      I2 => b_enemy_x_tmp2(5),
      I3 => b_enemy_x_tmp2(4),
      O => b_mux0001_sub0000(7)
    );
  b_Msub_mux0000_sub0001_xor_7_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_enemy_y_tmp3(7),
      I2 => b_enemy_y_tmp3(5),
      I3 => b_enemy_y_tmp3(4),
      O => b_mux0000_sub0001(7)
    );
  b_Msub_mux0000_sub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_enemy_x_tmp3(7),
      I2 => b_enemy_x_tmp3(5),
      I3 => b_enemy_x_tmp3(4),
      O => b_mux0000_sub0000(7)
    );
  b_Msub_life_plane_tmp_0_addsub0005_xor_8_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_enemy_y_tmp3(5),
      I3 => b_enemy_y_tmp3(7),
      O => b_life_plane_tmp_0_addsub0005(8)
    );
  b_Msub_life_plane_tmp_0_addsub0004_xor_8_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_enemy_x_tmp3(8),
      I2 => b_enemy_x_tmp3(5),
      I3 => b_enemy_x_tmp3(7),
      O => b_life_plane_tmp_0_addsub0004(8)
    );
  b_Msub_life_plane_tmp_0_addsub0003_xor_8_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_enemy_y_tmp2(5),
      I3 => b_enemy_y_tmp2(7),
      O => b_life_plane_tmp_0_addsub0003(8)
    );
  b_Msub_life_plane_tmp_0_addsub0002_xor_8_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_enemy_x_tmp2(8),
      I2 => b_enemy_x_tmp2(5),
      I3 => b_enemy_x_tmp2(7),
      O => b_life_plane_tmp_0_addsub0002(8)
    );
  b_Msub_life_plane_tmp_0_addsub0001_xor_8_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_enemy_y_tmp(8),
      I2 => b_enemy_y_tmp(5),
      I3 => b_enemy_y_tmp(7),
      O => b_life_plane_tmp_0_addsub0001(8)
    );
  b_Msub_life_plane_tmp_0_addsub0000_xor_8_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_enemy_x_tmp(8),
      I2 => b_enemy_x_tmp(5),
      I3 => b_enemy_x_tmp(7),
      O => b_life_plane_tmp_0_addsub0000(8)
    );
  b_Msub_life_enemy_tmp_0_sub0001_xor_7_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_enemy_y_tmp(7),
      I2 => b_enemy_y_tmp(5),
      I3 => b_enemy_y_tmp(4),
      O => b_life_enemy_tmp_0_sub0001(7)
    );
  b_Msub_life_enemy_tmp_0_sub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_enemy_x_tmp(7),
      I2 => b_enemy_x_tmp(5),
      I3 => b_enemy_x_tmp(4),
      O => b_life_enemy_tmp_0_sub0000(7)
    );
  b_Madd_mux0001_addsub0001_xor_8_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_enemy_y_tmp2(5),
      I3 => b_enemy_y_tmp2(7),
      O => b_mux0001_addsub0001(8)
    );
  b_Madd_mux0001_addsub0000_xor_8_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_enemy_x_tmp2(8),
      I2 => b_enemy_x_tmp2(5),
      I3 => b_enemy_x_tmp2(7),
      O => b_mux0001_addsub0000(8)
    );
  b_Madd_mux0000_addsub0001_xor_8_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_enemy_y_tmp3(5),
      I3 => b_enemy_y_tmp3(7),
      O => b_mux0000_addsub0001(8)
    );
  b_Madd_mux0000_addsub0000_xor_8_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_enemy_x_tmp3(8),
      I2 => b_enemy_x_tmp3(5),
      I3 => b_enemy_x_tmp3(7),
      O => b_mux0000_addsub0000(8)
    );
  b_Madd_life_plane_tmp_0_addsub0007_xor_8_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_enemy_y_tmp(8),
      I2 => b_enemy_y_tmp(5),
      I3 => b_enemy_y_tmp(7),
      O => b_life_plane_tmp_0_addsub0007(8)
    );
  b_Madd_life_plane_tmp_0_addsub0006_xor_8_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_enemy_x_tmp(8),
      I2 => b_enemy_x_tmp(5),
      I3 => b_enemy_x_tmp(7),
      O => b_life_plane_tmp_0_addsub0006(8)
    );
  b_life_plane_tmp_0_or00009 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_life_plane_tmp_0_cmp_le0000,
      I1 => b_life_plane_tmp_0_cmp_ge0000,
      I2 => b_life_plane_tmp_0_cmp_le0001,
      I3 => b_life_plane_tmp_0_cmp_ge0001,
      O => b_life_plane_tmp_0_or00009_2913
    );
  b_life_plane_tmp_0_or000014 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_life_plane_tmp_0_cmp_le0004,
      I1 => b_life_plane_tmp_0_cmp_ge0004,
      I2 => b_life_plane_tmp_0_cmp_le0005,
      I3 => b_life_plane_tmp_0_cmp_ge0005,
      O => b_life_plane_tmp_0_or000014_2910
    );
  b_life_bullet_tmp_0_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => start_IBUF_4269,
      I1 => fire_IBUF_4254,
      O => b_life_bullet_tmp_0_and0001
    );
  b_bullet_y_tmp_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => reset_IBUF1,
      I1 => start_IBUF_4269,
      O => b_bullet_y_tmp_and0000
    );
  b_bullet_x_tmp_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => fire_IBUF_4254,
      I1 => start_IBUF_4269,
      I2 => reset_IBUF1,
      O => b_bullet_x_tmp_and0000
    );
  a_pic_rgb_1_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => a_bullet_rgb(1),
      I1 => a_enemy_rgb(1),
      I2 => a_enemy3_rgb(1),
      I3 => a_enemy2_rgb(1),
      O => pic_rgb_1_OBUF_4264
    );
  b_Madd_bullet_x_tmp_add0000_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_plane_x_tmp(3),
      O => b_bullet_x_tmp_add0000(4)
    );
  b_Madd_bullet_x_tmp_add0000_xor_5_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_plane_x_tmp(5),
      I1 => b_plane_x_tmp(4),
      I2 => b_plane_x_tmp(3),
      O => b_bullet_x_tmp_add0000(5)
    );
  b_Madd_bullet_x_tmp_add0000_xor_6_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_plane_x_tmp(6),
      I2 => b_plane_x_tmp(3),
      I3 => b_plane_x_tmp(5),
      O => b_bullet_x_tmp_add0000(6)
    );
  a_Msub_y_dis_g_xor_3_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => e_vcnt(2),
      O => a_y_dis_g(3)
    );
  b_Madd_mux0000_add0002_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_score_tmp(1),
      I1 => b_score_tmp(0),
      O => b_mux0000_add0002(1)
    );
  b_Madd_mux0000_add0002_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_score_tmp(2),
      I1 => b_score_tmp(1),
      I2 => b_score_tmp(0),
      O => b_mux0000_add0002(2)
    );
  b_Madd_mux0000_add0002_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_score_tmp(1),
      I1 => b_score_tmp(3),
      I2 => b_score_tmp(0),
      I3 => b_score_tmp(2),
      O => b_mux0000_add0002(3)
    );
  b_life_enemy_tmp_0_and00011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => start_IBUF_4269,
      I1 => b_life_enemy_tmp(0),
      O => b_life_enemy_tmp_0_and0001
    );
  b_life_enemy_tmp3_0_and00011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => start_IBUF_4269,
      I1 => b_life_enemy_tmp3(0),
      O => b_life_enemy_tmp3_0_and0001
    );
  b_life_enemy_tmp2_0_and00011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => start_IBUF_4269,
      I1 => b_life_enemy_tmp2(0),
      O => b_life_enemy_tmp2_0_and0001
    );
  b_bullet_y_tmp_mux0001_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp_addsub0000(1),
      I1 => fire_IBUF_4254,
      O => b_bullet_y_tmp_mux0001(1)
    );
  b_Madd_bullet_x_tmp_add0000_xor_7_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => b_Madd_bullet_x_tmp_add0000_cy(6),
      O => b_bullet_x_tmp_add0000(7)
    );
  b_Madd_bullet_x_tmp_add0000_xor_8_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      I1 => b_plane_x_tmp(7),
      I2 => b_Madd_bullet_x_tmp_add0000_cy(6),
      O => b_bullet_x_tmp_add0000(8)
    );
  b_Madd_bullet_x_tmp_add0000_cy_6_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_plane_x_tmp(5),
      I1 => b_plane_x_tmp(6),
      I2 => b_plane_x_tmp(3),
      I3 => b_plane_x_tmp(4),
      O => b_Madd_bullet_x_tmp_add0000_cy(6)
    );
  b_Madd_bullet_x_tmp_add0000_xor_9_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => b_plane_x_tmp(9),
      I2 => b_Madd_bullet_x_tmp_add0000_cy(6),
      I3 => b_plane_x_tmp(8),
      O => b_bullet_x_tmp_add0000(9)
    );
  b_enemy_y_tmp_mux0001_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(0),
      O => b_enemy_y_tmp_mux0001(9)
    );
  b_enemy_y_tmp3_mux0001_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(0),
      O => b_enemy_y_tmp3_mux0001(9)
    );
  b_enemy_y_tmp2_mux0001_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(0),
      O => b_enemy_y_tmp2_mux0001(9)
    );
  b_enemy_x_tmp_mux0001_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(0),
      O => b_enemy_x_tmp_mux0001(9)
    );
  b_enemy_x_tmp3_mux0001_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(0),
      O => b_enemy_x_tmp3_mux0001(9)
    );
  b_enemy_x_tmp2_mux0001_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(0),
      O => b_enemy_x_tmp2_mux0001(9)
    );
  b_bullet_y_tmp_mux0001_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp_addsub0000(2),
      I1 => fire_IBUF_4254,
      O => b_bullet_y_tmp_mux0001(2)
    );
  a_d_Madd_data_not0000_2_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => e_hcnt(2),
      O => a_d_Madd_data_not0000(2)
    );
  b_dx_e_cmp_ge000019 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => b_dx_e_cmp_ge000016_2641,
      I2 => b_enemy_x_tmp(3),
      I3 => b_enemy_x_tmp(2),
      O => b_dx_e_cmp_ge000019_2642
    );
  b_dx_e3_cmp_ge000019 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => b_dx_e3_cmp_ge000016_2629,
      I2 => b_enemy_x_tmp3(3),
      I3 => b_enemy_x_tmp3(2),
      O => b_dx_e3_cmp_ge000019_2630
    );
  b_dx_e2_cmp_ge000019 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => b_dx_e2_cmp_ge000016_2617,
      I2 => b_enemy_x_tmp2(3),
      I3 => b_enemy_x_tmp2(2),
      O => b_dx_e2_cmp_ge000019_2618
    );
  b_enemy_y_tmp_mux0001_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(1),
      O => b_enemy_y_tmp_mux0001(8)
    );
  b_enemy_y_tmp3_mux0001_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(1),
      O => b_enemy_y_tmp3_mux0001(8)
    );
  b_enemy_y_tmp2_mux0001_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(1),
      O => b_enemy_y_tmp2_mux0001(8)
    );
  b_enemy_x_tmp_mux0001_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(1),
      O => b_enemy_x_tmp_mux0001(8)
    );
  b_enemy_x_tmp3_mux0001_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(1),
      O => b_enemy_x_tmp3_mux0001(8)
    );
  b_enemy_x_tmp2_mux0001_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(1),
      O => b_enemy_x_tmp2_mux0001(8)
    );
  b_bullet_y_tmp_mux0001_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp_addsub0000(3),
      I1 => fire_IBUF_4254,
      O => b_bullet_y_tmp_mux0001(3)
    );
  b_enemy_y_tmp_mux0001_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(2),
      O => b_enemy_y_tmp_mux0001(7)
    );
  b_enemy_y_tmp3_mux0001_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(2),
      O => b_enemy_y_tmp3_mux0001(7)
    );
  b_enemy_y_tmp2_mux0001_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(2),
      O => b_enemy_y_tmp2_mux0001(7)
    );
  b_enemy_x_tmp_mux0001_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(2),
      O => b_enemy_x_tmp_mux0001(7)
    );
  b_enemy_x_tmp3_mux0001_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(2),
      O => b_enemy_x_tmp3_mux0001(7)
    );
  b_enemy_x_tmp2_mux0001_7_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(2),
      O => b_enemy_x_tmp2_mux0001(7)
    );
  b_bullet_y_tmp_mux0001_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fire_IBUF_4254,
      I1 => b_bullet_y_tmp_addsub0000(4),
      I2 => b_plane_y_tmp(8),
      O => b_bullet_y_tmp_mux0001(4)
    );
  b_enemy_y_tmp_mux0001_6_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(3),
      O => b_enemy_y_tmp_mux0001(6)
    );
  b_enemy_y_tmp3_mux0001_6_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(3),
      O => b_enemy_y_tmp3_mux0001(6)
    );
  b_enemy_y_tmp2_mux0001_6_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(3),
      O => b_enemy_y_tmp2_mux0001(6)
    );
  b_enemy_x_tmp_mux0001_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(3),
      O => b_enemy_x_tmp_mux0001(6)
    );
  b_enemy_x_tmp3_mux0001_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(3),
      O => b_enemy_x_tmp3_mux0001(6)
    );
  b_enemy_x_tmp2_mux0001_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(3),
      O => b_enemy_x_tmp2_mux0001(6)
    );
  b_bullet_y_tmp_mux0001_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp_addsub0000(5),
      I1 => fire_IBUF_4254,
      O => b_bullet_y_tmp_mux0001(5)
    );
  b_enemy_y_tmp_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(4),
      O => b_enemy_y_tmp_mux0001(5)
    );
  b_enemy_y_tmp3_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(4),
      O => b_enemy_y_tmp3_mux0001(5)
    );
  b_enemy_y_tmp2_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(4),
      O => b_enemy_y_tmp2_mux0001(5)
    );
  b_enemy_x_tmp_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(4),
      O => b_enemy_x_tmp_mux0001(5)
    );
  b_enemy_x_tmp3_mux0001_5_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(4),
      O => b_enemy_x_tmp3_mux0001(5)
    );
  b_enemy_x_tmp2_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(4),
      O => b_enemy_x_tmp2_mux0001(5)
    );
  b_bullet_y_tmp_mux0001_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp_addsub0000(6),
      I1 => fire_IBUF_4254,
      O => b_bullet_y_tmp_mux0001(6)
    );
  b_enemy_y_tmp_mux0001_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(5),
      O => b_enemy_y_tmp_mux0001(4)
    );
  b_enemy_y_tmp3_mux0001_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(5),
      O => b_enemy_y_tmp3_mux0001(4)
    );
  b_enemy_y_tmp2_mux0001_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(5),
      O => b_enemy_y_tmp2_mux0001(4)
    );
  b_enemy_x_tmp_mux0001_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(5),
      O => b_enemy_x_tmp_mux0001(4)
    );
  b_enemy_x_tmp3_mux0001_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(5),
      O => b_enemy_x_tmp3_mux0001(4)
    );
  b_enemy_x_tmp2_mux0001_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(5),
      O => b_enemy_x_tmp2_mux0001(4)
    );
  b_bullet_y_tmp_mux0001_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fire_IBUF_4254,
      I1 => b_bullet_y_tmp_addsub0000(7),
      I2 => b_plane_y_tmp(8),
      O => b_bullet_y_tmp_mux0001(7)
    );
  b_enemy_y_tmp_mux0001_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(6),
      O => b_enemy_y_tmp_mux0001(3)
    );
  b_enemy_y_tmp3_mux0001_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(6),
      O => b_enemy_y_tmp3_mux0001(3)
    );
  b_enemy_y_tmp2_mux0001_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(6),
      O => b_enemy_y_tmp2_mux0001(3)
    );
  b_enemy_x_tmp_mux0001_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(6),
      O => b_enemy_x_tmp_mux0001(3)
    );
  b_enemy_x_tmp3_mux0001_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(6),
      O => b_enemy_x_tmp3_mux0001(3)
    );
  b_enemy_x_tmp2_mux0001_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(6),
      O => b_enemy_x_tmp2_mux0001(3)
    );
  b_bullet_y_tmp_mux0001_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fire_IBUF_4254,
      I1 => b_bullet_y_tmp_addsub0000(8),
      I2 => b_plane_y_tmp(8),
      O => b_bullet_y_tmp_mux0001(8)
    );
  b_dy_e_cmp_ge000028 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => b_enemy_y_tmp(3),
      I2 => b_enemy_y_tmp(2),
      I3 => b_enemy_y_tmp(1),
      O => b_dy_e_cmp_ge000028_2667
    );
  b_dy_e3_cmp_ge000028 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => b_enemy_y_tmp3(3),
      I2 => b_enemy_y_tmp3(2),
      I3 => b_enemy_y_tmp3(1),
      O => b_dy_e3_cmp_ge000028_2659
    );
  b_dy_e2_cmp_ge000028 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => b_enemy_y_tmp2(3),
      I2 => b_enemy_y_tmp2(2),
      I3 => b_enemy_y_tmp2(1),
      O => b_dy_e2_cmp_ge000028_2650
    );
  b_dy_e_and000039 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => start_IBUF_4269,
      O => b_dx_e_and000042
    );
  b_dy_e_and000043 : LUT4
    generic map(
      INIT => X"CCC4"
    )
    port map (
      I0 => b_dy_e_cmp_ge0000,
      I1 => b_dx_e_and000042,
      I2 => b_enemy_y_tmp(9),
      I3 => b_dy_e_and000022_2664,
      O => b_dy_e_and0000
    );
  b_dy_e3_and000039 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => start_IBUF_4269,
      O => b_dx_e3_and000042
    );
  b_dy_e3_and000043 : LUT4
    generic map(
      INIT => X"CCC4"
    )
    port map (
      I0 => b_dy_e3_cmp_ge0000,
      I1 => b_dx_e3_and000042,
      I2 => b_enemy_y_tmp3(9),
      I3 => b_dy_e3_and000022_2656,
      O => b_dy_e3_and0000
    );
  b_dy_e2_and000039 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => start_IBUF_4269,
      O => b_dx_e2_and000042
    );
  b_dy_e2_and000043 : LUT4
    generic map(
      INIT => X"CCC4"
    )
    port map (
      I0 => b_dy_e2_cmp_ge0000,
      I1 => b_dx_e2_and000042,
      I2 => b_enemy_y_tmp2(9),
      I3 => b_dy_e2_and000022_2647,
      O => b_dy_e2_and0000
    );
  b_enemy_y_tmp_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(7),
      O => b_enemy_y_tmp_mux0001(2)
    );
  b_enemy_y_tmp3_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(7),
      O => b_enemy_y_tmp3_mux0001(2)
    );
  b_enemy_y_tmp2_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(7),
      O => b_enemy_y_tmp2_mux0001(2)
    );
  b_enemy_x_tmp_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(7),
      O => b_enemy_x_tmp_mux0001(2)
    );
  b_enemy_x_tmp3_mux0001_2_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(7),
      O => b_enemy_x_tmp3_mux0001(2)
    );
  b_enemy_x_tmp2_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(7),
      O => b_enemy_x_tmp2_mux0001(2)
    );
  b_bullet_y_tmp_mux0001_9_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp_addsub0000(9),
      I1 => fire_IBUF_4254,
      O => b_bullet_y_tmp_mux0001(9)
    );
  b_enemy_y_tmp_mux0001_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(8),
      O => b_enemy_y_tmp_mux0001(1)
    );
  b_enemy_y_tmp3_mux0001_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(8),
      O => b_enemy_y_tmp3_mux0001(1)
    );
  b_enemy_y_tmp2_mux0001_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(8),
      O => b_enemy_y_tmp2_mux0001(1)
    );
  b_enemy_x_tmp_mux0001_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(8),
      O => b_enemy_x_tmp_mux0001(1)
    );
  b_enemy_x_tmp3_mux0001_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(8),
      O => b_enemy_x_tmp3_mux0001(1)
    );
  b_enemy_x_tmp2_mux0001_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(8),
      O => b_enemy_x_tmp2_mux0001(1)
    );
  b_enemy_y_tmp_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_y_tmp_addsub0000(9),
      O => b_enemy_y_tmp_mux0001(0)
    );
  b_enemy_y_tmp3_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_y_tmp3_addsub0000(9),
      O => b_enemy_y_tmp3_mux0001(0)
    );
  b_enemy_y_tmp2_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_y_tmp2_addsub0000(9),
      O => b_enemy_y_tmp2_mux0001(0)
    );
  b_enemy_x_tmp_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp(0),
      I1 => b_enemy_x_tmp_addsub0000(9),
      O => b_enemy_x_tmp_mux0001(0)
    );
  b_enemy_x_tmp3_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp3(0),
      I1 => b_enemy_x_tmp3_addsub0000(9),
      O => b_enemy_x_tmp3_mux0001(0)
    );
  b_enemy_x_tmp2_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_life_enemy_tmp2(0),
      I1 => b_enemy_x_tmp2_addsub0000(9),
      O => b_enemy_x_tmp2_mux0001(0)
    );
  b_dx_e_and000011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => b_enemy_x_tmp(3),
      I2 => b_enemy_x_tmp(2),
      I3 => b_dx_e_and00006_2639,
      O => b_dx_e_and000011_2636
    );
  b_dx_e_and000034 : LUT4
    generic map(
      INIT => X"A8FF"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0000_cy(8),
      I2 => b_dx_e_and000011_2636,
      I3 => b_dx_e_cmp_ge0000,
      O => b_dx_e_and000034_2637
    );
  b_dx_e3_and000011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => b_enemy_x_tmp3(3),
      I2 => b_enemy_x_tmp3(2),
      I3 => b_dx_e3_and00006_2627,
      O => b_dx_e3_and000011_2624
    );
  b_dx_e3_and000034 : LUT4
    generic map(
      INIT => X"A8FF"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0004_cy(8),
      I2 => b_dx_e3_and000011_2624,
      I3 => b_dx_e3_cmp_ge0000,
      O => b_dx_e3_and000034_2625
    );
  b_dx_e2_and000011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => b_enemy_x_tmp2(3),
      I2 => b_enemy_x_tmp2(2),
      I3 => b_dx_e2_and00006_2615,
      O => b_dx_e2_and000011_2612
    );
  b_dx_e2_and000034 : LUT4
    generic map(
      INIT => X"A8FF"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0002_cy(8),
      I2 => b_dx_e2_and000011_2612,
      I3 => b_dx_e2_cmp_ge0000,
      O => b_dx_e2_and000034_2613
    );
  b_plane_x_tmp_and000017 : LUT4
    generic map(
      INIT => X"DDDF"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => b_plane_x_tmp_and000012_2953,
      I2 => b_plane_x_tmp(0),
      I3 => b_plane_x_tmp(1),
      O => b_plane_x_tmp_and000017_2954
    );
  b_plane_x_tmp_and000032 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      I1 => b_plane_x_tmp(5),
      I2 => b_plane_x_tmp(6),
      I3 => b_plane_x_tmp(7),
      O => b_plane_x_tmp_and000032_2955
    );
  b_plane_x_tmp_and000064 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => key_r_IBUF_4259,
      I1 => key_l_IBUF_4257,
      O => b_plane_x_tmp_and000064_2956
    );
  b_plane_x_tmp_and000068 : LUT4
    generic map(
      INIT => X"C444"
    )
    port map (
      I0 => b_plane_x_tmp(9),
      I1 => b_plane_x_tmp_and000064_2956,
      I2 => b_plane_x_tmp_and000032_2955,
      I3 => b_plane_x_tmp_and000017_2954,
      O => b_plane_x_tmp_and000068_2957
    );
  b_plane_x_tmp_and0000101 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => start_IBUF_4269,
      I1 => b_plane_x_tmp_not0001_inv,
      I2 => b_plane_x_tmp_and000068_2957,
      O => b_plane_x_tmp_and0000
    );
  a_en_0_not0001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => a_y_dis(9),
      I1 => a_y_dis(8),
      I2 => a_y_dis(7),
      I3 => N01,
      O => a_en_0_not0001_1755
    );
  a_pic_rgb_0_1 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => a_en(0),
      I1 => a_dd,
      I2 => a_plane_rgb_1821,
      I3 => a_goal_rgb_1819,
      O => pic_rgb_0_OBUF_4263
    );
  a_Msub_y_dis_g_cy_3_11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => e_vcnt(2),
      O => a_Msub_y_dis_g_cy(3)
    );
  a_Msub_x_bullet_Madd_xor_3_11 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => b_bullet_x_tmp(3),
      I2 => a_Msub_x_bullet_Madd_cy(2),
      O => a_x_bullet(3)
    );
  a_addr_g_mux0000_4_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => a_addr_cmp_lt0000,
      I1 => a_en_0_or0000,
      O => a_addr_g_mux0000(4)
    );
  a_addr_g_mux0000_6_1 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => a_addr_cmp_lt0000,
      I1 => N199,
      I2 => a_en_0_or0000,
      O => a_addr_g_mux0000(6)
    );
  a_addr_g_mux0000_5_1 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => a_addr_cmp_lt0000,
      I1 => a_en_0_or0000,
      I2 => a_addr_g_cmp_lt0001,
      O => a_addr_g_mux0000(5)
    );
  a_addr_g_mux0000_3_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => a_addr_cmp_lt0000,
      I1 => a_en_0_or0000,
      I2 => a_addr_g_cmp_lt0001,
      O => a_addr_g_mux0000(3)
    );
  a_addr_mux0002_6_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b_score_tmp(2),
      I1 => b_score_tmp(1),
      O => N4
    );
  a_addr_mux0002_6_Q : LUT4
    generic map(
      INIT => X"7800"
    )
    port map (
      I0 => N4,
      I1 => a_num1(0),
      I2 => b_score_tmp(3),
      I3 => a_N5,
      O => a_addr_mux0002(6)
    );
  a_addr_g_cmp_lt00011_SW0 : LUT4
    generic map(
      INIT => X"48FF"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => e_hcnt(5),
      I2 => a_Msub_x_dis_g_cy_3_Q,
      I3 => a_N85,
      O => N6
    );
  a_addr_mux0002_7_1 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => a_num1(0),
      I1 => a_Msub_num2_addsub0000_Madd_cy(3),
      I2 => N200,
      O => a_addr_mux0002(7)
    );
  a_addr_mux0002_3_2 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => b_score_tmp(0),
      I1 => a_num1(0),
      I2 => a_N5,
      O => a_addr_mux0002(3)
    );
  a_addr_mux0002_4_1 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => b_score_tmp(1),
      I1 => a_num1(0),
      I2 => a_N5,
      O => a_addr_mux0002(4)
    );
  a_addr_mux0002_5_1 : LUT4
    generic map(
      INIT => X"D200"
    )
    port map (
      I0 => a_num1(0),
      I1 => b_score_tmp(1),
      I2 => b_score_tmp(2),
      I3 => a_N5,
      O => a_addr_mux0002(5)
    );
  a_addr_mux0002_3_1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => a_y_dis(4),
      I1 => a_y_dis(5),
      I2 => a_y_dis(6),
      I3 => a_y_dis(7),
      O => N8
    );
  a_addr_cmp_lt00001_SW0 : LUT4
    generic map(
      INIT => X"7EFF"
    )
    port map (
      I0 => e_hcnt(4),
      I1 => a_Msub_x_dis_g_cy_3_Q,
      I2 => e_hcnt(5),
      I3 => N213,
      O => N10
    );
  a_addr_cmp_lt00001 : LUT4
    generic map(
      INIT => X"0021"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => N10,
      I2 => a_Msub_x_dis_g_cy_7_Q,
      I3 => N210,
      O => a_addr_cmp_lt0000
    );
  a_b3_Mrom_d_rom00002 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => a_y_enemy3(3),
      I1 => a_y_enemy3(2),
      I2 => a_y_enemy3(4),
      I3 => N12,
      O => a_b3_Mrom_d_rom00002_1689
    );
  a_b2_Mrom_d_rom00002 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => a_y_enemy2(3),
      I1 => a_y_enemy2(2),
      I2 => a_y_enemy2(4),
      I3 => N14,
      O => a_b2_Mrom_d_rom00002_1663
    );
  a_b1_Mrom_d_rom00002 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => a_y_enemy(3),
      I1 => a_y_enemy(2),
      I2 => a_y_enemy(4),
      I3 => N16,
      O => a_b1_Mrom_d_rom00002_1637
    );
  a_Msub_x_dis_g_cy_7_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => e_hcnt(7),
      I1 => a_Msub_x_dis_g_cy_6_Q,
      O => a_Msub_x_dis_g_cy_7_Q
    );
  a_Msub_x_dis_g_cy_6_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => e_hcnt(5),
      I2 => e_hcnt(4),
      I3 => N201,
      O => a_Msub_x_dis_g_cy_6_Q
    );
  a_b3_Mrom_d_rom0000241 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => a_y_enemy3(1),
      I1 => a_y_enemy3(2),
      I2 => a_y_enemy3(3),
      I3 => a_y_enemy3(4),
      O => a_b3_Mmux_varindex0000_11
    );
  a_b2_Mrom_d_rom0000241 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => a_y_enemy2(1),
      I1 => a_y_enemy2(2),
      I2 => a_y_enemy2(3),
      I3 => a_y_enemy2(4),
      O => a_b2_Mmux_varindex0000_11
    );
  a_b1_Mrom_d_rom0000241 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => a_y_enemy(1),
      I1 => a_y_enemy(2),
      I2 => a_y_enemy(3),
      I3 => a_y_enemy(4),
      O => a_b1_Mmux_varindex0000_11
    );
  a_Msub_y_bullet_Madd_xor_3_11 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => e_vcnt(3),
      I1 => b_bullet_y_tmp(3),
      I2 => N211,
      O => a_y_bullet(3)
    );
  a_bullet_rgb_mux0001_1_Q : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => N22,
      I1 => a_bullet_rgb_cmp_ge0001,
      I2 => a_bullet_rgb_cmp_ge0000,
      I3 => a_c_varindex0000,
      O => a_bullet_rgb_mux0001(1)
    );
  a_a_Mrom_d_rom00002 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_y_plane(4),
      I1 => a_y_plane(2),
      I2 => a_y_plane(3),
      I3 => N203,
      O => a_a_Mmux_varindex0000_11
    );
  a_b3_Mrom_d_rom000010_SW0 : LUT4
    generic map(
      INIT => X"3FFD"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      O => N26
    );
  a_b2_Mrom_d_rom000010_SW0 : LUT4
    generic map(
      INIT => X"3FFD"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      O => N28
    );
  a_b1_Mrom_d_rom000010_SW0 : LUT4
    generic map(
      INIT => X"3FFD"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      O => N30
    );
  a_b3_Mrom_d_rom0000122 : LUT4
    generic map(
      INIT => X"FFE1"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(4),
      I3 => N204,
      O => a_b3_Mrom_d_rom000012
    );
  a_b2_Mrom_d_rom0000122 : LUT4
    generic map(
      INIT => X"FFE1"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(4),
      I3 => N205,
      O => a_b2_Mrom_d_rom000012
    );
  a_b1_Mrom_d_rom0000122 : LUT4
    generic map(
      INIT => X"FFE1"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(4),
      I3 => N206,
      O => a_b1_Mrom_d_rom000012
    );
  a_b3_Mrom_d_rom0000111 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(4),
      I3 => a_N20,
      O => a_b3_Mrom_d_rom000011
    );
  a_b2_Mrom_d_rom0000111 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(4),
      I3 => a_N19,
      O => a_b2_Mrom_d_rom000011
    );
  a_b1_Mrom_d_rom0000111 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(4),
      I3 => a_N18,
      O => a_b1_Mrom_d_rom000011
    );
  a_a_Mrom_d_rom00001221 : LUT4
    generic map(
      INIT => X"03FE"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => a_N7
    );
  a_a_Mrom_d_rom0000101 : LUT4
    generic map(
      INIT => X"9FFB"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(4),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => a_a_Mrom_d_rom000010
    );
  a_b3_Mrom_d_rom00001321 : LUT4
    generic map(
      INIT => X"DE1D"
    )
    port map (
      I0 => a_y_enemy3(1),
      I1 => a_y_enemy3(2),
      I2 => a_y_enemy3(3),
      I3 => a_y_enemy3(4),
      O => a_N54
    );
  a_b2_Mrom_d_rom00001321 : LUT4
    generic map(
      INIT => X"DE1D"
    )
    port map (
      I0 => a_y_enemy2(1),
      I1 => a_y_enemy2(2),
      I2 => a_y_enemy2(3),
      I3 => a_y_enemy2(4),
      O => a_N53
    );
  a_b1_Mrom_d_rom00001321 : LUT4
    generic map(
      INIT => X"DE1D"
    )
    port map (
      I0 => a_y_enemy(1),
      I1 => a_y_enemy(2),
      I2 => a_y_enemy(3),
      I3 => a_y_enemy(4),
      O => a_N52
    );
  a_x_enemy_2_2 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy(2),
      I1 => a_x_enemy(1),
      I2 => a_b1_Mrom_d_rom00002_1637,
      I3 => a_b1_Mmux_varindex0000_10_f5,
      O => a_x_enemy_2_1
    );
  a_x_enemy3_2_2 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy3(2),
      I1 => a_x_enemy3(1),
      I2 => a_b3_Mrom_d_rom00002_1689,
      I3 => a_b3_Mmux_varindex0000_10_f5,
      O => a_x_enemy3_2_1
    );
  a_x_enemy2_2_2 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy2(2),
      I1 => a_x_enemy2(1),
      I2 => a_b2_Mrom_d_rom00002_1663,
      I3 => a_b2_Mmux_varindex0000_10_f5,
      O => a_x_enemy2_2_1
    );
  a_x_enemy_2_11 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_enemy(2),
      I1 => a_b1_Mrom_d_rom00002_1637,
      I2 => a_x_enemy(1),
      I3 => a_b1_Mmux_varindex0000_11_f5_1622,
      O => a_x_enemy_2_2_1859
    );
  a_x_enemy3_2_11 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_enemy3(2),
      I1 => a_b3_Mrom_d_rom00002_1689,
      I2 => a_x_enemy3(1),
      I3 => a_b3_Mmux_varindex0000_11_f5_1674,
      O => a_x_enemy3_2_2_1852
    );
  a_x_enemy2_2_11 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_enemy2(2),
      I1 => a_b2_Mrom_d_rom00002_1663,
      I2 => a_x_enemy2(1),
      I3 => a_b2_Mmux_varindex0000_11_f5_1648,
      O => a_x_enemy2_2_2_1845
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF1
    );
  start_IBUF : IBUF
    port map (
      I => start,
      O => start_IBUF_4269
    );
  fire_IBUF : IBUF
    port map (
      I => fire,
      O => fire_IBUF_4254
    );
  key_l_IBUF : IBUF
    port map (
      I => key_l,
      O => key_l_IBUF_4257
    );
  key_r_IBUF : IBUF
    port map (
      I => key_r,
      O => key_r_IBUF_4259
    );
  hs_OBUF : OBUF
    port map (
      I => e_hs_3369,
      O => hs
    );
  vs_OBUF : OBUF
    port map (
      I => e_vs_3441,
      O => vs
    );
  pic_rgb_2_OBUF : OBUF
    port map (
      I => N0,
      O => pic_rgb(2)
    );
  pic_rgb_1_OBUF : OBUF
    port map (
      I => pic_rgb_1_OBUF_4264,
      O => pic_rgb(1)
    );
  pic_rgb_0_OBUF : OBUF
    port map (
      I => pic_rgb_0_OBUF_4263,
      O => pic_rgb(0)
    );
  e_Mcount_vcnt_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(30),
      O => e_Mcount_vcnt_cy_30_rt_3255
    );
  e_Mcount_vcnt_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(29),
      O => e_Mcount_vcnt_cy_29_rt_3251
    );
  e_Mcount_vcnt_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(28),
      O => e_Mcount_vcnt_cy_28_rt_3249
    );
  e_Mcount_vcnt_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(27),
      O => e_Mcount_vcnt_cy_27_rt_3247
    );
  e_Mcount_vcnt_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(26),
      O => e_Mcount_vcnt_cy_26_rt_3245
    );
  e_Mcount_vcnt_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(25),
      O => e_Mcount_vcnt_cy_25_rt_3243
    );
  e_Mcount_vcnt_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(24),
      O => e_Mcount_vcnt_cy_24_rt_3241
    );
  e_Mcount_vcnt_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(23),
      O => e_Mcount_vcnt_cy_23_rt_3239
    );
  e_Mcount_vcnt_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(22),
      O => e_Mcount_vcnt_cy_22_rt_3237
    );
  e_Mcount_vcnt_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(21),
      O => e_Mcount_vcnt_cy_21_rt_3235
    );
  e_Mcount_vcnt_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(20),
      O => e_Mcount_vcnt_cy_20_rt_3233
    );
  e_Mcount_vcnt_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(19),
      O => e_Mcount_vcnt_cy_19_rt_3229
    );
  e_Mcount_vcnt_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(18),
      O => e_Mcount_vcnt_cy_18_rt_3227
    );
  e_Mcount_vcnt_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(17),
      O => e_Mcount_vcnt_cy_17_rt_3225
    );
  e_Mcount_vcnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(16),
      O => e_Mcount_vcnt_cy_16_rt_3223
    );
  e_Mcount_vcnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(15),
      O => e_Mcount_vcnt_cy_15_rt_3221
    );
  e_Mcount_vcnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(14),
      O => e_Mcount_vcnt_cy_14_rt_3219
    );
  e_Mcount_vcnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(13),
      O => e_Mcount_vcnt_cy_13_rt_3217
    );
  e_Mcount_vcnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(12),
      O => e_Mcount_vcnt_cy_12_rt_3215
    );
  e_Mcount_vcnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(11),
      O => e_Mcount_vcnt_cy_11_rt_3213
    );
  e_Mcount_vcnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(10),
      O => e_Mcount_vcnt_cy_10_rt_3211
    );
  e_Mcount_vcnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(9),
      O => e_Mcount_vcnt_cy_9_rt_3269
    );
  e_Mcount_vcnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(8),
      O => e_Mcount_vcnt_cy_8_rt_3267
    );
  e_Mcount_vcnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(7),
      O => e_Mcount_vcnt_cy_7_rt_3265
    );
  e_Mcount_vcnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(6),
      O => e_Mcount_vcnt_cy_6_rt_3263
    );
  e_Mcount_vcnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(5),
      O => e_Mcount_vcnt_cy_5_rt_3261
    );
  e_Mcount_vcnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(4),
      O => e_Mcount_vcnt_cy_4_rt_3259
    );
  e_Mcount_vcnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(3),
      O => e_Mcount_vcnt_cy_3_rt_3257
    );
  e_Mcount_vcnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(2),
      O => e_Mcount_vcnt_cy_2_rt_3253
    );
  e_Mcount_vcnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(1),
      O => e_Mcount_vcnt_cy_1_rt_3231
    );
  e_Mcompar_vs_cmp_ge0000_cy_5_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(9),
      O => e_Mcompar_vs_cmp_ge0000_cy_5_1_rt_3070
    );
  e_Mcompar_vs_cmp_ge0000_cy_0_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(0),
      O => e_Mcompar_vs_cmp_ge0000_cy_0_1_rt_3048
    );
  e_Mcompar_vs_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(3),
      O => e_Mcompar_vs_cmp_ge0000_cy_2_rt_3060
    );
  e_Mcompar_vs_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(1),
      O => e_Mcompar_vs_cmp_ge0000_cy_0_rt_3049
    );
  e_Mcompar_hs_cmp_ge0000_cy_0_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_hcnt(5),
      O => e_Mcompar_hs_cmp_ge0000_cy_0_1_rt_2985
    );
  e_Mcompar_hs_cmp_ge0000_cy_2_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_hcnt(9),
      O => e_Mcompar_hs_cmp_ge0000_cy_2_0_rt_2994
    );
  e_Mcompar_hs_cmp_ge0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_hcnt(9),
      O => e_Mcompar_hs_cmp_ge0000_cy_4_rt_3002
    );
  e_Mcompar_hs_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_hcnt(7),
      O => e_Mcompar_hs_cmp_ge0000_cy_2_rt_2995
    );
  e_Mcompar_hs_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_hcnt(4),
      O => e_Mcompar_hs_cmp_ge0000_cy_0_rt_2986
    );
  f_Mcompar_q1khz_cmp_le0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q1khz_add0000(8),
      O => f_Mcompar_q1khz_cmp_le0000_cy_4_rt_3683
    );
  f_Mcompar_q1khz_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q1khz_add0000(2),
      O => f_Mcompar_q1khz_cmp_le0000_cy_1_rt_3679
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q10hz_add0000(2),
      O => f_Mcompar_q10hz_cmp_lt0000_cy_0_rt_3657
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q1khz_add0000(9),
      O => f_Mcompar_q1khz_cmp_lt0000_cy_3_rt_3705
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q1khz_add0000(3),
      O => f_Mcompar_q1khz_cmp_lt0000_cy_0_rt_3700
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q1mhz_add0000(1),
      O => f_Mcompar_q1mhz_cmp_lt0000_cy_0_rt_3741
    );
  f_Mcompar_q10hz_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_q10hz_add0000(1),
      O => f_Mcompar_q10hz_cmp_le0000_cy_1_rt_3636
    );
  f_Mcount_cout_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(30),
      O => f_Mcount_cout_cy_30_rt_3934
    );
  f_Mcount_cout_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(29),
      O => f_Mcount_cout_cy_29_rt_3930
    );
  f_Mcount_cout_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(28),
      O => f_Mcount_cout_cy_28_rt_3928
    );
  f_Mcount_cout_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(27),
      O => f_Mcount_cout_cy_27_rt_3926
    );
  f_Mcount_cout_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(26),
      O => f_Mcount_cout_cy_26_rt_3924
    );
  f_Mcount_cout_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(25),
      O => f_Mcount_cout_cy_25_rt_3922
    );
  f_Mcount_cout_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(24),
      O => f_Mcount_cout_cy_24_rt_3920
    );
  f_Mcount_cout_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(23),
      O => f_Mcount_cout_cy_23_rt_3918
    );
  f_Mcount_cout_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(22),
      O => f_Mcount_cout_cy_22_rt_3916
    );
  f_Mcount_cout_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(21),
      O => f_Mcount_cout_cy_21_rt_3914
    );
  f_Mcount_cout_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(20),
      O => f_Mcount_cout_cy_20_rt_3912
    );
  f_Mcount_cout_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(19),
      O => f_Mcount_cout_cy_19_rt_3908
    );
  f_Mcount_cout_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(18),
      O => f_Mcount_cout_cy_18_rt_3906
    );
  f_Mcount_cout_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(17),
      O => f_Mcount_cout_cy_17_rt_3904
    );
  f_Mcount_cout_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(16),
      O => f_Mcount_cout_cy_16_rt_3902
    );
  f_Mcount_cout_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(15),
      O => f_Mcount_cout_cy_15_rt_3900
    );
  f_Mcount_cout_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(14),
      O => f_Mcount_cout_cy_14_rt_3898
    );
  f_Mcount_cout_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(13),
      O => f_Mcount_cout_cy_13_rt_3896
    );
  f_Mcount_cout_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(12),
      O => f_Mcount_cout_cy_12_rt_3894
    );
  f_Mcount_cout_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(11),
      O => f_Mcount_cout_cy_11_rt_3892
    );
  f_Mcount_cout_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(10),
      O => f_Mcount_cout_cy_10_rt_3890
    );
  f_Mcount_cout_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(9),
      O => f_Mcount_cout_cy_9_rt_3948
    );
  f_Mcount_cout_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(8),
      O => f_Mcount_cout_cy_8_rt_3946
    );
  f_Mcount_cout_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(7),
      O => f_Mcount_cout_cy_7_rt_3944
    );
  f_Mcount_cout_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(6),
      O => f_Mcount_cout_cy_6_rt_3942
    );
  f_Mcount_cout_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(5),
      O => f_Mcount_cout_cy_5_rt_3940
    );
  f_Mcount_cout_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(4),
      O => f_Mcount_cout_cy_4_rt_3938
    );
  f_Mcount_cout_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(3),
      O => f_Mcount_cout_cy_3_rt_3936
    );
  f_Mcount_cout_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(2),
      O => f_Mcount_cout_cy_2_rt_3932
    );
  f_Mcount_cout_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(1),
      O => f_Mcount_cout_cy_1_rt_3910
    );
  f_Mcount_cout1_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(30),
      O => f_Mcount_cout1_cy_30_rt_3871
    );
  f_Mcount_cout1_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(29),
      O => f_Mcount_cout1_cy_29_rt_3867
    );
  f_Mcount_cout1_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(28),
      O => f_Mcount_cout1_cy_28_rt_3865
    );
  f_Mcount_cout1_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(27),
      O => f_Mcount_cout1_cy_27_rt_3863
    );
  f_Mcount_cout1_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(26),
      O => f_Mcount_cout1_cy_26_rt_3861
    );
  f_Mcount_cout1_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(25),
      O => f_Mcount_cout1_cy_25_rt_3859
    );
  f_Mcount_cout1_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(24),
      O => f_Mcount_cout1_cy_24_rt_3857
    );
  f_Mcount_cout1_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(23),
      O => f_Mcount_cout1_cy_23_rt_3855
    );
  f_Mcount_cout1_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(22),
      O => f_Mcount_cout1_cy_22_rt_3853
    );
  f_Mcount_cout1_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(21),
      O => f_Mcount_cout1_cy_21_rt_3851
    );
  f_Mcount_cout1_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(20),
      O => f_Mcount_cout1_cy_20_rt_3849
    );
  f_Mcount_cout1_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(19),
      O => f_Mcount_cout1_cy_19_rt_3845
    );
  f_Mcount_cout1_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(18),
      O => f_Mcount_cout1_cy_18_rt_3843
    );
  f_Mcount_cout1_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(17),
      O => f_Mcount_cout1_cy_17_rt_3841
    );
  f_Mcount_cout1_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(16),
      O => f_Mcount_cout1_cy_16_rt_3839
    );
  f_Mcount_cout1_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(15),
      O => f_Mcount_cout1_cy_15_rt_3837
    );
  f_Mcount_cout1_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(14),
      O => f_Mcount_cout1_cy_14_rt_3835
    );
  f_Mcount_cout1_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(13),
      O => f_Mcount_cout1_cy_13_rt_3833
    );
  f_Mcount_cout1_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(12),
      O => f_Mcount_cout1_cy_12_rt_3831
    );
  f_Mcount_cout1_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(11),
      O => f_Mcount_cout1_cy_11_rt_3829
    );
  f_Mcount_cout1_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(10),
      O => f_Mcount_cout1_cy_10_rt_3827
    );
  f_Mcount_cout1_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(9),
      O => f_Mcount_cout1_cy_9_rt_3885
    );
  f_Mcount_cout1_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(8),
      O => f_Mcount_cout1_cy_8_rt_3883
    );
  f_Mcount_cout1_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(7),
      O => f_Mcount_cout1_cy_7_rt_3881
    );
  f_Mcount_cout1_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(6),
      O => f_Mcount_cout1_cy_6_rt_3879
    );
  f_Mcount_cout1_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(5),
      O => f_Mcount_cout1_cy_5_rt_3877
    );
  f_Mcount_cout1_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(4),
      O => f_Mcount_cout1_cy_4_rt_3875
    );
  f_Mcount_cout1_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(3),
      O => f_Mcount_cout1_cy_3_rt_3873
    );
  f_Mcount_cout1_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(2),
      O => f_Mcount_cout1_cy_2_rt_3869
    );
  f_Mcount_cout1_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(1),
      O => f_Mcount_cout1_cy_1_rt_3847
    );
  f_Mcount_cout0_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(30),
      O => f_Mcount_cout0_cy_30_rt_3808
    );
  f_Mcount_cout0_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(29),
      O => f_Mcount_cout0_cy_29_rt_3804
    );
  f_Mcount_cout0_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(28),
      O => f_Mcount_cout0_cy_28_rt_3802
    );
  f_Mcount_cout0_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(27),
      O => f_Mcount_cout0_cy_27_rt_3800
    );
  f_Mcount_cout0_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(26),
      O => f_Mcount_cout0_cy_26_rt_3798
    );
  f_Mcount_cout0_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(25),
      O => f_Mcount_cout0_cy_25_rt_3796
    );
  f_Mcount_cout0_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(24),
      O => f_Mcount_cout0_cy_24_rt_3794
    );
  f_Mcount_cout0_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(23),
      O => f_Mcount_cout0_cy_23_rt_3792
    );
  f_Mcount_cout0_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(22),
      O => f_Mcount_cout0_cy_22_rt_3790
    );
  f_Mcount_cout0_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(21),
      O => f_Mcount_cout0_cy_21_rt_3788
    );
  f_Mcount_cout0_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(20),
      O => f_Mcount_cout0_cy_20_rt_3786
    );
  f_Mcount_cout0_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(19),
      O => f_Mcount_cout0_cy_19_rt_3782
    );
  f_Mcount_cout0_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(18),
      O => f_Mcount_cout0_cy_18_rt_3780
    );
  f_Mcount_cout0_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(17),
      O => f_Mcount_cout0_cy_17_rt_3778
    );
  f_Mcount_cout0_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(16),
      O => f_Mcount_cout0_cy_16_rt_3776
    );
  f_Mcount_cout0_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(15),
      O => f_Mcount_cout0_cy_15_rt_3774
    );
  f_Mcount_cout0_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(14),
      O => f_Mcount_cout0_cy_14_rt_3772
    );
  f_Mcount_cout0_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(13),
      O => f_Mcount_cout0_cy_13_rt_3770
    );
  f_Mcount_cout0_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(12),
      O => f_Mcount_cout0_cy_12_rt_3768
    );
  f_Mcount_cout0_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(11),
      O => f_Mcount_cout0_cy_11_rt_3766
    );
  f_Mcount_cout0_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(10),
      O => f_Mcount_cout0_cy_10_rt_3764
    );
  f_Mcount_cout0_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(9),
      O => f_Mcount_cout0_cy_9_rt_3822
    );
  f_Mcount_cout0_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(8),
      O => f_Mcount_cout0_cy_8_rt_3820
    );
  f_Mcount_cout0_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(7),
      O => f_Mcount_cout0_cy_7_rt_3818
    );
  f_Mcount_cout0_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(6),
      O => f_Mcount_cout0_cy_6_rt_3816
    );
  f_Mcount_cout0_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(5),
      O => f_Mcount_cout0_cy_5_rt_3814
    );
  f_Mcount_cout0_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(4),
      O => f_Mcount_cout0_cy_4_rt_3812
    );
  f_Mcount_cout0_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(3),
      O => f_Mcount_cout0_cy_3_rt_3810
    );
  f_Mcount_cout0_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(2),
      O => f_Mcount_cout0_cy_2_rt_3806
    );
  f_Mcount_cout0_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(1),
      O => f_Mcount_cout0_cy_1_rt_3784
    );
  f_Madd_q10hz_add0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(30),
      O => f_Madd_q10hz_add0000_cy_30_rt_3490
    );
  f_Madd_q10hz_add0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(29),
      O => f_Madd_q10hz_add0000_cy_29_rt_3486
    );
  f_Madd_q10hz_add0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(28),
      O => f_Madd_q10hz_add0000_cy_28_rt_3484
    );
  f_Madd_q10hz_add0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(27),
      O => f_Madd_q10hz_add0000_cy_27_rt_3482
    );
  f_Madd_q10hz_add0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(26),
      O => f_Madd_q10hz_add0000_cy_26_rt_3480
    );
  f_Madd_q10hz_add0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(25),
      O => f_Madd_q10hz_add0000_cy_25_rt_3478
    );
  f_Madd_q10hz_add0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(24),
      O => f_Madd_q10hz_add0000_cy_24_rt_3476
    );
  f_Madd_q10hz_add0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(23),
      O => f_Madd_q10hz_add0000_cy_23_rt_3474
    );
  f_Madd_q10hz_add0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(22),
      O => f_Madd_q10hz_add0000_cy_22_rt_3472
    );
  f_Madd_q10hz_add0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(21),
      O => f_Madd_q10hz_add0000_cy_21_rt_3470
    );
  f_Madd_q10hz_add0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(20),
      O => f_Madd_q10hz_add0000_cy_20_rt_3468
    );
  f_Madd_q10hz_add0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(19),
      O => f_Madd_q10hz_add0000_cy_19_rt_3464
    );
  f_Madd_q10hz_add0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(18),
      O => f_Madd_q10hz_add0000_cy_18_rt_3462
    );
  f_Madd_q10hz_add0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(17),
      O => f_Madd_q10hz_add0000_cy_17_rt_3460
    );
  f_Madd_q10hz_add0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(16),
      O => f_Madd_q10hz_add0000_cy_16_rt_3458
    );
  f_Madd_q10hz_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(15),
      O => f_Madd_q10hz_add0000_cy_15_rt_3456
    );
  f_Madd_q10hz_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(14),
      O => f_Madd_q10hz_add0000_cy_14_rt_3454
    );
  f_Madd_q10hz_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(13),
      O => f_Madd_q10hz_add0000_cy_13_rt_3452
    );
  f_Madd_q10hz_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(12),
      O => f_Madd_q10hz_add0000_cy_12_rt_3450
    );
  f_Madd_q10hz_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(11),
      O => f_Madd_q10hz_add0000_cy_11_rt_3448
    );
  f_Madd_q10hz_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(10),
      O => f_Madd_q10hz_add0000_cy_10_rt_3446
    );
  f_Madd_q10hz_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(9),
      O => f_Madd_q10hz_add0000_cy_9_rt_3504
    );
  f_Madd_q10hz_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(8),
      O => f_Madd_q10hz_add0000_cy_8_rt_3502
    );
  f_Madd_q10hz_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(7),
      O => f_Madd_q10hz_add0000_cy_7_rt_3500
    );
  f_Madd_q10hz_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(6),
      O => f_Madd_q10hz_add0000_cy_6_rt_3498
    );
  f_Madd_q10hz_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(5),
      O => f_Madd_q10hz_add0000_cy_5_rt_3496
    );
  f_Madd_q10hz_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(4),
      O => f_Madd_q10hz_add0000_cy_4_rt_3494
    );
  f_Madd_q10hz_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(3),
      O => f_Madd_q10hz_add0000_cy_3_rt_3492
    );
  f_Madd_q10hz_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(2),
      O => f_Madd_q10hz_add0000_cy_2_rt_3488
    );
  f_Madd_q10hz_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(1),
      O => f_Madd_q10hz_add0000_cy_1_rt_3466
    );
  f_Madd_q1mhz_add0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(30),
      O => f_Madd_q1mhz_add0000_cy_30_rt_3616
    );
  f_Madd_q1mhz_add0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(29),
      O => f_Madd_q1mhz_add0000_cy_29_rt_3612
    );
  f_Madd_q1mhz_add0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(28),
      O => f_Madd_q1mhz_add0000_cy_28_rt_3610
    );
  f_Madd_q1mhz_add0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(27),
      O => f_Madd_q1mhz_add0000_cy_27_rt_3608
    );
  f_Madd_q1mhz_add0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(26),
      O => f_Madd_q1mhz_add0000_cy_26_rt_3606
    );
  f_Madd_q1mhz_add0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(25),
      O => f_Madd_q1mhz_add0000_cy_25_rt_3604
    );
  f_Madd_q1mhz_add0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(24),
      O => f_Madd_q1mhz_add0000_cy_24_rt_3602
    );
  f_Madd_q1mhz_add0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(23),
      O => f_Madd_q1mhz_add0000_cy_23_rt_3600
    );
  f_Madd_q1mhz_add0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(22),
      O => f_Madd_q1mhz_add0000_cy_22_rt_3598
    );
  f_Madd_q1mhz_add0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(21),
      O => f_Madd_q1mhz_add0000_cy_21_rt_3596
    );
  f_Madd_q1mhz_add0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(20),
      O => f_Madd_q1mhz_add0000_cy_20_rt_3594
    );
  f_Madd_q1mhz_add0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(19),
      O => f_Madd_q1mhz_add0000_cy_19_rt_3590
    );
  f_Madd_q1mhz_add0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(18),
      O => f_Madd_q1mhz_add0000_cy_18_rt_3588
    );
  f_Madd_q1mhz_add0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(17),
      O => f_Madd_q1mhz_add0000_cy_17_rt_3586
    );
  f_Madd_q1mhz_add0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(16),
      O => f_Madd_q1mhz_add0000_cy_16_rt_3584
    );
  f_Madd_q1mhz_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(15),
      O => f_Madd_q1mhz_add0000_cy_15_rt_3582
    );
  f_Madd_q1mhz_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(14),
      O => f_Madd_q1mhz_add0000_cy_14_rt_3580
    );
  f_Madd_q1mhz_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(13),
      O => f_Madd_q1mhz_add0000_cy_13_rt_3578
    );
  f_Madd_q1mhz_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(12),
      O => f_Madd_q1mhz_add0000_cy_12_rt_3576
    );
  f_Madd_q1mhz_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(11),
      O => f_Madd_q1mhz_add0000_cy_11_rt_3574
    );
  f_Madd_q1mhz_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(10),
      O => f_Madd_q1mhz_add0000_cy_10_rt_3572
    );
  f_Madd_q1mhz_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(9),
      O => f_Madd_q1mhz_add0000_cy_9_rt_3630
    );
  f_Madd_q1mhz_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(8),
      O => f_Madd_q1mhz_add0000_cy_8_rt_3628
    );
  f_Madd_q1mhz_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(7),
      O => f_Madd_q1mhz_add0000_cy_7_rt_3626
    );
  f_Madd_q1mhz_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(6),
      O => f_Madd_q1mhz_add0000_cy_6_rt_3624
    );
  f_Madd_q1mhz_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(5),
      O => f_Madd_q1mhz_add0000_cy_5_rt_3622
    );
  f_Madd_q1mhz_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(4),
      O => f_Madd_q1mhz_add0000_cy_4_rt_3620
    );
  f_Madd_q1mhz_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(3),
      O => f_Madd_q1mhz_add0000_cy_3_rt_3618
    );
  f_Madd_q1mhz_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(2),
      O => f_Madd_q1mhz_add0000_cy_2_rt_3614
    );
  f_Madd_q1mhz_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(1),
      O => f_Madd_q1mhz_add0000_cy_1_rt_3592
    );
  f_Madd_q1khz_add0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(30),
      O => f_Madd_q1khz_add0000_cy_30_rt_3553
    );
  f_Madd_q1khz_add0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(29),
      O => f_Madd_q1khz_add0000_cy_29_rt_3549
    );
  f_Madd_q1khz_add0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(28),
      O => f_Madd_q1khz_add0000_cy_28_rt_3547
    );
  f_Madd_q1khz_add0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(27),
      O => f_Madd_q1khz_add0000_cy_27_rt_3545
    );
  f_Madd_q1khz_add0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(26),
      O => f_Madd_q1khz_add0000_cy_26_rt_3543
    );
  f_Madd_q1khz_add0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(25),
      O => f_Madd_q1khz_add0000_cy_25_rt_3541
    );
  f_Madd_q1khz_add0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(24),
      O => f_Madd_q1khz_add0000_cy_24_rt_3539
    );
  f_Madd_q1khz_add0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(23),
      O => f_Madd_q1khz_add0000_cy_23_rt_3537
    );
  f_Madd_q1khz_add0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(22),
      O => f_Madd_q1khz_add0000_cy_22_rt_3535
    );
  f_Madd_q1khz_add0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(21),
      O => f_Madd_q1khz_add0000_cy_21_rt_3533
    );
  f_Madd_q1khz_add0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(20),
      O => f_Madd_q1khz_add0000_cy_20_rt_3531
    );
  f_Madd_q1khz_add0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(19),
      O => f_Madd_q1khz_add0000_cy_19_rt_3527
    );
  f_Madd_q1khz_add0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(18),
      O => f_Madd_q1khz_add0000_cy_18_rt_3525
    );
  f_Madd_q1khz_add0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(17),
      O => f_Madd_q1khz_add0000_cy_17_rt_3523
    );
  f_Madd_q1khz_add0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(16),
      O => f_Madd_q1khz_add0000_cy_16_rt_3521
    );
  f_Madd_q1khz_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(15),
      O => f_Madd_q1khz_add0000_cy_15_rt_3519
    );
  f_Madd_q1khz_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(14),
      O => f_Madd_q1khz_add0000_cy_14_rt_3517
    );
  f_Madd_q1khz_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(13),
      O => f_Madd_q1khz_add0000_cy_13_rt_3515
    );
  f_Madd_q1khz_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(12),
      O => f_Madd_q1khz_add0000_cy_12_rt_3513
    );
  f_Madd_q1khz_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(11),
      O => f_Madd_q1khz_add0000_cy_11_rt_3511
    );
  f_Madd_q1khz_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(10),
      O => f_Madd_q1khz_add0000_cy_10_rt_3509
    );
  f_Madd_q1khz_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(9),
      O => f_Madd_q1khz_add0000_cy_9_rt_3567
    );
  f_Madd_q1khz_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(8),
      O => f_Madd_q1khz_add0000_cy_8_rt_3565
    );
  f_Madd_q1khz_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(7),
      O => f_Madd_q1khz_add0000_cy_7_rt_3563
    );
  f_Madd_q1khz_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(6),
      O => f_Madd_q1khz_add0000_cy_6_rt_3561
    );
  f_Madd_q1khz_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(5),
      O => f_Madd_q1khz_add0000_cy_5_rt_3559
    );
  f_Madd_q1khz_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(4),
      O => f_Madd_q1khz_add0000_cy_4_rt_3557
    );
  f_Madd_q1khz_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(3),
      O => f_Madd_q1khz_add0000_cy_3_rt_3555
    );
  f_Madd_q1khz_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(2),
      O => f_Madd_q1khz_add0000_cy_2_rt_3551
    );
  f_Madd_q1khz_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(1),
      O => f_Madd_q1khz_add0000_cy_1_rt_3529
    );
  b_Msub_bullet_y_tmp_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      O => b_Msub_bullet_y_tmp_addsub0000_cy_1_rt_2523
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut_4_1_698
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp2(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut_4_1_634
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut_4_1_1206
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut_4_1_1142
    );
  a_Mcompar_plane_rgb_cmp_le0001_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(5),
      O => a_Mcompar_plane_rgb_cmp_le0001_cy_5_rt_1442
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => e_vcnt(4),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_4_1_1474
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_plane_x_tmp(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut_4_1_1409
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(4),
      I1 => e_vcnt(4),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut_4_1_952
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_x_tmp3(4),
      I1 => e_hcnt(4),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut_4_1_888
    );
  a_Mcompar_num1_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_score_tmp(3),
      O => a_Mcompar_num1_cmp_ge0000_cy_2_rt_1216
    );
  a_Mcompar_num1_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_score_tmp(1),
      O => a_Mcompar_num1_cmp_ge0000_cy_0_rt_1213
    );
  a_Madd_enemy2_rgb_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      O => a_Madd_enemy2_rgb_addsub0000_cy_9_rt_134
    );
  a_Madd_enemy2_rgb_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp2(8),
      O => a_Madd_enemy2_rgb_addsub0000_cy_8_rt_132
    );
  a_Madd_enemy2_rgb_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      O => a_Madd_enemy2_rgb_addsub0000_cy_7_rt_130
    );
  a_Madd_enemy2_rgb_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      O => a_Madd_enemy2_rgb_addsub0000_cy_6_rt_128
    );
  a_Madd_bullet_rgb_addsub0001_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp(9),
      O => a_Madd_bullet_rgb_addsub0001_cy_9_rt_124
    );
  a_Madd_bullet_rgb_addsub0001_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp(8),
      O => a_Madd_bullet_rgb_addsub0001_cy_8_rt_122
    );
  a_Madd_bullet_rgb_addsub0001_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp(7),
      O => a_Madd_bullet_rgb_addsub0001_cy_7_rt_120
    );
  a_Madd_bullet_rgb_addsub0001_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp(6),
      O => a_Madd_bullet_rgb_addsub0001_cy_6_rt_118
    );
  a_Madd_bullet_rgb_addsub0001_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_y_tmp(5),
      O => a_Madd_bullet_rgb_addsub0001_cy_5_rt_116
    );
  a_Madd_enemy2_rgb_addsub0001_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      O => a_Madd_enemy2_rgb_addsub0001_cy_9_rt_144
    );
  a_Madd_enemy2_rgb_addsub0001_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp2(8),
      O => a_Madd_enemy2_rgb_addsub0001_cy_8_rt_142
    );
  a_Madd_enemy2_rgb_addsub0001_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      O => a_Madd_enemy2_rgb_addsub0001_cy_7_rt_140
    );
  a_Madd_enemy2_rgb_addsub0001_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      O => a_Madd_enemy2_rgb_addsub0001_cy_6_rt_138
    );
  a_Madd_bullet_rgb_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_x_tmp(9),
      O => a_Madd_bullet_rgb_addsub0000_cy_9_rt_112
    );
  a_Madd_bullet_rgb_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_x_tmp(8),
      O => a_Madd_bullet_rgb_addsub0000_cy_8_rt_110
    );
  a_Madd_bullet_rgb_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_x_tmp(7),
      O => a_Madd_bullet_rgb_addsub0000_cy_7_rt_108
    );
  a_Madd_bullet_rgb_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_x_tmp(6),
      O => a_Madd_bullet_rgb_addsub0000_cy_6_rt_106
    );
  a_Madd_bullet_rgb_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_bullet_x_tmp(5),
      O => a_Madd_bullet_rgb_addsub0000_cy_5_rt_104
    );
  a_Madd_enemy_rgb_addsub0001_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      O => a_Madd_enemy_rgb_addsub0001_cy_9_rt_184
    );
  a_Madd_enemy_rgb_addsub0001_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp(8),
      O => a_Madd_enemy_rgb_addsub0001_cy_8_rt_182
    );
  a_Madd_enemy_rgb_addsub0001_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      O => a_Madd_enemy_rgb_addsub0001_cy_7_rt_180
    );
  a_Madd_enemy_rgb_addsub0001_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      O => a_Madd_enemy_rgb_addsub0001_cy_6_rt_178
    );
  a_Madd_plane_rgb_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_plane_x_tmp(9),
      O => a_Madd_plane_rgb_addsub0000_cy_9_rt_194
    );
  a_Madd_plane_rgb_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_plane_x_tmp(8),
      O => a_Madd_plane_rgb_addsub0000_cy_8_rt_192
    );
  a_Madd_plane_rgb_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      O => a_Madd_plane_rgb_addsub0000_cy_7_rt_190
    );
  a_Madd_plane_rgb_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_plane_x_tmp(6),
      O => a_Madd_plane_rgb_addsub0000_cy_6_rt_188
    );
  a_Madd_enemy_rgb_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      O => a_Madd_enemy_rgb_addsub0000_cy_9_rt_174
    );
  a_Madd_enemy_rgb_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp(8),
      O => a_Madd_enemy_rgb_addsub0000_cy_8_rt_172
    );
  a_Madd_enemy_rgb_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      O => a_Madd_enemy_rgb_addsub0000_cy_7_rt_170
    );
  a_Madd_enemy_rgb_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      O => a_Madd_enemy_rgb_addsub0000_cy_6_rt_168
    );
  a_Madd_enemy3_rgb_addsub0001_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      O => a_Madd_enemy3_rgb_addsub0001_cy_9_rt_164
    );
  a_Madd_enemy3_rgb_addsub0001_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp3(8),
      O => a_Madd_enemy3_rgb_addsub0001_cy_8_rt_162
    );
  a_Madd_enemy3_rgb_addsub0001_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      O => a_Madd_enemy3_rgb_addsub0001_cy_7_rt_160
    );
  a_Madd_enemy3_rgb_addsub0001_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      O => a_Madd_enemy3_rgb_addsub0001_cy_6_rt_158
    );
  a_Madd_enemy3_rgb_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      O => a_Madd_enemy3_rgb_addsub0000_cy_9_rt_154
    );
  a_Madd_enemy3_rgb_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp3(8),
      O => a_Madd_enemy3_rgb_addsub0000_cy_8_rt_152
    );
  a_Madd_enemy3_rgb_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      O => a_Madd_enemy3_rgb_addsub0000_cy_7_rt_150
    );
  a_Madd_enemy3_rgb_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      O => a_Madd_enemy3_rgb_addsub0000_cy_6_rt_148
    );
  a_Msub_y_dis_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(5),
      O => a_Msub_y_dis_cy_5_rt_1524
    );
  a_Msub_y_dis_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(4),
      O => a_Msub_y_dis_cy_4_rt_1522
    );
  a_Msub_y_dis_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(1),
      O => a_Msub_y_dis_cy_1_rt_1518
    );
  e_Mcount_vcnt_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => e_vcnt(31),
      O => e_Mcount_vcnt_xor_31_rt_3303
    );
  f_Mcount_cout_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(31),
      O => f_Mcount_cout_xor_31_rt_3950
    );
  f_Mcount_cout1_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(31),
      O => f_Mcount_cout1_xor_31_rt_3887
    );
  f_Mcount_cout0_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(31),
      O => f_Mcount_cout0_xor_31_rt_3824
    );
  f_Madd_q10hz_add0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout1(31),
      O => f_Madd_q10hz_add0000_xor_31_rt_3506
    );
  f_Madd_q1mhz_add0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout(31),
      O => f_Madd_q1mhz_add0000_xor_31_rt_3632
    );
  f_Madd_q1khz_add0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_cout0(31),
      O => f_Madd_q1khz_add0000_xor_31_rt_3569
    );
  a_Madd_plane_rgb_addsub0001_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      O => a_Madd_plane_rgb_addsub0001_xor_8_rt_197
    );
  a_Madd_plane_rgb_addsub0001_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      O => a_Madd_plane_rgb_addsub0001_xor_7_rt_196
    );
  a_en_g_0_cmp_lt0000163_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => e_vcnt(5),
      I1 => e_vcnt(6),
      I2 => e_vcnt(9),
      I3 => e_vcnt(7),
      O => N79
    );
  a_en_g_0_cmp_lt0000163 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => a_Msub_y_dis_g_cy(3),
      I1 => e_vcnt(4),
      I2 => e_vcnt(8),
      I3 => N79,
      O => a_en_g_0_cmp_lt0000
    );
  a_x_plane_2_1 : LUT4
    generic map(
      INIT => X"EDE8"
    )
    port map (
      I0 => a_x_plane(2),
      I1 => a_a_Mmux_varindex0000_11,
      I2 => a_x_plane(1),
      I3 => a_a_Mmux_varindex0000_12_1582,
      O => a_x_plane_2_1_1865
    );
  e_vs_mux00011 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => e_vs_cmp_ge0000,
      I1 => e_Mcompar_vs_cmp_ge0000_cy_9_1_3081,
      O => e_vs_mux0001
    );
  e_hs_mux00011 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => e_hs_cmp_ge0000,
      I1 => e_Mcompar_hs_cmp_ge0000_cy_9_1_3016,
      O => e_hs_mux0001
    );
  b_dx_e_cmp_ge0000111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_enemy_x_tmp(9),
      I2 => b_enemy_x_tmp(8),
      I3 => b_dx_e_cmp_ge000019_2642,
      O => b_dx_e_cmp_ge0000
    );
  b_dx_e3_cmp_ge0000111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_enemy_x_tmp3(9),
      I2 => b_enemy_x_tmp3(8),
      I3 => b_dx_e3_cmp_ge000019_2630,
      O => b_dx_e3_cmp_ge0000
    );
  b_dx_e2_cmp_ge0000111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_enemy_x_tmp2(9),
      I2 => b_enemy_x_tmp2(8),
      I3 => b_dx_e2_cmp_ge000019_2618,
      O => b_dx_e2_cmp_ge0000
    );
  b_dy_e_cmp_ge0000215_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_enemy_y_tmp(8),
      I2 => b_enemy_y_tmp(9),
      O => N81
    );
  b_dy_e_cmp_ge0000215 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_dy_e_cmp_ge000028_2667,
      I1 => b_enemy_y_tmp(5),
      I2 => b_enemy_y_tmp(6),
      I3 => N81,
      O => b_dy_e_cmp_ge0000
    );
  b_dy_e3_cmp_ge0000215_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_enemy_y_tmp3(9),
      O => N83
    );
  b_dy_e3_cmp_ge0000215 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_dy_e3_cmp_ge000028_2659,
      I1 => b_enemy_y_tmp3(5),
      I2 => b_enemy_y_tmp3(6),
      I3 => N83,
      O => b_dy_e3_cmp_ge0000
    );
  b_dy_e2_cmp_ge0000215_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_enemy_y_tmp2(9),
      O => N85
    );
  b_dy_e2_cmp_ge0000215 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_dy_e2_cmp_ge000028_2650,
      I1 => b_enemy_y_tmp2(5),
      I2 => b_enemy_y_tmp2(6),
      I3 => N85,
      O => b_dy_e2_cmp_ge0000
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_9_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_y_tmp(9),
      I1 => b_enemy_y_tmp(9),
      I2 => b_Msub_life_enemy_tmp_0_sub0001_cy(7),
      I3 => b_enemy_y_tmp(8),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_y_tmp(8),
      I1 => b_enemy_y_tmp(8),
      I2 => b_Msub_life_enemy_tmp_0_sub0001_cy(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(8)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_6_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_y_tmp(6),
      I1 => b_enemy_y_tmp(6),
      I2 => b_enemy_y_tmp(4),
      I3 => b_enemy_y_tmp(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(6)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_y_tmp(5),
      I1 => b_enemy_y_tmp(5),
      I2 => b_enemy_y_tmp(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(5)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_y_tmp(4),
      I1 => b_enemy_y_tmp(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(4)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_x_tmp(9),
      I1 => b_enemy_x_tmp(9),
      I2 => b_Msub_life_enemy_tmp_0_sub0000_cy(7),
      I3 => b_enemy_x_tmp(8),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(8),
      I1 => b_enemy_x_tmp(8),
      I2 => b_Msub_life_enemy_tmp_0_sub0000_cy(7),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(8)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_x_tmp(6),
      I1 => b_enemy_x_tmp(6),
      I2 => b_enemy_x_tmp(4),
      I3 => b_enemy_x_tmp(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(6)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(5),
      I1 => b_enemy_x_tmp(5),
      I2 => b_enemy_x_tmp(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(5)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_x_tmp(4),
      I1 => b_enemy_x_tmp(4),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_lut(4)
    );
  b_Madd_mux0000_index0001_inv1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      I1 => b_Madd_mux0000_addsub0001_cy(8),
      O => b_Madd_mux0000_index0001_inv
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_x_tmp(9),
      I1 => b_enemy_x_tmp3(9),
      I2 => b_Msub_mux0000_sub0000_cy(7),
      I3 => b_enemy_x_tmp3(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(8),
      I1 => b_enemy_x_tmp3(8),
      I2 => b_Msub_mux0000_sub0000_cy(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_x_tmp(6),
      I1 => b_enemy_x_tmp3(6),
      I2 => b_enemy_x_tmp3(4),
      I3 => b_enemy_x_tmp3(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(5),
      I1 => b_enemy_x_tmp3(5),
      I2 => b_enemy_x_tmp3(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_x_tmp(4),
      I1 => b_enemy_x_tmp3(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_lut(4)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_9_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_y_tmp(9),
      I1 => b_enemy_y_tmp3(9),
      I2 => b_Msub_mux0000_sub0001_cy(7),
      I3 => b_enemy_y_tmp3(8),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_y_tmp(8),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_Msub_mux0000_sub0001_cy(7),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(8)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_6_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_y_tmp(6),
      I1 => b_enemy_y_tmp3(6),
      I2 => b_enemy_y_tmp3(4),
      I3 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_y_tmp(5),
      I1 => b_enemy_y_tmp3(5),
      I2 => b_enemy_y_tmp3(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_y_tmp(4),
      I1 => b_enemy_y_tmp3(4),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(4)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_9_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_y_tmp(9),
      I1 => b_enemy_y_tmp2(9),
      I2 => b_Msub_mux0001_sub0001_cy(7),
      I3 => b_enemy_y_tmp2(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_y_tmp(8),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_Msub_mux0001_sub0001_cy(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_6_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_y_tmp(6),
      I1 => b_enemy_y_tmp2(6),
      I2 => b_enemy_y_tmp2(4),
      I3 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_y_tmp(5),
      I1 => b_enemy_y_tmp2(5),
      I2 => b_enemy_y_tmp2(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_y_tmp(4),
      I1 => b_enemy_y_tmp2(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(4)
    );
  b_Madd_mux0001_index0001_inv1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      I1 => b_Madd_mux0001_addsub0001_cy(8),
      O => b_Madd_mux0001_index0001_inv
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_x_tmp(9),
      I1 => b_enemy_x_tmp2(9),
      I2 => b_Msub_mux0001_sub0000_cy(7),
      I3 => b_enemy_x_tmp2(8),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(8),
      I1 => b_enemy_x_tmp2(8),
      I2 => b_Msub_mux0001_sub0000_cy(7),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(8)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_bullet_x_tmp(6),
      I1 => b_enemy_x_tmp2(6),
      I2 => b_enemy_x_tmp2(4),
      I3 => b_enemy_x_tmp2(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(5),
      I1 => b_enemy_x_tmp2(5),
      I2 => b_enemy_x_tmp2(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_x_tmp(4),
      I1 => b_enemy_x_tmp2(4),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_lut(4)
    );
  b_life_plane_tmp_0_addsub0005_9_inv : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0005_cy(8),
      O => b_life_plane_tmp_0_addsub0005_9_inv_2887
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_7_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_enemy_y_tmp3(7),
      I2 => b_enemy_y_tmp3(6),
      I3 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_7_Q_2383
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_plane_x_tmp(9),
      I1 => b_enemy_x_tmp3(9),
      I2 => b_Msub_life_plane_tmp_0_addsub0004_cy(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_7_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => b_enemy_x_tmp3(7),
      I2 => b_enemy_x_tmp3(6),
      I3 => b_enemy_x_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_plane_x_tmp(9),
      I1 => b_enemy_x_tmp2(9),
      I2 => b_Msub_life_plane_tmp_0_addsub0002_cy(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_7_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => b_enemy_x_tmp2(7),
      I2 => b_enemy_x_tmp2(6),
      I3 => b_enemy_x_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(7)
    );
  b_life_plane_tmp_0_addsub0003_9_inv : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0003_cy(8),
      O => b_life_plane_tmp_0_addsub0003_9_inv_2884
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_7_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_enemy_y_tmp2(7),
      I2 => b_enemy_y_tmp2(6),
      I3 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_7_Q_2345
    );
  b_life_plane_tmp_0_addsub0001_9_inv : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0001_cy(8),
      O => b_life_plane_tmp_0_addsub0001_9_inv_2881
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_7_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_plane_y_tmp(8),
      I1 => b_enemy_y_tmp(7),
      I2 => b_enemy_y_tmp(6),
      I3 => b_enemy_y_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_7_Q_2307
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_plane_x_tmp(9),
      I1 => b_enemy_x_tmp(9),
      I2 => b_Msub_life_plane_tmp_0_addsub0000_cy(8),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => b_enemy_x_tmp(7),
      I2 => b_enemy_x_tmp(6),
      I3 => b_enemy_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(7)
    );
  b_life_plane_tmp_0_or000022 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => b_life_plane_tmp_0_cmp_ge0002,
      I1 => N89,
      I2 => b_life_plane_tmp_0_or00009_2913,
      I3 => b_life_plane_tmp_0_or000014_2910,
      O => b_life_plane_tmp_0_or0000
    );
  b_dy_e_and000022_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_dy_e_and00008_2665,
      I2 => b_enemy_y_tmp(4),
      O => N91
    );
  b_dy_e3_and000022_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_dy_e3_and00008_2657,
      I2 => b_enemy_y_tmp3(4),
      O => N93
    );
  b_dy_e2_and000022_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_dy_e2_and00008_2648,
      I2 => b_enemy_y_tmp2(4),
      O => N95
    );
  a_Msub_y_bullet_Madd_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => e_vcnt(1),
      O => a_y_bullet(1)
    );
  e_Mcount_vcnt_eqn_91 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(9),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => N208,
      O => e_Mcount_vcnt_eqn_9
    );
  e_Mcount_vcnt_eqn_81 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(8),
      I1 => e_vcnt_and00001,
      I2 => N198,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_8
    );
  e_Mcount_vcnt_eqn_71 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(7),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_7
    );
  e_Mcount_vcnt_eqn_61 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(6),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_6
    );
  e_Mcount_vcnt_eqn_51 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(5),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_5
    );
  e_Mcount_vcnt_eqn_41 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(4),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_4
    );
  e_Mcount_vcnt_eqn_311 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(31),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_31_3295
    );
  e_Mcount_vcnt_eqn_301 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(30),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_30
    );
  e_Mcount_vcnt_eqn_31 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(3),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_3
    );
  e_Mcount_vcnt_eqn_291 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(29),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_29
    );
  e_Mcount_vcnt_eqn_281 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(28),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_28
    );
  e_Mcount_vcnt_eqn_271 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(27),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_27
    );
  e_Mcount_vcnt_eqn_261 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(26),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_26
    );
  e_Mcount_vcnt_eqn_251 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(25),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_25
    );
  e_Mcount_vcnt_eqn_241 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(24),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_24
    );
  e_Mcount_vcnt_eqn_231 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(23),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_23
    );
  e_Mcount_vcnt_eqn_221 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(22),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_22
    );
  e_Mcount_vcnt_eqn_211 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(21),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_21_3284
    );
  e_Mcount_vcnt_eqn_201 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(20),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_20
    );
  e_Mcount_vcnt_eqn_21 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(2),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_2
    );
  e_Mcount_vcnt_eqn_191 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(19),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_19
    );
  e_Mcount_vcnt_eqn_181 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(18),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_18
    );
  e_Mcount_vcnt_eqn_171 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(17),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_17
    );
  e_Mcount_vcnt_eqn_161 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(16),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_16
    );
  e_Mcount_vcnt_eqn_151 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(15),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_15
    );
  e_Mcount_vcnt_eqn_141 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(14),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_14
    );
  e_Mcount_vcnt_eqn_131 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(13),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_13
    );
  e_Mcount_vcnt_eqn_121 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(12),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_12
    );
  e_Mcount_vcnt_eqn_111 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(11),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_11_3273
    );
  e_Mcount_vcnt_eqn_101 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(10),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_10
    );
  e_Mcount_vcnt_eqn_11 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => e_Result(1),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_1
    );
  e_Mcount_vcnt_eqn_01 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => e_Result(0),
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_vcnt_and00003,
      O => e_Mcount_vcnt_eqn_0
    );
  a_Msub_x_bullet_Madd_cy_2_1_SW0 : LUT4
    generic map(
      INIT => X"F731"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => b_bullet_x_tmp(1),
      I2 => e_hcnt(0),
      I3 => e_hcnt(1),
      O => N2
    );
  a_Msub_x_bullet_Madd_xor_1_11 : LUT4
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => b_bullet_x_tmp(1),
      I1 => e_hcnt(1),
      I2 => b_bullet_x_tmp(0),
      I3 => e_hcnt(0),
      O => a_x_bullet(1)
    );
  f_cout_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_Mcompar_q1mhz_cmp_lt0000_cy(10),
      I1 => f_q1mhz_cmp_le0000,
      O => f_cout_and0000
    );
  f_cout1_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_Mcompar_q10hz_cmp_lt0000_cy(9),
      I1 => f_q10hz_cmp_le0000,
      O => f_cout1_and0000
    );
  f_cout0_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_Mcompar_q1khz_cmp_lt0000_cy(10),
      I1 => f_q1khz_cmp_le0000,
      O => f_cout0_and0000
    );
  a_c_Mmux_varindex0000_9 : LUT4
    generic map(
      INIT => X"DBFF"
    )
    port map (
      I0 => a_y_bullet(1),
      I1 => a_y_bullet(3),
      I2 => a_y_bullet(2),
      I3 => a_x_bullet(0),
      O => a_c_Mmux_varindex0000_9_1719
    );
  a_en_0_or00001_SW1 : LUT4
    generic map(
      INIT => X"666A"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => e_hcnt(4),
      I2 => e_hcnt(2),
      I3 => e_hcnt(3),
      O => N97
    );
  a_en_0_or00001 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => a_N85,
      I1 => a_x_dis_g(8),
      I2 => a_x_dis_g(9),
      I3 => N97,
      O => a_en_0_or0000
    );
  a_c_Mrom_d_rom000071 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => N212,
      I1 => e_vcnt(3),
      I2 => b_bullet_y_tmp(3),
      I3 => a_Msub_y_bullet_Madd_cy(2),
      O => a_c_Mmux_varindex0000_7
    );
  a_b3_Mrom_d_rom0000251 : LUT4
    generic map(
      INIT => X"FE3F"
    )
    port map (
      I0 => a_y_enemy3(1),
      I1 => a_y_enemy3(2),
      I2 => a_y_enemy3(3),
      I3 => a_y_enemy3(4),
      O => a_b3_Mrom_d_rom000025
    );
  a_b2_Mrom_d_rom0000251 : LUT4
    generic map(
      INIT => X"FE3F"
    )
    port map (
      I0 => a_y_enemy2(1),
      I1 => a_y_enemy2(2),
      I2 => a_y_enemy2(3),
      I3 => a_y_enemy2(4),
      O => a_b2_Mrom_d_rom000025
    );
  a_b1_Mrom_d_rom0000251 : LUT4
    generic map(
      INIT => X"FE3F"
    )
    port map (
      I0 => a_y_enemy(1),
      I1 => a_y_enemy(2),
      I2 => a_y_enemy(3),
      I3 => a_y_enemy(4),
      O => a_b1_Mrom_d_rom000025
    );
  a_b1_Mmux_varindex0000_112 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_y_enemy(4),
      I2 => N30,
      I3 => a_b1_Mrom_d_rom000011,
      O => a_b1_Mmux_varindex0000_112_1621
    );
  a_b2_Mmux_varindex0000_112 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_y_enemy2(4),
      I2 => N28,
      I3 => a_b2_Mrom_d_rom000011,
      O => a_b2_Mmux_varindex0000_112_1647
    );
  a_b3_Mmux_varindex0000_112 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_y_enemy3(4),
      I2 => N26,
      I3 => a_b3_Mrom_d_rom000011,
      O => a_b3_Mmux_varindex0000_112_1673
    );
  a_b1_Mmux_varindex0000_9 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_y_enemy(4),
      I2 => N30,
      I3 => a_b1_Mrom_d_rom000011,
      O => a_b1_Mmux_varindex0000_9_1629
    );
  a_b2_Mmux_varindex0000_9 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_y_enemy2(4),
      I2 => N28,
      I3 => a_b2_Mrom_d_rom000011,
      O => a_b2_Mmux_varindex0000_9_1655
    );
  a_b3_Mmux_varindex0000_9 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_y_enemy3(4),
      I2 => N26,
      I3 => a_b3_Mrom_d_rom000011,
      O => a_b3_Mmux_varindex0000_9_1681
    );
  a_c_Mmux_varindex0000_8 : LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => e_hcnt(0),
      I2 => a_c_Mrom_d_rom000011,
      I3 => a_c_Mrom_d_rom000010,
      O => a_c_Mmux_varindex0000_8_1718
    );
  a_c_Mmux_varindex0000_10 : LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      I0 => b_bullet_x_tmp(0),
      I1 => e_hcnt(0),
      I2 => a_c_Mmux_varindex0000_7,
      I3 => N202,
      O => a_c_Mmux_varindex0000_10_1714
    );
  b_dx_e_and000043 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_dx_e_and000034_2637,
      I1 => b_life_enemy_tmp(0),
      I2 => start_IBUF_4269,
      O => b_dx_e_and0000
    );
  b_dx_e3_and000043 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_dx_e3_and000034_2625,
      I1 => b_life_enemy_tmp3(0),
      I2 => start_IBUF_4269,
      O => b_dx_e3_and0000
    );
  b_dx_e2_and000043 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_dx_e2_and000034_2613,
      I1 => b_life_enemy_tmp2(0),
      I2 => start_IBUF_4269,
      O => b_dx_e2_and0000
    );
  a_e_Mmux_d_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_e_data(7),
      I2 => a_e_data(6),
      O => a_e_Mmux_d_4_1741
    );
  a_e_Mmux_d_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_e_data(5),
      I2 => a_e_data(4),
      O => a_e_Mmux_d_5_1743
    );
  a_e_Mmux_d_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_e_data(3),
      I2 => a_e_data(2),
      O => a_e_Mmux_d_51_1744
    );
  a_e_Mmux_d_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_e_data(1),
      I2 => a_e_data(0),
      O => a_e_Mmux_d_6_1745
    );
  b_Madd_life_plane_tmp_0_index0000_inv1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0006_cy(8),
      O => b_Madd_life_plane_tmp_0_index0000_inv1_2039
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0006_cy(8),
      I2 => b_bullet_x_tmp(9),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(9)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_enemy_x_tmp(6),
      I2 => b_bullet_x_tmp(7),
      I3 => b_enemy_x_tmp(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(7)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_enemy_x_tmp(5),
      I2 => b_bullet_x_tmp(6),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(6)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(5),
      I1 => b_bullet_x_tmp(5),
      O => b_Mcompar_life_enemy_tmp_0_cmp_le0000_lut(5)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      I1 => b_Madd_mux0000_addsub0001_cy(8),
      I2 => b_bullet_y_tmp(9),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_enemy_y_tmp3(6),
      I2 => b_bullet_y_tmp(7),
      I3 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_enemy_y_tmp3(5),
      I2 => b_bullet_y_tmp(6),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp3(5),
      I1 => b_bullet_y_tmp(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(5)
    );
  b_Madd_mux0000_index0000_inv1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Madd_mux0000_addsub0000_cy(8),
      O => b_Madd_mux0000_index0000_inv1_2044
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Madd_mux0000_addsub0000_cy(8),
      I2 => b_bullet_x_tmp(9),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(9)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_enemy_x_tmp3(6),
      I2 => b_bullet_x_tmp(7),
      I3 => b_enemy_x_tmp3(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(7)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_enemy_x_tmp3(5),
      I2 => b_bullet_x_tmp(6),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(6)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(5),
      I1 => b_bullet_x_tmp(5),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0000_lut(5)
    );
  b_Madd_mux0001_index0000_inv1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Madd_mux0001_addsub0000_cy(8),
      O => b_Madd_mux0001_index0000_inv1_2049
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Madd_mux0001_addsub0000_cy(8),
      I2 => b_bullet_x_tmp(9),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_enemy_x_tmp2(6),
      I2 => b_bullet_x_tmp(7),
      I3 => b_enemy_x_tmp2(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_enemy_x_tmp2(5),
      I2 => b_bullet_x_tmp(6),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(5),
      I1 => b_bullet_x_tmp(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0000_lut(5)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      I1 => b_Madd_mux0001_addsub0001_cy(8),
      I2 => b_bullet_y_tmp(9),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(9)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_enemy_y_tmp2(6),
      I2 => b_bullet_y_tmp(7),
      I3 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(7)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_enemy_y_tmp2(5),
      I2 => b_bullet_y_tmp(6),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(6)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp2(5),
      I1 => b_bullet_y_tmp(5),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(5)
    );
  b_Madd_mux0000_index0000_inv : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Madd_mux0000_addsub0000_cy(8),
      O => b_Madd_mux0000_index0000_inv_2043
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Madd_mux0000_addsub0000_cy(8),
      I2 => b_plane_x_tmp(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_enemy_x_tmp3(6),
      I2 => b_plane_x_tmp(7),
      I3 => b_enemy_x_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp3(6),
      I1 => b_enemy_x_tmp3(5),
      I2 => b_plane_x_tmp(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0004_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp3(5),
      I1 => b_plane_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0004_lut(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_enemy_y_tmp3(6),
      I2 => b_plane_y_tmp(8),
      I3 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_7_Q_2499
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(5),
      I1 => b_enemy_x_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_enemy_y_tmp2(6),
      I2 => b_plane_y_tmp(8),
      I3 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_7_Q_2460
    );
  b_Madd_mux0001_index0000_inv : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Madd_mux0001_addsub0000_cy(8),
      O => b_Madd_mux0001_index0000_inv_2048
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Madd_mux0001_addsub0000_cy(8),
      I2 => b_plane_x_tmp(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_enemy_x_tmp2(6),
      I2 => b_plane_x_tmp(7),
      I3 => b_enemy_x_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp2(6),
      I1 => b_enemy_x_tmp2(5),
      I2 => b_plane_x_tmp(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0002_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp2(5),
      I1 => b_plane_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0002_lut(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(5),
      I1 => b_enemy_x_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(5)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_enemy_y_tmp(6),
      I2 => b_plane_y_tmp(8),
      I3 => b_enemy_y_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_7_Q_2421
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_plane_x_tmp(5),
      I1 => b_enemy_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(5)
    );
  b_Madd_life_plane_tmp_0_index0001_inv : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0007_cy(8),
      O => b_Madd_life_plane_tmp_0_index0001_inv_2040
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0007_cy(8),
      I2 => b_bullet_y_tmp(9),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(9)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_enemy_y_tmp(6),
      I2 => b_bullet_y_tmp(7),
      I3 => b_enemy_y_tmp(5),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(7)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_enemy_y_tmp(5),
      I2 => b_bullet_y_tmp(6),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(6)
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_y_tmp(5),
      I1 => b_bullet_y_tmp(5),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(5)
    );
  b_Madd_life_plane_tmp_0_index0000_inv : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0006_cy(8),
      O => b_Madd_life_plane_tmp_0_index0000_inv_2038
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_9_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Madd_life_plane_tmp_0_addsub0006_cy(8),
      I2 => b_plane_x_tmp(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(9)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_enemy_x_tmp(6),
      I2 => b_plane_x_tmp(7),
      I3 => b_enemy_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(7)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => b_enemy_x_tmp(6),
      I1 => b_enemy_x_tmp(5),
      I2 => b_plane_x_tmp(6),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_enemy_x_tmp(5),
      I1 => b_plane_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0000_lut(5)
    );
  a_d_Mmux_d_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_d_data(7),
      I2 => a_d_data(6),
      O => a_d_Mmux_d_4_1725
    );
  a_d_Mmux_d_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_d_data(5),
      I2 => a_d_data(4),
      O => a_d_Mmux_d_5_1727
    );
  a_d_Mmux_d_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_d_data(3),
      I2 => a_d_data(2),
      O => a_d_Mmux_d_51_1728
    );
  a_d_Mmux_d_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => e_hcnt(1),
      I1 => a_d_data(1),
      I2 => a_d_data(0),
      O => a_d_Mmux_d_6_1729
    );
  b_score_tmp_1_and00001 : LUT4
    generic map(
      INIT => X"6660"
    )
    port map (
      I0 => b_score_tmp(1),
      I1 => b_score_tmp(0),
      I2 => b_score_tmp_and0001,
      I3 => b_score_tmp_and0002,
      O => b_score_tmp_1_and0000
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_6_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp(6),
      I1 => b_enemy_y_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_6_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_6_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp2(6),
      I1 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_6_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_6_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b_enemy_y_tmp3(6),
      I1 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_6_Q
    );
  a_a_Mrom_d_rom000012 : MUXF5
    port map (
      I0 => N99,
      I1 => N100,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000012_1595
    );
  a_a_Mrom_d_rom000012_F : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(2),
      I2 => a_y_plane(3),
      O => N99
    );
  a_a_Mrom_d_rom000012_G : LUT4
    generic map(
      INIT => X"87FE"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => N100
    );
  a_b3_Mrom_d_rom000017 : MUXF5
    port map (
      I0 => N101,
      I1 => N102,
      S => a_y_enemy3(4),
      O => a_b3_Mrom_d_rom000017_1688
    );
  a_b3_Mrom_d_rom000017_F : LUT4
    generic map(
      INIT => X"C007"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      O => N101
    );
  a_b3_Mrom_d_rom000017_G : LUT4
    generic map(
      INIT => X"F002"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      O => N102
    );
  a_b2_Mrom_d_rom000017 : MUXF5
    port map (
      I0 => N103,
      I1 => N104,
      S => a_y_enemy2(4),
      O => a_b2_Mrom_d_rom000017_1662
    );
  a_b2_Mrom_d_rom000017_F : LUT4
    generic map(
      INIT => X"C007"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      O => N103
    );
  a_b2_Mrom_d_rom000017_G : LUT4
    generic map(
      INIT => X"F002"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      O => N104
    );
  a_b1_Mrom_d_rom000017 : MUXF5
    port map (
      I0 => N105,
      I1 => N106,
      S => a_y_enemy(4),
      O => a_b1_Mrom_d_rom000017_1636
    );
  a_b1_Mrom_d_rom000017_F : LUT4
    generic map(
      INIT => X"C007"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      O => N105
    );
  a_b1_Mrom_d_rom000017_G : LUT4
    generic map(
      INIT => X"F002"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      O => N106
    );
  a_a_Mrom_d_rom0000241 : MUXF5
    port map (
      I0 => N107,
      I1 => N108,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000024
    );
  a_a_Mrom_d_rom0000241_F : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => N107
    );
  a_a_Mrom_d_rom0000241_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(2),
      I2 => a_y_plane(3),
      O => N108
    );
  a_b3_Mrom_d_rom000015 : MUXF5
    port map (
      I0 => N109,
      I1 => N110,
      S => a_y_enemy3(4),
      O => a_b3_Mrom_d_rom000015_1687
    );
  a_b3_Mrom_d_rom000015_F : LUT4
    generic map(
      INIT => X"4C05"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      O => N109
    );
  a_b3_Mrom_d_rom000015_G : LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      O => N110
    );
  a_b2_Mrom_d_rom000015 : MUXF5
    port map (
      I0 => N111,
      I1 => N112,
      S => a_y_enemy2(4),
      O => a_b2_Mrom_d_rom000015_1661
    );
  a_b2_Mrom_d_rom000015_F : LUT4
    generic map(
      INIT => X"4C05"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      O => N111
    );
  a_b2_Mrom_d_rom000015_G : LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      O => N112
    );
  a_b1_Mrom_d_rom000015 : MUXF5
    port map (
      I0 => N113,
      I1 => N114,
      S => a_y_enemy(4),
      O => a_b1_Mrom_d_rom000015_1635
    );
  a_b1_Mrom_d_rom000015_F : LUT4
    generic map(
      INIT => X"4C05"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      O => N113
    );
  a_b1_Mrom_d_rom000015_G : LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      O => N114
    );
  a_b3_Mrom_d_rom000014 : MUXF5
    port map (
      I0 => N115,
      I1 => N116,
      S => a_y_enemy3(4),
      O => a_b3_Mrom_d_rom000014_1686
    );
  a_b3_Mrom_d_rom000014_F : LUT4
    generic map(
      INIT => X"C007"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      O => N115
    );
  a_b3_Mrom_d_rom000014_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_enemy3(2),
      I1 => a_y_enemy3(3),
      O => N116
    );
  a_b2_Mrom_d_rom000014 : MUXF5
    port map (
      I0 => N117,
      I1 => N118,
      S => a_y_enemy2(4),
      O => a_b2_Mrom_d_rom000014_1660
    );
  a_b2_Mrom_d_rom000014_F : LUT4
    generic map(
      INIT => X"C007"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      O => N117
    );
  a_b2_Mrom_d_rom000014_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_enemy2(2),
      I1 => a_y_enemy2(3),
      O => N118
    );
  a_b1_Mrom_d_rom000014 : MUXF5
    port map (
      I0 => N119,
      I1 => N120,
      S => a_y_enemy(4),
      O => a_b1_Mrom_d_rom000014_1634
    );
  a_b1_Mrom_d_rom000014_F : LUT4
    generic map(
      INIT => X"C007"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      O => N119
    );
  a_b1_Mrom_d_rom000014_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_enemy(2),
      I1 => a_y_enemy(3),
      O => N120
    );
  a_a_Mrom_d_rom000011 : MUXF5
    port map (
      I0 => N121,
      I1 => N122,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000011_1594
    );
  a_a_Mrom_d_rom000011_F : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(2),
      I2 => a_y_plane(3),
      O => N121
    );
  a_a_Mrom_d_rom000011_G : LUT4
    generic map(
      INIT => X"8FFC"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => N122
    );
  a_a_Mrom_d_rom0000141 : MUXF5
    port map (
      I0 => N123,
      I1 => N124,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000014
    );
  a_a_Mrom_d_rom0000141_F : LUT3
    generic map(
      INIT => X"87"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(2),
      I2 => a_y_plane(3),
      O => N123
    );
  a_a_Mrom_d_rom0000141_G : LUT4
    generic map(
      INIT => X"D001"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => N124
    );
  a_a_Mrom_d_rom000015292 : MUXF5
    port map (
      I0 => N125,
      I1 => N126,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000015
    );
  a_a_Mrom_d_rom000015292_G : LUT4
    generic map(
      INIT => X"E001"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => N126
    );
  a_a_Mrom_d_rom000015292_F : LUT4
    generic map(
      INIT => X"4C07"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      I2 => a_y_plane(2),
      I3 => a_y_plane(3),
      O => N125
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy_10_Q : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => b_Msub_life_enemy_tmp_0_sub0001_cy(7),
      I1 => b_enemy_y_tmp(8),
      I2 => b_enemy_y_tmp(9),
      I3 => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_cy(9),
      O => b_life_enemy_tmp_0_cmp_ge0001
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy_10_Q : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => b_Msub_life_enemy_tmp_0_sub0000_cy(7),
      I1 => b_enemy_x_tmp(8),
      I2 => b_enemy_x_tmp(9),
      I3 => b_Mcompar_life_enemy_tmp_0_cmp_ge0000_cy(9),
      O => b_life_enemy_tmp_0_cmp_ge0000
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy_10_Q : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => b_Msub_mux0000_sub0000_cy(7),
      I1 => b_enemy_x_tmp3(8),
      I2 => b_enemy_x_tmp3(9),
      I3 => b_Mcompar_life_enemy_tmp3_0_cmp_ge0000_cy(9),
      O => b_life_enemy_tmp3_0_cmp_ge0000
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy_10_Q : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => b_Msub_mux0000_sub0001_cy(7),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_enemy_y_tmp3(9),
      I3 => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_cy(9),
      O => b_life_enemy_tmp3_0_cmp_ge0001
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy_10_Q : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => b_Msub_mux0001_sub0001_cy(7),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_enemy_y_tmp2(9),
      I3 => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_cy(9),
      O => b_life_enemy_tmp2_0_cmp_ge0001
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy_10_Q : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => b_Msub_mux0001_sub0000_cy(7),
      I1 => b_enemy_x_tmp2(8),
      I2 => b_enemy_x_tmp2(9),
      I3 => b_Mcompar_life_enemy_tmp2_0_cmp_ge0000_cy(9),
      O => b_life_enemy_tmp2_0_cmp_ge0000
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_9_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b_Madd_life_plane_tmp_0_addsub0007_cy(8),
      I1 => b_enemy_y_tmp(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_9_Q_2423
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_10_Q : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => b_enemy_y_tmp3(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0005_cy(8),
      I2 => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy(9),
      O => b_life_plane_tmp_0_cmp_ge0005
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy_10_Q : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => b_enemy_x_tmp3(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0004_cy(8),
      I2 => b_Mcompar_life_plane_tmp_0_cmp_ge0004_cy(9),
      O => b_life_plane_tmp_0_cmp_ge0004
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy_10_Q : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => b_enemy_x_tmp2(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0002_cy(8),
      I2 => b_Mcompar_life_plane_tmp_0_cmp_ge0002_cy(9),
      O => b_life_plane_tmp_0_cmp_ge0002
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_10_Q : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => b_enemy_y_tmp(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0001_cy(8),
      I2 => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy(9),
      O => b_life_plane_tmp_0_cmp_ge0001
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy_10_Q : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => b_enemy_x_tmp(9),
      I1 => b_Msub_life_plane_tmp_0_addsub0000_cy(8),
      I2 => b_Mcompar_life_plane_tmp_0_cmp_ge0000_cy(9),
      O => b_life_plane_tmp_0_cmp_ge0000
    );
  b_plane_x_tmp_and000223_SW1 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => N87,
      I1 => b_plane_x_tmp(5),
      I2 => b_plane_x_tmp(8),
      I3 => b_plane_x_tmp(9),
      O => N127
    );
  b_plane_x_tmp_and000223 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => key_l_IBUF_4257,
      I2 => key_r_IBUF_4259,
      I3 => N127,
      O => b_plane_x_tmp_not0001_inv
    );
  b_dx_e_cmp_ge0000_INV1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_enemy_x_tmp(7),
      I1 => b_enemy_x_tmp(9),
      I2 => b_enemy_x_tmp(8),
      I3 => b_dx_e_cmp_ge000019_2642,
      O => b_dx_e_cmp_ge0000_INV
    );
  b_dx_e3_cmp_ge0000_INV1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_enemy_x_tmp3(7),
      I1 => b_enemy_x_tmp3(9),
      I2 => b_enemy_x_tmp3(8),
      I3 => b_dx_e3_cmp_ge000019_2630,
      O => b_dx_e3_cmp_ge0000_INV
    );
  b_dx_e2_cmp_ge0000_INV1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_enemy_x_tmp2(7),
      I1 => b_enemy_x_tmp2(9),
      I2 => b_enemy_x_tmp2(8),
      I3 => b_dx_e2_cmp_ge000019_2618,
      O => b_dx_e2_cmp_ge0000_INV
    );
  a_en_g_0_not00011 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => a_Msub_y_dis_g_cy(3),
      I1 => e_vcnt(4),
      I2 => e_vcnt(8),
      I3 => N79,
      O => a_en_g_0_not0001
    );
  b_dy_e2_cmp_ge0000_INV1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_dy_e2_cmp_ge000028_2650,
      I1 => b_enemy_y_tmp2(5),
      I2 => b_enemy_y_tmp2(6),
      I3 => N85,
      O => b_dy_e2_cmp_ge0000_INV
    );
  a_en_g_0_or00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => a_x_dis_g(9),
      I1 => N209,
      I2 => a_N85,
      O => a_en_g_0_or0000
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_9_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b_Madd_mux0000_addsub0001_cy(8),
      I1 => b_enemy_y_tmp3(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_9_Q_2501
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_9_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b_Madd_mux0001_addsub0001_cy(8),
      I1 => b_enemy_y_tmp2(9),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_9_Q_2462
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_plane_x_tmp(6),
      I1 => b_enemy_x_tmp3(6),
      I2 => b_enemy_x_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0004_lut(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_plane_x_tmp(6),
      I1 => b_enemy_x_tmp2(6),
      I2 => b_enemy_x_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0002_lut(6)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_plane_x_tmp(6),
      I1 => b_enemy_x_tmp(6),
      I2 => b_enemy_x_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0000_lut(6)
    );
  a_Msub_x_bullet_Madd_xor_2_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => b_bullet_x_tmp(2),
      I1 => e_hcnt(2),
      I2 => N131,
      O => a_x_bullet(2)
    );
  b_Maccum_plane_x_tmp_lut_7_Q : LUT4
    generic map(
      INIT => X"9A8A"
    )
    port map (
      I0 => b_plane_x_tmp(7),
      I1 => key_r_IBUF_4259,
      I2 => key_l_IBUF_4257,
      I3 => N127,
      O => b_Maccum_plane_x_tmp_lut(7)
    );
  a_addr_g_not00011 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => a_x_dis_g(9),
      I1 => a_x_dis_g(8),
      I2 => a_en_g_0_cmp_lt0000,
      I3 => a_N85,
      O => a_addr_g_not0001
    );
  a_addr_cmp_lt00002_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => e_hcnt(5),
      I1 => e_hcnt(3),
      I2 => e_hcnt(2),
      O => N133
    );
  a_x_plane_2_11 : LUT4
    generic map(
      INIT => X"F971"
    )
    port map (
      I0 => a_x_plane(2),
      I1 => a_x_plane(1),
      I2 => a_a_Mmux_varindex0000_11,
      I3 => a_a_Mmux_varindex0000_121_1583,
      O => a_x_plane_2_2
    );
  a_a_Mrom_d_rom0000131_SW0 : LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(4),
      I2 => a_y_plane(2),
      O => N135
    );
  a_a_Mmux_varindex0000_91 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_N7,
      I2 => N135,
      I3 => a_a_Mrom_d_rom000012_1595,
      O => a_a_Mmux_varindex0000_91_1591
    );
  a_a_Mrom_d_rom0000131_SW1 : LUT3
    generic map(
      INIT => X"81"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(4),
      I2 => a_y_plane(2),
      O => N137
    );
  a_a_Mmux_varindex0000_111 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_N7,
      I2 => N137,
      I3 => a_a_Mrom_d_rom000012_1595,
      O => a_a_Mmux_varindex0000_111_1580
    );
  a_b1_Mrom_d_rom0000181_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(4),
      O => N147
    );
  a_b1_Mmux_varindex0000_91 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_N52,
      I2 => N147,
      I3 => a_b1_Mrom_d_rom000012,
      O => a_b1_Mmux_varindex0000_91_1630
    );
  a_b1_Mrom_d_rom0000131_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(3),
      I2 => a_y_enemy(4),
      O => N149
    );
  a_b1_Mmux_varindex0000_111 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_N52,
      I2 => N149,
      I3 => a_b1_Mrom_d_rom000012,
      O => a_b1_Mmux_varindex0000_111_1620
    );
  a_b2_Mrom_d_rom0000181_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(4),
      O => N151
    );
  a_b2_Mmux_varindex0000_91 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_N53,
      I2 => N151,
      I3 => a_b2_Mrom_d_rom000012,
      O => a_b2_Mmux_varindex0000_91_1656
    );
  a_b2_Mrom_d_rom0000131_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(3),
      I2 => a_y_enemy2(4),
      O => N153
    );
  a_b2_Mmux_varindex0000_111 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_N53,
      I2 => N153,
      I3 => a_b2_Mrom_d_rom000012,
      O => a_b2_Mmux_varindex0000_111_1646
    );
  a_b3_Mrom_d_rom0000181_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(4),
      O => N155
    );
  a_b3_Mmux_varindex0000_91 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_N54,
      I2 => N155,
      I3 => a_b3_Mrom_d_rom000012,
      O => a_b3_Mmux_varindex0000_91_1682
    );
  a_b3_Mrom_d_rom0000131_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(3),
      I2 => a_y_enemy3(4),
      O => N157
    );
  a_b3_Mmux_varindex0000_111 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_N54,
      I2 => N157,
      I3 => a_b3_Mrom_d_rom000012,
      O => a_b3_Mmux_varindex0000_111_1672
    );
  a_b1_Mrom_d_rom0000231 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => a_y_enemy(3),
      I1 => a_y_enemy(2),
      I2 => a_y_enemy(4),
      I3 => N159,
      O => a_b1_Mrom_d_rom000023
    );
  a_b2_Mrom_d_rom0000231 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => a_y_enemy2(3),
      I1 => a_y_enemy2(2),
      I2 => a_y_enemy2(4),
      I3 => N164,
      O => a_b2_Mrom_d_rom000023
    );
  a_b3_Mrom_d_rom0000231 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => a_y_enemy3(3),
      I1 => a_y_enemy3(2),
      I2 => a_y_enemy3(4),
      I3 => N169,
      O => a_b3_Mrom_d_rom000023
    );
  a_a_Mmux_varindex0000_2_f5_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => a_plane_rgb_cmp_le0001,
      I1 => a_plane_rgb_cmp_le0000,
      I2 => a_plane_rgb_cmp_ge0001,
      I3 => a_plane_rgb_cmp_ge0000,
      O => N139
    );
  a_b1_Mmux_varindex0000_2_f5_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => a_enemy_rgb_cmp_le0001,
      I1 => a_enemy_rgb_cmp_le0000,
      I2 => a_enemy_rgb_cmp_ge0001,
      I3 => a_enemy_rgb_cmp_ge0000,
      O => N141
    );
  a_b3_Mmux_varindex0000_2_f5_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => a_enemy3_rgb_cmp_le0001,
      I1 => a_enemy3_rgb_cmp_le0000,
      I2 => a_enemy3_rgb_cmp_ge0001,
      I3 => a_enemy3_rgb_cmp_ge0000,
      O => N143
    );
  a_b2_Mmux_varindex0000_2_f5_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => a_enemy2_rgb_cmp_le0001,
      I1 => a_enemy2_rgb_cmp_le0000,
      I2 => a_enemy2_rgb_cmp_ge0001,
      I3 => a_enemy2_rgb_cmp_ge0000,
      O => N145
    );
  a_plane_rgb_mux0001_0_Q : MUXF5
    port map (
      I0 => N180,
      I1 => N181,
      S => a_x_plane(4),
      O => a_plane_rgb_mux0001(0)
    );
  a_plane_rgb_mux0001_0_F : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => a_x_plane(3),
      I1 => N139,
      I2 => a_a_Mmux_varindex0000_8_f6_1589,
      I3 => a_x_plane_2_2,
      O => N180
    );
  a_plane_rgb_mux0001_0_G : LUT4
    generic map(
      INIT => X"0123"
    )
    port map (
      I0 => a_x_plane(3),
      I1 => N139,
      I2 => a_a_Mmux_varindex0000_6_f6_1585,
      I3 => a_x_plane_2_1_1865,
      O => N181
    );
  a_enemy_rgb_mux0001_1_Q : MUXF5
    port map (
      I0 => N182,
      I1 => N183,
      S => a_x_enemy(4),
      O => a_enemy_rgb_mux0001(1)
    );
  a_enemy_rgb_mux0001_1_F : LUT4
    generic map(
      INIT => X"0123"
    )
    port map (
      I0 => a_x_enemy(3),
      I1 => N141,
      I2 => a_x_enemy_2_2_1859,
      I3 => a_b1_Mmux_varindex0000_8_f6_1628,
      O => N182
    );
  a_enemy_rgb_mux0001_1_G : LUT4
    generic map(
      INIT => X"0407"
    )
    port map (
      I0 => a_x_enemy_2_1,
      I1 => a_x_enemy(3),
      I2 => N141,
      I3 => a_b1_Mmux_varindex0000_6_f6_1624,
      O => N183
    );
  a_enemy3_rgb_mux0001_1_Q : MUXF5
    port map (
      I0 => N184,
      I1 => N185,
      S => a_x_enemy3(4),
      O => a_enemy3_rgb_mux0001(1)
    );
  a_enemy3_rgb_mux0001_1_F : LUT4
    generic map(
      INIT => X"0123"
    )
    port map (
      I0 => a_x_enemy3(3),
      I1 => N143,
      I2 => a_x_enemy3_2_2_1852,
      I3 => a_b3_Mmux_varindex0000_8_f6_1680,
      O => N184
    );
  a_enemy3_rgb_mux0001_1_G : LUT4
    generic map(
      INIT => X"0407"
    )
    port map (
      I0 => a_x_enemy3_2_1,
      I1 => a_x_enemy3(3),
      I2 => N143,
      I3 => a_b3_Mmux_varindex0000_6_f6_1676,
      O => N185
    );
  a_enemy2_rgb_mux0001_1_Q : MUXF5
    port map (
      I0 => N186,
      I1 => N187,
      S => a_x_enemy2(4),
      O => a_enemy2_rgb_mux0001(1)
    );
  a_enemy2_rgb_mux0001_1_F : LUT4
    generic map(
      INIT => X"0123"
    )
    port map (
      I0 => a_x_enemy2(3),
      I1 => N145,
      I2 => a_x_enemy2_2_2_1845,
      I3 => a_b2_Mmux_varindex0000_8_f6_1654,
      O => N186
    );
  a_enemy2_rgb_mux0001_1_G : LUT4
    generic map(
      INIT => X"0407"
    )
    port map (
      I0 => a_x_enemy2_2_1,
      I1 => a_x_enemy2(3),
      I2 => N145,
      I3 => a_b2_Mmux_varindex0000_6_f6_1650,
      O => N187
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_cy_5_rt_2373
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp3(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_cy_5_rt_2489
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_cy_5_rt_2450
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp2(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy_5_rt_2335
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_cy_5_rt_2411
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b_enemy_y_tmp(5),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_cy_5_rt_2297
    );
  e_vcnt_1_1 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_1,
      Q => e_vcnt_1_1_3384
    );
  e_vcnt_2_1 : FDCE
    port map (
      C => clk_2977,
      CE => e_vcnt_not0001,
      CLR => b_dx_e2_Acst_inv,
      D => e_Mcount_vcnt_eqn_2,
      Q => e_vcnt_2_1_3396
    );
  f_q10hz_BUFG : BUFG
    port map (
      I => f_q10hz1,
      O => f_q10hz_4146
    );
  clk_BUFG : BUFG
    port map (
      I => clk1,
      O => clk_2977
    );
  clk_0_BUFGP : BUFGP
    port map (
      I => clk_0,
      O => clk_0_BUFGP_2980
    );
  f_q1mhz_BUFG : BUFG
    port map (
      I => f_q1mhz1,
      O => f_q1mhz_4218
    );
  f_q1khz_BUFG : BUFG
    port map (
      I => f_q1khz1,
      O => f_q1khz_4182
    );
  reset_IBUF_BUFG : BUFG
    port map (
      I => reset_IBUF1,
      O => reset_IBUF_4266
    );
  e_Mcount_vcnt_lut_0_INV_0 : INV
    port map (
      I => e_vcnt(0),
      O => e_Mcount_vcnt_lut(0)
    );
  e_Mcompar_vs_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => e_Mcompar_vs_cmp_ge0000_lut_11_1
    );
  e_Mcompar_vs_cmp_ge0000_lut_4_2_INV_0 : INV
    port map (
      I => e_vcnt(8),
      O => e_Mcompar_vs_cmp_ge0000_lut_4_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_1_2_INV_0 : INV
    port map (
      I => e_vcnt(1),
      O => e_Mcompar_vs_cmp_ge0000_lut_1_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_1_1_INV_0 : INV
    port map (
      I => e_vcnt(4),
      O => e_Mcompar_vs_cmp_ge0000_lut_1_1
    );
  e_Mcompar_vs_cmp_ge0000_lut_3_INV_0 : INV
    port map (
      I => e_vcnt(4),
      O => e_Mcompar_vs_cmp_ge0000_lut(3)
    );
  e_Mcompar_vs_cmp_ge0000_lut_1_INV_0 : INV
    port map (
      I => e_vcnt(2),
      O => e_Mcompar_vs_cmp_ge0000_lut(1)
    );
  e_Mcompar_hs_cmp_ge0000_cy_9_2_inv_INV_0 : INV
    port map (
      I => e_Mcompar_hs_cmp_ge0000_cy_9_2,
      O => e_hcnt_not0001_inv
    );
  e_Mcompar_hs_cmp_ge0000_lut_8_2_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => e_Mcompar_hs_cmp_ge0000_lut_8_2
    );
  e_Mcompar_hs_cmp_ge0000_lut_8_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => e_Mcompar_hs_cmp_ge0000_lut_8_1
    );
  e_Mcompar_hs_cmp_ge0000_lut_1_1_INV_0 : INV
    port map (
      I => e_hcnt(8),
      O => e_Mcompar_hs_cmp_ge0000_lut_1_1
    );
  e_Mcompar_hs_cmp_ge0000_lut_10_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => e_Mcompar_hs_cmp_ge0000_lut(10)
    );
  e_Mcompar_hs_cmp_ge0000_lut_3_INV_0 : INV
    port map (
      I => e_hcnt(8),
      O => e_Mcompar_hs_cmp_ge0000_lut(3)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_2_INV_0 : INV
    port map (
      I => f_q1khz_add0000(3),
      O => f_Mcompar_q1khz_cmp_le0000_lut_2_Q
    );
  f_Mcompar_q10hz_cmp_lt0000_cy_9_inv_INV_0 : INV
    port map (
      I => f_Mcompar_q10hz_cmp_lt0000_cy(9),
      O => f_q10hz_cmp_lt0000
    );
  f_Mcompar_q1khz_cmp_lt0000_cy_10_inv_INV_0 : INV
    port map (
      I => f_Mcompar_q1khz_cmp_lt0000_cy(10),
      O => f_q1khz_cmp_lt0000
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_9_INV_0 : INV
    port map (
      I => f_q1khz_add0000(30),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_9_Q
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_1_INV_0 : INV
    port map (
      I => f_q1khz_add0000(4),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_1_Q
    );
  f_Mcompar_q1mhz_cmp_lt0000_cy_10_inv_INV_0 : INV
    port map (
      I => f_Mcompar_q1mhz_cmp_lt0000_cy(10),
      O => f_q1mhz_cmp_lt0000
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_9_INV_0 : INV
    port map (
      I => f_q1mhz_add0000(30),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(9)
    );
  f_Mcompar_q10hz_cmp_le0000_lut_10_INV_0 : INV
    port map (
      I => f_q10hz_add0000(30),
      O => f_Mcompar_q10hz_cmp_le0000_lut_10_Q
    );
  f_Mcompar_q10hz_cmp_le0000_lut_0_INV_0 : INV
    port map (
      I => f_q10hz_add0000(0),
      O => f_Mcompar_q10hz_cmp_le0000_lut_0_Q
    );
  f_Mcount_cout_lut_0_INV_0 : INV
    port map (
      I => f_cout(0),
      O => f_Mcount_cout_lut(0)
    );
  f_Mcount_cout1_lut_0_INV_0 : INV
    port map (
      I => f_cout1(0),
      O => f_Mcount_cout1_lut(0)
    );
  f_Mcount_cout0_lut_0_INV_0 : INV
    port map (
      I => f_cout0(0),
      O => f_Mcount_cout0_lut(0)
    );
  f_Madd_q10hz_add0000_lut_0_INV_0 : INV
    port map (
      I => f_cout1(0),
      O => f_Madd_q10hz_add0000_lut(0)
    );
  f_Madd_q1mhz_add0000_lut_0_INV_0 : INV
    port map (
      I => f_cout(0),
      O => f_Madd_q1mhz_add0000_lut(0)
    );
  f_Madd_q1khz_add0000_lut_0_INV_0 : INV
    port map (
      I => f_cout0(0),
      O => f_Madd_q1khz_add0000_lut(0)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_9_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(9),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(9)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_8_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(8),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(8)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_7_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(7),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(7)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_6_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(6),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(6)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_5_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(5),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(5)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_4_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(4),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(4)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_3_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(3),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(3)
    );
  b_Msub_bullet_y_tmp_addsub0000_lut_2_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(2),
      O => b_Msub_bullet_y_tmp_addsub0000_lut(2)
    );
  a_Mcompar_num1_cmp_ge0000_lut_1_INV_0 : INV
    port map (
      I => b_score_tmp(2),
      O => a_Mcompar_num1_cmp_ge0000_lut(1)
    );
  a_Madd_enemy2_rgb_addsub0000_lut_5_INV_0 : INV
    port map (
      I => b_enemy_x_tmp2(5),
      O => a_Madd_enemy2_rgb_addsub0000_lut(5)
    );
  a_Madd_bullet_rgb_addsub0001_lut_4_INV_0 : INV
    port map (
      I => b_bullet_y_tmp(4),
      O => a_Madd_bullet_rgb_addsub0001_lut(4)
    );
  a_Madd_enemy2_rgb_addsub0001_lut_5_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(5),
      O => a_Madd_enemy2_rgb_addsub0001_lut(5)
    );
  a_Madd_bullet_rgb_addsub0000_lut_4_INV_0 : INV
    port map (
      I => b_bullet_x_tmp(4),
      O => a_Madd_bullet_rgb_addsub0000_lut(4)
    );
  a_Madd_enemy_rgb_addsub0001_lut_5_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(5),
      O => a_Madd_enemy_rgb_addsub0001_lut(5)
    );
  a_Madd_plane_rgb_addsub0000_lut_5_INV_0 : INV
    port map (
      I => b_plane_x_tmp(5),
      O => a_Madd_plane_rgb_addsub0000_lut(5)
    );
  a_Madd_enemy_rgb_addsub0000_lut_5_INV_0 : INV
    port map (
      I => b_enemy_x_tmp(5),
      O => a_Madd_enemy_rgb_addsub0000_lut(5)
    );
  a_Madd_enemy3_rgb_addsub0001_lut_5_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(5),
      O => a_Madd_enemy3_rgb_addsub0001_lut(5)
    );
  a_Madd_enemy3_rgb_addsub0000_lut_5_INV_0 : INV
    port map (
      I => b_enemy_x_tmp3(5),
      O => a_Madd_enemy3_rgb_addsub0000_lut(5)
    );
  a_Msub_y_dis_lut_9_INV_0 : INV
    port map (
      I => e_vcnt(9),
      O => a_Msub_y_dis_lut_9_Q
    );
  a_Msub_y_dis_lut_8_INV_0 : INV
    port map (
      I => e_vcnt(8),
      O => a_Msub_y_dis_lut_8_Q
    );
  a_Msub_y_dis_lut_7_INV_0 : INV
    port map (
      I => e_vcnt(7),
      O => a_Msub_y_dis_lut_7_Q
    );
  a_Msub_y_dis_lut_6_INV_0 : INV
    port map (
      I => e_vcnt(6),
      O => a_Msub_y_dis_lut_6_Q
    );
  a_Msub_y_dis_lut_3_INV_0 : INV
    port map (
      I => e_vcnt(3),
      O => a_Msub_y_dis_lut_3_Q
    );
  a_Msub_y_dis_lut_2_INV_0 : INV
    port map (
      I => e_vcnt(2),
      O => a_Msub_y_dis_lut_2_Q
    );
  reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF1,
      O => b_dx_e2_Acst_inv
    );
  b_mux0001_addsub0001_5_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(5),
      O => b_mux0001_addsub0001(5)
    );
  b_mux0001_addsub0000_5_1_INV_0 : INV
    port map (
      I => b_enemy_x_tmp2(5),
      O => b_mux0001_addsub0000(5)
    );
  b_mux0000_addsub0001_5_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(5),
      O => b_mux0000_addsub0001(5)
    );
  b_mux0000_addsub0000_5_1_INV_0 : INV
    port map (
      I => b_enemy_x_tmp3(5),
      O => b_mux0000_addsub0000(5)
    );
  b_life_plane_tmp_0_addsub0007_5_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(5),
      O => b_life_plane_tmp_0_addsub0007(5)
    );
  b_life_plane_tmp_0_addsub0006_5_1_INV_0 : INV
    port map (
      I => b_enemy_x_tmp(5),
      O => b_life_plane_tmp_0_addsub0006(5)
    );
  clk_not00011_INV_0 : INV
    port map (
      I => clk1,
      O => clk_not0001
    );
  b_Madd_bullet_x_tmp_add0000_xor_3_11_INV_0 : INV
    port map (
      I => b_plane_x_tmp(3),
      O => b_bullet_x_tmp_add0000(3)
    );
  b_score_tmp_mux0003_0_1_INV_0 : INV
    port map (
      I => b_score_tmp(0),
      O => b_score_tmp_mux0003(0)
    );
  b_Msub_life_plane_tmp_0_sub0000_xor_0_11_INV_0 : INV
    port map (
      I => b_life_plane_tmp(0),
      O => b_life_plane_tmp_0_sub0000
    );
  a_en_g_inv1_INV_0 : INV
    port map (
      I => a_en_g(0),
      O => a_en_g_inv
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => e_hcnt(10),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(10)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(11)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(12)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(13)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(14)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(15)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(16)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(17)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(18)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(19)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(20)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(21)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(22)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(23)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(24)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(25)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(26)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(27)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(28)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(29)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(30)
    );
  a_Mcompar_bullet_rgb_cmp_ge0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_bullet_rgb_cmp_ge0000_lut(31)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_0_1_INV_0 : INV
    port map (
      I => e_vcnt(0),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(0)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_10_1_INV_0 : INV
    port map (
      I => e_vcnt(10),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(10)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(11)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(12)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(13)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(14)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(15)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(16)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(17)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(18)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(19)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(20)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(21)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(22)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(23)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(24)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(25)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(26)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(27)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(28)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(29)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(30)
    );
  a_Mcompar_bullet_rgb_cmp_ge0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_bullet_rgb_cmp_ge0001_lut(31)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(11)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(12)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(13)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(14)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(15)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(16)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(17)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(18)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(19)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(20)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(21)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(22)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(23)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(24)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(25)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(26)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(27)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(28)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(29)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(30)
    );
  a_Mcompar_bullet_rgb_cmp_le0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_bullet_rgb_cmp_le0000_lut(31)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_0_1_INV_0 : INV
    port map (
      I => e_vcnt(0),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(0)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(11)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(12)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(13)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(14)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(15)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(16)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(17)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(18)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(19)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(20)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(21)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(22)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(23)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(24)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(25)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(26)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(27)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(28)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(29)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(30)
    );
  a_Mcompar_bullet_rgb_cmp_le0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_bullet_rgb_cmp_le0001_lut(31)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => e_hcnt(10),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(10)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(11)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(12)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(13)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(14)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(15)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(16)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(17)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(18)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(19)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(20)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(21)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(22)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(23)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(24)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(25)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(26)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(27)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(28)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(29)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(30)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_enemy2_rgb_cmp_ge0000_lut(31)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_10_1_INV_0 : INV
    port map (
      I => e_vcnt(10),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(10)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(11)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(12)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(13)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(14)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(15)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(16)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(17)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(18)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(19)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(20)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(21)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(22)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(23)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(24)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(25)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(26)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(27)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(28)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(29)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(30)
    );
  a_Mcompar_enemy2_rgb_cmp_ge0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_enemy2_rgb_cmp_ge0001_lut(31)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(11)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(12)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(13)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(14)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(15)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(16)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(17)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(18)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(19)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(20)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(21)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(22)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(23)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(24)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(25)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(26)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(27)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(28)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(29)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(30)
    );
  a_Mcompar_enemy2_rgb_cmp_le0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_enemy2_rgb_cmp_le0000_lut(31)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(11)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(12)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(13)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(14)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(15)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(16)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(17)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(18)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(19)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(20)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(21)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(22)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(23)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(24)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(25)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(26)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(27)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(28)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(29)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(30)
    );
  a_Mcompar_enemy2_rgb_cmp_le0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_enemy2_rgb_cmp_le0001_lut(31)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => e_hcnt(10),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(10)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(11)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(12)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(13)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(14)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(15)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(16)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(17)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(18)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(19)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(20)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(21)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(22)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(23)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(24)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(25)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(26)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(27)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(28)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(29)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(30)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_enemy3_rgb_cmp_ge0000_lut(31)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_10_1_INV_0 : INV
    port map (
      I => e_vcnt(10),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(10)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(11)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(12)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(13)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(14)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(15)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(16)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(17)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(18)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(19)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(20)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(21)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(22)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(23)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(24)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(25)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(26)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(27)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(28)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(29)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(30)
    );
  a_Mcompar_enemy3_rgb_cmp_ge0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_enemy3_rgb_cmp_ge0001_lut(31)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(11)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(12)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(13)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(14)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(15)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(16)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(17)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(18)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(19)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(20)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(21)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(22)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(23)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(24)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(25)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(26)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(27)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(28)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(29)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(30)
    );
  a_Mcompar_enemy3_rgb_cmp_le0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_enemy3_rgb_cmp_le0000_lut(31)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(11)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(12)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(13)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(14)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(15)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(16)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(17)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(18)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(19)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(20)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(21)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(22)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(23)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(24)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(25)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(26)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(27)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(28)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(29)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(30)
    );
  a_Mcompar_enemy3_rgb_cmp_le0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_enemy3_rgb_cmp_le0001_lut(31)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => e_hcnt(10),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(10)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(11)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(12)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(13)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(14)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(15)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(16)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(17)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(18)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(19)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(20)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(21)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(22)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(23)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(24)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(25)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(26)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(27)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(28)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(29)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(30)
    );
  a_Mcompar_enemy_rgb_cmp_ge0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_enemy_rgb_cmp_ge0000_lut(31)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_10_1_INV_0 : INV
    port map (
      I => e_vcnt(10),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(10)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(11)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(12)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(13)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(14)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(15)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(16)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(17)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(18)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(19)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(20)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(21)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(22)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(23)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(24)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(25)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(26)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(27)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(28)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(29)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(30)
    );
  a_Mcompar_enemy_rgb_cmp_ge0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_enemy_rgb_cmp_ge0001_lut(31)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(11)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(12)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(13)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(14)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(15)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(16)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(17)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(18)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(19)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(20)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(21)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(22)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(23)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(24)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(25)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(26)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(27)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(28)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(29)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(30)
    );
  a_Mcompar_enemy_rgb_cmp_le0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_enemy_rgb_cmp_le0000_lut(31)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(11)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(12)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(13)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(14)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(15)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(16)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(17)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(18)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(19)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(20)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(21)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(22)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(23)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(24)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(25)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(26)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(27)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(28)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(29)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(30)
    );
  a_Mcompar_enemy_rgb_cmp_le0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_enemy_rgb_cmp_le0001_lut(31)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => e_hcnt(10),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(10)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(11)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(12)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(13)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(14)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(15)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(16)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(17)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(18)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(19)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(20)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(21)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(22)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(23)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(24)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(25)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(26)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(27)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(28)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(29)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(30)
    );
  a_Mcompar_plane_rgb_cmp_ge0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_plane_rgb_cmp_ge0000_lut(31)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_0_1_INV_0 : INV
    port map (
      I => e_vcnt(0),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(0)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_10_1_INV_0 : INV
    port map (
      I => e_vcnt(10),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(10)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(11)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(12)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(13)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(14)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(15)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(16)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(17)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(18)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(19)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_1_1_INV_0 : INV
    port map (
      I => e_vcnt_1_1_3384,
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(1)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(20)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(21)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(22)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(23)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(24)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(25)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(26)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(27)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(28)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(29)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_2_1_INV_0 : INV
    port map (
      I => e_vcnt_2_1_3396,
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(2)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(30)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(31)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_3_1_INV_0 : INV
    port map (
      I => e_vcnt(3),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(3)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_5_1_INV_0 : INV
    port map (
      I => e_vcnt(5),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(5)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_6_1_INV_0 : INV
    port map (
      I => e_vcnt(6),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(6)
    );
  a_Mcompar_plane_rgb_cmp_ge0001_lut_9_1_INV_0 : INV
    port map (
      I => e_vcnt(9),
      O => a_Mcompar_plane_rgb_cmp_ge0001_lut(9)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(11),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(11)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_12_1_INV_0 : INV
    port map (
      I => e_hcnt(12),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(12)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_13_1_INV_0 : INV
    port map (
      I => e_hcnt(13),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(13)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => e_hcnt(14),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(14)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_15_1_INV_0 : INV
    port map (
      I => e_hcnt(15),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(15)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_16_1_INV_0 : INV
    port map (
      I => e_hcnt(16),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(16)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_17_1_INV_0 : INV
    port map (
      I => e_hcnt(17),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(17)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_18_1_INV_0 : INV
    port map (
      I => e_hcnt(18),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(18)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_19_1_INV_0 : INV
    port map (
      I => e_hcnt(19),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(19)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_20_1_INV_0 : INV
    port map (
      I => e_hcnt(20),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(20)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_21_1_INV_0 : INV
    port map (
      I => e_hcnt(21),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(21)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_22_1_INV_0 : INV
    port map (
      I => e_hcnt(22),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(22)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_23_1_INV_0 : INV
    port map (
      I => e_hcnt(23),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(23)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_24_1_INV_0 : INV
    port map (
      I => e_hcnt(24),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(24)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_25_1_INV_0 : INV
    port map (
      I => e_hcnt(25),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(25)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_26_1_INV_0 : INV
    port map (
      I => e_hcnt(26),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(26)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_27_1_INV_0 : INV
    port map (
      I => e_hcnt(27),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(27)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_28_1_INV_0 : INV
    port map (
      I => e_hcnt(28),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(28)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_29_1_INV_0 : INV
    port map (
      I => e_hcnt(29),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(29)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_30_1_INV_0 : INV
    port map (
      I => e_hcnt(30),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(30)
    );
  a_Mcompar_plane_rgb_cmp_le0000_lut_31_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => a_Mcompar_plane_rgb_cmp_le0000_lut(31)
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_0_1_INV_0 : INV
    port map (
      I => e_vcnt(0),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_0_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_10_1_INV_0 : INV
    port map (
      I => e_vcnt(10),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_10_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_11_1_INV_0 : INV
    port map (
      I => e_vcnt(11),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_11_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(12),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_12_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_13_1_INV_0 : INV
    port map (
      I => e_vcnt(13),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_13_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_14_1_INV_0 : INV
    port map (
      I => e_vcnt(14),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_14_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_15_1_INV_0 : INV
    port map (
      I => e_vcnt(15),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_15_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_16_1_INV_0 : INV
    port map (
      I => e_vcnt(16),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_16_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_17_1_INV_0 : INV
    port map (
      I => e_vcnt(17),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_17_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_18_1_INV_0 : INV
    port map (
      I => e_vcnt(18),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_18_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_19_1_INV_0 : INV
    port map (
      I => e_vcnt(19),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_19_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_1_1_INV_0 : INV
    port map (
      I => e_vcnt(1),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_1_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_20_1_INV_0 : INV
    port map (
      I => e_vcnt(20),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_20_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_21_1_INV_0 : INV
    port map (
      I => e_vcnt(21),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_21_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_22_1_INV_0 : INV
    port map (
      I => e_vcnt(22),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_22_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_23_1_INV_0 : INV
    port map (
      I => e_vcnt(23),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_23_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_24_1_INV_0 : INV
    port map (
      I => e_vcnt(24),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_24_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_25_1_INV_0 : INV
    port map (
      I => e_vcnt(25),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_25_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_26_1_INV_0 : INV
    port map (
      I => e_vcnt(26),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_26_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_27_1_INV_0 : INV
    port map (
      I => e_vcnt(27),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_27_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_28_1_INV_0 : INV
    port map (
      I => e_vcnt(28),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_28_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_29_1_INV_0 : INV
    port map (
      I => e_vcnt(29),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_29_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_2_1_INV_0 : INV
    port map (
      I => e_vcnt(2),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_2_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_30_1_INV_0 : INV
    port map (
      I => e_vcnt(30),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_30_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_31_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_31_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_3_1_INV_0 : INV
    port map (
      I => e_vcnt(3),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_3_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_6_1_INV_0 : INV
    port map (
      I => e_vcnt(6),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_6_Q
    );
  a_Mcompar_plane_rgb_cmp_le0001_lut_9_1_INV_0 : INV
    port map (
      I => e_vcnt(9),
      O => a_Mcompar_plane_rgb_cmp_le0001_lut_9_Q
    );
  a_Msub_y_plane_Madd_lut_0_1_INV_0 : INV
    port map (
      I => e_vcnt(0),
      O => a_Msub_y_plane_Madd_lut(0)
    );
  a_Msub_y_plane_Madd_lut_1_1_INV_0 : INV
    port map (
      I => e_vcnt_1_1_3384,
      O => a_Msub_y_plane_Madd_lut(1)
    );
  a_Msub_y_plane_Madd_lut_2_1_INV_0 : INV
    port map (
      I => e_vcnt_2_1_3396,
      O => a_Msub_y_plane_Madd_lut(2)
    );
  a_Msub_y_plane_Madd_lut_3_1_INV_0 : INV
    port map (
      I => e_vcnt(3),
      O => a_Msub_y_plane_Madd_lut(3)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_ge0001_lut(0)
    );
  b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(0),
      O => b_Mcompar_life_enemy_tmp2_0_cmp_le0001_lut(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_ge0001_lut(0)
    );
  b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(0),
      O => b_Mcompar_life_enemy_tmp3_0_cmp_le0001_lut(0)
    );
  b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(0),
      O => b_Mcompar_life_enemy_tmp_0_cmp_ge0001_lut(0)
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_0_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_1_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_1_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_2_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_2_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_3_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0001_lut_3_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_0_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_1_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_1_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_2_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_2_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_3_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0003_lut_3_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_0_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_1_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_1_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_2_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_2_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_3_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_ge0005_lut_3_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_0_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_1_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_1_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_2_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_2_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_3_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0001_lut_3_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_0_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_1_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_1_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_2_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_2_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_3_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp2(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0003_lut_3_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(0),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_0_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_1_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(1),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_1_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_2_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(2),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_2_Q
    );
  b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_3_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp3(3),
      O => b_Mcompar_life_plane_tmp_0_cmp_le0005_lut_3_Q
    );
  b_Mcompar_score_tmp_cmp_le0000_lut_0_1_INV_0 : INV
    port map (
      I => b_enemy_y_tmp(0),
      O => b_Mcompar_score_tmp_cmp_le0000_lut(0)
    );
  e_Mcompar_hs_cmp_ge0000_lut_11_1_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => e_Mcompar_hs_cmp_ge0000_lut(11)
    );
  e_Mcompar_hs_cmp_ge0000_lut_9_11_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => e_Mcompar_hs_cmp_ge0000_lut_9_1
    );
  e_Mcompar_hs_cmp_ge0000_lut_9_21_INV_0 : INV
    port map (
      I => e_hcnt(31),
      O => e_Mcompar_hs_cmp_ge0000_lut_9_2
    );
  e_Mcompar_vs_cmp_ge0000_lut_11_2_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => e_Mcompar_vs_cmp_ge0000_lut(11)
    );
  e_Mcompar_vs_cmp_ge0000_lut_12_1_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => e_Mcompar_vs_cmp_ge0000_lut(12)
    );
  e_Mcompar_vs_cmp_ge0000_lut_9_11_INV_0 : INV
    port map (
      I => e_vcnt(31),
      O => e_Mcompar_vs_cmp_ge0000_lut_9_1
    );
  f_Mcompar_q10hz_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => f_q10hz_add0000(31),
      O => f_Mcompar_q10hz_cmp_le0000_lut_11_Q
    );
  f_Mcompar_q10hz_cmp_lt0000_lut_9_1_INV_0 : INV
    port map (
      I => f_q10hz_add0000(31),
      O => f_Mcompar_q10hz_cmp_lt0000_lut(9)
    );
  f_Mcompar_q1khz_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => f_q1khz_add0000(31),
      O => f_Mcompar_q1khz_cmp_le0000_lut_11_Q
    );
  f_Mcompar_q1khz_cmp_lt0000_lut_10_1_INV_0 : INV
    port map (
      I => f_q1khz_add0000(31),
      O => f_Mcompar_q1khz_cmp_lt0000_lut_10_Q
    );
  f_Mcompar_q1mhz_cmp_le0000_lut_9_1_INV_0 : INV
    port map (
      I => f_q1mhz_add0000(31),
      O => f_Mcompar_q1mhz_cmp_le0000_lut(9)
    );
  f_Mcompar_q1mhz_cmp_lt0000_lut_10_1_INV_0 : INV
    port map (
      I => f_q1mhz_add0000(31),
      O => f_Mcompar_q1mhz_cmp_lt0000_lut(10)
    );
  a_b1_Mrom_d_rom0000221 : MUXF5
    port map (
      I0 => N188,
      I1 => N1,
      S => a_y_enemy(4),
      O => a_b1_Mrom_d_rom000022
    );
  a_b1_Mrom_d_rom0000221_F : LUT4
    generic map(
      INIT => X"F67F"
    )
    port map (
      I0 => a_y_enemy(3),
      I1 => a_y_enemy(2),
      I2 => a_y_enemy(1),
      I3 => a_y_enemy(0),
      O => N188
    );
  a_b2_Mrom_d_rom0000221 : MUXF5
    port map (
      I0 => N190,
      I1 => N1,
      S => a_y_enemy2(4),
      O => a_b2_Mrom_d_rom000022
    );
  a_b2_Mrom_d_rom0000221_F : LUT4
    generic map(
      INIT => X"F67F"
    )
    port map (
      I0 => a_y_enemy2(3),
      I1 => a_y_enemy2(2),
      I2 => a_y_enemy2(1),
      I3 => a_y_enemy2(0),
      O => N190
    );
  a_b3_Mrom_d_rom0000221 : MUXF5
    port map (
      I0 => N192,
      I1 => N1,
      S => a_y_enemy3(4),
      O => a_b3_Mrom_d_rom000022
    );
  a_b3_Mrom_d_rom0000221_F : LUT4
    generic map(
      INIT => X"F67F"
    )
    port map (
      I0 => a_y_enemy3(3),
      I1 => a_y_enemy3(2),
      I2 => a_y_enemy3(1),
      I3 => a_y_enemy3(0),
      O => N192
    );
  a_a_Mrom_d_rom0000231 : MUXF5
    port map (
      I0 => N194,
      I1 => N195,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000023
    );
  a_a_Mrom_d_rom0000231_F : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(3),
      I2 => a_y_plane(2),
      I3 => a_y_plane(0),
      O => N194
    );
  a_a_Mrom_d_rom0000231_G : LUT4
    generic map(
      INIT => X"FF7A"
    )
    port map (
      I0 => a_y_plane(2),
      I1 => a_y_plane(0),
      I2 => a_y_plane(3),
      I3 => a_y_plane(1),
      O => N195
    );
  a_a_Mrom_d_rom0000221 : MUXF5
    port map (
      I0 => N196,
      I1 => N197,
      S => a_y_plane(4),
      O => a_a_Mrom_d_rom000022
    );
  a_a_Mrom_d_rom0000221_F : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => a_y_plane(1),
      I1 => a_y_plane(3),
      I2 => a_y_plane(2),
      O => N196
    );
  a_a_Mrom_d_rom0000221_G : LUT4
    generic map(
      INIT => X"FF7A"
    )
    port map (
      I0 => a_y_plane(2),
      I1 => a_y_plane(0),
      I2 => a_y_plane(3),
      I3 => a_y_plane(1),
      O => N197
    );
  a_e_Mrom_data_rom00001 : RAMB16_S9_S9
    generic map(
      INIT_0E => X"003C30303030303C00FEE070381C0EFE001818183C66666600C6EE7C387CEEC6",
      INIT_00 => X"0044FE444444FE44000000000028282800300030303838380000000000000000",
      INIT_01 => X"0000000040206060007A8C9A70684830001898402010C8C00010FC127C907E10",
      INIT_02 => X"000010107C10100000001054385410000030080404040830000C10202020100C",
      INIT_03 => X"00804020100804020030300000303000000000007C0000000060303000000000",
      INIT_04 => X"007CC6063C180C7E00FEE0783C0EC67C007E181818183818003864C6C6C64C38",
      INIT_05 => X"00303030180CC6FE007CC6C6FCC0603C007CC60606FCC0FC000C0CFECC6C3C1C",
      INIT_06 => X"0060303000303000000030300030300000780C067EC6C67C007C869E78E4C478",
      INIT_07 => X"003800380CC6FE7C00201008040810200000007C007C00000008102040201008",
      INIT_08 => X"003C66C0C0C0663C00FCC6C6FCC6C6FC00C6C6FEC6C66C38003C4098AC944438",
      INIT_09 => X"003E66C6CEC0603E00C0C0C0FCC0C0FE00FEC0C0FCC0C0FE00F8CCC6C6C6CCF8",
      INIT_0A => X"00CEDCF8F0D8CCC600788C0C0C0C0C1E007E18181818187E00C6C6C6FEC6C6C6",
      INIT_0B => X"007CC6C6C6C6C67C00C6CEDEFEF6E6C600C6C6D6FEFEEEC6007E606060606060",
      INIT_0C => X"007CC6067CC0CC7800CEDCF8CEC6C6FC007ACCDEC6C6C67C00C0C0FCC6C6C6FC",
      INIT_0D => X"00C6EEFEFED6C6C60010387CEEC6C6C6007CC6C6C6C6C6C6001818181818187E",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_0F => X"00FE0000000000000000000000885020003C0C0C0C0C0C3C002030383C383020"
    )
    port map (
      CLKA => clk_2977,
      CLKB => clk_2977,
      ENA => a_addr_g_not0001,
      ENB => N1,
      SSRA => N0,
      SSRB => N0,
      WEA => N0,
      WEB => N0,
      ADDRA(10) => N0,
      ADDRA(9) => N0,
      ADDRA(8) => N1,
      ADDRA(7) => N0,
      ADDRA(6) => a_addr_g_mux0000(6),
      ADDRA(5) => a_addr_g_mux0000(5),
      ADDRA(4) => a_addr_g_mux0000(4),
      ADDRA(3) => a_addr_g_mux0000(3),
      ADDRA(2) => a_y_dis_g(3),
      ADDRA(1) => e_Mcompar_vs_cmp_ge0000_lut(1),
      ADDRA(0) => e_vcnt(1),
      ADDRB(10) => N0,
      ADDRB(9) => N0,
      ADDRB(8) => N0,
      ADDRB(7) => a_addr_mux0002(7),
      ADDRB(6) => a_addr_mux0002(6),
      ADDRB(5) => a_addr_mux0002(5),
      ADDRB(4) => a_addr_mux0002(4),
      ADDRB(3) => a_addr_mux0002(3),
      ADDRB(2) => a_y_dis(3),
      ADDRB(1) => a_y_dis(2),
      ADDRB(0) => a_y_dis(1),
      DIA(7) => N0,
      DIA(6) => N0,
      DIA(5) => N0,
      DIA(4) => N0,
      DIA(3) => N0,
      DIA(2) => N0,
      DIA(1) => N0,
      DIA(0) => N0,
      DIB(7) => NLW_a_e_Mrom_data_rom00001_DIB_7_UNCONNECTED,
      DIB(6) => NLW_a_e_Mrom_data_rom00001_DIB_6_UNCONNECTED,
      DIB(5) => NLW_a_e_Mrom_data_rom00001_DIB_5_UNCONNECTED,
      DIB(4) => NLW_a_e_Mrom_data_rom00001_DIB_4_UNCONNECTED,
      DIB(3) => NLW_a_e_Mrom_data_rom00001_DIB_3_UNCONNECTED,
      DIB(2) => NLW_a_e_Mrom_data_rom00001_DIB_2_UNCONNECTED,
      DIB(1) => NLW_a_e_Mrom_data_rom00001_DIB_1_UNCONNECTED,
      DIB(0) => NLW_a_e_Mrom_data_rom00001_DIB_0_UNCONNECTED,
      DIPA(0) => N0,
      DIPB(0) => NLW_a_e_Mrom_data_rom00001_DIPB_0_UNCONNECTED,
      DOA(7) => a_e_data(7),
      DOA(6) => a_e_data(6),
      DOA(5) => a_e_data(5),
      DOA(4) => a_e_data(4),
      DOA(3) => a_e_data(3),
      DOA(2) => a_e_data(2),
      DOA(1) => a_e_data(1),
      DOA(0) => a_e_data(0),
      DOPA(0) => NLW_a_e_Mrom_data_rom00001_DOPA_0_UNCONNECTED,
      DOB(7) => a_d_data(7),
      DOB(6) => a_d_data(6),
      DOB(5) => a_d_data(5),
      DOB(4) => a_d_data(4),
      DOB(3) => a_d_data(3),
      DOB(2) => a_d_data(2),
      DOB(1) => a_d_data(1),
      DOB(0) => a_d_data(0),
      DOPB(0) => NLW_a_e_Mrom_data_rom00001_DOPB_0_UNCONNECTED
    );
  b_life_plane_tmp_0_or000022_SW01 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(9),
      I1 => b_life_plane_tmp_0_cmp_le0002,
      I2 => b_life_plane_tmp_0_cmp_le0003,
      O => b_life_plane_tmp_0_or000022_SW0
    );
  b_life_plane_tmp_0_or000022_SW02 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => b_enemy_y_tmp2(9),
      I1 => b_life_plane_tmp_0_cmp_le0003,
      I2 => b_life_plane_tmp_0_cmp_le0002,
      I3 => b_Mcompar_life_plane_tmp_0_cmp_ge0003_cy(9),
      O => b_life_plane_tmp_0_or000022_SW01_2912
    );
  b_life_plane_tmp_0_or000022_SW0_f5 : MUXF5
    port map (
      I0 => b_life_plane_tmp_0_or000022_SW01_2912,
      I1 => b_life_plane_tmp_0_or000022_SW0,
      S => b_Msub_life_plane_tmp_0_addsub0003_cy(8),
      O => N89
    );
  e_vcnt_not000111 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => e_vcnt_and00003,
      I1 => e_vcnt_and00001,
      I2 => e_vcnt_and00002,
      I3 => e_Mcompar_vs_cmp_ge0000_cy(12),
      O => e_vcnt_not00011
    );
  e_vcnt_not000112 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => e_vcnt_and00001,
      I1 => e_vcnt_and00002,
      I2 => e_vcnt_and00003,
      O => e_vcnt_not000111_3440
    );
  e_vcnt_not00011_f5 : MUXF5
    port map (
      I0 => e_vcnt_not000111_3440,
      I1 => e_vcnt_not00011,
      S => e_vcnt_cmp_eq0000,
      O => e_vcnt_not0001
    );
  a_a_Mmux_varindex0000_121 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => a_x_plane(0),
      I1 => a_a_Mrom_d_rom000024,
      I2 => a_a_Mrom_d_rom000025,
      LO => a_a_Mmux_varindex0000_121_1583
    );
  e_vcnt_and000021 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => e_vcnt(0),
      I1 => e_vcnt(28),
      I2 => e_vcnt(27),
      I3 => e_vcnt(29),
      LO => N198,
      O => e_vcnt_and00002
    );
  b_dx_e_cmp_ge000016 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_enemy_x_tmp(5),
      I1 => b_enemy_x_tmp(6),
      LO => b_dx_e_cmp_ge000016_2641
    );
  b_dx_e3_cmp_ge000016 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_enemy_x_tmp3(5),
      I1 => b_enemy_x_tmp3(6),
      LO => b_dx_e3_cmp_ge000016_2629
    );
  b_dx_e2_cmp_ge000016 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_enemy_x_tmp2(5),
      I1 => b_enemy_x_tmp2(6),
      LO => b_dx_e2_cmp_ge000016_2617
    );
  b_dy_e_and00008 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp(3),
      I1 => b_enemy_y_tmp(2),
      I2 => b_enemy_y_tmp(1),
      I3 => b_enemy_y_tmp(0),
      LO => b_dy_e_and00008_2665
    );
  b_dy_e3_and00008 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp3(3),
      I1 => b_enemy_y_tmp3(2),
      I2 => b_enemy_y_tmp3(1),
      I3 => b_enemy_y_tmp3(0),
      LO => b_dy_e3_and00008_2657
    );
  b_dy_e2_and00008 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_enemy_y_tmp2(3),
      I1 => b_enemy_y_tmp2(2),
      I2 => b_enemy_y_tmp2(1),
      I3 => b_enemy_y_tmp2(0),
      LO => b_dy_e2_and00008_2648
    );
  a_Msub_x_bullet_Madd_xor_0_11 : LUT2_L
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => e_hcnt(0),
      I1 => b_bullet_x_tmp(0),
      LO => a_x_bullet(0)
    );
  b_dx_e_and00006 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b_enemy_x_tmp(1),
      I1 => b_enemy_x_tmp(0),
      LO => b_dx_e_and00006_2639
    );
  b_dx_e3_and00006 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b_enemy_x_tmp3(1),
      I1 => b_enemy_x_tmp3(0),
      LO => b_dx_e3_and00006_2627
    );
  b_dx_e2_and00006 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b_enemy_x_tmp2(1),
      I1 => b_enemy_x_tmp2(0),
      LO => b_dx_e2_and00006_2615
    );
  b_plane_x_tmp_and000012 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b_plane_x_tmp(3),
      I1 => b_plane_x_tmp(2),
      LO => b_plane_x_tmp_and000012_2953
    );
  a_en_0_not0001_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => a_y_dis(6),
      I1 => a_y_dis(5),
      I2 => a_y_dis(4),
      LO => N01
    );
  a_addr_g_cmp_lt00011 : LUT4_D
    generic map(
      INIT => X"0021"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => N6,
      I2 => a_Msub_x_dis_g_cy_7_Q,
      I3 => a_x_dis_g(9),
      LO => N199,
      O => a_addr_g_cmp_lt0001
    );
  a_addr_mux0002_3_1 : LUT4_D
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N8,
      I1 => a_y_dis(9),
      I2 => a_y_dis(8),
      I3 => a_addr_cmp_lt0000,
      LO => N200,
      O => a_N5
    );
  a_b3_Mrom_d_rom00002_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      LO => N12
    );
  a_b2_Mrom_d_rom00002_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      LO => N14
    );
  a_b1_Mrom_d_rom00002_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      LO => N16
    );
  a_Msub_x_dis_g_cy_3_11 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => e_hcnt(3),
      I1 => e_hcnt(2),
      LO => N201,
      O => a_Msub_x_dis_g_cy_3_Q
    );
  a_c_Mrom_d_rom0000101 : LUT4_D
    generic map(
      INIT => X"F81F"
    )
    port map (
      I0 => e_vcnt(0),
      I1 => a_y_bullet(1),
      I2 => a_y_bullet(2),
      I3 => a_y_bullet(3),
      LO => N202,
      O => a_c_Mrom_d_rom000010
    );
  a_bullet_rgb_mux0001_1_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_bullet_rgb_cmp_le0001,
      I1 => a_bullet_rgb_cmp_le0000,
      LO => N22
    );
  a_a_Mrom_d_rom00002_SW0 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_y_plane(0),
      I1 => a_y_plane(1),
      LO => N203,
      O => a_a_Mrom_d_rom000015_bdd4
    );
  a_b3_Mrom_d_rom00001211 : LUT4_D
    generic map(
      INIT => X"3FF8"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      I2 => a_y_enemy3(2),
      I3 => a_y_enemy3(3),
      LO => N204,
      O => a_N20
    );
  a_b2_Mrom_d_rom00001211 : LUT4_D
    generic map(
      INIT => X"3FF8"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      I2 => a_y_enemy2(2),
      I3 => a_y_enemy2(3),
      LO => N205,
      O => a_N19
    );
  a_b1_Mrom_d_rom00001211 : LUT4_D
    generic map(
      INIT => X"3FF8"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      I2 => a_y_enemy(2),
      I3 => a_y_enemy(3),
      LO => N206,
      O => a_N18
    );
  a_a_Mrom_d_rom00002521 : LUT4_D
    generic map(
      INIT => X"BFFD"
    )
    port map (
      I0 => a_y_plane(4),
      I1 => a_y_plane(3),
      I2 => a_y_plane(2),
      I3 => a_a_Mrom_d_rom000015_bdd4,
      LO => N207,
      O => a_a_Mrom_d_rom000025
    );
  a_b1_Mmux_varindex0000_10_f51 : LUT4_L
    generic map(
      INIT => X"F2D0"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_x_enemy(1),
      I2 => a_b1_Mmux_varindex0000_11,
      I3 => a_b1_Mrom_d_rom000025,
      LO => a_b1_Mmux_varindex0000_10_f5
    );
  a_b2_Mmux_varindex0000_10_f51 : LUT4_L
    generic map(
      INIT => X"F2D0"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_x_enemy2(1),
      I2 => a_b2_Mmux_varindex0000_11,
      I3 => a_b2_Mrom_d_rom000025,
      LO => a_b2_Mmux_varindex0000_10_f5
    );
  a_b3_Mmux_varindex0000_10_f51 : LUT4_L
    generic map(
      INIT => X"F2D0"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_x_enemy3(1),
      I2 => a_b3_Mmux_varindex0000_11,
      I3 => a_b3_Mrom_d_rom000025,
      LO => a_b3_Mmux_varindex0000_10_f5
    );
  b_plane_x_tmp_and000223_SW0 : LUT4_L
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => b_plane_x_tmp(2),
      I1 => b_plane_x_tmp(6),
      I2 => b_plane_x_tmp(3),
      I3 => b_plane_x_tmp(4),
      LO => N87
    );
  b_dy_e_and000022 : LUT4_L
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => b_enemy_y_tmp(7),
      I1 => b_enemy_y_tmp(8),
      I2 => b_enemy_y_tmp(5),
      I3 => N91,
      LO => b_dy_e_and000022_2664
    );
  b_dy_e3_and000022 : LUT4_L
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => b_enemy_y_tmp3(7),
      I1 => b_enemy_y_tmp3(8),
      I2 => b_enemy_y_tmp3(5),
      I3 => N93,
      LO => b_dy_e3_and000022_2656
    );
  b_dy_e2_and000022 : LUT4_L
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => b_enemy_y_tmp2(7),
      I1 => b_enemy_y_tmp2(8),
      I2 => b_enemy_y_tmp2(5),
      I3 => N95,
      LO => b_dy_e2_and000022_2647
    );
  e_vcnt_and000031 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => e_vcnt(30),
      I1 => e_vcnt(31),
      I2 => e_vcnt_cmp_eq0000,
      I3 => e_Mcompar_vs_cmp_ge0000_cy(12),
      LO => N208,
      O => e_vcnt_and00003
    );
  a_Msub_x_dis_g_xor_8_11 : LUT3_D
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => e_hcnt(8),
      I1 => e_hcnt(7),
      I2 => a_Msub_x_dis_g_cy_6_Q,
      LO => N209,
      O => a_x_dis_g(8)
    );
  a_Msub_x_dis_g_xor_9_11 : LUT4_D
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => e_hcnt(9),
      I1 => e_hcnt(8),
      I2 => e_hcnt(7),
      I3 => a_Msub_x_dis_g_cy_6_Q,
      LO => N210,
      O => a_x_dis_g(9)
    );
  a_Msub_x_bullet_Madd_cy_2_1 : LUT3_L
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => N2,
      I1 => e_hcnt(2),
      I2 => b_bullet_x_tmp(2),
      LO => a_Msub_x_bullet_Madd_cy(2)
    );
  a_Msub_y_bullet_Madd_cy_2_11 : LUT4_D
    generic map(
      INIT => X"F731"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => b_bullet_y_tmp(2),
      I2 => e_vcnt(1),
      I3 => e_vcnt(2),
      LO => N211,
      O => a_Msub_y_bullet_Madd_cy(2)
    );
  a_Msub_y_bullet_Madd_xor_2_11 : LUT4_D
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => b_bullet_y_tmp(2),
      I1 => e_vcnt(2),
      I2 => b_bullet_y_tmp(1),
      I3 => e_vcnt(1),
      LO => N212,
      O => a_y_bullet(2)
    );
  a_c_Mrom_d_rom0000111 : LUT4_L
    generic map(
      INIT => X"F69F"
    )
    port map (
      I0 => b_bullet_y_tmp(1),
      I1 => e_vcnt(1),
      I2 => a_y_bullet(2),
      I3 => a_y_bullet(3),
      LO => a_c_Mrom_d_rom000011
    );
  a_Msub_x_bullet_Madd_xor_2_11_SW0 : LUT4_L
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b_bullet_x_tmp(1),
      I1 => b_bullet_x_tmp(0),
      I2 => e_hcnt(0),
      I3 => e_hcnt(1),
      LO => N131
    );
  a_addr_cmp_lt00002 : LUT4_D
    generic map(
      INIT => X"8111"
    )
    port map (
      I0 => e_hcnt(6),
      I1 => e_hcnt(7),
      I2 => e_hcnt(4),
      I3 => N133,
      LO => N213,
      O => a_N85
    );
  a_b1_Mmux_varindex0000_11_f5 : LUT4_L
    generic map(
      INIT => X"F4B0"
    )
    port map (
      I0 => a_x_enemy(0),
      I1 => a_x_enemy(1),
      I2 => a_b1_Mmux_varindex0000_11,
      I3 => a_b1_Mrom_d_rom000025,
      LO => a_b1_Mmux_varindex0000_11_f5_1622
    );
  a_b2_Mmux_varindex0000_11_f5 : LUT4_L
    generic map(
      INIT => X"F4B0"
    )
    port map (
      I0 => a_x_enemy2(0),
      I1 => a_x_enemy2(1),
      I2 => a_b2_Mmux_varindex0000_11,
      I3 => a_b2_Mrom_d_rom000025,
      LO => a_b2_Mmux_varindex0000_11_f5_1648
    );
  a_b3_Mmux_varindex0000_11_f5 : LUT4_L
    generic map(
      INIT => X"F4B0"
    )
    port map (
      I0 => a_x_enemy3(0),
      I1 => a_x_enemy3(1),
      I2 => a_b3_Mmux_varindex0000_11,
      I3 => a_b3_Mrom_d_rom000025,
      LO => a_b3_Mmux_varindex0000_11_f5_1674
    );
  a_b1_Mrom_d_rom00002221_SW0 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_y_enemy(0),
      I1 => a_y_enemy(1),
      LO => N159
    );
  a_b2_Mrom_d_rom00002221_SW0 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_y_enemy2(0),
      I1 => a_y_enemy2(1),
      LO => N164
    );
  a_b3_Mrom_d_rom00002221_SW0 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_y_enemy3(0),
      I1 => a_y_enemy3(1),
      LO => N169
    );

end Structure;

