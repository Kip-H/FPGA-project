-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/03/2024 23:05:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	bt_start : IN std_logic;
	push_spi_start : IN std_logic;
	bt_setting : IN std_logic;
	sclk : BUFFER std_logic;
	cs_n : BUFFER std_logic;
	sdata : IN std_logic;
	led_out : BUFFER std_logic_vector(7 DOWNTO 0);
	heat_signal : BUFFER std_logic;
	motor_signal : BUFFER std_logic;
	txd : BUFFER std_logic;
	portb : BUFFER std_logic_vector(3 DOWNTO 0);
	fnd1 : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd2 : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- sclk	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_n	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- heat_signal	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_signal	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd1[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd2[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd3[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdata	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt_setting	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_spi_start	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt_start	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
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
SIGNAL ww_n_rst : std_logic;
SIGNAL ww_bt_start : std_logic;
SIGNAL ww_push_spi_start : std_logic;
SIGNAL ww_bt_setting : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_cs_n : std_logic;
SIGNAL ww_sdata : std_logic;
SIGNAL ww_led_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_heat_signal : std_logic;
SIGNAL ww_motor_signal : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_portb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fnd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \cs_n~output_o\ : std_logic;
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \led_out[4]~output_o\ : std_logic;
SIGNAL \led_out[5]~output_o\ : std_logic;
SIGNAL \led_out[6]~output_o\ : std_logic;
SIGNAL \led_out[7]~output_o\ : std_logic;
SIGNAL \heat_signal~output_o\ : std_logic;
SIGNAL \motor_signal~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \portb[0]~output_o\ : std_logic;
SIGNAL \portb[1]~output_o\ : std_logic;
SIGNAL \portb[2]~output_o\ : std_logic;
SIGNAL \portb[3]~output_o\ : std_logic;
SIGNAL \fnd1[0]~output_o\ : std_logic;
SIGNAL \fnd1[1]~output_o\ : std_logic;
SIGNAL \fnd1[2]~output_o\ : std_logic;
SIGNAL \fnd1[3]~output_o\ : std_logic;
SIGNAL \fnd1[4]~output_o\ : std_logic;
SIGNAL \fnd1[5]~output_o\ : std_logic;
SIGNAL \fnd1[6]~output_o\ : std_logic;
SIGNAL \fnd2[0]~output_o\ : std_logic;
SIGNAL \fnd2[1]~output_o\ : std_logic;
SIGNAL \fnd2[2]~output_o\ : std_logic;
SIGNAL \fnd2[3]~output_o\ : std_logic;
SIGNAL \fnd2[4]~output_o\ : std_logic;
SIGNAL \fnd2[5]~output_o\ : std_logic;
SIGNAL \fnd2[6]~output_o\ : std_logic;
SIGNAL \fnd3[0]~output_o\ : std_logic;
SIGNAL \fnd3[1]~output_o\ : std_logic;
SIGNAL \fnd3[2]~output_o\ : std_logic;
SIGNAL \fnd3[3]~output_o\ : std_logic;
SIGNAL \fnd3[4]~output_o\ : std_logic;
SIGNAL \fnd3[5]~output_o\ : std_logic;
SIGNAL \fnd3[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~7\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~8_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal2~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal2~1_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \u_spi_master_adc|sclk_rise~q\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~12_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk[4]~13_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal0~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk[4]~17_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~1\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~2_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~16_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~3\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~15_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~5\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~14_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal0~0_combout\ : std_logic;
SIGNAL \push_spi_start~input_o\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d1~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d1~q\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d2~feeder_combout\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d2~q\ : std_logic;
SIGNAL \u_spi_master_adc|w_n_start~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|w_n_start~q\ : std_logic;
SIGNAL \u_spi_master_adc|cs_n~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cs_n~q\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[4]~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[0]~9_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~1\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~3\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[2]~7_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~5\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[3]~10_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~7\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~8_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[4]~11_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[4]~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal1~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[0]~5_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~2_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[1]~8_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk~q\ : std_logic;
SIGNAL \sdata~input_o\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[0]~3_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[0]~12_combout\ : std_logic;
SIGNAL \u_Controller|led_out[0]~1_combout\ : std_logic;
SIGNAL \bt_setting~input_o\ : std_logic;
SIGNAL \d_setting~0_combout\ : std_logic;
SIGNAL \d_setting~q\ : std_logic;
SIGNAL \d2_setting~q\ : std_logic;
SIGNAL \w_bt_setting~combout\ : std_logic;
SIGNAL \u_Controller|n_state.FND2~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.FND2~q\ : std_logic;
SIGNAL \u_Controller|Selector5~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.SETTING_2~q\ : std_logic;
SIGNAL \u_Controller|sec_counter[0]~29_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[0]~30\ : std_logic;
SIGNAL \u_Controller|sec_counter[1]~31_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[1]~32\ : std_logic;
SIGNAL \u_Controller|sec_counter[2]~33_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[2]~34\ : std_logic;
SIGNAL \u_Controller|sec_counter[3]~35_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[3]~36\ : std_logic;
SIGNAL \u_Controller|sec_counter[4]~37_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[4]~38\ : std_logic;
SIGNAL \u_Controller|sec_counter[5]~39_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[5]~40\ : std_logic;
SIGNAL \u_Controller|sec_counter[6]~41_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[6]~42\ : std_logic;
SIGNAL \u_Controller|sec_counter[7]~43_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[7]~44\ : std_logic;
SIGNAL \u_Controller|sec_counter[8]~45_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[8]~46\ : std_logic;
SIGNAL \u_Controller|sec_counter[9]~47_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[9]~48\ : std_logic;
SIGNAL \u_Controller|sec_counter[10]~49_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[10]~50\ : std_logic;
SIGNAL \u_Controller|sec_counter[11]~51_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[11]~52\ : std_logic;
SIGNAL \u_Controller|sec_counter[12]~53_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[12]~54\ : std_logic;
SIGNAL \u_Controller|sec_counter[13]~55_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[13]~56\ : std_logic;
SIGNAL \u_Controller|sec_counter[14]~57_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[14]~58\ : std_logic;
SIGNAL \u_Controller|sec_counter[15]~59_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[15]~60\ : std_logic;
SIGNAL \u_Controller|sec_counter[16]~61_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[16]~62\ : std_logic;
SIGNAL \u_Controller|sec_counter[17]~63_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[17]~64\ : std_logic;
SIGNAL \u_Controller|sec_counter[18]~65_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[18]~66\ : std_logic;
SIGNAL \u_Controller|sec_counter[19]~67_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[19]~68\ : std_logic;
SIGNAL \u_Controller|sec_counter[20]~69_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[20]~70\ : std_logic;
SIGNAL \u_Controller|sec_counter[21]~71_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[21]~72\ : std_logic;
SIGNAL \u_Controller|sec_counter[22]~73_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[22]~74\ : std_logic;
SIGNAL \u_Controller|sec_counter[23]~75_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[23]~76\ : std_logic;
SIGNAL \u_Controller|sec_counter[24]~77_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[24]~78\ : std_logic;
SIGNAL \u_Controller|sec_counter[25]~79_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[21]~27_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~3_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~2_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~1_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~0_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~4_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~6_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~7_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~5_combout\ : std_logic;
SIGNAL \u_Controller|LessThan0~8_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[21]~26_combout\ : std_logic;
SIGNAL \u_Controller|sec_counter[21]~28_combout\ : std_logic;
SIGNAL \u_Controller|runnig_time[2]~4_combout\ : std_logic;
SIGNAL \u_Controller|runnig_time~2_combout\ : std_logic;
SIGNAL \u_Controller|LessThan1~0_combout\ : std_logic;
SIGNAL \u_Controller|runnig_time[3]~7_combout\ : std_logic;
SIGNAL \u_Controller|runnig_time[3]~3_combout\ : std_logic;
SIGNAL \u_Controller|runnig_time[2]~5_combout\ : std_logic;
SIGNAL \u_Controller|Equal0~0_combout\ : std_logic;
SIGNAL \u_Controller|Selector6~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.RUNNING_2~q\ : std_logic;
SIGNAL \u_Controller|runnig_time~6_combout\ : std_logic;
SIGNAL \u_Controller|n_state.DONE~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.DONE~q\ : std_logic;
SIGNAL \bt_start~input_o\ : std_logic;
SIGNAL \d_start~0_combout\ : std_logic;
SIGNAL \d_start~q\ : std_logic;
SIGNAL \d2_start~q\ : std_logic;
SIGNAL \u_Controller|Selector0~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.IDLE~q\ : std_logic;
SIGNAL \u_Controller|Selector1~0_combout\ : std_logic;
SIGNAL \u_Controller|Selector1~1_combout\ : std_logic;
SIGNAL \u_Controller|c_state.LIGHT_READ~q\ : std_logic;
SIGNAL \u_Controller|n_state.FND1~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.FND1~q\ : std_logic;
SIGNAL \u_Controller|Selector2~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.SETTING~q\ : std_logic;
SIGNAL \u_Controller|Selector3~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.RUNNING~q\ : std_logic;
SIGNAL \u_Controller|Selector4~0_combout\ : std_logic;
SIGNAL \u_Controller|c_state.LIGHT_READ_2~q\ : std_logic;
SIGNAL \u_Controller|led_out[0]~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \u_Controller|led_out[1]~2_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \u_Controller|led_out[2]~3_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \u_Controller|led_out[3]~4_combout\ : std_logic;
SIGNAL \u_Controller|led_out[4]~5_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \u_Controller|led_out[5]~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \u_Controller|led_out[6]~7_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \u_Controller|led_out[7]~8_combout\ : std_logic;
SIGNAL \u_Controller|heat_signal~0_combout\ : std_logic;
SIGNAL \u_Controller|heat_signal~1_combout\ : std_logic;
SIGNAL \u_Controller|heat_signal~2_combout\ : std_logic;
SIGNAL \u_Controller|motor_signal~q\ : std_logic;
SIGNAL \u_uart_tx|cnt_bit~0_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[0]~13_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[0]~14\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[1]~15_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[1]~16\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[2]~17_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[2]~18\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[3]~19_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[3]~20\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[4]~21_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[4]~22\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[5]~23_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[5]~24\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[6]~25_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[6]~26\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[7]~27_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[7]~28\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[8]~29_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[8]~30\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[9]~31_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[9]~32\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[10]~33_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[10]~34\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[11]~35_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal0~2_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal0~0_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal0~1_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[11]~36\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div[12]~37_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal0~3_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data[0]~1_combout\ : std_logic;
SIGNAL \u_uart_tx|Add1~0_combout\ : std_logic;
SIGNAL \u_uart_tx|Add1~2_combout\ : std_logic;
SIGNAL \u_uart_tx|Add1~1_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_en~0_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal3~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|Selector4~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.W2~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector5~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.S3~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector6~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.W3~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector7~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.S4~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector8~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.W4~q\ : std_logic;
SIGNAL \u_Controller|Day_done~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector0~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.IDLE~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector1~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.S1~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector2~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.W1~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector3~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.S2~q\ : std_logic;
SIGNAL \u_byte2ascill|data_out[0]~4_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_en~1_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_en~q\ : std_logic;
SIGNAL \u_uart_tx|Equal2~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~5_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~6_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out[5]~8_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~10_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~9_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~8_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~7_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~6_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~5_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~4_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~3_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~2_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~0_combout\ : std_logic;
SIGNAL \u_Controller|morning_signal~0_combout\ : std_logic;
SIGNAL \u_Controller|after_signal~q\ : std_logic;
SIGNAL \u_Controller|morning_signal~q\ : std_logic;
SIGNAL \u_Total_FND|fnd1[0]~0_combout\ : std_logic;
SIGNAL \u_Total_FND|fnd3[2]~0_combout\ : std_logic;
SIGNAL \u_Controller|runnig_time\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_spi_master_adc|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_Controller|led_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_Controller|sec_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u_spi_master_adc|data_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_spi_master_adc|cnt_sclk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_byte2ascill|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_tx|tx_data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_uart_tx|cnt_tx_div\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_uart_tx|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Total_FND|ALT_INV_fnd1[0]~0_combout\ : std_logic;
SIGNAL \u_Controller|ALT_INV_morning_signal~q\ : std_logic;
SIGNAL \u_spi_master_adc|ALT_INV_cs_n~q\ : std_logic;
SIGNAL \u_spi_master_adc|ALT_INV_sclk~q\ : std_logic;
SIGNAL \u_byte2ascill|ALT_INV_data_out[0]~4_combout\ : std_logic;
SIGNAL \u_uart_tx|ALT_INV_tx_en~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_bt_start <= bt_start;
ww_push_spi_start <= push_spi_start;
ww_bt_setting <= bt_setting;
sclk <= ww_sclk;
cs_n <= ww_cs_n;
ww_sdata <= sdata;
led_out <= ww_led_out;
heat_signal <= ww_heat_signal;
motor_signal <= ww_motor_signal;
txd <= ww_txd;
portb <= ww_portb;
fnd1 <= ww_fnd1;
fnd2 <= ww_fnd2;
fnd3 <= ww_fnd3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u_Total_FND|ALT_INV_fnd1[0]~0_combout\ <= NOT \u_Total_FND|fnd1[0]~0_combout\;
\u_Controller|ALT_INV_morning_signal~q\ <= NOT \u_Controller|morning_signal~q\;
\u_spi_master_adc|ALT_INV_cs_n~q\ <= NOT \u_spi_master_adc|cs_n~q\;
\u_spi_master_adc|ALT_INV_sclk~q\ <= NOT \u_spi_master_adc|sclk~q\;
\u_byte2ascill|ALT_INV_data_out[0]~4_combout\ <= NOT \u_byte2ascill|data_out[0]~4_combout\;
\u_uart_tx|ALT_INV_tx_en~q\ <= NOT \u_uart_tx|tx_en~q\;

-- Location: IOOBUF_X5_Y0_N30
\sclk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|ALT_INV_sclk~q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\cs_n~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|ALT_INV_cs_n~q\,
	devoe => ww_devoe,
	o => \cs_n~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(0),
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(1),
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(2),
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(3),
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(4),
	devoe => ww_devoe,
	o => \led_out[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(5),
	devoe => ww_devoe,
	o => \led_out[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(6),
	devoe => ww_devoe,
	o => \led_out[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|led_out\(7),
	devoe => ww_devoe,
	o => \led_out[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\heat_signal~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|motor_signal~q\,
	devoe => ww_devoe,
	o => \heat_signal~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\motor_signal~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|motor_signal~q\,
	devoe => ww_devoe,
	o => \motor_signal~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_uart_tx|tx_data\(0),
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\portb[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \portb[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\portb[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \portb[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\portb[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \portb[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\portb[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \portb[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\fnd1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd1[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\fnd1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd1[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\fnd1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Controller|ALT_INV_morning_signal~q\,
	devoe => ww_devoe,
	o => \fnd1[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\fnd1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd1[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\fnd1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd1[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\fnd1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd1[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\fnd1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\fnd2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\fnd2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\fnd2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\fnd2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\fnd2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\fnd2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\fnd2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd2[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\fnd3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd3[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\fnd3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd3[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\fnd3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|fnd3[2]~0_combout\,
	devoe => ww_devoe,
	o => \fnd3[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\fnd3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd3[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\fnd3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd3[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\fnd3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd3[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\fnd3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Total_FND|ALT_INV_fnd1[0]~0_combout\,
	devoe => ww_devoe,
	o => \fnd3[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y19_N14
\u_spi_master_adc|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~0_combout\ = \u_spi_master_adc|cnt\(0) $ (VCC)
-- \u_spi_master_adc|Add0~1\ = CARRY(\u_spi_master_adc|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(0),
	datad => VCC,
	combout => \u_spi_master_adc|Add0~0_combout\,
	cout => \u_spi_master_adc|Add0~1\);

-- Location: LCCOMB_X32_Y15_N24
\u_spi_master_adc|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~6_combout\ = (\u_spi_master_adc|cnt_sclk\(3) & (!\u_spi_master_adc|Add1~5\)) # (!\u_spi_master_adc|cnt_sclk\(3) & ((\u_spi_master_adc|Add1~5\) # (GND)))
-- \u_spi_master_adc|Add1~7\ = CARRY((!\u_spi_master_adc|Add1~5\) # (!\u_spi_master_adc|cnt_sclk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(3),
	datad => VCC,
	cin => \u_spi_master_adc|Add1~5\,
	combout => \u_spi_master_adc|Add1~6_combout\,
	cout => \u_spi_master_adc|Add1~7\);

-- Location: LCCOMB_X32_Y15_N26
\u_spi_master_adc|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~8_combout\ = \u_spi_master_adc|cnt_sclk\(4) $ (!\u_spi_master_adc|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(4),
	cin => \u_spi_master_adc|Add1~7\,
	combout => \u_spi_master_adc|Add1~8_combout\);

-- Location: LCCOMB_X32_Y15_N18
\u_spi_master_adc|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~0_combout\ = \u_spi_master_adc|cnt_sclk\(0) $ (VCC)
-- \u_spi_master_adc|Add1~1\ = CARRY(\u_spi_master_adc|cnt_sclk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(0),
	datad => VCC,
	combout => \u_spi_master_adc|Add1~0_combout\,
	cout => \u_spi_master_adc|Add1~1\);

-- Location: LCCOMB_X26_Y19_N6
\u_spi_master_adc|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal2~0_combout\ = (\u_spi_master_adc|cnt\(4) & (!\u_spi_master_adc|cnt\(1) & (!\u_spi_master_adc|cnt\(2) & \u_spi_master_adc|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(1),
	datac => \u_spi_master_adc|cnt\(2),
	datad => \u_spi_master_adc|cnt\(3),
	combout => \u_spi_master_adc|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y15_N12
\u_spi_master_adc|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal2~1_combout\ = (\u_spi_master_adc|cnt\(0) & \u_spi_master_adc|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|cnt\(0),
	datad => \u_spi_master_adc|Equal2~0_combout\,
	combout => \u_spi_master_adc|Equal2~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: FF_X32_Y15_N13
\u_spi_master_adc|sclk_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|Equal2~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|sclk_rise~q\);

-- Location: LCCOMB_X32_Y15_N0
\u_spi_master_adc|cnt_sclk~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~12_combout\ = (\u_spi_master_adc|Add1~0_combout\ & (!\u_spi_master_adc|cnt_sclk\(4) & \u_spi_master_adc|sclk_rise~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|Add1~0_combout\,
	datac => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|sclk_rise~q\,
	combout => \u_spi_master_adc|cnt_sclk~12_combout\);

-- Location: LCCOMB_X32_Y15_N16
\u_spi_master_adc|cnt_sclk[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk[4]~13_combout\ = (\u_spi_master_adc|sclk_rise~q\ & (((!\u_spi_master_adc|Equal0~0_combout\ & !\u_spi_master_adc|cnt_sclk\(0))) # (!\u_spi_master_adc|cnt_sclk\(4)))) # (!\u_spi_master_adc|sclk_rise~q\ & 
-- (!\u_spi_master_adc|Equal0~0_combout\ & ((!\u_spi_master_adc|cnt_sclk\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datab => \u_spi_master_adc|Equal0~0_combout\,
	datac => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_spi_master_adc|cnt_sclk[4]~13_combout\);

-- Location: FF_X32_Y15_N1
\u_spi_master_adc|cnt_sclk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|cnt_sclk[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(0));

-- Location: LCCOMB_X32_Y15_N6
\u_spi_master_adc|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal0~1_combout\ = (\u_spi_master_adc|Equal0~0_combout\) # (\u_spi_master_adc|cnt_sclk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|Equal0~0_combout\,
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_spi_master_adc|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y15_N8
\u_spi_master_adc|cnt_sclk[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk[4]~17_combout\ = (\u_spi_master_adc|cnt_sclk\(4) & (((\u_spi_master_adc|Equal0~1_combout\)))) # (!\u_spi_master_adc|cnt_sclk\(4) & (\u_spi_master_adc|Add1~8_combout\ & ((\u_spi_master_adc|sclk_rise~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|Add1~8_combout\,
	datab => \u_spi_master_adc|Equal0~1_combout\,
	datac => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|sclk_rise~q\,
	combout => \u_spi_master_adc|cnt_sclk[4]~17_combout\);

-- Location: FF_X32_Y15_N9
\u_spi_master_adc|cnt_sclk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk[4]~17_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(4));

-- Location: LCCOMB_X32_Y15_N20
\u_spi_master_adc|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~2_combout\ = (\u_spi_master_adc|cnt_sclk\(1) & (!\u_spi_master_adc|Add1~1\)) # (!\u_spi_master_adc|cnt_sclk\(1) & ((\u_spi_master_adc|Add1~1\) # (GND)))
-- \u_spi_master_adc|Add1~3\ = CARRY((!\u_spi_master_adc|Add1~1\) # (!\u_spi_master_adc|cnt_sclk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(1),
	datad => VCC,
	cin => \u_spi_master_adc|Add1~1\,
	combout => \u_spi_master_adc|Add1~2_combout\,
	cout => \u_spi_master_adc|Add1~3\);

-- Location: LCCOMB_X32_Y15_N14
\u_spi_master_adc|cnt_sclk~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~16_combout\ = (\u_spi_master_adc|Add1~2_combout\ & (!\u_spi_master_adc|cnt_sclk\(4) & \u_spi_master_adc|sclk_rise~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|Add1~2_combout\,
	datac => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|sclk_rise~q\,
	combout => \u_spi_master_adc|cnt_sclk~16_combout\);

-- Location: FF_X32_Y15_N15
\u_spi_master_adc|cnt_sclk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|cnt_sclk[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(1));

-- Location: LCCOMB_X32_Y15_N22
\u_spi_master_adc|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~4_combout\ = (\u_spi_master_adc|cnt_sclk\(2) & (\u_spi_master_adc|Add1~3\ $ (GND))) # (!\u_spi_master_adc|cnt_sclk\(2) & (!\u_spi_master_adc|Add1~3\ & VCC))
-- \u_spi_master_adc|Add1~5\ = CARRY((\u_spi_master_adc|cnt_sclk\(2) & !\u_spi_master_adc|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(2),
	datad => VCC,
	cin => \u_spi_master_adc|Add1~3\,
	combout => \u_spi_master_adc|Add1~4_combout\,
	cout => \u_spi_master_adc|Add1~5\);

-- Location: LCCOMB_X32_Y15_N28
\u_spi_master_adc|cnt_sclk~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~15_combout\ = (!\u_spi_master_adc|cnt_sclk\(4) & (\u_spi_master_adc|Add1~4_combout\ & \u_spi_master_adc|sclk_rise~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datac => \u_spi_master_adc|Add1~4_combout\,
	datad => \u_spi_master_adc|sclk_rise~q\,
	combout => \u_spi_master_adc|cnt_sclk~15_combout\);

-- Location: FF_X32_Y15_N29
\u_spi_master_adc|cnt_sclk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|cnt_sclk[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(2));

-- Location: LCCOMB_X32_Y15_N10
\u_spi_master_adc|cnt_sclk~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~14_combout\ = (\u_spi_master_adc|Add1~6_combout\ & (!\u_spi_master_adc|cnt_sclk\(4) & \u_spi_master_adc|sclk_rise~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|Add1~6_combout\,
	datac => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|sclk_rise~q\,
	combout => \u_spi_master_adc|cnt_sclk~14_combout\);

-- Location: FF_X32_Y15_N11
\u_spi_master_adc|cnt_sclk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|cnt_sclk[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(3));

-- Location: LCCOMB_X32_Y15_N2
\u_spi_master_adc|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal0~0_combout\ = (\u_spi_master_adc|cnt_sclk\(3)) # (((\u_spi_master_adc|cnt_sclk\(1)) # (\u_spi_master_adc|cnt_sclk\(2))) # (!\u_spi_master_adc|cnt_sclk\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(3),
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datac => \u_spi_master_adc|cnt_sclk\(1),
	datad => \u_spi_master_adc|cnt_sclk\(2),
	combout => \u_spi_master_adc|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\push_spi_start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_spi_start,
	o => \push_spi_start~input_o\);

-- Location: LCCOMB_X30_Y21_N28
\u_spi_master_adc|n_start_0d1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|n_start_0d1~0_combout\ = !\push_spi_start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \push_spi_start~input_o\,
	combout => \u_spi_master_adc|n_start_0d1~0_combout\);

-- Location: FF_X30_Y21_N29
\u_spi_master_adc|n_start_0d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|n_start_0d1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|n_start_0d1~q\);

-- Location: LCCOMB_X30_Y21_N12
\u_spi_master_adc|n_start_0d2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|n_start_0d2~feeder_combout\ = \u_spi_master_adc|n_start_0d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|n_start_0d1~q\,
	combout => \u_spi_master_adc|n_start_0d2~feeder_combout\);

-- Location: FF_X30_Y21_N13
\u_spi_master_adc|n_start_0d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|n_start_0d2~feeder_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|n_start_0d2~q\);

-- Location: LCCOMB_X30_Y21_N6
\u_spi_master_adc|w_n_start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|w_n_start~0_combout\ = (!\u_spi_master_adc|n_start_0d2~q\ & \u_spi_master_adc|n_start_0d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|n_start_0d2~q\,
	datad => \u_spi_master_adc|n_start_0d1~q\,
	combout => \u_spi_master_adc|w_n_start~0_combout\);

-- Location: FF_X30_Y21_N7
\u_spi_master_adc|w_n_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|w_n_start~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|w_n_start~q\);

-- Location: LCCOMB_X30_Y21_N0
\u_spi_master_adc|cs_n~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cs_n~0_combout\ = (\u_spi_master_adc|w_n_start~q\) # ((\u_spi_master_adc|cs_n~q\ & ((\u_spi_master_adc|Equal0~0_combout\) # (\u_spi_master_adc|cnt_sclk\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|Equal0~0_combout\,
	datab => \u_spi_master_adc|cnt_sclk\(0),
	datac => \u_spi_master_adc|cs_n~q\,
	datad => \u_spi_master_adc|w_n_start~q\,
	combout => \u_spi_master_adc|cs_n~0_combout\);

-- Location: FF_X30_Y21_N1
\u_spi_master_adc|cs_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cs_n~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cs_n~q\);

-- Location: LCCOMB_X30_Y21_N2
\u_spi_master_adc|cnt[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[4]~6_combout\ = (\u_spi_master_adc|cnt[4]~4_combout\ & \u_spi_master_adc|cs_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|cnt[4]~4_combout\,
	datad => \u_spi_master_adc|cs_n~q\,
	combout => \u_spi_master_adc|cnt[4]~6_combout\);

-- Location: LCCOMB_X26_Y19_N28
\u_spi_master_adc|cnt[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[0]~9_combout\ = (\u_spi_master_adc|cnt[0]~5_combout\ & ((\u_spi_master_adc|cnt\(0)) # ((\u_spi_master_adc|Add0~0_combout\ & \u_spi_master_adc|cnt[4]~6_combout\)))) # (!\u_spi_master_adc|cnt[0]~5_combout\ & 
-- (\u_spi_master_adc|Add0~0_combout\ & ((\u_spi_master_adc|cnt[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[0]~5_combout\,
	datab => \u_spi_master_adc|Add0~0_combout\,
	datac => \u_spi_master_adc|cnt\(0),
	datad => \u_spi_master_adc|cnt[4]~6_combout\,
	combout => \u_spi_master_adc|cnt[0]~9_combout\);

-- Location: FF_X26_Y19_N29
\u_spi_master_adc|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[0]~9_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(0));

-- Location: LCCOMB_X26_Y19_N16
\u_spi_master_adc|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~2_combout\ = (\u_spi_master_adc|cnt\(1) & (!\u_spi_master_adc|Add0~1\)) # (!\u_spi_master_adc|cnt\(1) & ((\u_spi_master_adc|Add0~1\) # (GND)))
-- \u_spi_master_adc|Add0~3\ = CARRY((!\u_spi_master_adc|Add0~1\) # (!\u_spi_master_adc|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt\(1),
	datad => VCC,
	cin => \u_spi_master_adc|Add0~1\,
	combout => \u_spi_master_adc|Add0~2_combout\,
	cout => \u_spi_master_adc|Add0~3\);

-- Location: LCCOMB_X26_Y19_N18
\u_spi_master_adc|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~4_combout\ = (\u_spi_master_adc|cnt\(2) & (\u_spi_master_adc|Add0~3\ $ (GND))) # (!\u_spi_master_adc|cnt\(2) & (!\u_spi_master_adc|Add0~3\ & VCC))
-- \u_spi_master_adc|Add0~5\ = CARRY((\u_spi_master_adc|cnt\(2) & !\u_spi_master_adc|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(2),
	datad => VCC,
	cin => \u_spi_master_adc|Add0~3\,
	combout => \u_spi_master_adc|Add0~4_combout\,
	cout => \u_spi_master_adc|Add0~5\);

-- Location: LCCOMB_X26_Y19_N30
\u_spi_master_adc|cnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[2]~7_combout\ = (\u_spi_master_adc|cnt[0]~5_combout\ & ((\u_spi_master_adc|cnt\(2)) # ((\u_spi_master_adc|Add0~4_combout\ & \u_spi_master_adc|cnt[4]~6_combout\)))) # (!\u_spi_master_adc|cnt[0]~5_combout\ & 
-- (\u_spi_master_adc|Add0~4_combout\ & ((\u_spi_master_adc|cnt[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[0]~5_combout\,
	datab => \u_spi_master_adc|Add0~4_combout\,
	datac => \u_spi_master_adc|cnt\(2),
	datad => \u_spi_master_adc|cnt[4]~6_combout\,
	combout => \u_spi_master_adc|cnt[2]~7_combout\);

-- Location: FF_X26_Y19_N31
\u_spi_master_adc|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[2]~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(2));

-- Location: LCCOMB_X26_Y19_N20
\u_spi_master_adc|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~6_combout\ = (\u_spi_master_adc|cnt\(3) & (!\u_spi_master_adc|Add0~5\)) # (!\u_spi_master_adc|cnt\(3) & ((\u_spi_master_adc|Add0~5\) # (GND)))
-- \u_spi_master_adc|Add0~7\ = CARRY((!\u_spi_master_adc|Add0~5\) # (!\u_spi_master_adc|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt\(3),
	datad => VCC,
	cin => \u_spi_master_adc|Add0~5\,
	combout => \u_spi_master_adc|Add0~6_combout\,
	cout => \u_spi_master_adc|Add0~7\);

-- Location: LCCOMB_X26_Y19_N2
\u_spi_master_adc|cnt[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[3]~10_combout\ = (\u_spi_master_adc|cnt[0]~5_combout\) # ((\u_spi_master_adc|cnt[4]~4_combout\ & (\u_spi_master_adc|Add0~6_combout\ & \u_spi_master_adc|cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[4]~4_combout\,
	datab => \u_spi_master_adc|Add0~6_combout\,
	datac => \u_spi_master_adc|cnt[0]~5_combout\,
	datad => \u_spi_master_adc|cs_n~q\,
	combout => \u_spi_master_adc|cnt[3]~10_combout\);

-- Location: FF_X26_Y19_N3
\u_spi_master_adc|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[3]~10_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(3));

-- Location: LCCOMB_X26_Y19_N22
\u_spi_master_adc|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~8_combout\ = \u_spi_master_adc|Add0~7\ $ (!\u_spi_master_adc|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|cnt\(4),
	cin => \u_spi_master_adc|Add0~7\,
	combout => \u_spi_master_adc|Add0~8_combout\);

-- Location: LCCOMB_X26_Y19_N12
\u_spi_master_adc|cnt[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[4]~11_combout\ = (\u_spi_master_adc|cnt[0]~5_combout\) # ((\u_spi_master_adc|cnt[4]~4_combout\ & (\u_spi_master_adc|Add0~8_combout\ & \u_spi_master_adc|cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[4]~4_combout\,
	datab => \u_spi_master_adc|cnt[0]~5_combout\,
	datac => \u_spi_master_adc|Add0~8_combout\,
	datad => \u_spi_master_adc|cs_n~q\,
	combout => \u_spi_master_adc|cnt[4]~11_combout\);

-- Location: FF_X26_Y19_N13
\u_spi_master_adc|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[4]~11_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(4));

-- Location: LCCOMB_X26_Y19_N10
\u_spi_master_adc|cnt[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[4]~4_combout\ = (((!\u_spi_master_adc|cnt\(1) & !\u_spi_master_adc|cnt\(2))) # (!\u_spi_master_adc|cnt\(3))) # (!\u_spi_master_adc|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(1),
	datac => \u_spi_master_adc|cnt\(2),
	datad => \u_spi_master_adc|cnt\(3),
	combout => \u_spi_master_adc|cnt[4]~4_combout\);

-- Location: LCCOMB_X26_Y19_N0
\u_spi_master_adc|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal1~0_combout\ = (((\u_spi_master_adc|cnt\(2)) # (!\u_spi_master_adc|cnt\(3))) # (!\u_spi_master_adc|cnt\(1))) # (!\u_spi_master_adc|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(1),
	datac => \u_spi_master_adc|cnt\(2),
	datad => \u_spi_master_adc|cnt\(3),
	combout => \u_spi_master_adc|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y19_N4
\u_spi_master_adc|cnt[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[0]~5_combout\ = (!\u_spi_master_adc|cnt[4]~4_combout\ & (\u_spi_master_adc|cs_n~q\ & ((\u_spi_master_adc|Equal1~0_combout\) # (\u_spi_master_adc|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[4]~4_combout\,
	datab => \u_spi_master_adc|Equal1~0_combout\,
	datac => \u_spi_master_adc|cnt\(0),
	datad => \u_spi_master_adc|cs_n~q\,
	combout => \u_spi_master_adc|cnt[0]~5_combout\);

-- Location: LCCOMB_X26_Y19_N24
\u_spi_master_adc|cnt[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[1]~8_combout\ = (\u_spi_master_adc|cnt[0]~5_combout\ & ((\u_spi_master_adc|cnt\(1)) # ((\u_spi_master_adc|Add0~2_combout\ & \u_spi_master_adc|cnt[4]~6_combout\)))) # (!\u_spi_master_adc|cnt[0]~5_combout\ & 
-- (\u_spi_master_adc|Add0~2_combout\ & ((\u_spi_master_adc|cnt[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[0]~5_combout\,
	datab => \u_spi_master_adc|Add0~2_combout\,
	datac => \u_spi_master_adc|cnt\(1),
	datad => \u_spi_master_adc|cnt[4]~6_combout\,
	combout => \u_spi_master_adc|cnt[1]~8_combout\);

-- Location: FF_X26_Y19_N25
\u_spi_master_adc|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[1]~8_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(1));

-- Location: LCCOMB_X26_Y19_N26
\u_spi_master_adc|sclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|sclk~0_combout\ = (\u_spi_master_adc|cnt\(2)) # ((\u_spi_master_adc|cnt\(1) & \u_spi_master_adc|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt\(1),
	datac => \u_spi_master_adc|cnt\(2),
	datad => \u_spi_master_adc|cnt\(4),
	combout => \u_spi_master_adc|sclk~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\u_spi_master_adc|sclk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|sclk~1_combout\ = (\u_spi_master_adc|sclk~0_combout\ & ((\u_spi_master_adc|cnt\(3) & ((\u_spi_master_adc|sclk~q\) # (!\u_spi_master_adc|cnt\(4)))) # (!\u_spi_master_adc|cnt\(3) & ((\u_spi_master_adc|cnt\(4)))))) # 
-- (!\u_spi_master_adc|sclk~0_combout\ & (((\u_spi_master_adc|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk~0_combout\,
	datab => \u_spi_master_adc|cnt\(3),
	datac => \u_spi_master_adc|sclk~q\,
	datad => \u_spi_master_adc|cnt\(4),
	combout => \u_spi_master_adc|sclk~1_combout\);

-- Location: FF_X26_Y19_N9
\u_spi_master_adc|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|sclk~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|sclk~q\);

-- Location: IOIBUF_X14_Y0_N8
\sdata~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdata,
	o => \sdata~input_o\);

-- Location: LCCOMB_X32_Y15_N30
\u_spi_master_adc|data_buffer[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[0]~3_combout\ = (\u_spi_master_adc|cnt_sclk\(2)) # ((\u_spi_master_adc|cnt_sclk\(1) & \u_spi_master_adc|cnt_sclk\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(2),
	datac => \u_spi_master_adc|cnt_sclk\(1),
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_spi_master_adc|data_buffer[0]~3_combout\);

-- Location: LCCOMB_X32_Y15_N4
\u_spi_master_adc|data_buffer[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[0]~12_combout\ = (!\u_spi_master_adc|cnt_sclk\(4) & (\u_spi_master_adc|sclk_rise~q\ & (\u_spi_master_adc|cnt_sclk\(3) $ (\u_spi_master_adc|data_buffer[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(3),
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datac => \u_spi_master_adc|data_buffer[0]~3_combout\,
	datad => \u_spi_master_adc|sclk_rise~q\,
	combout => \u_spi_master_adc|data_buffer[0]~12_combout\);

-- Location: FF_X15_Y21_N1
\u_spi_master_adc|data_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sdata~input_o\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(0));

-- Location: LCCOMB_X15_Y21_N16
\u_Controller|led_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[0]~1_combout\ = !\u_spi_master_adc|data_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(0),
	combout => \u_Controller|led_out[0]~1_combout\);

-- Location: IOIBUF_X0_Y21_N8
\bt_setting~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt_setting,
	o => \bt_setting~input_o\);

-- Location: LCCOMB_X29_Y19_N6
\d_setting~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d_setting~0_combout\ = !\bt_setting~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bt_setting~input_o\,
	combout => \d_setting~0_combout\);

-- Location: FF_X29_Y19_N7
d_setting : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_setting~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_setting~q\);

-- Location: FF_X29_Y19_N25
d2_setting : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_setting~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2_setting~q\);

-- Location: LCCOMB_X29_Y19_N24
w_bt_setting : cycloneiii_lcell_comb
-- Equation(s):
-- \w_bt_setting~combout\ = (!\d2_setting~q\ & \d_setting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2_setting~q\,
	datad => \d_setting~q\,
	combout => \w_bt_setting~combout\);

-- Location: LCCOMB_X30_Y21_N4
\u_Controller|n_state.FND2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|n_state.FND2~0_combout\ = (\u_Controller|c_state.LIGHT_READ_2~q\ & (!\u_spi_master_adc|Equal0~0_combout\ & !\u_spi_master_adc|cnt_sclk\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|c_state.LIGHT_READ_2~q\,
	datac => \u_spi_master_adc|Equal0~0_combout\,
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_Controller|n_state.FND2~0_combout\);

-- Location: FF_X30_Y21_N5
\u_Controller|c_state.FND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|n_state.FND2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.FND2~q\);

-- Location: LCCOMB_X29_Y19_N10
\u_Controller|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector5~0_combout\ = (\u_Controller|c_state.FND2~q\) # ((\u_Controller|c_state.SETTING_2~q\ & ((\d2_setting~q\) # (!\d_setting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_setting~q\,
	datab => \d2_setting~q\,
	datac => \u_Controller|c_state.SETTING_2~q\,
	datad => \u_Controller|c_state.FND2~q\,
	combout => \u_Controller|Selector5~0_combout\);

-- Location: FF_X29_Y19_N11
\u_Controller|c_state.SETTING_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector5~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.SETTING_2~q\);

-- Location: LCCOMB_X30_Y14_N6
\u_Controller|sec_counter[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[0]~29_combout\ = \u_Controller|sec_counter\(0) $ (VCC)
-- \u_Controller|sec_counter[0]~30\ = CARRY(\u_Controller|sec_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(0),
	datad => VCC,
	combout => \u_Controller|sec_counter[0]~29_combout\,
	cout => \u_Controller|sec_counter[0]~30\);

-- Location: FF_X30_Y14_N7
\u_Controller|sec_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[0]~29_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(0));

-- Location: LCCOMB_X30_Y14_N8
\u_Controller|sec_counter[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[1]~31_combout\ = (\u_Controller|sec_counter\(1) & (!\u_Controller|sec_counter[0]~30\)) # (!\u_Controller|sec_counter\(1) & ((\u_Controller|sec_counter[0]~30\) # (GND)))
-- \u_Controller|sec_counter[1]~32\ = CARRY((!\u_Controller|sec_counter[0]~30\) # (!\u_Controller|sec_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(1),
	datad => VCC,
	cin => \u_Controller|sec_counter[0]~30\,
	combout => \u_Controller|sec_counter[1]~31_combout\,
	cout => \u_Controller|sec_counter[1]~32\);

-- Location: FF_X30_Y14_N9
\u_Controller|sec_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[1]~31_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(1));

-- Location: LCCOMB_X30_Y14_N10
\u_Controller|sec_counter[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[2]~33_combout\ = (\u_Controller|sec_counter\(2) & (\u_Controller|sec_counter[1]~32\ $ (GND))) # (!\u_Controller|sec_counter\(2) & (!\u_Controller|sec_counter[1]~32\ & VCC))
-- \u_Controller|sec_counter[2]~34\ = CARRY((\u_Controller|sec_counter\(2) & !\u_Controller|sec_counter[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(2),
	datad => VCC,
	cin => \u_Controller|sec_counter[1]~32\,
	combout => \u_Controller|sec_counter[2]~33_combout\,
	cout => \u_Controller|sec_counter[2]~34\);

-- Location: FF_X30_Y14_N11
\u_Controller|sec_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[2]~33_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(2));

-- Location: LCCOMB_X30_Y14_N12
\u_Controller|sec_counter[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[3]~35_combout\ = (\u_Controller|sec_counter\(3) & (!\u_Controller|sec_counter[2]~34\)) # (!\u_Controller|sec_counter\(3) & ((\u_Controller|sec_counter[2]~34\) # (GND)))
-- \u_Controller|sec_counter[3]~36\ = CARRY((!\u_Controller|sec_counter[2]~34\) # (!\u_Controller|sec_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(3),
	datad => VCC,
	cin => \u_Controller|sec_counter[2]~34\,
	combout => \u_Controller|sec_counter[3]~35_combout\,
	cout => \u_Controller|sec_counter[3]~36\);

-- Location: FF_X30_Y14_N13
\u_Controller|sec_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[3]~35_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(3));

-- Location: LCCOMB_X30_Y14_N14
\u_Controller|sec_counter[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[4]~37_combout\ = (\u_Controller|sec_counter\(4) & (\u_Controller|sec_counter[3]~36\ $ (GND))) # (!\u_Controller|sec_counter\(4) & (!\u_Controller|sec_counter[3]~36\ & VCC))
-- \u_Controller|sec_counter[4]~38\ = CARRY((\u_Controller|sec_counter\(4) & !\u_Controller|sec_counter[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(4),
	datad => VCC,
	cin => \u_Controller|sec_counter[3]~36\,
	combout => \u_Controller|sec_counter[4]~37_combout\,
	cout => \u_Controller|sec_counter[4]~38\);

-- Location: FF_X30_Y14_N15
\u_Controller|sec_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[4]~37_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(4));

-- Location: LCCOMB_X30_Y14_N16
\u_Controller|sec_counter[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[5]~39_combout\ = (\u_Controller|sec_counter\(5) & (!\u_Controller|sec_counter[4]~38\)) # (!\u_Controller|sec_counter\(5) & ((\u_Controller|sec_counter[4]~38\) # (GND)))
-- \u_Controller|sec_counter[5]~40\ = CARRY((!\u_Controller|sec_counter[4]~38\) # (!\u_Controller|sec_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(5),
	datad => VCC,
	cin => \u_Controller|sec_counter[4]~38\,
	combout => \u_Controller|sec_counter[5]~39_combout\,
	cout => \u_Controller|sec_counter[5]~40\);

-- Location: FF_X30_Y14_N17
\u_Controller|sec_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[5]~39_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(5));

-- Location: LCCOMB_X30_Y14_N18
\u_Controller|sec_counter[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[6]~41_combout\ = (\u_Controller|sec_counter\(6) & (\u_Controller|sec_counter[5]~40\ $ (GND))) # (!\u_Controller|sec_counter\(6) & (!\u_Controller|sec_counter[5]~40\ & VCC))
-- \u_Controller|sec_counter[6]~42\ = CARRY((\u_Controller|sec_counter\(6) & !\u_Controller|sec_counter[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(6),
	datad => VCC,
	cin => \u_Controller|sec_counter[5]~40\,
	combout => \u_Controller|sec_counter[6]~41_combout\,
	cout => \u_Controller|sec_counter[6]~42\);

-- Location: FF_X30_Y14_N19
\u_Controller|sec_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[6]~41_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(6));

-- Location: LCCOMB_X30_Y14_N20
\u_Controller|sec_counter[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[7]~43_combout\ = (\u_Controller|sec_counter\(7) & (!\u_Controller|sec_counter[6]~42\)) # (!\u_Controller|sec_counter\(7) & ((\u_Controller|sec_counter[6]~42\) # (GND)))
-- \u_Controller|sec_counter[7]~44\ = CARRY((!\u_Controller|sec_counter[6]~42\) # (!\u_Controller|sec_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(7),
	datad => VCC,
	cin => \u_Controller|sec_counter[6]~42\,
	combout => \u_Controller|sec_counter[7]~43_combout\,
	cout => \u_Controller|sec_counter[7]~44\);

-- Location: FF_X30_Y14_N21
\u_Controller|sec_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[7]~43_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(7));

-- Location: LCCOMB_X30_Y14_N22
\u_Controller|sec_counter[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[8]~45_combout\ = (\u_Controller|sec_counter\(8) & (\u_Controller|sec_counter[7]~44\ $ (GND))) # (!\u_Controller|sec_counter\(8) & (!\u_Controller|sec_counter[7]~44\ & VCC))
-- \u_Controller|sec_counter[8]~46\ = CARRY((\u_Controller|sec_counter\(8) & !\u_Controller|sec_counter[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(8),
	datad => VCC,
	cin => \u_Controller|sec_counter[7]~44\,
	combout => \u_Controller|sec_counter[8]~45_combout\,
	cout => \u_Controller|sec_counter[8]~46\);

-- Location: FF_X30_Y14_N23
\u_Controller|sec_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[8]~45_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(8));

-- Location: LCCOMB_X30_Y14_N24
\u_Controller|sec_counter[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[9]~47_combout\ = (\u_Controller|sec_counter\(9) & (!\u_Controller|sec_counter[8]~46\)) # (!\u_Controller|sec_counter\(9) & ((\u_Controller|sec_counter[8]~46\) # (GND)))
-- \u_Controller|sec_counter[9]~48\ = CARRY((!\u_Controller|sec_counter[8]~46\) # (!\u_Controller|sec_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(9),
	datad => VCC,
	cin => \u_Controller|sec_counter[8]~46\,
	combout => \u_Controller|sec_counter[9]~47_combout\,
	cout => \u_Controller|sec_counter[9]~48\);

-- Location: FF_X30_Y14_N25
\u_Controller|sec_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[9]~47_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(9));

-- Location: LCCOMB_X30_Y14_N26
\u_Controller|sec_counter[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[10]~49_combout\ = (\u_Controller|sec_counter\(10) & (\u_Controller|sec_counter[9]~48\ $ (GND))) # (!\u_Controller|sec_counter\(10) & (!\u_Controller|sec_counter[9]~48\ & VCC))
-- \u_Controller|sec_counter[10]~50\ = CARRY((\u_Controller|sec_counter\(10) & !\u_Controller|sec_counter[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(10),
	datad => VCC,
	cin => \u_Controller|sec_counter[9]~48\,
	combout => \u_Controller|sec_counter[10]~49_combout\,
	cout => \u_Controller|sec_counter[10]~50\);

-- Location: FF_X30_Y14_N27
\u_Controller|sec_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[10]~49_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(10));

-- Location: LCCOMB_X30_Y14_N28
\u_Controller|sec_counter[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[11]~51_combout\ = (\u_Controller|sec_counter\(11) & (!\u_Controller|sec_counter[10]~50\)) # (!\u_Controller|sec_counter\(11) & ((\u_Controller|sec_counter[10]~50\) # (GND)))
-- \u_Controller|sec_counter[11]~52\ = CARRY((!\u_Controller|sec_counter[10]~50\) # (!\u_Controller|sec_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(11),
	datad => VCC,
	cin => \u_Controller|sec_counter[10]~50\,
	combout => \u_Controller|sec_counter[11]~51_combout\,
	cout => \u_Controller|sec_counter[11]~52\);

-- Location: FF_X30_Y14_N29
\u_Controller|sec_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[11]~51_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(11));

-- Location: LCCOMB_X30_Y14_N30
\u_Controller|sec_counter[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[12]~53_combout\ = (\u_Controller|sec_counter\(12) & (\u_Controller|sec_counter[11]~52\ $ (GND))) # (!\u_Controller|sec_counter\(12) & (!\u_Controller|sec_counter[11]~52\ & VCC))
-- \u_Controller|sec_counter[12]~54\ = CARRY((\u_Controller|sec_counter\(12) & !\u_Controller|sec_counter[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(12),
	datad => VCC,
	cin => \u_Controller|sec_counter[11]~52\,
	combout => \u_Controller|sec_counter[12]~53_combout\,
	cout => \u_Controller|sec_counter[12]~54\);

-- Location: FF_X30_Y14_N31
\u_Controller|sec_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[12]~53_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(12));

-- Location: LCCOMB_X30_Y13_N0
\u_Controller|sec_counter[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[13]~55_combout\ = (\u_Controller|sec_counter\(13) & (!\u_Controller|sec_counter[12]~54\)) # (!\u_Controller|sec_counter\(13) & ((\u_Controller|sec_counter[12]~54\) # (GND)))
-- \u_Controller|sec_counter[13]~56\ = CARRY((!\u_Controller|sec_counter[12]~54\) # (!\u_Controller|sec_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(13),
	datad => VCC,
	cin => \u_Controller|sec_counter[12]~54\,
	combout => \u_Controller|sec_counter[13]~55_combout\,
	cout => \u_Controller|sec_counter[13]~56\);

-- Location: FF_X30_Y13_N1
\u_Controller|sec_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[13]~55_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(13));

-- Location: LCCOMB_X30_Y13_N2
\u_Controller|sec_counter[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[14]~57_combout\ = (\u_Controller|sec_counter\(14) & (\u_Controller|sec_counter[13]~56\ $ (GND))) # (!\u_Controller|sec_counter\(14) & (!\u_Controller|sec_counter[13]~56\ & VCC))
-- \u_Controller|sec_counter[14]~58\ = CARRY((\u_Controller|sec_counter\(14) & !\u_Controller|sec_counter[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(14),
	datad => VCC,
	cin => \u_Controller|sec_counter[13]~56\,
	combout => \u_Controller|sec_counter[14]~57_combout\,
	cout => \u_Controller|sec_counter[14]~58\);

-- Location: FF_X30_Y13_N3
\u_Controller|sec_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[14]~57_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(14));

-- Location: LCCOMB_X30_Y13_N4
\u_Controller|sec_counter[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[15]~59_combout\ = (\u_Controller|sec_counter\(15) & (!\u_Controller|sec_counter[14]~58\)) # (!\u_Controller|sec_counter\(15) & ((\u_Controller|sec_counter[14]~58\) # (GND)))
-- \u_Controller|sec_counter[15]~60\ = CARRY((!\u_Controller|sec_counter[14]~58\) # (!\u_Controller|sec_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(15),
	datad => VCC,
	cin => \u_Controller|sec_counter[14]~58\,
	combout => \u_Controller|sec_counter[15]~59_combout\,
	cout => \u_Controller|sec_counter[15]~60\);

-- Location: FF_X30_Y13_N5
\u_Controller|sec_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[15]~59_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(15));

-- Location: LCCOMB_X30_Y13_N6
\u_Controller|sec_counter[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[16]~61_combout\ = (\u_Controller|sec_counter\(16) & (\u_Controller|sec_counter[15]~60\ $ (GND))) # (!\u_Controller|sec_counter\(16) & (!\u_Controller|sec_counter[15]~60\ & VCC))
-- \u_Controller|sec_counter[16]~62\ = CARRY((\u_Controller|sec_counter\(16) & !\u_Controller|sec_counter[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(16),
	datad => VCC,
	cin => \u_Controller|sec_counter[15]~60\,
	combout => \u_Controller|sec_counter[16]~61_combout\,
	cout => \u_Controller|sec_counter[16]~62\);

-- Location: FF_X30_Y13_N7
\u_Controller|sec_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[16]~61_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(16));

-- Location: LCCOMB_X30_Y13_N8
\u_Controller|sec_counter[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[17]~63_combout\ = (\u_Controller|sec_counter\(17) & (!\u_Controller|sec_counter[16]~62\)) # (!\u_Controller|sec_counter\(17) & ((\u_Controller|sec_counter[16]~62\) # (GND)))
-- \u_Controller|sec_counter[17]~64\ = CARRY((!\u_Controller|sec_counter[16]~62\) # (!\u_Controller|sec_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(17),
	datad => VCC,
	cin => \u_Controller|sec_counter[16]~62\,
	combout => \u_Controller|sec_counter[17]~63_combout\,
	cout => \u_Controller|sec_counter[17]~64\);

-- Location: FF_X30_Y13_N9
\u_Controller|sec_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[17]~63_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(17));

-- Location: LCCOMB_X30_Y13_N10
\u_Controller|sec_counter[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[18]~65_combout\ = (\u_Controller|sec_counter\(18) & (\u_Controller|sec_counter[17]~64\ $ (GND))) # (!\u_Controller|sec_counter\(18) & (!\u_Controller|sec_counter[17]~64\ & VCC))
-- \u_Controller|sec_counter[18]~66\ = CARRY((\u_Controller|sec_counter\(18) & !\u_Controller|sec_counter[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(18),
	datad => VCC,
	cin => \u_Controller|sec_counter[17]~64\,
	combout => \u_Controller|sec_counter[18]~65_combout\,
	cout => \u_Controller|sec_counter[18]~66\);

-- Location: FF_X30_Y13_N11
\u_Controller|sec_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[18]~65_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(18));

-- Location: LCCOMB_X30_Y13_N12
\u_Controller|sec_counter[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[19]~67_combout\ = (\u_Controller|sec_counter\(19) & (!\u_Controller|sec_counter[18]~66\)) # (!\u_Controller|sec_counter\(19) & ((\u_Controller|sec_counter[18]~66\) # (GND)))
-- \u_Controller|sec_counter[19]~68\ = CARRY((!\u_Controller|sec_counter[18]~66\) # (!\u_Controller|sec_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(19),
	datad => VCC,
	cin => \u_Controller|sec_counter[18]~66\,
	combout => \u_Controller|sec_counter[19]~67_combout\,
	cout => \u_Controller|sec_counter[19]~68\);

-- Location: FF_X30_Y13_N13
\u_Controller|sec_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[19]~67_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(19));

-- Location: LCCOMB_X30_Y13_N14
\u_Controller|sec_counter[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[20]~69_combout\ = (\u_Controller|sec_counter\(20) & (\u_Controller|sec_counter[19]~68\ $ (GND))) # (!\u_Controller|sec_counter\(20) & (!\u_Controller|sec_counter[19]~68\ & VCC))
-- \u_Controller|sec_counter[20]~70\ = CARRY((\u_Controller|sec_counter\(20) & !\u_Controller|sec_counter[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(20),
	datad => VCC,
	cin => \u_Controller|sec_counter[19]~68\,
	combout => \u_Controller|sec_counter[20]~69_combout\,
	cout => \u_Controller|sec_counter[20]~70\);

-- Location: FF_X30_Y13_N15
\u_Controller|sec_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[20]~69_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(20));

-- Location: LCCOMB_X30_Y13_N16
\u_Controller|sec_counter[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[21]~71_combout\ = (\u_Controller|sec_counter\(21) & (!\u_Controller|sec_counter[20]~70\)) # (!\u_Controller|sec_counter\(21) & ((\u_Controller|sec_counter[20]~70\) # (GND)))
-- \u_Controller|sec_counter[21]~72\ = CARRY((!\u_Controller|sec_counter[20]~70\) # (!\u_Controller|sec_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(21),
	datad => VCC,
	cin => \u_Controller|sec_counter[20]~70\,
	combout => \u_Controller|sec_counter[21]~71_combout\,
	cout => \u_Controller|sec_counter[21]~72\);

-- Location: FF_X30_Y13_N17
\u_Controller|sec_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[21]~71_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(21));

-- Location: LCCOMB_X30_Y13_N18
\u_Controller|sec_counter[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[22]~73_combout\ = (\u_Controller|sec_counter\(22) & (\u_Controller|sec_counter[21]~72\ $ (GND))) # (!\u_Controller|sec_counter\(22) & (!\u_Controller|sec_counter[21]~72\ & VCC))
-- \u_Controller|sec_counter[22]~74\ = CARRY((\u_Controller|sec_counter\(22) & !\u_Controller|sec_counter[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(22),
	datad => VCC,
	cin => \u_Controller|sec_counter[21]~72\,
	combout => \u_Controller|sec_counter[22]~73_combout\,
	cout => \u_Controller|sec_counter[22]~74\);

-- Location: FF_X30_Y13_N19
\u_Controller|sec_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[22]~73_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(22));

-- Location: LCCOMB_X30_Y13_N20
\u_Controller|sec_counter[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[23]~75_combout\ = (\u_Controller|sec_counter\(23) & (!\u_Controller|sec_counter[22]~74\)) # (!\u_Controller|sec_counter\(23) & ((\u_Controller|sec_counter[22]~74\) # (GND)))
-- \u_Controller|sec_counter[23]~76\ = CARRY((!\u_Controller|sec_counter[22]~74\) # (!\u_Controller|sec_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(23),
	datad => VCC,
	cin => \u_Controller|sec_counter[22]~74\,
	combout => \u_Controller|sec_counter[23]~75_combout\,
	cout => \u_Controller|sec_counter[23]~76\);

-- Location: FF_X30_Y13_N21
\u_Controller|sec_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[23]~75_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(23));

-- Location: LCCOMB_X30_Y13_N22
\u_Controller|sec_counter[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[24]~77_combout\ = (\u_Controller|sec_counter\(24) & (\u_Controller|sec_counter[23]~76\ $ (GND))) # (!\u_Controller|sec_counter\(24) & (!\u_Controller|sec_counter[23]~76\ & VCC))
-- \u_Controller|sec_counter[24]~78\ = CARRY((\u_Controller|sec_counter\(24) & !\u_Controller|sec_counter[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(24),
	datad => VCC,
	cin => \u_Controller|sec_counter[23]~76\,
	combout => \u_Controller|sec_counter[24]~77_combout\,
	cout => \u_Controller|sec_counter[24]~78\);

-- Location: FF_X30_Y13_N23
\u_Controller|sec_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[24]~77_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(24));

-- Location: LCCOMB_X30_Y13_N24
\u_Controller|sec_counter[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[25]~79_combout\ = \u_Controller|sec_counter[24]~78\ $ (\u_Controller|sec_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_Controller|sec_counter\(25),
	cin => \u_Controller|sec_counter[24]~78\,
	combout => \u_Controller|sec_counter[25]~79_combout\);

-- Location: FF_X30_Y13_N25
\u_Controller|sec_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|sec_counter[25]~79_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_Controller|sec_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|sec_counter\(25));

-- Location: LCCOMB_X30_Y20_N4
\u_Controller|sec_counter[21]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[21]~27_combout\ = (!\u_Controller|sec_counter\(25) & ((\u_Controller|c_state.RUNNING_2~q\) # (\u_Controller|c_state.RUNNING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(25),
	datac => \u_Controller|c_state.RUNNING_2~q\,
	datad => \u_Controller|c_state.RUNNING~q\,
	combout => \u_Controller|sec_counter[21]~27_combout\);

-- Location: LCCOMB_X30_Y14_N2
\u_Controller|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~3_combout\ = ((!\u_Controller|sec_counter\(5)) # (!\u_Controller|sec_counter\(4))) # (!\u_Controller|sec_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(6),
	datac => \u_Controller|sec_counter\(4),
	datad => \u_Controller|sec_counter\(5),
	combout => \u_Controller|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y14_N0
\u_Controller|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~2_combout\ = (((!\u_Controller|sec_counter\(0)) # (!\u_Controller|sec_counter\(1))) # (!\u_Controller|sec_counter\(2))) # (!\u_Controller|sec_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(3),
	datab => \u_Controller|sec_counter\(2),
	datac => \u_Controller|sec_counter\(1),
	datad => \u_Controller|sec_counter\(0),
	combout => \u_Controller|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y15_N26
\u_Controller|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~1_combout\ = (!\u_Controller|sec_counter\(11) & (!\u_Controller|sec_counter\(9) & !\u_Controller|sec_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(11),
	datac => \u_Controller|sec_counter\(9),
	datad => \u_Controller|sec_counter\(10),
	combout => \u_Controller|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y15_N0
\u_Controller|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~0_combout\ = (!\u_Controller|sec_counter\(18) & (!\u_Controller|sec_counter\(16) & (!\u_Controller|sec_counter\(8) & !\u_Controller|sec_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(18),
	datab => \u_Controller|sec_counter\(16),
	datac => \u_Controller|sec_counter\(8),
	datad => \u_Controller|sec_counter\(7),
	combout => \u_Controller|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y15_N12
\u_Controller|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~4_combout\ = (\u_Controller|LessThan0~1_combout\ & (\u_Controller|LessThan0~0_combout\ & ((\u_Controller|LessThan0~3_combout\) # (\u_Controller|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|LessThan0~3_combout\,
	datab => \u_Controller|LessThan0~2_combout\,
	datac => \u_Controller|LessThan0~1_combout\,
	datad => \u_Controller|LessThan0~0_combout\,
	combout => \u_Controller|LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y13_N28
\u_Controller|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~6_combout\ = (((!\u_Controller|sec_counter\(13)) # (!\u_Controller|sec_counter\(15))) # (!\u_Controller|sec_counter\(14))) # (!\u_Controller|sec_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(12),
	datab => \u_Controller|sec_counter\(14),
	datac => \u_Controller|sec_counter\(15),
	datad => \u_Controller|sec_counter\(13),
	combout => \u_Controller|LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y13_N30
\u_Controller|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~7_combout\ = (\u_Controller|sec_counter\(18)) # ((\u_Controller|sec_counter\(17) & ((\u_Controller|sec_counter\(16)) # (!\u_Controller|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter\(18),
	datab => \u_Controller|LessThan0~6_combout\,
	datac => \u_Controller|sec_counter\(17),
	datad => \u_Controller|sec_counter\(16),
	combout => \u_Controller|LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y13_N26
\u_Controller|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~5_combout\ = (\u_Controller|sec_counter\(23) & (\u_Controller|sec_counter\(20) & \u_Controller|sec_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(23),
	datac => \u_Controller|sec_counter\(20),
	datad => \u_Controller|sec_counter\(19),
	combout => \u_Controller|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y19_N2
\u_Controller|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan0~8_combout\ = (((!\u_Controller|sec_counter\(21)) # (!\u_Controller|sec_counter\(22))) # (!\u_Controller|LessThan0~5_combout\)) # (!\u_Controller|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|LessThan0~7_combout\,
	datab => \u_Controller|LessThan0~5_combout\,
	datac => \u_Controller|sec_counter\(22),
	datad => \u_Controller|sec_counter\(21),
	combout => \u_Controller|LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y20_N18
\u_Controller|sec_counter[21]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[21]~26_combout\ = (!\u_Controller|sec_counter\(24) & ((\u_Controller|c_state.RUNNING_2~q\) # (\u_Controller|c_state.RUNNING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|sec_counter\(24),
	datac => \u_Controller|c_state.RUNNING_2~q\,
	datad => \u_Controller|c_state.RUNNING~q\,
	combout => \u_Controller|sec_counter[21]~26_combout\);

-- Location: LCCOMB_X30_Y14_N4
\u_Controller|sec_counter[21]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|sec_counter[21]~28_combout\ = (!\u_Controller|sec_counter[21]~27_combout\ & (((!\u_Controller|LessThan0~4_combout\ & !\u_Controller|LessThan0~8_combout\)) # (!\u_Controller|sec_counter[21]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter[21]~27_combout\,
	datab => \u_Controller|LessThan0~4_combout\,
	datac => \u_Controller|LessThan0~8_combout\,
	datad => \u_Controller|sec_counter[21]~26_combout\,
	combout => \u_Controller|sec_counter[21]~28_combout\);

-- Location: LCCOMB_X30_Y20_N16
\u_Controller|runnig_time[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|runnig_time[2]~4_combout\ = (\u_Controller|c_state.RUNNING~q\ & (((\u_Controller|runnig_time\(0)) # (\u_Controller|runnig_time\(2))))) # (!\u_Controller|c_state.RUNNING~q\ & (\u_Controller|c_state.RUNNING_2~q\ & 
-- ((\u_Controller|runnig_time\(0)) # (\u_Controller|runnig_time\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|c_state.RUNNING~q\,
	datab => \u_Controller|c_state.RUNNING_2~q\,
	datac => \u_Controller|runnig_time\(0),
	datad => \u_Controller|runnig_time\(2),
	combout => \u_Controller|runnig_time[2]~4_combout\);

-- Location: LCCOMB_X30_Y20_N2
\u_Controller|runnig_time~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|runnig_time~2_combout\ = (\u_Controller|c_state.RUNNING_2~q\ & (\u_Controller|runnig_time\(0) $ ((\u_Controller|runnig_time\(1))))) # (!\u_Controller|c_state.RUNNING_2~q\ & (\u_Controller|c_state.RUNNING~q\ & (\u_Controller|runnig_time\(0) $ 
-- (\u_Controller|runnig_time\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|runnig_time\(0),
	datab => \u_Controller|c_state.RUNNING_2~q\,
	datac => \u_Controller|runnig_time\(1),
	datad => \u_Controller|c_state.RUNNING~q\,
	combout => \u_Controller|runnig_time~2_combout\);

-- Location: LCCOMB_X30_Y20_N26
\u_Controller|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|LessThan1~0_combout\ = (\u_Controller|runnig_time\(2) & ((\u_Controller|runnig_time\(0)) # (\u_Controller|runnig_time\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|runnig_time\(2),
	datac => \u_Controller|runnig_time\(0),
	datad => \u_Controller|runnig_time\(1),
	combout => \u_Controller|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\u_Controller|runnig_time[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|runnig_time[3]~7_combout\ = (\u_Controller|LessThan1~0_combout\ & (((\u_Controller|c_state.RUNNING_2~q\) # (\u_Controller|c_state.RUNNING~q\)))) # (!\u_Controller|LessThan1~0_combout\ & (!\u_Controller|sec_counter\(25) & 
-- ((\u_Controller|c_state.RUNNING_2~q\) # (\u_Controller|c_state.RUNNING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|LessThan1~0_combout\,
	datab => \u_Controller|sec_counter\(25),
	datac => \u_Controller|c_state.RUNNING_2~q\,
	datad => \u_Controller|c_state.RUNNING~q\,
	combout => \u_Controller|runnig_time[3]~7_combout\);

-- Location: LCCOMB_X30_Y20_N22
\u_Controller|runnig_time[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|runnig_time[3]~3_combout\ = (!\u_Controller|runnig_time[3]~7_combout\ & (((!\u_Controller|LessThan0~4_combout\ & !\u_Controller|LessThan0~8_combout\)) # (!\u_Controller|sec_counter[21]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter[21]~26_combout\,
	datab => \u_Controller|LessThan0~4_combout\,
	datac => \u_Controller|LessThan0~8_combout\,
	datad => \u_Controller|runnig_time[3]~7_combout\,
	combout => \u_Controller|runnig_time[3]~3_combout\);

-- Location: FF_X30_Y20_N3
\u_Controller|runnig_time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|runnig_time~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|runnig_time[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|runnig_time\(1));

-- Location: LCCOMB_X30_Y20_N20
\u_Controller|runnig_time[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|runnig_time[2]~5_combout\ = (\u_Controller|sec_counter[21]~28_combout\ & (\u_Controller|runnig_time[2]~4_combout\ & ((\u_Controller|runnig_time\(2)) # (\u_Controller|runnig_time\(1))))) # (!\u_Controller|sec_counter[21]~28_combout\ & 
-- (((\u_Controller|runnig_time\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|sec_counter[21]~28_combout\,
	datab => \u_Controller|runnig_time[2]~4_combout\,
	datac => \u_Controller|runnig_time\(2),
	datad => \u_Controller|runnig_time\(1),
	combout => \u_Controller|runnig_time[2]~5_combout\);

-- Location: FF_X30_Y20_N21
\u_Controller|runnig_time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|runnig_time[2]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|runnig_time\(2));

-- Location: LCCOMB_X30_Y20_N12
\u_Controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Equal0~0_combout\ = ((\u_Controller|runnig_time\(1)) # (!\u_Controller|runnig_time\(0))) # (!\u_Controller|runnig_time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|runnig_time\(2),
	datac => \u_Controller|runnig_time\(0),
	datad => \u_Controller|runnig_time\(1),
	combout => \u_Controller|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\u_Controller|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector6~0_combout\ = (\w_bt_setting~combout\ & ((\u_Controller|c_state.SETTING_2~q\) # ((\u_Controller|c_state.RUNNING_2~q\ & \u_Controller|Equal0~0_combout\)))) # (!\w_bt_setting~combout\ & (((\u_Controller|c_state.RUNNING_2~q\ & 
-- \u_Controller|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_bt_setting~combout\,
	datab => \u_Controller|c_state.SETTING_2~q\,
	datac => \u_Controller|c_state.RUNNING_2~q\,
	datad => \u_Controller|Equal0~0_combout\,
	combout => \u_Controller|Selector6~0_combout\);

-- Location: FF_X30_Y20_N9
\u_Controller|c_state.RUNNING_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector6~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.RUNNING_2~q\);

-- Location: LCCOMB_X30_Y20_N30
\u_Controller|runnig_time~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|runnig_time~6_combout\ = (!\u_Controller|runnig_time\(0) & ((\u_Controller|c_state.RUNNING_2~q\) # (\u_Controller|c_state.RUNNING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|c_state.RUNNING_2~q\,
	datac => \u_Controller|runnig_time\(0),
	datad => \u_Controller|c_state.RUNNING~q\,
	combout => \u_Controller|runnig_time~6_combout\);

-- Location: FF_X30_Y20_N31
\u_Controller|runnig_time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|runnig_time~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|runnig_time[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|runnig_time\(0));

-- Location: LCCOMB_X30_Y20_N10
\u_Controller|n_state.DONE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|n_state.DONE~0_combout\ = (\u_Controller|runnig_time\(0) & (\u_Controller|runnig_time\(2) & (\u_Controller|c_state.RUNNING_2~q\ & !\u_Controller|runnig_time\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|runnig_time\(0),
	datab => \u_Controller|runnig_time\(2),
	datac => \u_Controller|c_state.RUNNING_2~q\,
	datad => \u_Controller|runnig_time\(1),
	combout => \u_Controller|n_state.DONE~0_combout\);

-- Location: FF_X30_Y20_N11
\u_Controller|c_state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|n_state.DONE~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.DONE~q\);

-- Location: IOIBUF_X0_Y23_N1
\bt_start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt_start,
	o => \bt_start~input_o\);

-- Location: LCCOMB_X30_Y21_N8
\d_start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d_start~0_combout\ = !\bt_start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bt_start~input_o\,
	combout => \d_start~0_combout\);

-- Location: FF_X30_Y21_N9
d_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_start~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_start~q\);

-- Location: FF_X30_Y21_N19
d2_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_start~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2_start~q\);

-- Location: LCCOMB_X30_Y21_N10
\u_Controller|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector0~0_combout\ = (!\u_Controller|c_state.DONE~q\ & ((\u_Controller|c_state.IDLE~q\) # ((\d_start~q\ & !\d2_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|c_state.DONE~q\,
	datab => \d_start~q\,
	datac => \u_Controller|c_state.IDLE~q\,
	datad => \d2_start~q\,
	combout => \u_Controller|Selector0~0_combout\);

-- Location: FF_X30_Y21_N11
\u_Controller|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.IDLE~q\);

-- Location: LCCOMB_X30_Y21_N18
\u_Controller|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector1~0_combout\ = (!\u_Controller|c_state.IDLE~q\ & (\d_start~q\ & !\d2_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|c_state.IDLE~q\,
	datab => \d_start~q\,
	datac => \d2_start~q\,
	combout => \u_Controller|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y21_N20
\u_Controller|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector1~1_combout\ = (\u_Controller|Selector1~0_combout\) # ((\u_Controller|c_state.LIGHT_READ~q\ & ((\u_spi_master_adc|Equal0~0_combout\) # (\u_spi_master_adc|cnt_sclk\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|Equal0~0_combout\,
	datab => \u_Controller|Selector1~0_combout\,
	datac => \u_Controller|c_state.LIGHT_READ~q\,
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_Controller|Selector1~1_combout\);

-- Location: FF_X30_Y21_N21
\u_Controller|c_state.LIGHT_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector1~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.LIGHT_READ~q\);

-- Location: LCCOMB_X30_Y21_N14
\u_Controller|n_state.FND1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|n_state.FND1~0_combout\ = (!\u_spi_master_adc|Equal0~0_combout\ & (\u_Controller|c_state.LIGHT_READ~q\ & !\u_spi_master_adc|cnt_sclk\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|Equal0~0_combout\,
	datac => \u_Controller|c_state.LIGHT_READ~q\,
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_Controller|n_state.FND1~0_combout\);

-- Location: FF_X30_Y21_N15
\u_Controller|c_state.FND1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|n_state.FND1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.FND1~q\);

-- Location: LCCOMB_X29_Y19_N0
\u_Controller|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector2~0_combout\ = (\u_Controller|c_state.FND1~q\) # ((\u_Controller|c_state.SETTING~q\ & ((\d2_setting~q\) # (!\d_setting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_setting~q\,
	datab => \d2_setting~q\,
	datac => \u_Controller|c_state.SETTING~q\,
	datad => \u_Controller|c_state.FND1~q\,
	combout => \u_Controller|Selector2~0_combout\);

-- Location: FF_X29_Y19_N1
\u_Controller|c_state.SETTING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.SETTING~q\);

-- Location: LCCOMB_X30_Y20_N6
\u_Controller|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector3~0_combout\ = (\w_bt_setting~combout\ & ((\u_Controller|c_state.SETTING~q\) # ((\u_Controller|c_state.RUNNING~q\ & \u_Controller|Equal0~0_combout\)))) # (!\w_bt_setting~combout\ & (((\u_Controller|c_state.RUNNING~q\ & 
-- \u_Controller|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_bt_setting~combout\,
	datab => \u_Controller|c_state.SETTING~q\,
	datac => \u_Controller|c_state.RUNNING~q\,
	datad => \u_Controller|Equal0~0_combout\,
	combout => \u_Controller|Selector3~0_combout\);

-- Location: FF_X30_Y20_N7
\u_Controller|c_state.RUNNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector3~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.RUNNING~q\);

-- Location: LCCOMB_X30_Y21_N16
\u_Controller|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|Selector4~0_combout\ = (\u_Controller|c_state.RUNNING~q\ & (((\u_spi_master_adc|Equal0~1_combout\ & \u_Controller|c_state.LIGHT_READ_2~q\)) # (!\u_Controller|Equal0~0_combout\))) # (!\u_Controller|c_state.RUNNING~q\ & 
-- (\u_spi_master_adc|Equal0~1_combout\ & (\u_Controller|c_state.LIGHT_READ_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|c_state.RUNNING~q\,
	datab => \u_spi_master_adc|Equal0~1_combout\,
	datac => \u_Controller|c_state.LIGHT_READ_2~q\,
	datad => \u_Controller|Equal0~0_combout\,
	combout => \u_Controller|Selector4~0_combout\);

-- Location: FF_X30_Y21_N17
\u_Controller|c_state.LIGHT_READ_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|Selector4~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|c_state.LIGHT_READ_2~q\);

-- Location: LCCOMB_X30_Y21_N26
\u_Controller|led_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[0]~0_combout\ = (!\u_spi_master_adc|Equal0~0_combout\ & (!\u_spi_master_adc|cnt_sclk\(0) & ((\u_Controller|c_state.LIGHT_READ_2~q\) # (\u_Controller|c_state.LIGHT_READ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|Equal0~0_combout\,
	datab => \u_Controller|c_state.LIGHT_READ_2~q\,
	datac => \u_Controller|c_state.LIGHT_READ~q\,
	datad => \u_spi_master_adc|cnt_sclk\(0),
	combout => \u_Controller|led_out[0]~0_combout\);

-- Location: FF_X15_Y21_N17
\u_Controller|led_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[0]~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(0));

-- Location: LCCOMB_X15_Y21_N18
\u_spi_master_adc|data_buffer[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[1]~feeder_combout\ = \u_spi_master_adc|data_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(0),
	combout => \u_spi_master_adc|data_buffer[1]~feeder_combout\);

-- Location: FF_X15_Y21_N19
\u_spi_master_adc|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[1]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(1));

-- Location: LCCOMB_X15_Y21_N26
\u_Controller|led_out[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[1]~2_combout\ = !\u_spi_master_adc|data_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(1),
	combout => \u_Controller|led_out[1]~2_combout\);

-- Location: FF_X15_Y21_N27
\u_Controller|led_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[1]~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(1));

-- Location: LCCOMB_X15_Y21_N12
\u_spi_master_adc|data_buffer[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[2]~feeder_combout\ = \u_spi_master_adc|data_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(1),
	combout => \u_spi_master_adc|data_buffer[2]~feeder_combout\);

-- Location: FF_X15_Y21_N13
\u_spi_master_adc|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[2]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(2));

-- Location: LCCOMB_X15_Y21_N20
\u_Controller|led_out[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[2]~3_combout\ = !\u_spi_master_adc|data_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(2),
	combout => \u_Controller|led_out[2]~3_combout\);

-- Location: FF_X15_Y21_N21
\u_Controller|led_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[2]~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(2));

-- Location: LCCOMB_X15_Y21_N14
\u_spi_master_adc|data_buffer[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[3]~feeder_combout\ = \u_spi_master_adc|data_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(2),
	combout => \u_spi_master_adc|data_buffer[3]~feeder_combout\);

-- Location: FF_X15_Y21_N15
\u_spi_master_adc|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[3]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(3));

-- Location: LCCOMB_X15_Y21_N6
\u_Controller|led_out[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[3]~4_combout\ = !\u_spi_master_adc|data_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|data_buffer\(3),
	combout => \u_Controller|led_out[3]~4_combout\);

-- Location: FF_X15_Y21_N7
\u_Controller|led_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[3]~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(3));

-- Location: FF_X15_Y21_N25
\u_spi_master_adc|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(4));

-- Location: LCCOMB_X15_Y21_N8
\u_Controller|led_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[4]~5_combout\ = !\u_spi_master_adc|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(4),
	combout => \u_Controller|led_out[4]~5_combout\);

-- Location: FF_X15_Y21_N9
\u_Controller|led_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[4]~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(4));

-- Location: LCCOMB_X15_Y21_N2
\u_spi_master_adc|data_buffer[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[5]~feeder_combout\ = \u_spi_master_adc|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(4),
	combout => \u_spi_master_adc|data_buffer[5]~feeder_combout\);

-- Location: FF_X15_Y21_N3
\u_spi_master_adc|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[5]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(5));

-- Location: LCCOMB_X15_Y21_N10
\u_Controller|led_out[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[5]~6_combout\ = !\u_spi_master_adc|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(5),
	combout => \u_Controller|led_out[5]~6_combout\);

-- Location: FF_X15_Y21_N11
\u_Controller|led_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[5]~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(5));

-- Location: LCCOMB_X15_Y21_N28
\u_spi_master_adc|data_buffer[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[6]~feeder_combout\ = \u_spi_master_adc|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(5),
	combout => \u_spi_master_adc|data_buffer[6]~feeder_combout\);

-- Location: FF_X15_Y21_N29
\u_spi_master_adc|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[6]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(6));

-- Location: LCCOMB_X15_Y21_N4
\u_Controller|led_out[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[6]~7_combout\ = !\u_spi_master_adc|data_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(6),
	combout => \u_Controller|led_out[6]~7_combout\);

-- Location: FF_X15_Y21_N5
\u_Controller|led_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[6]~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(6));

-- Location: LCCOMB_X15_Y21_N30
\u_spi_master_adc|data_buffer[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[7]~feeder_combout\ = \u_spi_master_adc|data_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(6),
	combout => \u_spi_master_adc|data_buffer[7]~feeder_combout\);

-- Location: FF_X15_Y21_N31
\u_spi_master_adc|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[7]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_spi_master_adc|data_buffer[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(7));

-- Location: LCCOMB_X15_Y21_N22
\u_Controller|led_out[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|led_out[7]~8_combout\ = !\u_spi_master_adc|data_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|data_buffer\(7),
	combout => \u_Controller|led_out[7]~8_combout\);

-- Location: FF_X15_Y21_N23
\u_Controller|led_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|led_out[7]~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Controller|led_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|led_out\(7));

-- Location: LCCOMB_X30_Y20_N0
\u_Controller|heat_signal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|heat_signal~0_combout\ = (\u_Controller|motor_signal~q\ & (((\u_Controller|runnig_time\(1)) # (!\u_Controller|runnig_time\(0))) # (!\u_Controller|runnig_time\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|motor_signal~q\,
	datab => \u_Controller|runnig_time\(2),
	datac => \u_Controller|runnig_time\(0),
	datad => \u_Controller|runnig_time\(1),
	combout => \u_Controller|heat_signal~0_combout\);

-- Location: LCCOMB_X29_Y19_N20
\u_Controller|heat_signal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|heat_signal~1_combout\ = (!\u_Controller|c_state.SETTING~q\ & !\u_Controller|c_state.SETTING_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Controller|c_state.SETTING~q\,
	datad => \u_Controller|c_state.SETTING_2~q\,
	combout => \u_Controller|heat_signal~1_combout\);

-- Location: LCCOMB_X30_Y20_N24
\u_Controller|heat_signal~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|heat_signal~2_combout\ = (\u_Controller|heat_signal~1_combout\ & (((\u_Controller|heat_signal~0_combout\)))) # (!\u_Controller|heat_signal~1_combout\ & (\w_bt_setting~combout\ & ((!\u_Controller|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_bt_setting~combout\,
	datab => \u_Controller|heat_signal~0_combout\,
	datac => \u_Controller|LessThan1~0_combout\,
	datad => \u_Controller|heat_signal~1_combout\,
	combout => \u_Controller|heat_signal~2_combout\);

-- Location: FF_X30_Y20_N25
\u_Controller|motor_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Controller|heat_signal~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|motor_signal~q\);

-- Location: LCCOMB_X28_Y16_N14
\u_uart_tx|cnt_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_bit~0_combout\ = (\u_uart_tx|tx_en~q\ & !\u_uart_tx|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|cnt_bit~0_combout\);

-- Location: LCCOMB_X5_Y21_N4
\u_uart_tx|cnt_tx_div[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[0]~13_combout\ = \u_uart_tx|cnt_tx_div\(0) $ (VCC)
-- \u_uart_tx|cnt_tx_div[0]~14\ = CARRY(\u_uart_tx|cnt_tx_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(0),
	datad => VCC,
	combout => \u_uart_tx|cnt_tx_div[0]~13_combout\,
	cout => \u_uart_tx|cnt_tx_div[0]~14\);

-- Location: FF_X5_Y21_N5
\u_uart_tx|cnt_tx_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[0]~13_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(0));

-- Location: LCCOMB_X5_Y21_N6
\u_uart_tx|cnt_tx_div[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[1]~15_combout\ = (\u_uart_tx|cnt_tx_div\(1) & (!\u_uart_tx|cnt_tx_div[0]~14\)) # (!\u_uart_tx|cnt_tx_div\(1) & ((\u_uart_tx|cnt_tx_div[0]~14\) # (GND)))
-- \u_uart_tx|cnt_tx_div[1]~16\ = CARRY((!\u_uart_tx|cnt_tx_div[0]~14\) # (!\u_uart_tx|cnt_tx_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(1),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[0]~14\,
	combout => \u_uart_tx|cnt_tx_div[1]~15_combout\,
	cout => \u_uart_tx|cnt_tx_div[1]~16\);

-- Location: FF_X5_Y21_N7
\u_uart_tx|cnt_tx_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[1]~15_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(1));

-- Location: LCCOMB_X5_Y21_N8
\u_uart_tx|cnt_tx_div[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[2]~17_combout\ = (\u_uart_tx|cnt_tx_div\(2) & (\u_uart_tx|cnt_tx_div[1]~16\ $ (GND))) # (!\u_uart_tx|cnt_tx_div\(2) & (!\u_uart_tx|cnt_tx_div[1]~16\ & VCC))
-- \u_uart_tx|cnt_tx_div[2]~18\ = CARRY((\u_uart_tx|cnt_tx_div\(2) & !\u_uart_tx|cnt_tx_div[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(2),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[1]~16\,
	combout => \u_uart_tx|cnt_tx_div[2]~17_combout\,
	cout => \u_uart_tx|cnt_tx_div[2]~18\);

-- Location: FF_X5_Y21_N9
\u_uart_tx|cnt_tx_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[2]~17_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(2));

-- Location: LCCOMB_X5_Y21_N10
\u_uart_tx|cnt_tx_div[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[3]~19_combout\ = (\u_uart_tx|cnt_tx_div\(3) & (!\u_uart_tx|cnt_tx_div[2]~18\)) # (!\u_uart_tx|cnt_tx_div\(3) & ((\u_uart_tx|cnt_tx_div[2]~18\) # (GND)))
-- \u_uart_tx|cnt_tx_div[3]~20\ = CARRY((!\u_uart_tx|cnt_tx_div[2]~18\) # (!\u_uart_tx|cnt_tx_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(3),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[2]~18\,
	combout => \u_uart_tx|cnt_tx_div[3]~19_combout\,
	cout => \u_uart_tx|cnt_tx_div[3]~20\);

-- Location: FF_X5_Y21_N11
\u_uart_tx|cnt_tx_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[3]~19_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(3));

-- Location: LCCOMB_X5_Y21_N12
\u_uart_tx|cnt_tx_div[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[4]~21_combout\ = (\u_uart_tx|cnt_tx_div\(4) & (\u_uart_tx|cnt_tx_div[3]~20\ $ (GND))) # (!\u_uart_tx|cnt_tx_div\(4) & (!\u_uart_tx|cnt_tx_div[3]~20\ & VCC))
-- \u_uart_tx|cnt_tx_div[4]~22\ = CARRY((\u_uart_tx|cnt_tx_div\(4) & !\u_uart_tx|cnt_tx_div[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(4),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[3]~20\,
	combout => \u_uart_tx|cnt_tx_div[4]~21_combout\,
	cout => \u_uart_tx|cnt_tx_div[4]~22\);

-- Location: FF_X5_Y21_N13
\u_uart_tx|cnt_tx_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[4]~21_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(4));

-- Location: LCCOMB_X5_Y21_N14
\u_uart_tx|cnt_tx_div[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[5]~23_combout\ = (\u_uart_tx|cnt_tx_div\(5) & (!\u_uart_tx|cnt_tx_div[4]~22\)) # (!\u_uart_tx|cnt_tx_div\(5) & ((\u_uart_tx|cnt_tx_div[4]~22\) # (GND)))
-- \u_uart_tx|cnt_tx_div[5]~24\ = CARRY((!\u_uart_tx|cnt_tx_div[4]~22\) # (!\u_uart_tx|cnt_tx_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(5),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[4]~22\,
	combout => \u_uart_tx|cnt_tx_div[5]~23_combout\,
	cout => \u_uart_tx|cnt_tx_div[5]~24\);

-- Location: FF_X5_Y21_N15
\u_uart_tx|cnt_tx_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[5]~23_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(5));

-- Location: LCCOMB_X5_Y21_N16
\u_uart_tx|cnt_tx_div[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[6]~25_combout\ = (\u_uart_tx|cnt_tx_div\(6) & (\u_uart_tx|cnt_tx_div[5]~24\ $ (GND))) # (!\u_uart_tx|cnt_tx_div\(6) & (!\u_uart_tx|cnt_tx_div[5]~24\ & VCC))
-- \u_uart_tx|cnt_tx_div[6]~26\ = CARRY((\u_uart_tx|cnt_tx_div\(6) & !\u_uart_tx|cnt_tx_div[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(6),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[5]~24\,
	combout => \u_uart_tx|cnt_tx_div[6]~25_combout\,
	cout => \u_uart_tx|cnt_tx_div[6]~26\);

-- Location: FF_X5_Y21_N17
\u_uart_tx|cnt_tx_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[6]~25_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(6));

-- Location: LCCOMB_X5_Y21_N18
\u_uart_tx|cnt_tx_div[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[7]~27_combout\ = (\u_uart_tx|cnt_tx_div\(7) & (!\u_uart_tx|cnt_tx_div[6]~26\)) # (!\u_uart_tx|cnt_tx_div\(7) & ((\u_uart_tx|cnt_tx_div[6]~26\) # (GND)))
-- \u_uart_tx|cnt_tx_div[7]~28\ = CARRY((!\u_uart_tx|cnt_tx_div[6]~26\) # (!\u_uart_tx|cnt_tx_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(7),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[6]~26\,
	combout => \u_uart_tx|cnt_tx_div[7]~27_combout\,
	cout => \u_uart_tx|cnt_tx_div[7]~28\);

-- Location: FF_X5_Y21_N19
\u_uart_tx|cnt_tx_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[7]~27_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(7));

-- Location: LCCOMB_X5_Y21_N20
\u_uart_tx|cnt_tx_div[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[8]~29_combout\ = (\u_uart_tx|cnt_tx_div\(8) & (\u_uart_tx|cnt_tx_div[7]~28\ $ (GND))) # (!\u_uart_tx|cnt_tx_div\(8) & (!\u_uart_tx|cnt_tx_div[7]~28\ & VCC))
-- \u_uart_tx|cnt_tx_div[8]~30\ = CARRY((\u_uart_tx|cnt_tx_div\(8) & !\u_uart_tx|cnt_tx_div[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(8),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[7]~28\,
	combout => \u_uart_tx|cnt_tx_div[8]~29_combout\,
	cout => \u_uart_tx|cnt_tx_div[8]~30\);

-- Location: FF_X5_Y21_N21
\u_uart_tx|cnt_tx_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[8]~29_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(8));

-- Location: LCCOMB_X5_Y21_N22
\u_uart_tx|cnt_tx_div[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[9]~31_combout\ = (\u_uart_tx|cnt_tx_div\(9) & (!\u_uart_tx|cnt_tx_div[8]~30\)) # (!\u_uart_tx|cnt_tx_div\(9) & ((\u_uart_tx|cnt_tx_div[8]~30\) # (GND)))
-- \u_uart_tx|cnt_tx_div[9]~32\ = CARRY((!\u_uart_tx|cnt_tx_div[8]~30\) # (!\u_uart_tx|cnt_tx_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(9),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[8]~30\,
	combout => \u_uart_tx|cnt_tx_div[9]~31_combout\,
	cout => \u_uart_tx|cnt_tx_div[9]~32\);

-- Location: FF_X5_Y21_N23
\u_uart_tx|cnt_tx_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[9]~31_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(9));

-- Location: LCCOMB_X5_Y21_N24
\u_uart_tx|cnt_tx_div[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[10]~33_combout\ = (\u_uart_tx|cnt_tx_div\(10) & (\u_uart_tx|cnt_tx_div[9]~32\ $ (GND))) # (!\u_uart_tx|cnt_tx_div\(10) & (!\u_uart_tx|cnt_tx_div[9]~32\ & VCC))
-- \u_uart_tx|cnt_tx_div[10]~34\ = CARRY((\u_uart_tx|cnt_tx_div\(10) & !\u_uart_tx|cnt_tx_div[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_tx_div\(10),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[9]~32\,
	combout => \u_uart_tx|cnt_tx_div[10]~33_combout\,
	cout => \u_uart_tx|cnt_tx_div[10]~34\);

-- Location: FF_X5_Y21_N25
\u_uart_tx|cnt_tx_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[10]~33_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(10));

-- Location: LCCOMB_X5_Y21_N26
\u_uart_tx|cnt_tx_div[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[11]~35_combout\ = (\u_uart_tx|cnt_tx_div\(11) & (!\u_uart_tx|cnt_tx_div[10]~34\)) # (!\u_uart_tx|cnt_tx_div\(11) & ((\u_uart_tx|cnt_tx_div[10]~34\) # (GND)))
-- \u_uart_tx|cnt_tx_div[11]~36\ = CARRY((!\u_uart_tx|cnt_tx_div[10]~34\) # (!\u_uart_tx|cnt_tx_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(11),
	datad => VCC,
	cin => \u_uart_tx|cnt_tx_div[10]~34\,
	combout => \u_uart_tx|cnt_tx_div[11]~35_combout\,
	cout => \u_uart_tx|cnt_tx_div[11]~36\);

-- Location: FF_X5_Y21_N27
\u_uart_tx|cnt_tx_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[11]~35_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(11));

-- Location: LCCOMB_X5_Y21_N30
\u_uart_tx|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal0~2_combout\ = (\u_uart_tx|cnt_tx_div\(9)) # ((\u_uart_tx|cnt_tx_div\(8)) # ((\u_uart_tx|cnt_tx_div\(11)) # (!\u_uart_tx|cnt_tx_div\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(9),
	datab => \u_uart_tx|cnt_tx_div\(8),
	datac => \u_uart_tx|cnt_tx_div\(11),
	datad => \u_uart_tx|cnt_tx_div\(10),
	combout => \u_uart_tx|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y21_N0
\u_uart_tx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal0~0_combout\ = (((\u_uart_tx|cnt_tx_div\(3)) # (!\u_uart_tx|cnt_tx_div\(2))) # (!\u_uart_tx|cnt_tx_div\(0))) # (!\u_uart_tx|cnt_tx_div\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(1),
	datab => \u_uart_tx|cnt_tx_div\(0),
	datac => \u_uart_tx|cnt_tx_div\(2),
	datad => \u_uart_tx|cnt_tx_div\(3),
	combout => \u_uart_tx|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y21_N2
\u_uart_tx|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal0~1_combout\ = (((\u_uart_tx|cnt_tx_div\(5)) # (\u_uart_tx|cnt_tx_div\(7))) # (!\u_uart_tx|cnt_tx_div\(6))) # (!\u_uart_tx|cnt_tx_div\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(4),
	datab => \u_uart_tx|cnt_tx_div\(6),
	datac => \u_uart_tx|cnt_tx_div\(5),
	datad => \u_uart_tx|cnt_tx_div\(7),
	combout => \u_uart_tx|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y21_N28
\u_uart_tx|cnt_tx_div[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div[12]~37_combout\ = \u_uart_tx|cnt_tx_div[11]~36\ $ (!\u_uart_tx|cnt_tx_div\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_tx|cnt_tx_div\(12),
	cin => \u_uart_tx|cnt_tx_div[11]~36\,
	combout => \u_uart_tx|cnt_tx_div[12]~37_combout\);

-- Location: FF_X5_Y21_N29
\u_uart_tx|cnt_tx_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div[12]~37_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(12));

-- Location: LCCOMB_X28_Y16_N20
\u_uart_tx|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal0~3_combout\ = (\u_uart_tx|Equal0~2_combout\) # ((\u_uart_tx|Equal0~0_combout\) # ((\u_uart_tx|Equal0~1_combout\) # (!\u_uart_tx|cnt_tx_div\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|Equal0~2_combout\,
	datab => \u_uart_tx|Equal0~0_combout\,
	datac => \u_uart_tx|Equal0~1_combout\,
	datad => \u_uart_tx|cnt_tx_div\(12),
	combout => \u_uart_tx|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y15_N12
\u_uart_tx|tx_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data[0]~1_combout\ = (!\u_uart_tx|tx_en~q\) # (!\u_uart_tx|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|Equal0~3_combout\,
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|tx_data[0]~1_combout\);

-- Location: FF_X28_Y16_N15
\u_uart_tx|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_bit~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(0));

-- Location: LCCOMB_X28_Y16_N24
\u_uart_tx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Add1~0_combout\ = \u_uart_tx|cnt_bit\(0) $ (\u_uart_tx|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_bit\(0),
	datac => \u_uart_tx|cnt_bit\(1),
	combout => \u_uart_tx|Add1~0_combout\);

-- Location: FF_X28_Y16_N25
\u_uart_tx|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|Add1~0_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|ALT_INV_tx_en~q\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(1));

-- Location: LCCOMB_X28_Y16_N12
\u_uart_tx|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Add1~2_combout\ = \u_uart_tx|cnt_bit\(2) $ (((\u_uart_tx|cnt_bit\(0) & \u_uart_tx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_bit\(0),
	datac => \u_uart_tx|cnt_bit\(2),
	datad => \u_uart_tx|cnt_bit\(1),
	combout => \u_uart_tx|Add1~2_combout\);

-- Location: FF_X28_Y16_N13
\u_uart_tx|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|Add1~2_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|ALT_INV_tx_en~q\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(2));

-- Location: LCCOMB_X28_Y16_N2
\u_uart_tx|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Add1~1_combout\ = \u_uart_tx|cnt_bit\(3) $ (((\u_uart_tx|cnt_bit\(2) & (\u_uart_tx|cnt_bit\(0) & \u_uart_tx|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(0),
	datac => \u_uart_tx|cnt_bit\(3),
	datad => \u_uart_tx|cnt_bit\(1),
	combout => \u_uart_tx|Add1~1_combout\);

-- Location: FF_X28_Y16_N3
\u_uart_tx|cnt_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|Add1~1_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_tx|ALT_INV_tx_en~q\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(3));

-- Location: LCCOMB_X28_Y16_N6
\u_uart_tx|tx_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_en~0_combout\ = (!\u_uart_tx|cnt_bit\(2) & (\u_uart_tx|cnt_bit\(3) & (\u_uart_tx|cnt_bit\(0) & \u_uart_tx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(3),
	datac => \u_uart_tx|cnt_bit\(0),
	datad => \u_uart_tx|cnt_bit\(1),
	combout => \u_uart_tx|tx_en~0_combout\);

-- Location: LCCOMB_X28_Y16_N8
\u_uart_tx|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal3~0_combout\ = (\u_uart_tx|cnt_bit\(2) & (\u_uart_tx|cnt_bit\(3) & (!\u_uart_tx|cnt_bit\(0) & !\u_uart_tx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(3),
	datac => \u_uart_tx|cnt_bit\(0),
	datad => \u_uart_tx|cnt_bit\(1),
	combout => \u_uart_tx|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\u_byte2ascill|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector4~0_combout\ = (\u_byte2ascill|c_state.S2~q\) # ((!\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S2~q\,
	datab => \u_uart_tx|Equal3~0_combout\,
	datac => \u_byte2ascill|c_state.W2~q\,
	combout => \u_byte2ascill|Selector4~0_combout\);

-- Location: FF_X24_Y18_N1
\u_byte2ascill|c_state.W2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector4~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W2~q\);

-- Location: LCCOMB_X24_Y18_N28
\u_byte2ascill|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector5~0_combout\ = (\u_byte2ascill|c_state.W2~q\ & \u_uart_tx|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|c_state.W2~q\,
	datac => \u_uart_tx|Equal3~0_combout\,
	combout => \u_byte2ascill|Selector5~0_combout\);

-- Location: FF_X24_Y18_N29
\u_byte2ascill|c_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector5~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S3~q\);

-- Location: LCCOMB_X24_Y18_N20
\u_byte2ascill|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector6~0_combout\ = (\u_byte2ascill|c_state.S3~q\) # ((!\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|Equal3~0_combout\,
	datac => \u_byte2ascill|c_state.W3~q\,
	datad => \u_byte2ascill|c_state.S3~q\,
	combout => \u_byte2ascill|Selector6~0_combout\);

-- Location: FF_X24_Y18_N21
\u_byte2ascill|c_state.W3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector6~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W3~q\);

-- Location: LCCOMB_X24_Y18_N24
\u_byte2ascill|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector7~0_combout\ = (\u_byte2ascill|c_state.W3~q\ & \u_uart_tx|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|c_state.W3~q\,
	datac => \u_uart_tx|Equal3~0_combout\,
	combout => \u_byte2ascill|Selector7~0_combout\);

-- Location: FF_X24_Y18_N25
\u_byte2ascill|c_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector7~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S4~q\);

-- Location: LCCOMB_X24_Y18_N30
\u_byte2ascill|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector8~0_combout\ = (\u_byte2ascill|c_state.S4~q\) # ((!\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|Equal3~0_combout\,
	datac => \u_byte2ascill|c_state.W4~q\,
	datad => \u_byte2ascill|c_state.S4~q\,
	combout => \u_byte2ascill|Selector8~0_combout\);

-- Location: FF_X24_Y18_N31
\u_byte2ascill|c_state.W4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector8~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W4~q\);

-- Location: FF_X29_Y19_N5
\u_Controller|Day_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_Controller|c_state.DONE~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|Day_done~q\);

-- Location: LCCOMB_X24_Y18_N22
\u_byte2ascill|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector0~0_combout\ = (\u_byte2ascill|c_state.W4~q\ & (!\u_uart_tx|Equal3~0_combout\ & ((\u_byte2ascill|c_state.IDLE~q\) # (\u_Controller|Day_done~q\)))) # (!\u_byte2ascill|c_state.W4~q\ & (((\u_byte2ascill|c_state.IDLE~q\) # 
-- (\u_Controller|Day_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.W4~q\,
	datab => \u_uart_tx|Equal3~0_combout\,
	datac => \u_byte2ascill|c_state.IDLE~q\,
	datad => \u_Controller|Day_done~q\,
	combout => \u_byte2ascill|Selector0~0_combout\);

-- Location: FF_X24_Y18_N23
\u_byte2ascill|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.IDLE~q\);

-- Location: LCCOMB_X24_Y18_N18
\u_byte2ascill|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector1~0_combout\ = (!\u_byte2ascill|c_state.IDLE~q\ & \u_Controller|Day_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_byte2ascill|c_state.IDLE~q\,
	datad => \u_Controller|Day_done~q\,
	combout => \u_byte2ascill|Selector1~0_combout\);

-- Location: FF_X24_Y18_N19
\u_byte2ascill|c_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S1~q\);

-- Location: LCCOMB_X24_Y18_N26
\u_byte2ascill|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector2~0_combout\ = (\u_byte2ascill|c_state.S1~q\) # ((!\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|Equal3~0_combout\,
	datac => \u_byte2ascill|c_state.W1~q\,
	datad => \u_byte2ascill|c_state.S1~q\,
	combout => \u_byte2ascill|Selector2~0_combout\);

-- Location: FF_X24_Y18_N27
\u_byte2ascill|c_state.W1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W1~q\);

-- Location: LCCOMB_X24_Y18_N6
\u_byte2ascill|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector3~0_combout\ = (\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|Equal3~0_combout\,
	datac => \u_byte2ascill|c_state.W1~q\,
	combout => \u_byte2ascill|Selector3~0_combout\);

-- Location: FF_X24_Y18_N7
\u_byte2ascill|c_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector3~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S2~q\);

-- Location: LCCOMB_X24_Y18_N2
\u_byte2ascill|data_out[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out[0]~4_combout\ = (!\u_byte2ascill|c_state.S2~q\ & (!\u_byte2ascill|c_state.S3~q\ & (!\u_byte2ascill|c_state.S4~q\ & !\u_byte2ascill|c_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S2~q\,
	datab => \u_byte2ascill|c_state.S3~q\,
	datac => \u_byte2ascill|c_state.S4~q\,
	datad => \u_byte2ascill|c_state.S1~q\,
	combout => \u_byte2ascill|data_out[0]~4_combout\);

-- Location: LCCOMB_X28_Y16_N18
\u_uart_tx|tx_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_en~1_combout\ = ((\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal0~3_combout\) # (!\u_uart_tx|tx_en~0_combout\)))) # (!\u_byte2ascill|data_out[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~0_combout\,
	datab => \u_byte2ascill|data_out[0]~4_combout\,
	datac => \u_uart_tx|tx_en~q\,
	datad => \u_uart_tx|Equal0~3_combout\,
	combout => \u_uart_tx|tx_en~1_combout\);

-- Location: FF_X28_Y16_N19
\u_uart_tx|tx_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_en~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_en~q\);

-- Location: LCCOMB_X28_Y16_N0
\u_uart_tx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal2~0_combout\ = (\u_uart_tx|cnt_bit\(2)) # ((\u_uart_tx|cnt_bit\(3)) # ((\u_uart_tx|cnt_bit\(0)) # (\u_uart_tx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(3),
	datac => \u_uart_tx|cnt_bit\(0),
	datad => \u_uart_tx|cnt_bit\(1),
	combout => \u_uart_tx|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\u_byte2ascill|data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~5_combout\ = (!\u_byte2ascill|c_state.S3~q\ & !\u_byte2ascill|c_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|c_state.S3~q\,
	datad => \u_byte2ascill|c_state.S1~q\,
	combout => \u_byte2ascill|data_out~5_combout\);

-- Location: FF_X24_Y18_N9
\u_byte2ascill|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(0));

-- Location: LCCOMB_X24_Y18_N12
\u_byte2ascill|data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~6_combout\ = (\u_byte2ascill|c_state.S3~q\) # (\u_byte2ascill|c_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|c_state.S3~q\,
	datad => \u_byte2ascill|c_state.S2~q\,
	combout => \u_byte2ascill|data_out~6_combout\);

-- Location: FF_X24_Y18_N13
\u_byte2ascill|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(3));

-- Location: LCCOMB_X24_Y18_N16
\u_byte2ascill|data_out[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out[5]~8_combout\ = !\u_byte2ascill|c_state.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_byte2ascill|c_state.S1~q\,
	combout => \u_byte2ascill|data_out[5]~8_combout\);

-- Location: FF_X24_Y18_N17
\u_byte2ascill|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out[5]~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(5));

-- Location: LCCOMB_X28_Y16_N26
\u_uart_tx|tx_data~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~10_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal0~3_combout\ & ((\u_uart_tx|tx_data\(9)))) # (!\u_uart_tx|Equal0~3_combout\ & (!\u_uart_tx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datab => \u_uart_tx|Equal2~0_combout\,
	datac => \u_uart_tx|tx_data\(9),
	datad => \u_uart_tx|Equal0~3_combout\,
	combout => \u_uart_tx|tx_data~10_combout\);

-- Location: FF_X28_Y16_N27
\u_uart_tx|tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~10_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(9));

-- Location: LCCOMB_X29_Y15_N28
\u_uart_tx|tx_data~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~9_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|tx_data\(9)) # (!\u_uart_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_data\(9),
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|tx_data~9_combout\);

-- Location: FF_X29_Y15_N29
\u_uart_tx|tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(8));

-- Location: LCCOMB_X29_Y15_N10
\u_byte2ascill|data_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_byte2ascill|data_out[6]~feeder_combout\);

-- Location: FF_X29_Y15_N11
\u_byte2ascill|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out[6]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(6));

-- Location: LCCOMB_X29_Y15_N26
\u_uart_tx|tx_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~8_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & (\u_uart_tx|tx_data\(8))) # (!\u_uart_tx|Equal2~0_combout\ & ((!\u_byte2ascill|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datab => \u_uart_tx|tx_data\(8),
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_byte2ascill|data_out\(6),
	combout => \u_uart_tx|tx_data~8_combout\);

-- Location: FF_X29_Y15_N27
\u_uart_tx|tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(7));

-- Location: LCCOMB_X29_Y15_N0
\u_uart_tx|tx_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~7_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(7)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|Equal2~0_combout\,
	datab => \u_byte2ascill|data_out\(5),
	datac => \u_uart_tx|tx_data\(7),
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|tx_data~7_combout\);

-- Location: FF_X29_Y15_N1
\u_uart_tx|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(6));

-- Location: LCCOMB_X29_Y15_N22
\u_uart_tx|tx_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~6_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|tx_data\(6)) # (!\u_uart_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_uart_tx|tx_data\(6),
	combout => \u_uart_tx|tx_data~6_combout\);

-- Location: FF_X29_Y15_N23
\u_uart_tx|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(5));

-- Location: LCCOMB_X29_Y15_N20
\u_uart_tx|tx_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~5_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(5)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|Equal2~0_combout\,
	datab => \u_byte2ascill|data_out\(3),
	datac => \u_uart_tx|tx_data\(5),
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|tx_data~5_combout\);

-- Location: FF_X29_Y15_N21
\u_uart_tx|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(4));

-- Location: LCCOMB_X29_Y15_N24
\u_uart_tx|tx_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~4_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & (\u_uart_tx|tx_data\(4))) # (!\u_uart_tx|Equal2~0_combout\ & ((!\u_byte2ascill|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datab => \u_uart_tx|tx_data\(4),
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_byte2ascill|data_out\(6),
	combout => \u_uart_tx|tx_data~4_combout\);

-- Location: FF_X29_Y15_N25
\u_uart_tx|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(3));

-- Location: LCCOMB_X29_Y15_N6
\u_uart_tx|tx_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~3_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(3)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|data_out\(3),
	datab => \u_uart_tx|tx_data\(3),
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|tx_data~3_combout\);

-- Location: FF_X29_Y15_N7
\u_uart_tx|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(2));

-- Location: LCCOMB_X29_Y15_N2
\u_uart_tx|tx_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~2_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(2)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datab => \u_byte2ascill|data_out\(0),
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_uart_tx|tx_data\(2),
	combout => \u_uart_tx|tx_data~2_combout\);

-- Location: FF_X29_Y15_N3
\u_uart_tx|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(1));

-- Location: LCCOMB_X29_Y15_N8
\u_uart_tx|tx_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~0_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|tx_data\(1)) # (!\u_uart_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|Equal2~0_combout\,
	datad => \u_uart_tx|tx_data\(1),
	combout => \u_uart_tx|tx_data~0_combout\);

-- Location: FF_X29_Y15_N9
\u_uart_tx|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_tx|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(0));

-- Location: LCCOMB_X30_Y21_N22
\u_Controller|morning_signal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Controller|morning_signal~0_combout\ = ((\u_Controller|c_state.FND1~q\) # (\u_Controller|c_state.FND2~q\)) # (!\u_Controller|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|Equal0~0_combout\,
	datab => \u_Controller|c_state.FND1~q\,
	datac => \u_Controller|c_state.FND2~q\,
	combout => \u_Controller|morning_signal~0_combout\);

-- Location: FF_X30_Y21_N31
\u_Controller|after_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_Controller|c_state.FND2~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_Controller|morning_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|after_signal~q\);

-- Location: FF_X30_Y21_N25
\u_Controller|morning_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_Controller|c_state.FND1~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_Controller|morning_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Controller|morning_signal~q\);

-- Location: LCCOMB_X30_Y21_N24
\u_Total_FND|fnd1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Total_FND|fnd1[0]~0_combout\ = (\u_Controller|after_signal~q\) # (\u_Controller|morning_signal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Controller|after_signal~q\,
	datac => \u_Controller|morning_signal~q\,
	combout => \u_Total_FND|fnd1[0]~0_combout\);

-- Location: LCCOMB_X30_Y21_N30
\u_Total_FND|fnd3[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Total_FND|fnd3[2]~0_combout\ = (\u_Controller|morning_signal~q\) # (!\u_Controller|after_signal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_Controller|after_signal~q\,
	datad => \u_Controller|morning_signal~q\,
	combout => \u_Total_FND|fnd3[2]~0_combout\);

ww_sclk <= \sclk~output_o\;

ww_cs_n <= \cs_n~output_o\;

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_led_out(4) <= \led_out[4]~output_o\;

ww_led_out(5) <= \led_out[5]~output_o\;

ww_led_out(6) <= \led_out[6]~output_o\;

ww_led_out(7) <= \led_out[7]~output_o\;

ww_heat_signal <= \heat_signal~output_o\;

ww_motor_signal <= \motor_signal~output_o\;

ww_txd <= \txd~output_o\;

ww_portb(0) <= \portb[0]~output_o\;

ww_portb(1) <= \portb[1]~output_o\;

ww_portb(2) <= \portb[2]~output_o\;

ww_portb(3) <= \portb[3]~output_o\;

ww_fnd1(0) <= \fnd1[0]~output_o\;

ww_fnd1(1) <= \fnd1[1]~output_o\;

ww_fnd1(2) <= \fnd1[2]~output_o\;

ww_fnd1(3) <= \fnd1[3]~output_o\;

ww_fnd1(4) <= \fnd1[4]~output_o\;

ww_fnd1(5) <= \fnd1[5]~output_o\;

ww_fnd1(6) <= \fnd1[6]~output_o\;

ww_fnd2(0) <= \fnd2[0]~output_o\;

ww_fnd2(1) <= \fnd2[1]~output_o\;

ww_fnd2(2) <= \fnd2[2]~output_o\;

ww_fnd2(3) <= \fnd2[3]~output_o\;

ww_fnd2(4) <= \fnd2[4]~output_o\;

ww_fnd2(5) <= \fnd2[5]~output_o\;

ww_fnd2(6) <= \fnd2[6]~output_o\;

ww_fnd3(0) <= \fnd3[0]~output_o\;

ww_fnd3(1) <= \fnd3[1]~output_o\;

ww_fnd3(2) <= \fnd3[2]~output_o\;

ww_fnd3(3) <= \fnd3[3]~output_o\;

ww_fnd3(4) <= \fnd3[4]~output_o\;

ww_fnd3(5) <= \fnd3[5]~output_o\;

ww_fnd3(6) <= \fnd3[6]~output_o\;
END structure;


