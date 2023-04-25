-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/25/2023 09:43:00"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1_seq_top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	data_i : IN std_logic_vector(7 DOWNTO 0);
	h_o : OUT std_logic_vector(6 DOWNTO 0);
	output_s : OUT std_logic
	);
END lab1_seq_top;

-- Design Ports Information
-- h_o[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_o[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_o[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_o[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_o[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_o[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_o[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_s	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[5]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[7]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1_seq_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_data_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_h_o : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_s : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clock_divider_1|Add0~77_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_divider_1|Add0~6\ : std_logic;
SIGNAL \clock_divider_1|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~10\ : std_logic;
SIGNAL \clock_divider_1|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~14\ : std_logic;
SIGNAL \clock_divider_1|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~18\ : std_logic;
SIGNAL \clock_divider_1|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~22\ : std_logic;
SIGNAL \clock_divider_1|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~26\ : std_logic;
SIGNAL \clock_divider_1|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider_1|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_1|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_1|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_1|count[4]~0_combout\ : std_logic;
SIGNAL \clock_divider_1|Add0~78\ : std_logic;
SIGNAL \clock_divider_1|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~74\ : std_logic;
SIGNAL \clock_divider_1|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~58\ : std_logic;
SIGNAL \clock_divider_1|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~62\ : std_logic;
SIGNAL \clock_divider_1|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~54\ : std_logic;
SIGNAL \clock_divider_1|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~70\ : std_logic;
SIGNAL \clock_divider_1|Add0~81_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~82\ : std_logic;
SIGNAL \clock_divider_1|Add0~85_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~86\ : std_logic;
SIGNAL \clock_divider_1|Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~90\ : std_logic;
SIGNAL \clock_divider_1|Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~94\ : std_logic;
SIGNAL \clock_divider_1|Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~98\ : std_logic;
SIGNAL \clock_divider_1|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~30\ : std_logic;
SIGNAL \clock_divider_1|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~34\ : std_logic;
SIGNAL \clock_divider_1|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~38\ : std_logic;
SIGNAL \clock_divider_1|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~42\ : std_logic;
SIGNAL \clock_divider_1|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~46\ : std_logic;
SIGNAL \clock_divider_1|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~50\ : std_logic;
SIGNAL \clock_divider_1|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider_1|Add0~66\ : std_logic;
SIGNAL \clock_divider_1|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider_1|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_1|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_1|clok_r~0_combout\ : std_logic;
SIGNAL \clock_divider_1|clok_r~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|current_state.S3~q\ : std_logic;
SIGNAL \data_i[0]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~65_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|data_r~1_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|data_r~2_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~66\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~61_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~62\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~57_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~58\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~125_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~126\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~69_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~70\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~73_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~74\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~77_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~78\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~33_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~34\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~37_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~38\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~41_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~42\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~97_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~98\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~45_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~46\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~49_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~50\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~53_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~54\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~13_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~14\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~17_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~18\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~21_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~22\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~25_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~26\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~29_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~30\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~9_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~10\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~1_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~2\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~5_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~6\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~81_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~82\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~85_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~86\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~89_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~90\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~93_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~94\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~121_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~122\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~101_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~4_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~0_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~102\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~105_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~106\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~109_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~110\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~113_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~114\ : std_logic;
SIGNAL \lab1_seq_data_1|Add0~117_sumout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~5_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~3_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~2_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~1_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|Equal0~6_combout\ : std_logic;
SIGNAL \data_i[7]~input_o\ : std_logic;
SIGNAL \data_i[6]~input_o\ : std_logic;
SIGNAL \data_i[5]~input_o\ : std_logic;
SIGNAL \data_i[3]~input_o\ : std_logic;
SIGNAL \data_i[1]~input_o\ : std_logic;
SIGNAL \data_i[2]~input_o\ : std_logic;
SIGNAL \lab1_seq_data_1|Mux0~4_combout\ : std_logic;
SIGNAL \data_i[4]~input_o\ : std_logic;
SIGNAL \lab1_seq_data_1|Mux0~0_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|data_r~0_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|data_r~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|next_state.S1~0_combout\ : std_logic;
SIGNAL \overlap_sequence_detector_1|current_state.S1~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|Selector0~0_combout\ : std_logic;
SIGNAL \overlap_sequence_detector_1|current_state.S0~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|Selector1~0_combout\ : std_logic;
SIGNAL \overlap_sequence_detector_1|current_state.S2~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|next_state.S3~0_combout\ : std_logic;
SIGNAL \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\ : std_logic;
SIGNAL \lab1_seq_data_1|data_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_divider_1|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \lab1_seq_data_1|ALT_INV_data_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lab1_seq_data_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_data_i[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_i[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \overlap_sequence_detector_1|ALT_INV_current_state.S1~q\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \overlap_sequence_detector_1|ALT_INV_current_state.S0~q\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_1|ALT_INV_clok_r~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|ALT_INV_current_state.S2~q\ : std_logic;
SIGNAL \lab1_seq_data_1|ALT_INV_data_r~q\ : std_logic;
SIGNAL \overlap_sequence_detector_1|ALT_INV_current_state.S3~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_data_i <= data_i;
h_o <= ww_h_o;
output_s <= ww_output_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\lab1_seq_data_1|ALT_INV_data_count\(18) <= NOT \lab1_seq_data_1|data_count\(18);
\lab1_seq_data_1|ALT_INV_data_count\(17) <= NOT \lab1_seq_data_1|data_count\(17);
\lab1_seq_data_1|ALT_INV_data_count\(16) <= NOT \lab1_seq_data_1|data_count\(16);
\lab1_seq_data_1|ALT_INV_data_count\(15) <= NOT \lab1_seq_data_1|data_count\(15);
\lab1_seq_data_1|ALT_INV_data_count\(14) <= NOT \lab1_seq_data_1|data_count\(14);
\lab1_seq_data_1|ALT_INV_data_count\(19) <= NOT \lab1_seq_data_1|data_count\(19);
\lab1_seq_data_1|ALT_INV_data_count\(21) <= NOT \lab1_seq_data_1|data_count\(21);
\lab1_seq_data_1|ALT_INV_data_count\(20) <= NOT \lab1_seq_data_1|data_count\(20);
\lab1_seq_data_1|ALT_INV_Mux0~0_combout\ <= NOT \lab1_seq_data_1|Mux0~0_combout\;
\lab1_seq_data_1|ALT_INV_Mux0~4_combout\ <= NOT \lab1_seq_data_1|Mux0~4_combout\;
\clock_divider_1|ALT_INV_count\(10) <= NOT \clock_divider_1|count\(10);
\clock_divider_1|ALT_INV_count\(9) <= NOT \clock_divider_1|count\(9);
\clock_divider_1|ALT_INV_count\(8) <= NOT \clock_divider_1|count\(8);
\clock_divider_1|ALT_INV_count\(7) <= NOT \clock_divider_1|count\(7);
\clock_divider_1|ALT_INV_count\(6) <= NOT \clock_divider_1|count\(6);
\clock_divider_1|ALT_INV_count\(0) <= NOT \clock_divider_1|count\(0);
\clock_divider_1|ALT_INV_count\(1) <= NOT \clock_divider_1|count\(1);
\clock_divider_1|ALT_INV_count\(5) <= NOT \clock_divider_1|count\(5);
\clock_divider_1|ALT_INV_count\(17) <= NOT \clock_divider_1|count\(17);
\clock_divider_1|ALT_INV_count\(3) <= NOT \clock_divider_1|count\(3);
\clock_divider_1|ALT_INV_count\(2) <= NOT \clock_divider_1|count\(2);
\clock_divider_1|ALT_INV_count\(4) <= NOT \clock_divider_1|count\(4);
\clock_divider_1|ALT_INV_count\(16) <= NOT \clock_divider_1|count\(16);
\clock_divider_1|ALT_INV_count\(15) <= NOT \clock_divider_1|count\(15);
\clock_divider_1|ALT_INV_count\(14) <= NOT \clock_divider_1|count\(14);
\clock_divider_1|ALT_INV_count\(13) <= NOT \clock_divider_1|count\(13);
\clock_divider_1|ALT_INV_count\(12) <= NOT \clock_divider_1|count\(12);
\clock_divider_1|ALT_INV_count\(11) <= NOT \clock_divider_1|count\(11);
\clock_divider_1|ALT_INV_count\(23) <= NOT \clock_divider_1|count\(23);
\clock_divider_1|ALT_INV_count\(22) <= NOT \clock_divider_1|count\(22);
\clock_divider_1|ALT_INV_count\(21) <= NOT \clock_divider_1|count\(21);
\clock_divider_1|ALT_INV_count\(20) <= NOT \clock_divider_1|count\(20);
\clock_divider_1|ALT_INV_count\(19) <= NOT \clock_divider_1|count\(19);
\clock_divider_1|ALT_INV_count\(18) <= NOT \clock_divider_1|count\(18);
\clock_divider_1|ALT_INV_count\(24) <= NOT \clock_divider_1|count\(24);
\lab1_seq_data_1|ALT_INV_data_count\(3) <= NOT \lab1_seq_data_1|data_count\(3);
\lab1_seq_data_1|ALT_INV_data_count\(26) <= NOT \lab1_seq_data_1|data_count\(26);
\lab1_seq_data_1|ALT_INV_data_count\(31) <= NOT \lab1_seq_data_1|data_count\(31);
\lab1_seq_data_1|ALT_INV_data_count\(30) <= NOT \lab1_seq_data_1|data_count\(30);
\lab1_seq_data_1|ALT_INV_data_count\(29) <= NOT \lab1_seq_data_1|data_count\(29);
\lab1_seq_data_1|ALT_INV_data_count\(28) <= NOT \lab1_seq_data_1|data_count\(28);
\lab1_seq_data_1|ALT_INV_data_count\(27) <= NOT \lab1_seq_data_1|data_count\(27);
\lab1_seq_data_1|ALT_INV_data_count\(10) <= NOT \lab1_seq_data_1|data_count\(10);
\lab1_seq_data_1|ALT_INV_data_count\(25) <= NOT \lab1_seq_data_1|data_count\(25);
\lab1_seq_data_1|ALT_INV_data_count\(24) <= NOT \lab1_seq_data_1|data_count\(24);
\lab1_seq_data_1|ALT_INV_data_count\(23) <= NOT \lab1_seq_data_1|data_count\(23);
\lab1_seq_data_1|ALT_INV_data_count\(22) <= NOT \lab1_seq_data_1|data_count\(22);
\lab1_seq_data_1|ALT_INV_data_count\(6) <= NOT \lab1_seq_data_1|data_count\(6);
\lab1_seq_data_1|ALT_INV_data_count\(5) <= NOT \lab1_seq_data_1|data_count\(5);
\lab1_seq_data_1|ALT_INV_data_count\(4) <= NOT \lab1_seq_data_1|data_count\(4);
\lab1_seq_data_1|ALT_INV_data_count\(0) <= NOT \lab1_seq_data_1|data_count\(0);
\lab1_seq_data_1|ALT_INV_data_count\(1) <= NOT \lab1_seq_data_1|data_count\(1);
\lab1_seq_data_1|ALT_INV_data_count\(2) <= NOT \lab1_seq_data_1|data_count\(2);
\lab1_seq_data_1|ALT_INV_data_count\(13) <= NOT \lab1_seq_data_1|data_count\(13);
\lab1_seq_data_1|ALT_INV_data_count\(12) <= NOT \lab1_seq_data_1|data_count\(12);
\lab1_seq_data_1|ALT_INV_data_count\(11) <= NOT \lab1_seq_data_1|data_count\(11);
\lab1_seq_data_1|ALT_INV_data_count\(9) <= NOT \lab1_seq_data_1|data_count\(9);
\lab1_seq_data_1|ALT_INV_data_count\(8) <= NOT \lab1_seq_data_1|data_count\(8);
\lab1_seq_data_1|ALT_INV_data_count\(7) <= NOT \lab1_seq_data_1|data_count\(7);
\ALT_INV_data_i[2]~input_o\ <= NOT \data_i[2]~input_o\;
\ALT_INV_data_i[3]~input_o\ <= NOT \data_i[3]~input_o\;
\ALT_INV_data_i[1]~input_o\ <= NOT \data_i[1]~input_o\;
\ALT_INV_data_i[6]~input_o\ <= NOT \data_i[6]~input_o\;
\ALT_INV_data_i[4]~input_o\ <= NOT \data_i[4]~input_o\;
\ALT_INV_data_i[7]~input_o\ <= NOT \data_i[7]~input_o\;
\ALT_INV_data_i[5]~input_o\ <= NOT \data_i[5]~input_o\;
\ALT_INV_data_i[0]~input_o\ <= NOT \data_i[0]~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\overlap_sequence_detector_1|ALT_INV_current_state.S1~q\ <= NOT \overlap_sequence_detector_1|current_state.S1~q\;
\clock_divider_1|ALT_INV_Equal0~4_combout\ <= NOT \clock_divider_1|Equal0~4_combout\;
\clock_divider_1|ALT_INV_Equal0~3_combout\ <= NOT \clock_divider_1|Equal0~3_combout\;
\clock_divider_1|ALT_INV_Equal0~2_combout\ <= NOT \clock_divider_1|Equal0~2_combout\;
\clock_divider_1|ALT_INV_Equal0~1_combout\ <= NOT \clock_divider_1|Equal0~1_combout\;
\clock_divider_1|ALT_INV_Equal0~0_combout\ <= NOT \clock_divider_1|Equal0~0_combout\;
\overlap_sequence_detector_1|ALT_INV_current_state.S0~q\ <= NOT \overlap_sequence_detector_1|current_state.S0~q\;
\lab1_seq_data_1|ALT_INV_Equal0~6_combout\ <= NOT \lab1_seq_data_1|Equal0~6_combout\;
\lab1_seq_data_1|ALT_INV_Equal0~5_combout\ <= NOT \lab1_seq_data_1|Equal0~5_combout\;
\lab1_seq_data_1|ALT_INV_Equal0~4_combout\ <= NOT \lab1_seq_data_1|Equal0~4_combout\;
\lab1_seq_data_1|ALT_INV_Equal0~3_combout\ <= NOT \lab1_seq_data_1|Equal0~3_combout\;
\lab1_seq_data_1|ALT_INV_Equal0~2_combout\ <= NOT \lab1_seq_data_1|Equal0~2_combout\;
\lab1_seq_data_1|ALT_INV_Equal0~1_combout\ <= NOT \lab1_seq_data_1|Equal0~1_combout\;
\lab1_seq_data_1|ALT_INV_Equal0~0_combout\ <= NOT \lab1_seq_data_1|Equal0~0_combout\;
\clock_divider_1|ALT_INV_clok_r~q\ <= NOT \clock_divider_1|clok_r~q\;
\overlap_sequence_detector_1|ALT_INV_current_state.S2~q\ <= NOT \overlap_sequence_detector_1|current_state.S2~q\;
\lab1_seq_data_1|ALT_INV_data_r~q\ <= NOT \lab1_seq_data_1|data_r~q\;
\overlap_sequence_detector_1|ALT_INV_current_state.S3~q\ <= NOT \overlap_sequence_detector_1|current_state.S3~q\;

-- Location: IOOBUF_X89_Y8_N39
\h_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_h_o(0));

-- Location: IOOBUF_X89_Y11_N79
\h_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_h_o(1));

-- Location: IOOBUF_X89_Y11_N96
\h_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_h_o(2));

-- Location: IOOBUF_X89_Y4_N79
\h_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_h_o(3));

-- Location: IOOBUF_X89_Y13_N56
\h_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_h_o(4));

-- Location: IOOBUF_X89_Y13_N39
\h_o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_h_o(5));

-- Location: IOOBUF_X89_Y4_N96
\h_o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_h_o(6));

-- Location: IOOBUF_X52_Y0_N2
\output_s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_output_s);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X12_Y4_N30
\clock_divider_1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~77_sumout\ = SUM(( \clock_divider_1|count\(0) ) + ( VCC ) + ( !VCC ))
-- \clock_divider_1|Add0~78\ = CARRY(( \clock_divider_1|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(0),
	cin => GND,
	sumout => \clock_divider_1|Add0~77_sumout\,
	cout => \clock_divider_1|Add0~78\);

-- Location: IOIBUF_X12_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X12_Y3_N24
\clock_divider_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~5_sumout\ = SUM(( \clock_divider_1|count\(18) ) + ( GND ) + ( \clock_divider_1|Add0~66\ ))
-- \clock_divider_1|Add0~6\ = CARRY(( \clock_divider_1|count\(18) ) + ( GND ) + ( \clock_divider_1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(18),
	cin => \clock_divider_1|Add0~66\,
	sumout => \clock_divider_1|Add0~5_sumout\,
	cout => \clock_divider_1|Add0~6\);

-- Location: LABCELL_X12_Y3_N27
\clock_divider_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~9_sumout\ = SUM(( \clock_divider_1|count\(19) ) + ( GND ) + ( \clock_divider_1|Add0~6\ ))
-- \clock_divider_1|Add0~10\ = CARRY(( \clock_divider_1|count\(19) ) + ( GND ) + ( \clock_divider_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(19),
	cin => \clock_divider_1|Add0~6\,
	sumout => \clock_divider_1|Add0~9_sumout\,
	cout => \clock_divider_1|Add0~10\);

-- Location: FF_X12_Y3_N29
\clock_divider_1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~9_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(19));

-- Location: LABCELL_X12_Y3_N30
\clock_divider_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~13_sumout\ = SUM(( \clock_divider_1|count\(20) ) + ( GND ) + ( \clock_divider_1|Add0~10\ ))
-- \clock_divider_1|Add0~14\ = CARRY(( \clock_divider_1|count\(20) ) + ( GND ) + ( \clock_divider_1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(20),
	cin => \clock_divider_1|Add0~10\,
	sumout => \clock_divider_1|Add0~13_sumout\,
	cout => \clock_divider_1|Add0~14\);

-- Location: FF_X12_Y3_N32
\clock_divider_1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~13_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(20));

-- Location: LABCELL_X12_Y3_N33
\clock_divider_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~17_sumout\ = SUM(( \clock_divider_1|count\(21) ) + ( GND ) + ( \clock_divider_1|Add0~14\ ))
-- \clock_divider_1|Add0~18\ = CARRY(( \clock_divider_1|count\(21) ) + ( GND ) + ( \clock_divider_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider_1|ALT_INV_count\(21),
	cin => \clock_divider_1|Add0~14\,
	sumout => \clock_divider_1|Add0~17_sumout\,
	cout => \clock_divider_1|Add0~18\);

-- Location: FF_X12_Y4_N8
\clock_divider_1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider_1|Add0~17_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(21));

-- Location: LABCELL_X12_Y3_N36
\clock_divider_1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~21_sumout\ = SUM(( \clock_divider_1|count\(22) ) + ( GND ) + ( \clock_divider_1|Add0~18\ ))
-- \clock_divider_1|Add0~22\ = CARRY(( \clock_divider_1|count\(22) ) + ( GND ) + ( \clock_divider_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(22),
	cin => \clock_divider_1|Add0~18\,
	sumout => \clock_divider_1|Add0~21_sumout\,
	cout => \clock_divider_1|Add0~22\);

-- Location: FF_X12_Y3_N38
\clock_divider_1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~21_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(22));

-- Location: LABCELL_X12_Y3_N39
\clock_divider_1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~25_sumout\ = SUM(( \clock_divider_1|count\(23) ) + ( GND ) + ( \clock_divider_1|Add0~22\ ))
-- \clock_divider_1|Add0~26\ = CARRY(( \clock_divider_1|count\(23) ) + ( GND ) + ( \clock_divider_1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(23),
	cin => \clock_divider_1|Add0~22\,
	sumout => \clock_divider_1|Add0~25_sumout\,
	cout => \clock_divider_1|Add0~26\);

-- Location: FF_X12_Y3_N41
\clock_divider_1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~25_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(23));

-- Location: LABCELL_X12_Y3_N42
\clock_divider_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~1_sumout\ = SUM(( \clock_divider_1|count\(24) ) + ( GND ) + ( \clock_divider_1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(24),
	cin => \clock_divider_1|Add0~26\,
	sumout => \clock_divider_1|Add0~1_sumout\);

-- Location: FF_X12_Y3_N44
\clock_divider_1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~1_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(24));

-- Location: LABCELL_X12_Y4_N18
\clock_divider_1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Equal0~2_combout\ = ( !\clock_divider_1|count\(4) & ( !\clock_divider_1|count\(17) & ( (!\clock_divider_1|count\(2) & (!\clock_divider_1|count\(5) & (!\clock_divider_1|count\(1) & !\clock_divider_1|count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(2),
	datab => \clock_divider_1|ALT_INV_count\(5),
	datac => \clock_divider_1|ALT_INV_count\(1),
	datad => \clock_divider_1|ALT_INV_count\(3),
	datae => \clock_divider_1|ALT_INV_count\(4),
	dataf => \clock_divider_1|ALT_INV_count\(17),
	combout => \clock_divider_1|Equal0~2_combout\);

-- Location: LABCELL_X12_Y3_N48
\clock_divider_1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Equal0~1_combout\ = ( !\clock_divider_1|count\(15) & ( \clock_divider_1|count\(13) & ( (\clock_divider_1|count\(11) & (\clock_divider_1|count\(12) & (\clock_divider_1|count\(16) & \clock_divider_1|count\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(11),
	datab => \clock_divider_1|ALT_INV_count\(12),
	datac => \clock_divider_1|ALT_INV_count\(16),
	datad => \clock_divider_1|ALT_INV_count\(14),
	datae => \clock_divider_1|ALT_INV_count\(15),
	dataf => \clock_divider_1|ALT_INV_count\(13),
	combout => \clock_divider_1|Equal0~1_combout\);

-- Location: LABCELL_X12_Y4_N12
\clock_divider_1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Equal0~3_combout\ = ( !\clock_divider_1|count\(10) & ( \clock_divider_1|count\(6) & ( (!\clock_divider_1|count\(7) & (!\clock_divider_1|count\(0) & (!\clock_divider_1|count\(8) & !\clock_divider_1|count\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(7),
	datab => \clock_divider_1|ALT_INV_count\(0),
	datac => \clock_divider_1|ALT_INV_count\(8),
	datad => \clock_divider_1|ALT_INV_count\(9),
	datae => \clock_divider_1|ALT_INV_count\(10),
	dataf => \clock_divider_1|ALT_INV_count\(6),
	combout => \clock_divider_1|Equal0~3_combout\);

-- Location: LABCELL_X12_Y4_N0
\clock_divider_1|count[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|count[4]~0_combout\ = ( \clock_divider_1|Equal0~1_combout\ & ( \clock_divider_1|Equal0~3_combout\ & ( ((\clock_divider_1|count\(24) & (\clock_divider_1|Equal0~2_combout\ & \clock_divider_1|Equal0~0_combout\))) # (\reset~input_o\) ) ) ) # 
-- ( !\clock_divider_1|Equal0~1_combout\ & ( \clock_divider_1|Equal0~3_combout\ & ( \reset~input_o\ ) ) ) # ( \clock_divider_1|Equal0~1_combout\ & ( !\clock_divider_1|Equal0~3_combout\ & ( \reset~input_o\ ) ) ) # ( !\clock_divider_1|Equal0~1_combout\ & ( 
-- !\clock_divider_1|Equal0~3_combout\ & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \clock_divider_1|ALT_INV_count\(24),
	datac => \clock_divider_1|ALT_INV_Equal0~2_combout\,
	datad => \clock_divider_1|ALT_INV_Equal0~0_combout\,
	datae => \clock_divider_1|ALT_INV_Equal0~1_combout\,
	dataf => \clock_divider_1|ALT_INV_Equal0~3_combout\,
	combout => \clock_divider_1|count[4]~0_combout\);

-- Location: FF_X12_Y4_N32
\clock_divider_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~77_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(0));

-- Location: LABCELL_X12_Y4_N33
\clock_divider_1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~73_sumout\ = SUM(( \clock_divider_1|count\(1) ) + ( GND ) + ( \clock_divider_1|Add0~78\ ))
-- \clock_divider_1|Add0~74\ = CARRY(( \clock_divider_1|count\(1) ) + ( GND ) + ( \clock_divider_1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(1),
	cin => \clock_divider_1|Add0~78\,
	sumout => \clock_divider_1|Add0~73_sumout\,
	cout => \clock_divider_1|Add0~74\);

-- Location: FF_X12_Y4_N35
\clock_divider_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~73_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(1));

-- Location: LABCELL_X12_Y4_N36
\clock_divider_1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~57_sumout\ = SUM(( \clock_divider_1|count\(2) ) + ( GND ) + ( \clock_divider_1|Add0~74\ ))
-- \clock_divider_1|Add0~58\ = CARRY(( \clock_divider_1|count\(2) ) + ( GND ) + ( \clock_divider_1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(2),
	cin => \clock_divider_1|Add0~74\,
	sumout => \clock_divider_1|Add0~57_sumout\,
	cout => \clock_divider_1|Add0~58\);

-- Location: FF_X12_Y4_N38
\clock_divider_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~57_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(2));

-- Location: LABCELL_X12_Y4_N39
\clock_divider_1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~61_sumout\ = SUM(( \clock_divider_1|count\(3) ) + ( GND ) + ( \clock_divider_1|Add0~58\ ))
-- \clock_divider_1|Add0~62\ = CARRY(( \clock_divider_1|count\(3) ) + ( GND ) + ( \clock_divider_1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(3),
	cin => \clock_divider_1|Add0~58\,
	sumout => \clock_divider_1|Add0~61_sumout\,
	cout => \clock_divider_1|Add0~62\);

-- Location: FF_X12_Y4_N41
\clock_divider_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~61_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(3));

-- Location: LABCELL_X12_Y4_N42
\clock_divider_1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~53_sumout\ = SUM(( \clock_divider_1|count\(4) ) + ( GND ) + ( \clock_divider_1|Add0~62\ ))
-- \clock_divider_1|Add0~54\ = CARRY(( \clock_divider_1|count\(4) ) + ( GND ) + ( \clock_divider_1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(4),
	cin => \clock_divider_1|Add0~62\,
	sumout => \clock_divider_1|Add0~53_sumout\,
	cout => \clock_divider_1|Add0~54\);

-- Location: FF_X12_Y4_N44
\clock_divider_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~53_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(4));

-- Location: LABCELL_X12_Y4_N45
\clock_divider_1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~69_sumout\ = SUM(( \clock_divider_1|count\(5) ) + ( GND ) + ( \clock_divider_1|Add0~54\ ))
-- \clock_divider_1|Add0~70\ = CARRY(( \clock_divider_1|count\(5) ) + ( GND ) + ( \clock_divider_1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(5),
	cin => \clock_divider_1|Add0~54\,
	sumout => \clock_divider_1|Add0~69_sumout\,
	cout => \clock_divider_1|Add0~70\);

-- Location: FF_X12_Y4_N47
\clock_divider_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~69_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(5));

-- Location: LABCELL_X12_Y4_N48
\clock_divider_1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~81_sumout\ = SUM(( \clock_divider_1|count\(6) ) + ( GND ) + ( \clock_divider_1|Add0~70\ ))
-- \clock_divider_1|Add0~82\ = CARRY(( \clock_divider_1|count\(6) ) + ( GND ) + ( \clock_divider_1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(6),
	cin => \clock_divider_1|Add0~70\,
	sumout => \clock_divider_1|Add0~81_sumout\,
	cout => \clock_divider_1|Add0~82\);

-- Location: FF_X12_Y4_N50
\clock_divider_1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~81_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(6));

-- Location: LABCELL_X12_Y4_N51
\clock_divider_1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~85_sumout\ = SUM(( \clock_divider_1|count\(7) ) + ( GND ) + ( \clock_divider_1|Add0~82\ ))
-- \clock_divider_1|Add0~86\ = CARRY(( \clock_divider_1|count\(7) ) + ( GND ) + ( \clock_divider_1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(7),
	cin => \clock_divider_1|Add0~82\,
	sumout => \clock_divider_1|Add0~85_sumout\,
	cout => \clock_divider_1|Add0~86\);

-- Location: FF_X12_Y4_N53
\clock_divider_1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~85_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(7));

-- Location: LABCELL_X12_Y4_N54
\clock_divider_1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~89_sumout\ = SUM(( \clock_divider_1|count\(8) ) + ( GND ) + ( \clock_divider_1|Add0~86\ ))
-- \clock_divider_1|Add0~90\ = CARRY(( \clock_divider_1|count\(8) ) + ( GND ) + ( \clock_divider_1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(8),
	cin => \clock_divider_1|Add0~86\,
	sumout => \clock_divider_1|Add0~89_sumout\,
	cout => \clock_divider_1|Add0~90\);

-- Location: FF_X12_Y4_N56
\clock_divider_1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~89_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(8));

-- Location: LABCELL_X12_Y4_N57
\clock_divider_1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~93_sumout\ = SUM(( \clock_divider_1|count\(9) ) + ( GND ) + ( \clock_divider_1|Add0~90\ ))
-- \clock_divider_1|Add0~94\ = CARRY(( \clock_divider_1|count\(9) ) + ( GND ) + ( \clock_divider_1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(9),
	cin => \clock_divider_1|Add0~90\,
	sumout => \clock_divider_1|Add0~93_sumout\,
	cout => \clock_divider_1|Add0~94\);

-- Location: FF_X12_Y4_N59
\clock_divider_1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~93_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(9));

-- Location: LABCELL_X12_Y3_N0
\clock_divider_1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~97_sumout\ = SUM(( \clock_divider_1|count\(10) ) + ( GND ) + ( \clock_divider_1|Add0~94\ ))
-- \clock_divider_1|Add0~98\ = CARRY(( \clock_divider_1|count\(10) ) + ( GND ) + ( \clock_divider_1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(10),
	cin => \clock_divider_1|Add0~94\,
	sumout => \clock_divider_1|Add0~97_sumout\,
	cout => \clock_divider_1|Add0~98\);

-- Location: FF_X12_Y3_N2
\clock_divider_1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~97_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(10));

-- Location: LABCELL_X12_Y3_N3
\clock_divider_1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~29_sumout\ = SUM(( \clock_divider_1|count\(11) ) + ( GND ) + ( \clock_divider_1|Add0~98\ ))
-- \clock_divider_1|Add0~30\ = CARRY(( \clock_divider_1|count\(11) ) + ( GND ) + ( \clock_divider_1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(11),
	cin => \clock_divider_1|Add0~98\,
	sumout => \clock_divider_1|Add0~29_sumout\,
	cout => \clock_divider_1|Add0~30\);

-- Location: FF_X12_Y3_N5
\clock_divider_1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~29_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(11));

-- Location: LABCELL_X12_Y3_N6
\clock_divider_1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~33_sumout\ = SUM(( \clock_divider_1|count\(12) ) + ( GND ) + ( \clock_divider_1|Add0~30\ ))
-- \clock_divider_1|Add0~34\ = CARRY(( \clock_divider_1|count\(12) ) + ( GND ) + ( \clock_divider_1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(12),
	cin => \clock_divider_1|Add0~30\,
	sumout => \clock_divider_1|Add0~33_sumout\,
	cout => \clock_divider_1|Add0~34\);

-- Location: FF_X12_Y3_N8
\clock_divider_1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~33_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(12));

-- Location: LABCELL_X12_Y3_N9
\clock_divider_1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~37_sumout\ = SUM(( \clock_divider_1|count\(13) ) + ( GND ) + ( \clock_divider_1|Add0~34\ ))
-- \clock_divider_1|Add0~38\ = CARRY(( \clock_divider_1|count\(13) ) + ( GND ) + ( \clock_divider_1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(13),
	cin => \clock_divider_1|Add0~34\,
	sumout => \clock_divider_1|Add0~37_sumout\,
	cout => \clock_divider_1|Add0~38\);

-- Location: FF_X12_Y3_N11
\clock_divider_1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~37_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(13));

-- Location: LABCELL_X12_Y3_N12
\clock_divider_1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~41_sumout\ = SUM(( \clock_divider_1|count\(14) ) + ( GND ) + ( \clock_divider_1|Add0~38\ ))
-- \clock_divider_1|Add0~42\ = CARRY(( \clock_divider_1|count\(14) ) + ( GND ) + ( \clock_divider_1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_count\(14),
	cin => \clock_divider_1|Add0~38\,
	sumout => \clock_divider_1|Add0~41_sumout\,
	cout => \clock_divider_1|Add0~42\);

-- Location: FF_X12_Y3_N14
\clock_divider_1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~41_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(14));

-- Location: LABCELL_X12_Y3_N15
\clock_divider_1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~45_sumout\ = SUM(( \clock_divider_1|count\(15) ) + ( GND ) + ( \clock_divider_1|Add0~42\ ))
-- \clock_divider_1|Add0~46\ = CARRY(( \clock_divider_1|count\(15) ) + ( GND ) + ( \clock_divider_1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(15),
	cin => \clock_divider_1|Add0~42\,
	sumout => \clock_divider_1|Add0~45_sumout\,
	cout => \clock_divider_1|Add0~46\);

-- Location: FF_X12_Y3_N17
\clock_divider_1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~45_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(15));

-- Location: LABCELL_X12_Y3_N18
\clock_divider_1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~49_sumout\ = SUM(( \clock_divider_1|count\(16) ) + ( GND ) + ( \clock_divider_1|Add0~46\ ))
-- \clock_divider_1|Add0~50\ = CARRY(( \clock_divider_1|count\(16) ) + ( GND ) + ( \clock_divider_1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_1|ALT_INV_count\(16),
	cin => \clock_divider_1|Add0~46\,
	sumout => \clock_divider_1|Add0~49_sumout\,
	cout => \clock_divider_1|Add0~50\);

-- Location: FF_X12_Y3_N20
\clock_divider_1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~49_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(16));

-- Location: LABCELL_X12_Y3_N21
\clock_divider_1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Add0~65_sumout\ = SUM(( \clock_divider_1|count\(17) ) + ( GND ) + ( \clock_divider_1|Add0~50\ ))
-- \clock_divider_1|Add0~66\ = CARRY(( \clock_divider_1|count\(17) ) + ( GND ) + ( \clock_divider_1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(17),
	cin => \clock_divider_1|Add0~50\,
	sumout => \clock_divider_1|Add0~65_sumout\,
	cout => \clock_divider_1|Add0~66\);

-- Location: FF_X12_Y3_N23
\clock_divider_1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~65_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(17));

-- Location: FF_X12_Y3_N26
\clock_divider_1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider_1|Add0~5_sumout\,
	sclr => \clock_divider_1|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|count\(18));

-- Location: LABCELL_X12_Y4_N9
\clock_divider_1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Equal0~0_combout\ = ( !\clock_divider_1|count\(23) & ( \clock_divider_1|count\(22) & ( (\clock_divider_1|count\(18) & (\clock_divider_1|count\(19) & (\clock_divider_1|count\(21) & \clock_divider_1|count\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_count\(18),
	datab => \clock_divider_1|ALT_INV_count\(19),
	datac => \clock_divider_1|ALT_INV_count\(21),
	datad => \clock_divider_1|ALT_INV_count\(20),
	datae => \clock_divider_1|ALT_INV_count\(23),
	dataf => \clock_divider_1|ALT_INV_count\(22),
	combout => \clock_divider_1|Equal0~0_combout\);

-- Location: LABCELL_X12_Y4_N24
\clock_divider_1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|Equal0~4_combout\ = ( \clock_divider_1|Equal0~3_combout\ & ( (\clock_divider_1|Equal0~0_combout\ & (\clock_divider_1|Equal0~2_combout\ & \clock_divider_1|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_1|ALT_INV_Equal0~0_combout\,
	datac => \clock_divider_1|ALT_INV_Equal0~2_combout\,
	datad => \clock_divider_1|ALT_INV_Equal0~1_combout\,
	dataf => \clock_divider_1|ALT_INV_Equal0~3_combout\,
	combout => \clock_divider_1|Equal0~4_combout\);

-- Location: LABCELL_X12_Y4_N27
\clock_divider_1|clok_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider_1|clok_r~0_combout\ = ( \clock_divider_1|clok_r~q\ & ( (!\reset~input_o\ & ((!\clock_divider_1|Equal0~4_combout\) # (!\clock_divider_1|count\(24)))) ) ) # ( !\clock_divider_1|clok_r~q\ & ( (\clock_divider_1|Equal0~4_combout\ & 
-- (\clock_divider_1|count\(24) & !\reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_1|ALT_INV_Equal0~4_combout\,
	datac => \clock_divider_1|ALT_INV_count\(24),
	datad => \ALT_INV_reset~input_o\,
	dataf => \clock_divider_1|ALT_INV_clok_r~q\,
	combout => \clock_divider_1|clok_r~0_combout\);

-- Location: FF_X12_Y4_N5
\clock_divider_1|clok_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clock_divider_1|clok_r~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_1|clok_r~q\);

-- Location: FF_X10_Y4_N26
\overlap_sequence_detector_1|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \overlap_sequence_detector_1|next_state.S3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \overlap_sequence_detector_1|current_state.S3~q\);

-- Location: IOIBUF_X8_Y0_N35
\data_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(0),
	o => \data_i[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X11_Y5_N0
\lab1_seq_data_1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~65_sumout\ = SUM(( \lab1_seq_data_1|data_count\(0) ) + ( VCC ) + ( !VCC ))
-- \lab1_seq_data_1|Add0~66\ = CARRY(( \lab1_seq_data_1|data_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(0),
	cin => GND,
	sumout => \lab1_seq_data_1|Add0~65_sumout\,
	cout => \lab1_seq_data_1|Add0~66\);

-- Location: LABCELL_X11_Y4_N54
\lab1_seq_data_1|data_r~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|data_r~1_combout\ = ( \lab1_seq_data_1|Equal0~6_combout\ ) # ( !\lab1_seq_data_1|Equal0~6_combout\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \lab1_seq_data_1|ALT_INV_Equal0~6_combout\,
	combout => \lab1_seq_data_1|data_r~1_combout\);

-- Location: LABCELL_X10_Y4_N57
\lab1_seq_data_1|data_r~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|data_r~2_combout\ = ( \reset~input_o\ & ( \enable~input_o\ ) ) # ( !\reset~input_o\ & ( \enable~input_o\ ) ) # ( \reset~input_o\ & ( !\enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \lab1_seq_data_1|data_r~2_combout\);

-- Location: FF_X11_Y5_N2
\lab1_seq_data_1|data_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~65_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(0));

-- Location: LABCELL_X11_Y5_N3
\lab1_seq_data_1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~61_sumout\ = SUM(( \lab1_seq_data_1|data_count\(1) ) + ( GND ) + ( \lab1_seq_data_1|Add0~66\ ))
-- \lab1_seq_data_1|Add0~62\ = CARRY(( \lab1_seq_data_1|data_count\(1) ) + ( GND ) + ( \lab1_seq_data_1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(1),
	cin => \lab1_seq_data_1|Add0~66\,
	sumout => \lab1_seq_data_1|Add0~61_sumout\,
	cout => \lab1_seq_data_1|Add0~62\);

-- Location: FF_X11_Y5_N5
\lab1_seq_data_1|data_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~61_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(1));

-- Location: LABCELL_X11_Y5_N6
\lab1_seq_data_1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~57_sumout\ = SUM(( \lab1_seq_data_1|data_count\(2) ) + ( GND ) + ( \lab1_seq_data_1|Add0~62\ ))
-- \lab1_seq_data_1|Add0~58\ = CARRY(( \lab1_seq_data_1|data_count\(2) ) + ( GND ) + ( \lab1_seq_data_1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(2),
	cin => \lab1_seq_data_1|Add0~62\,
	sumout => \lab1_seq_data_1|Add0~57_sumout\,
	cout => \lab1_seq_data_1|Add0~58\);

-- Location: FF_X11_Y5_N8
\lab1_seq_data_1|data_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~57_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(2));

-- Location: LABCELL_X11_Y5_N9
\lab1_seq_data_1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~125_sumout\ = SUM(( \lab1_seq_data_1|data_count\(3) ) + ( GND ) + ( \lab1_seq_data_1|Add0~58\ ))
-- \lab1_seq_data_1|Add0~126\ = CARRY(( \lab1_seq_data_1|data_count\(3) ) + ( GND ) + ( \lab1_seq_data_1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lab1_seq_data_1|ALT_INV_data_count\(3),
	cin => \lab1_seq_data_1|Add0~58\,
	sumout => \lab1_seq_data_1|Add0~125_sumout\,
	cout => \lab1_seq_data_1|Add0~126\);

-- Location: FF_X11_Y5_N11
\lab1_seq_data_1|data_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~125_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(3));

-- Location: LABCELL_X11_Y5_N12
\lab1_seq_data_1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~69_sumout\ = SUM(( \lab1_seq_data_1|data_count\(4) ) + ( GND ) + ( \lab1_seq_data_1|Add0~126\ ))
-- \lab1_seq_data_1|Add0~70\ = CARRY(( \lab1_seq_data_1|data_count\(4) ) + ( GND ) + ( \lab1_seq_data_1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(4),
	cin => \lab1_seq_data_1|Add0~126\,
	sumout => \lab1_seq_data_1|Add0~69_sumout\,
	cout => \lab1_seq_data_1|Add0~70\);

-- Location: FF_X11_Y5_N14
\lab1_seq_data_1|data_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~69_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(4));

-- Location: LABCELL_X11_Y5_N15
\lab1_seq_data_1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~73_sumout\ = SUM(( \lab1_seq_data_1|data_count\(5) ) + ( GND ) + ( \lab1_seq_data_1|Add0~70\ ))
-- \lab1_seq_data_1|Add0~74\ = CARRY(( \lab1_seq_data_1|data_count\(5) ) + ( GND ) + ( \lab1_seq_data_1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lab1_seq_data_1|ALT_INV_data_count\(5),
	cin => \lab1_seq_data_1|Add0~70\,
	sumout => \lab1_seq_data_1|Add0~73_sumout\,
	cout => \lab1_seq_data_1|Add0~74\);

-- Location: FF_X11_Y5_N17
\lab1_seq_data_1|data_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~73_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(5));

-- Location: LABCELL_X11_Y5_N18
\lab1_seq_data_1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~77_sumout\ = SUM(( \lab1_seq_data_1|data_count\(6) ) + ( GND ) + ( \lab1_seq_data_1|Add0~74\ ))
-- \lab1_seq_data_1|Add0~78\ = CARRY(( \lab1_seq_data_1|data_count\(6) ) + ( GND ) + ( \lab1_seq_data_1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(6),
	cin => \lab1_seq_data_1|Add0~74\,
	sumout => \lab1_seq_data_1|Add0~77_sumout\,
	cout => \lab1_seq_data_1|Add0~78\);

-- Location: FF_X11_Y5_N20
\lab1_seq_data_1|data_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~77_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(6));

-- Location: LABCELL_X11_Y5_N21
\lab1_seq_data_1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~33_sumout\ = SUM(( \lab1_seq_data_1|data_count\(7) ) + ( GND ) + ( \lab1_seq_data_1|Add0~78\ ))
-- \lab1_seq_data_1|Add0~34\ = CARRY(( \lab1_seq_data_1|data_count\(7) ) + ( GND ) + ( \lab1_seq_data_1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(7),
	cin => \lab1_seq_data_1|Add0~78\,
	sumout => \lab1_seq_data_1|Add0~33_sumout\,
	cout => \lab1_seq_data_1|Add0~34\);

-- Location: FF_X11_Y5_N23
\lab1_seq_data_1|data_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~33_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(7));

-- Location: LABCELL_X11_Y5_N24
\lab1_seq_data_1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~37_sumout\ = SUM(( \lab1_seq_data_1|data_count\(8) ) + ( GND ) + ( \lab1_seq_data_1|Add0~34\ ))
-- \lab1_seq_data_1|Add0~38\ = CARRY(( \lab1_seq_data_1|data_count\(8) ) + ( GND ) + ( \lab1_seq_data_1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(8),
	cin => \lab1_seq_data_1|Add0~34\,
	sumout => \lab1_seq_data_1|Add0~37_sumout\,
	cout => \lab1_seq_data_1|Add0~38\);

-- Location: FF_X11_Y5_N26
\lab1_seq_data_1|data_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~37_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(8));

-- Location: LABCELL_X11_Y5_N27
\lab1_seq_data_1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~41_sumout\ = SUM(( \lab1_seq_data_1|data_count\(9) ) + ( GND ) + ( \lab1_seq_data_1|Add0~38\ ))
-- \lab1_seq_data_1|Add0~42\ = CARRY(( \lab1_seq_data_1|data_count\(9) ) + ( GND ) + ( \lab1_seq_data_1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(9),
	cin => \lab1_seq_data_1|Add0~38\,
	sumout => \lab1_seq_data_1|Add0~41_sumout\,
	cout => \lab1_seq_data_1|Add0~42\);

-- Location: FF_X11_Y5_N29
\lab1_seq_data_1|data_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~41_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(9));

-- Location: LABCELL_X11_Y5_N30
\lab1_seq_data_1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~97_sumout\ = SUM(( \lab1_seq_data_1|data_count\(10) ) + ( GND ) + ( \lab1_seq_data_1|Add0~42\ ))
-- \lab1_seq_data_1|Add0~98\ = CARRY(( \lab1_seq_data_1|data_count\(10) ) + ( GND ) + ( \lab1_seq_data_1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(10),
	cin => \lab1_seq_data_1|Add0~42\,
	sumout => \lab1_seq_data_1|Add0~97_sumout\,
	cout => \lab1_seq_data_1|Add0~98\);

-- Location: FF_X11_Y5_N32
\lab1_seq_data_1|data_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~97_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(10));

-- Location: LABCELL_X11_Y5_N33
\lab1_seq_data_1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~45_sumout\ = SUM(( \lab1_seq_data_1|data_count\(11) ) + ( GND ) + ( \lab1_seq_data_1|Add0~98\ ))
-- \lab1_seq_data_1|Add0~46\ = CARRY(( \lab1_seq_data_1|data_count\(11) ) + ( GND ) + ( \lab1_seq_data_1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(11),
	cin => \lab1_seq_data_1|Add0~98\,
	sumout => \lab1_seq_data_1|Add0~45_sumout\,
	cout => \lab1_seq_data_1|Add0~46\);

-- Location: FF_X11_Y5_N35
\lab1_seq_data_1|data_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~45_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(11));

-- Location: LABCELL_X11_Y5_N36
\lab1_seq_data_1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~49_sumout\ = SUM(( \lab1_seq_data_1|data_count\(12) ) + ( GND ) + ( \lab1_seq_data_1|Add0~46\ ))
-- \lab1_seq_data_1|Add0~50\ = CARRY(( \lab1_seq_data_1|data_count\(12) ) + ( GND ) + ( \lab1_seq_data_1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(12),
	cin => \lab1_seq_data_1|Add0~46\,
	sumout => \lab1_seq_data_1|Add0~49_sumout\,
	cout => \lab1_seq_data_1|Add0~50\);

-- Location: FF_X11_Y5_N38
\lab1_seq_data_1|data_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~49_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(12));

-- Location: LABCELL_X11_Y5_N39
\lab1_seq_data_1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~53_sumout\ = SUM(( \lab1_seq_data_1|data_count\(13) ) + ( GND ) + ( \lab1_seq_data_1|Add0~50\ ))
-- \lab1_seq_data_1|Add0~54\ = CARRY(( \lab1_seq_data_1|data_count\(13) ) + ( GND ) + ( \lab1_seq_data_1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lab1_seq_data_1|ALT_INV_data_count\(13),
	cin => \lab1_seq_data_1|Add0~50\,
	sumout => \lab1_seq_data_1|Add0~53_sumout\,
	cout => \lab1_seq_data_1|Add0~54\);

-- Location: FF_X11_Y5_N41
\lab1_seq_data_1|data_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~53_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(13));

-- Location: LABCELL_X11_Y5_N42
\lab1_seq_data_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~13_sumout\ = SUM(( \lab1_seq_data_1|data_count\(14) ) + ( GND ) + ( \lab1_seq_data_1|Add0~54\ ))
-- \lab1_seq_data_1|Add0~14\ = CARRY(( \lab1_seq_data_1|data_count\(14) ) + ( GND ) + ( \lab1_seq_data_1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(14),
	cin => \lab1_seq_data_1|Add0~54\,
	sumout => \lab1_seq_data_1|Add0~13_sumout\,
	cout => \lab1_seq_data_1|Add0~14\);

-- Location: FF_X11_Y5_N44
\lab1_seq_data_1|data_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~13_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(14));

-- Location: LABCELL_X11_Y5_N45
\lab1_seq_data_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~17_sumout\ = SUM(( \lab1_seq_data_1|data_count\(15) ) + ( GND ) + ( \lab1_seq_data_1|Add0~14\ ))
-- \lab1_seq_data_1|Add0~18\ = CARRY(( \lab1_seq_data_1|data_count\(15) ) + ( GND ) + ( \lab1_seq_data_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(15),
	cin => \lab1_seq_data_1|Add0~14\,
	sumout => \lab1_seq_data_1|Add0~17_sumout\,
	cout => \lab1_seq_data_1|Add0~18\);

-- Location: FF_X11_Y5_N47
\lab1_seq_data_1|data_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~17_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(15));

-- Location: LABCELL_X11_Y5_N48
\lab1_seq_data_1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~21_sumout\ = SUM(( \lab1_seq_data_1|data_count\(16) ) + ( GND ) + ( \lab1_seq_data_1|Add0~18\ ))
-- \lab1_seq_data_1|Add0~22\ = CARRY(( \lab1_seq_data_1|data_count\(16) ) + ( GND ) + ( \lab1_seq_data_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lab1_seq_data_1|ALT_INV_data_count\(16),
	cin => \lab1_seq_data_1|Add0~18\,
	sumout => \lab1_seq_data_1|Add0~21_sumout\,
	cout => \lab1_seq_data_1|Add0~22\);

-- Location: FF_X11_Y5_N50
\lab1_seq_data_1|data_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~21_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(16));

-- Location: LABCELL_X11_Y5_N51
\lab1_seq_data_1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~25_sumout\ = SUM(( \lab1_seq_data_1|data_count\(17) ) + ( GND ) + ( \lab1_seq_data_1|Add0~22\ ))
-- \lab1_seq_data_1|Add0~26\ = CARRY(( \lab1_seq_data_1|data_count\(17) ) + ( GND ) + ( \lab1_seq_data_1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(17),
	cin => \lab1_seq_data_1|Add0~22\,
	sumout => \lab1_seq_data_1|Add0~25_sumout\,
	cout => \lab1_seq_data_1|Add0~26\);

-- Location: FF_X11_Y5_N53
\lab1_seq_data_1|data_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~25_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(17));

-- Location: LABCELL_X11_Y5_N54
\lab1_seq_data_1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~29_sumout\ = SUM(( \lab1_seq_data_1|data_count\(18) ) + ( GND ) + ( \lab1_seq_data_1|Add0~26\ ))
-- \lab1_seq_data_1|Add0~30\ = CARRY(( \lab1_seq_data_1|data_count\(18) ) + ( GND ) + ( \lab1_seq_data_1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(18),
	cin => \lab1_seq_data_1|Add0~26\,
	sumout => \lab1_seq_data_1|Add0~29_sumout\,
	cout => \lab1_seq_data_1|Add0~30\);

-- Location: FF_X11_Y5_N56
\lab1_seq_data_1|data_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~29_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(18));

-- Location: LABCELL_X11_Y5_N57
\lab1_seq_data_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~9_sumout\ = SUM(( \lab1_seq_data_1|data_count\(19) ) + ( GND ) + ( \lab1_seq_data_1|Add0~30\ ))
-- \lab1_seq_data_1|Add0~10\ = CARRY(( \lab1_seq_data_1|data_count\(19) ) + ( GND ) + ( \lab1_seq_data_1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(19),
	cin => \lab1_seq_data_1|Add0~30\,
	sumout => \lab1_seq_data_1|Add0~9_sumout\,
	cout => \lab1_seq_data_1|Add0~10\);

-- Location: FF_X11_Y5_N59
\lab1_seq_data_1|data_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~9_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(19));

-- Location: LABCELL_X11_Y4_N0
\lab1_seq_data_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~1_sumout\ = SUM(( \lab1_seq_data_1|data_count\(20) ) + ( GND ) + ( \lab1_seq_data_1|Add0~10\ ))
-- \lab1_seq_data_1|Add0~2\ = CARRY(( \lab1_seq_data_1|data_count\(20) ) + ( GND ) + ( \lab1_seq_data_1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(20),
	cin => \lab1_seq_data_1|Add0~10\,
	sumout => \lab1_seq_data_1|Add0~1_sumout\,
	cout => \lab1_seq_data_1|Add0~2\);

-- Location: FF_X11_Y4_N2
\lab1_seq_data_1|data_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~1_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(20));

-- Location: LABCELL_X11_Y4_N3
\lab1_seq_data_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~5_sumout\ = SUM(( \lab1_seq_data_1|data_count\(21) ) + ( GND ) + ( \lab1_seq_data_1|Add0~2\ ))
-- \lab1_seq_data_1|Add0~6\ = CARRY(( \lab1_seq_data_1|data_count\(21) ) + ( GND ) + ( \lab1_seq_data_1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(21),
	cin => \lab1_seq_data_1|Add0~2\,
	sumout => \lab1_seq_data_1|Add0~5_sumout\,
	cout => \lab1_seq_data_1|Add0~6\);

-- Location: FF_X11_Y4_N5
\lab1_seq_data_1|data_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~5_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(21));

-- Location: LABCELL_X11_Y4_N6
\lab1_seq_data_1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~81_sumout\ = SUM(( \lab1_seq_data_1|data_count\(22) ) + ( GND ) + ( \lab1_seq_data_1|Add0~6\ ))
-- \lab1_seq_data_1|Add0~82\ = CARRY(( \lab1_seq_data_1|data_count\(22) ) + ( GND ) + ( \lab1_seq_data_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(22),
	cin => \lab1_seq_data_1|Add0~6\,
	sumout => \lab1_seq_data_1|Add0~81_sumout\,
	cout => \lab1_seq_data_1|Add0~82\);

-- Location: FF_X11_Y4_N8
\lab1_seq_data_1|data_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~81_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(22));

-- Location: LABCELL_X11_Y4_N9
\lab1_seq_data_1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~85_sumout\ = SUM(( \lab1_seq_data_1|data_count\(23) ) + ( GND ) + ( \lab1_seq_data_1|Add0~82\ ))
-- \lab1_seq_data_1|Add0~86\ = CARRY(( \lab1_seq_data_1|data_count\(23) ) + ( GND ) + ( \lab1_seq_data_1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(23),
	cin => \lab1_seq_data_1|Add0~82\,
	sumout => \lab1_seq_data_1|Add0~85_sumout\,
	cout => \lab1_seq_data_1|Add0~86\);

-- Location: FF_X11_Y4_N11
\lab1_seq_data_1|data_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~85_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(23));

-- Location: LABCELL_X11_Y4_N12
\lab1_seq_data_1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~89_sumout\ = SUM(( \lab1_seq_data_1|data_count\(24) ) + ( GND ) + ( \lab1_seq_data_1|Add0~86\ ))
-- \lab1_seq_data_1|Add0~90\ = CARRY(( \lab1_seq_data_1|data_count\(24) ) + ( GND ) + ( \lab1_seq_data_1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(24),
	cin => \lab1_seq_data_1|Add0~86\,
	sumout => \lab1_seq_data_1|Add0~89_sumout\,
	cout => \lab1_seq_data_1|Add0~90\);

-- Location: FF_X11_Y4_N14
\lab1_seq_data_1|data_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~89_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(24));

-- Location: LABCELL_X11_Y4_N15
\lab1_seq_data_1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~93_sumout\ = SUM(( \lab1_seq_data_1|data_count\(25) ) + ( GND ) + ( \lab1_seq_data_1|Add0~90\ ))
-- \lab1_seq_data_1|Add0~94\ = CARRY(( \lab1_seq_data_1|data_count\(25) ) + ( GND ) + ( \lab1_seq_data_1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(25),
	cin => \lab1_seq_data_1|Add0~90\,
	sumout => \lab1_seq_data_1|Add0~93_sumout\,
	cout => \lab1_seq_data_1|Add0~94\);

-- Location: FF_X11_Y4_N17
\lab1_seq_data_1|data_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~93_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(25));

-- Location: LABCELL_X11_Y4_N18
\lab1_seq_data_1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~121_sumout\ = SUM(( \lab1_seq_data_1|data_count\(26) ) + ( GND ) + ( \lab1_seq_data_1|Add0~94\ ))
-- \lab1_seq_data_1|Add0~122\ = CARRY(( \lab1_seq_data_1|data_count\(26) ) + ( GND ) + ( \lab1_seq_data_1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lab1_seq_data_1|ALT_INV_data_count\(26),
	cin => \lab1_seq_data_1|Add0~94\,
	sumout => \lab1_seq_data_1|Add0~121_sumout\,
	cout => \lab1_seq_data_1|Add0~122\);

-- Location: FF_X11_Y4_N20
\lab1_seq_data_1|data_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~121_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(26));

-- Location: LABCELL_X11_Y4_N21
\lab1_seq_data_1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~101_sumout\ = SUM(( \lab1_seq_data_1|data_count\(27) ) + ( GND ) + ( \lab1_seq_data_1|Add0~122\ ))
-- \lab1_seq_data_1|Add0~102\ = CARRY(( \lab1_seq_data_1|data_count\(27) ) + ( GND ) + ( \lab1_seq_data_1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(27),
	cin => \lab1_seq_data_1|Add0~122\,
	sumout => \lab1_seq_data_1|Add0~101_sumout\,
	cout => \lab1_seq_data_1|Add0~102\);

-- Location: FF_X11_Y4_N23
\lab1_seq_data_1|data_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~101_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(27));

-- Location: LABCELL_X11_Y4_N36
\lab1_seq_data_1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~4_combout\ = ( !\lab1_seq_data_1|data_count\(10) & ( !\lab1_seq_data_1|data_count\(22) & ( (!\lab1_seq_data_1|data_count\(27) & (!\lab1_seq_data_1|data_count\(24) & (!\lab1_seq_data_1|data_count\(25) & 
-- !\lab1_seq_data_1|data_count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(27),
	datab => \lab1_seq_data_1|ALT_INV_data_count\(24),
	datac => \lab1_seq_data_1|ALT_INV_data_count\(25),
	datad => \lab1_seq_data_1|ALT_INV_data_count\(23),
	datae => \lab1_seq_data_1|ALT_INV_data_count\(10),
	dataf => \lab1_seq_data_1|ALT_INV_data_count\(22),
	combout => \lab1_seq_data_1|Equal0~4_combout\);

-- Location: LABCELL_X11_Y4_N57
\lab1_seq_data_1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~0_combout\ = (!\lab1_seq_data_1|data_count\(21) & !\lab1_seq_data_1|data_count\(20))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(21),
	datad => \lab1_seq_data_1|ALT_INV_data_count\(20),
	combout => \lab1_seq_data_1|Equal0~0_combout\);

-- Location: LABCELL_X11_Y4_N24
\lab1_seq_data_1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~105_sumout\ = SUM(( \lab1_seq_data_1|data_count\(28) ) + ( GND ) + ( \lab1_seq_data_1|Add0~102\ ))
-- \lab1_seq_data_1|Add0~106\ = CARRY(( \lab1_seq_data_1|data_count\(28) ) + ( GND ) + ( \lab1_seq_data_1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_count\(28),
	cin => \lab1_seq_data_1|Add0~102\,
	sumout => \lab1_seq_data_1|Add0~105_sumout\,
	cout => \lab1_seq_data_1|Add0~106\);

-- Location: FF_X11_Y4_N26
\lab1_seq_data_1|data_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~105_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(28));

-- Location: LABCELL_X11_Y4_N27
\lab1_seq_data_1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~109_sumout\ = SUM(( \lab1_seq_data_1|data_count\(29) ) + ( GND ) + ( \lab1_seq_data_1|Add0~106\ ))
-- \lab1_seq_data_1|Add0~110\ = CARRY(( \lab1_seq_data_1|data_count\(29) ) + ( GND ) + ( \lab1_seq_data_1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(29),
	cin => \lab1_seq_data_1|Add0~106\,
	sumout => \lab1_seq_data_1|Add0~109_sumout\,
	cout => \lab1_seq_data_1|Add0~110\);

-- Location: FF_X11_Y4_N29
\lab1_seq_data_1|data_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~109_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(29));

-- Location: LABCELL_X11_Y4_N30
\lab1_seq_data_1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~113_sumout\ = SUM(( \lab1_seq_data_1|data_count\(30) ) + ( GND ) + ( \lab1_seq_data_1|Add0~110\ ))
-- \lab1_seq_data_1|Add0~114\ = CARRY(( \lab1_seq_data_1|data_count\(30) ) + ( GND ) + ( \lab1_seq_data_1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lab1_seq_data_1|ALT_INV_data_count\(30),
	cin => \lab1_seq_data_1|Add0~110\,
	sumout => \lab1_seq_data_1|Add0~113_sumout\,
	cout => \lab1_seq_data_1|Add0~114\);

-- Location: FF_X11_Y4_N32
\lab1_seq_data_1|data_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~113_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(30));

-- Location: LABCELL_X11_Y4_N33
\lab1_seq_data_1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Add0~117_sumout\ = SUM(( \lab1_seq_data_1|data_count\(31) ) + ( GND ) + ( \lab1_seq_data_1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(31),
	cin => \lab1_seq_data_1|Add0~114\,
	sumout => \lab1_seq_data_1|Add0~117_sumout\);

-- Location: FF_X11_Y4_N35
\lab1_seq_data_1|data_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \lab1_seq_data_1|Add0~117_sumout\,
	sclr => \lab1_seq_data_1|data_r~1_combout\,
	ena => \lab1_seq_data_1|data_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_count\(31));

-- Location: LABCELL_X11_Y4_N48
\lab1_seq_data_1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~5_combout\ = ( !\lab1_seq_data_1|data_count\(29) & ( \lab1_seq_data_1|data_count\(3) & ( (!\lab1_seq_data_1|data_count\(31) & (!\lab1_seq_data_1|data_count\(30) & (!\lab1_seq_data_1|data_count\(26) & 
-- !\lab1_seq_data_1|data_count\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(31),
	datab => \lab1_seq_data_1|ALT_INV_data_count\(30),
	datac => \lab1_seq_data_1|ALT_INV_data_count\(26),
	datad => \lab1_seq_data_1|ALT_INV_data_count\(28),
	datae => \lab1_seq_data_1|ALT_INV_data_count\(29),
	dataf => \lab1_seq_data_1|ALT_INV_data_count\(3),
	combout => \lab1_seq_data_1|Equal0~5_combout\);

-- Location: LABCELL_X10_Y5_N39
\lab1_seq_data_1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~3_combout\ = ( !\lab1_seq_data_1|data_count\(5) & ( !\lab1_seq_data_1|data_count\(2) & ( (!\lab1_seq_data_1|data_count\(1) & (!\lab1_seq_data_1|data_count\(6) & (!\lab1_seq_data_1|data_count\(4) & 
-- !\lab1_seq_data_1|data_count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(1),
	datab => \lab1_seq_data_1|ALT_INV_data_count\(6),
	datac => \lab1_seq_data_1|ALT_INV_data_count\(4),
	datad => \lab1_seq_data_1|ALT_INV_data_count\(0),
	datae => \lab1_seq_data_1|ALT_INV_data_count\(5),
	dataf => \lab1_seq_data_1|ALT_INV_data_count\(2),
	combout => \lab1_seq_data_1|Equal0~3_combout\);

-- Location: LABCELL_X12_Y5_N42
\lab1_seq_data_1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~2_combout\ = ( !\lab1_seq_data_1|data_count\(7) & ( !\lab1_seq_data_1|data_count\(8) & ( (!\lab1_seq_data_1|data_count\(11) & (!\lab1_seq_data_1|data_count\(9) & (!\lab1_seq_data_1|data_count\(13) & 
-- !\lab1_seq_data_1|data_count\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(11),
	datab => \lab1_seq_data_1|ALT_INV_data_count\(9),
	datac => \lab1_seq_data_1|ALT_INV_data_count\(13),
	datad => \lab1_seq_data_1|ALT_INV_data_count\(12),
	datae => \lab1_seq_data_1|ALT_INV_data_count\(7),
	dataf => \lab1_seq_data_1|ALT_INV_data_count\(8),
	combout => \lab1_seq_data_1|Equal0~2_combout\);

-- Location: LABCELL_X12_Y5_N15
\lab1_seq_data_1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~1_combout\ = ( !\lab1_seq_data_1|data_count\(14) & ( !\lab1_seq_data_1|data_count\(18) & ( (!\lab1_seq_data_1|data_count\(19) & (!\lab1_seq_data_1|data_count\(16) & (!\lab1_seq_data_1|data_count\(15) & 
-- !\lab1_seq_data_1|data_count\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(19),
	datab => \lab1_seq_data_1|ALT_INV_data_count\(16),
	datac => \lab1_seq_data_1|ALT_INV_data_count\(15),
	datad => \lab1_seq_data_1|ALT_INV_data_count\(17),
	datae => \lab1_seq_data_1|ALT_INV_data_count\(14),
	dataf => \lab1_seq_data_1|ALT_INV_data_count\(18),
	combout => \lab1_seq_data_1|Equal0~1_combout\);

-- Location: LABCELL_X11_Y4_N42
\lab1_seq_data_1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Equal0~6_combout\ = ( \lab1_seq_data_1|Equal0~2_combout\ & ( \lab1_seq_data_1|Equal0~1_combout\ & ( (\lab1_seq_data_1|Equal0~4_combout\ & (\lab1_seq_data_1|Equal0~0_combout\ & (\lab1_seq_data_1|Equal0~5_combout\ & 
-- \lab1_seq_data_1|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_Equal0~4_combout\,
	datab => \lab1_seq_data_1|ALT_INV_Equal0~0_combout\,
	datac => \lab1_seq_data_1|ALT_INV_Equal0~5_combout\,
	datad => \lab1_seq_data_1|ALT_INV_Equal0~3_combout\,
	datae => \lab1_seq_data_1|ALT_INV_Equal0~2_combout\,
	dataf => \lab1_seq_data_1|ALT_INV_Equal0~1_combout\,
	combout => \lab1_seq_data_1|Equal0~6_combout\);

-- Location: IOIBUF_X2_Y0_N58
\data_i[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(7),
	o => \data_i[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\data_i[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(6),
	o => \data_i[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\data_i[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(5),
	o => \data_i[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\data_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(3),
	o => \data_i[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\data_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(1),
	o => \data_i[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\data_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(2),
	o => \data_i[2]~input_o\);

-- Location: LABCELL_X10_Y4_N30
\lab1_seq_data_1|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Mux0~4_combout\ = ( !\lab1_seq_data_1|data_count\(1) & ( ((!\lab1_seq_data_1|data_count\(0) & (((\data_i[0]~input_o\ & !\lab1_seq_data_1|data_count\(2))))) # (\lab1_seq_data_1|data_count\(0) & (((\lab1_seq_data_1|data_count\(2))) # 
-- (\data_i[1]~input_o\)))) ) ) # ( \lab1_seq_data_1|data_count\(1) & ( ((!\lab1_seq_data_1|data_count\(0) & (((\data_i[2]~input_o\ & !\lab1_seq_data_1|data_count\(2))))) # (\lab1_seq_data_1|data_count\(0) & (((\lab1_seq_data_1|data_count\(2))) # 
-- (\data_i[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_i[3]~input_o\,
	datab => \ALT_INV_data_i[1]~input_o\,
	datac => \ALT_INV_data_i[2]~input_o\,
	datad => \lab1_seq_data_1|ALT_INV_data_count\(0),
	datae => \lab1_seq_data_1|ALT_INV_data_count\(1),
	dataf => \lab1_seq_data_1|ALT_INV_data_count\(2),
	datag => \ALT_INV_data_i[0]~input_o\,
	combout => \lab1_seq_data_1|Mux0~4_combout\);

-- Location: IOIBUF_X4_Y0_N35
\data_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(4),
	o => \data_i[4]~input_o\);

-- Location: LABCELL_X10_Y4_N0
\lab1_seq_data_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|Mux0~0_combout\ = ( !\lab1_seq_data_1|data_count\(1) & ( (!\lab1_seq_data_1|data_count\(2) & ((((\lab1_seq_data_1|Mux0~4_combout\))))) # (\lab1_seq_data_1|data_count\(2) & (((!\lab1_seq_data_1|Mux0~4_combout\ & (\data_i[4]~input_o\)) # 
-- (\lab1_seq_data_1|Mux0~4_combout\ & ((\data_i[5]~input_o\)))))) ) ) # ( \lab1_seq_data_1|data_count\(1) & ( (!\lab1_seq_data_1|data_count\(2) & ((((\lab1_seq_data_1|Mux0~4_combout\))))) # (\lab1_seq_data_1|data_count\(2) & 
-- (((!\lab1_seq_data_1|Mux0~4_combout\ & ((\data_i[6]~input_o\))) # (\lab1_seq_data_1|Mux0~4_combout\ & (\data_i[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lab1_seq_data_1|ALT_INV_data_count\(2),
	datab => \ALT_INV_data_i[7]~input_o\,
	datac => \ALT_INV_data_i[6]~input_o\,
	datad => \ALT_INV_data_i[5]~input_o\,
	datae => \lab1_seq_data_1|ALT_INV_data_count\(1),
	dataf => \lab1_seq_data_1|ALT_INV_Mux0~4_combout\,
	datag => \ALT_INV_data_i[4]~input_o\,
	combout => \lab1_seq_data_1|Mux0~0_combout\);

-- Location: LABCELL_X10_Y4_N18
\lab1_seq_data_1|data_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lab1_seq_data_1|data_r~0_combout\ = ( \lab1_seq_data_1|Equal0~6_combout\ & ( \lab1_seq_data_1|Mux0~0_combout\ & ( (!\reset~input_o\ & ((!\enable~input_o\ & ((\lab1_seq_data_1|data_r~q\))) # (\enable~input_o\ & (\data_i[0]~input_o\)))) ) ) ) # ( 
-- !\lab1_seq_data_1|Equal0~6_combout\ & ( \lab1_seq_data_1|Mux0~0_combout\ & ( (!\reset~input_o\ & ((\enable~input_o\) # (\lab1_seq_data_1|data_r~q\))) ) ) ) # ( \lab1_seq_data_1|Equal0~6_combout\ & ( !\lab1_seq_data_1|Mux0~0_combout\ & ( (!\reset~input_o\ 
-- & ((!\enable~input_o\ & ((\lab1_seq_data_1|data_r~q\))) # (\enable~input_o\ & (\data_i[0]~input_o\)))) ) ) ) # ( !\lab1_seq_data_1|Equal0~6_combout\ & ( !\lab1_seq_data_1|Mux0~0_combout\ & ( (!\reset~input_o\ & (\lab1_seq_data_1|data_r~q\ & 
-- !\enable~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000100010000001100110011000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_i[0]~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \lab1_seq_data_1|ALT_INV_data_r~q\,
	datad => \ALT_INV_enable~input_o\,
	datae => \lab1_seq_data_1|ALT_INV_Equal0~6_combout\,
	dataf => \lab1_seq_data_1|ALT_INV_Mux0~0_combout\,
	combout => \lab1_seq_data_1|data_r~0_combout\);

-- Location: FF_X10_Y4_N2
\lab1_seq_data_1|data_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	asdata => \lab1_seq_data_1|data_r~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lab1_seq_data_1|data_r~q\);

-- Location: LABCELL_X10_Y4_N45
\overlap_sequence_detector_1|next_state.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \overlap_sequence_detector_1|next_state.S1~0_combout\ = ( !\overlap_sequence_detector_1|current_state.S2~q\ & ( \lab1_seq_data_1|data_r~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lab1_seq_data_1|ALT_INV_data_r~q\,
	dataf => \overlap_sequence_detector_1|ALT_INV_current_state.S2~q\,
	combout => \overlap_sequence_detector_1|next_state.S1~0_combout\);

-- Location: FF_X11_Y4_N47
\overlap_sequence_detector_1|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	asdata => \overlap_sequence_detector_1|next_state.S1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \overlap_sequence_detector_1|current_state.S1~q\);

-- Location: LABCELL_X10_Y4_N36
\overlap_sequence_detector_1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \overlap_sequence_detector_1|Selector0~0_combout\ = ( \lab1_seq_data_1|data_r~q\ & ( \overlap_sequence_detector_1|current_state.S1~q\ ) ) # ( !\lab1_seq_data_1|data_r~q\ & ( \overlap_sequence_detector_1|current_state.S1~q\ ) ) # ( 
-- \lab1_seq_data_1|data_r~q\ & ( !\overlap_sequence_detector_1|current_state.S1~q\ ) ) # ( !\lab1_seq_data_1|data_r~q\ & ( !\overlap_sequence_detector_1|current_state.S1~q\ & ( \overlap_sequence_detector_1|current_state.S3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \overlap_sequence_detector_1|ALT_INV_current_state.S3~q\,
	datae => \lab1_seq_data_1|ALT_INV_data_r~q\,
	dataf => \overlap_sequence_detector_1|ALT_INV_current_state.S1~q\,
	combout => \overlap_sequence_detector_1|Selector0~0_combout\);

-- Location: FF_X11_Y4_N40
\overlap_sequence_detector_1|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	asdata => \overlap_sequence_detector_1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \overlap_sequence_detector_1|current_state.S0~q\);

-- Location: LABCELL_X10_Y4_N48
\overlap_sequence_detector_1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \overlap_sequence_detector_1|Selector1~0_combout\ = ( !\lab1_seq_data_1|data_r~q\ & ( (!\overlap_sequence_detector_1|current_state.S2~q\ & \overlap_sequence_detector_1|current_state.S0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \overlap_sequence_detector_1|ALT_INV_current_state.S2~q\,
	datad => \overlap_sequence_detector_1|ALT_INV_current_state.S0~q\,
	datae => \lab1_seq_data_1|ALT_INV_data_r~q\,
	combout => \overlap_sequence_detector_1|Selector1~0_combout\);

-- Location: FF_X11_Y4_N52
\overlap_sequence_detector_1|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	asdata => \overlap_sequence_detector_1|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \overlap_sequence_detector_1|current_state.S2~q\);

-- Location: LABCELL_X10_Y4_N24
\overlap_sequence_detector_1|next_state.S3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \overlap_sequence_detector_1|next_state.S3~0_combout\ = ( \lab1_seq_data_1|data_r~q\ & ( \overlap_sequence_detector_1|current_state.S2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \overlap_sequence_detector_1|ALT_INV_current_state.S2~q\,
	dataf => \lab1_seq_data_1|ALT_INV_data_r~q\,
	combout => \overlap_sequence_detector_1|next_state.S3~0_combout\);

-- Location: FF_X10_Y4_N25
\overlap_sequence_detector_1|current_state.S3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_1|clok_r~q\,
	d => \overlap_sequence_detector_1|next_state.S3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \overlap_sequence_detector_1|current_state.S3~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y36_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


