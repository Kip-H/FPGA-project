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

-- DATE "05/24/2024 11:18:52"

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
	push_start : IN std_logic;
	sclk : OUT std_logic;
	cs_n : OUT std_logic;
	sdata : IN std_logic;
	baudrate : IN std_logic;
	inv_rxd : IN std_logic;
	led : OUT std_logic_vector(7 DOWNTO 0);
	txd : OUT std_logic;
	fnd_30_out : OUT std_logic;
	fnd_74_out : OUT std_logic
	);
END top;

-- Design Ports Information
-- sclk	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_n	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdata	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baudrate	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_start	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inv_rxd	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_push_start : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_cs_n : std_logic;
SIGNAL ww_sdata : std_logic;
SIGNAL ww_baudrate : std_logic;
SIGNAL ww_inv_rxd : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_txd : std_logic;
SIGNAL ww_fnd_30_out : std_logic;
SIGNAL ww_fnd_74_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \cs_n~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \fnd_30_out~output_o\ : std_logic;
SIGNAL \fnd_74_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~1\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~2_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[1]~8_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \n_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~3\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~5\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[3]~10_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal1~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[2]~5_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[2]~7_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[4]~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[4]~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[0]~9_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal2~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal2~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk_rise~q\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~1\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~2_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk[4]~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~3\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~4_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~3_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~5\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~6_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~2_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal0~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Equal0~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~7\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~8_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk[4]~5_combout\ : std_logic;
SIGNAL \u_spi_master_adc|Add1~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt_sclk~0_combout\ : std_logic;
SIGNAL \push_start~input_o\ : std_logic;
SIGNAL \d_push~q\ : std_logic;
SIGNAL \d2_push~feeder_combout\ : std_logic;
SIGNAL \d2_push~q\ : std_logic;
SIGNAL \w_push~combout\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d1~q\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d2~feeder_combout\ : std_logic;
SIGNAL \u_spi_master_adc|n_start_0d2~q\ : std_logic;
SIGNAL \u_spi_master_adc|w_n_start~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|w_n_start~q\ : std_logic;
SIGNAL \u_spi_master_adc|cs_n~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cs_n~q\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~7\ : std_logic;
SIGNAL \u_spi_master_adc|Add0~8_combout\ : std_logic;
SIGNAL \u_spi_master_adc|cnt[4]~11_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|sclk~q\ : std_logic;
SIGNAL \sdata~input_o\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[0]~0_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[0]~1_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \u_spi_master_adc|data_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div~3_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div~2_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div~1_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal0~0_combout\ : std_logic;
SIGNAL \baudrate~input_o\ : std_logic;
SIGNAL \u_uart_tx|cnt_tx_div~0_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data[8]~1_combout\ : std_logic;
SIGNAL \u_uart_tx|cnt_bit~0_combout\ : std_logic;
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
SIGNAL \u_byte2ascill|Selector0~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.IDLE~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector1~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.S1~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector2~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.W1~q\ : std_logic;
SIGNAL \u_byte2ascill|Selector3~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|c_state.S2~q\ : std_logic;
SIGNAL \u_byte2ascill|data_out[0]~3_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_en~1_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_en~q\ : std_logic;
SIGNAL \u_byte2ascill|top_4bit[3]~feeder_combout\ : std_logic;
SIGNAL \u_byte2ascill|top_4bit[2]~feeder_combout\ : std_logic;
SIGNAL \u_byte2ascill|top_4bit[0]~feeder_combout\ : std_logic;
SIGNAL \u_byte2ascill|top_4bit[1]~feeder_combout\ : std_logic;
SIGNAL \u_byte2ascill|Add0~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|Add1~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|LessThan1~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~14_combout\ : std_logic;
SIGNAL \u_byte2ascill|LessThan0~0_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~15_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out[0]~4_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~16_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~17_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~19_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~20_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal0~1_combout\ : std_logic;
SIGNAL \u_uart_tx|Equal2~0_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~10_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~9_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~8_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~7_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~18_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~6_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~5_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~11_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~10_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~12_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~13_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~4_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~7_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~8_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~9_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~3_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~5_combout\ : std_logic;
SIGNAL \u_byte2ascill|data_out~6_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~2_combout\ : std_logic;
SIGNAL \u_uart_tx|tx_data~0_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit~0_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add0~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Add0~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Add0~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~0_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer[2]~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Add1~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Add1~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Add1~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_en~0_combout\ : std_logic;
SIGNAL \inv_rxd~input_o\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d1~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d1~q\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d2~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d2~q\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d3~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d3~q\ : std_logic;
SIGNAL \u_uart_rx|start_en~0_combout\ : std_logic;
SIGNAL \u_uart_rx|start_en~q\ : std_logic;
SIGNAL \u_uart_rx|rx_en~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_en~q\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~9_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~10_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~11_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~8_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~7_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~6_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~5_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~4_combout\ : std_logic;
SIGNAL \fnd_data[3]~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal3~0_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~3_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~2_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~0_combout\ : std_logic;
SIGNAL \fnd_data[0]~0_combout\ : std_logic;
SIGNAL \fnd_data[1]~1_combout\ : std_logic;
SIGNAL \fnd_data[2]~2_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr6~0_combout\ : std_logic;
SIGNAL \fnd_data[4]~4_combout\ : std_logic;
SIGNAL \fnd_data[7]~7_combout\ : std_logic;
SIGNAL \fnd_data[5]~5_combout\ : std_logic;
SIGNAL \fnd_data[6]~6_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr6~0_combout\ : std_logic;
SIGNAL fnd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_spi_master_adc|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_spi_master_adc|data_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_spi_master_adc|cnt_sclk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_byte2ascill|top_4bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_byte2ascill|lower_4bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_byte2ascill|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_tx|tx_data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_uart_tx|cnt_tx_div\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_tx|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_rx|data_buffer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_uart_rx|cnt_rx_div\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_rx|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\ : std_logic;
SIGNAL \u_uart_rx|ALT_INV_rx_en~q\ : std_logic;
SIGNAL \u_byte2ascill|ALT_INV_data_out[0]~3_combout\ : std_logic;
SIGNAL \u_uart_tx|ALT_INV_tx_data[8]~1_combout\ : std_logic;
SIGNAL \u_uart_tx|ALT_INV_tx_en~q\ : std_logic;
SIGNAL \u_spi_master_adc|ALT_INV_cs_n~q\ : std_logic;
SIGNAL \u_spi_master_adc|ALT_INV_sclk~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_push_start <= push_start;
sclk <= ww_sclk;
cs_n <= ww_cs_n;
ww_sdata <= sdata;
ww_baudrate <= baudrate;
ww_inv_rxd <= inv_rxd;
led <= ww_led;
txd <= ww_txd;
fnd_30_out <= ww_fnd_30_out;
fnd_74_out <= ww_fnd_74_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\n_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \n_rst~input_o\);
\u_uart_rx|ALT_INV_data_buffer[2]~1_combout\ <= NOT \u_uart_rx|data_buffer[2]~1_combout\;
\u_uart_rx|ALT_INV_rx_en~q\ <= NOT \u_uart_rx|rx_en~q\;
\u_byte2ascill|ALT_INV_data_out[0]~3_combout\ <= NOT \u_byte2ascill|data_out[0]~3_combout\;
\u_uart_tx|ALT_INV_tx_data[8]~1_combout\ <= NOT \u_uart_tx|tx_data[8]~1_combout\;
\u_uart_tx|ALT_INV_tx_en~q\ <= NOT \u_uart_tx|tx_en~q\;
\u_spi_master_adc|ALT_INV_cs_n~q\ <= NOT \u_spi_master_adc|cs_n~q\;
\u_spi_master_adc|ALT_INV_sclk~q\ <= NOT \u_spi_master_adc|sclk~q\;

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X28_Y29_N23
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

-- Location: IOOBUF_X28_Y29_N30
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(1),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(2),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(4),
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(5),
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(6),
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_spi_master_adc|data_buffer\(7),
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
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

-- Location: IOOBUF_X35_Y29_N16
\fnd_30_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out~output_o\);

-- Location: IOOBUF_X41_Y27_N2
\fnd_74_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X28_Y28_N18
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

-- Location: LCCOMB_X28_Y28_N20
\u_spi_master_adc|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~2_combout\ = (\u_spi_master_adc|cnt\(1) & (!\u_spi_master_adc|Add0~1\)) # (!\u_spi_master_adc|cnt\(1) & ((\u_spi_master_adc|Add0~1\) # (GND)))
-- \u_spi_master_adc|Add0~3\ = CARRY((!\u_spi_master_adc|Add0~1\) # (!\u_spi_master_adc|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(1),
	datad => VCC,
	cin => \u_spi_master_adc|Add0~1\,
	combout => \u_spi_master_adc|Add0~2_combout\,
	cout => \u_spi_master_adc|Add0~3\);

-- Location: LCCOMB_X28_Y28_N30
\u_spi_master_adc|cnt[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[1]~8_combout\ = (\u_spi_master_adc|cnt[4]~6_combout\ & ((\u_spi_master_adc|Add0~2_combout\) # ((\u_spi_master_adc|cnt[2]~5_combout\ & \u_spi_master_adc|cnt\(1))))) # (!\u_spi_master_adc|cnt[4]~6_combout\ & 
-- (\u_spi_master_adc|cnt[2]~5_combout\ & (\u_spi_master_adc|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[4]~6_combout\,
	datab => \u_spi_master_adc|cnt[2]~5_combout\,
	datac => \u_spi_master_adc|cnt\(1),
	datad => \u_spi_master_adc|Add0~2_combout\,
	combout => \u_spi_master_adc|cnt[1]~8_combout\);

-- Location: IOIBUF_X0_Y14_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: CLKCTRL_G2
\n_rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \n_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \n_rst~inputclkctrl_outclk\);

-- Location: FF_X28_Y28_N31
\u_spi_master_adc|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[1]~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(1));

-- Location: LCCOMB_X28_Y28_N22
\u_spi_master_adc|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add0~4_combout\ = (\u_spi_master_adc|cnt\(2) & (\u_spi_master_adc|Add0~3\ $ (GND))) # (!\u_spi_master_adc|cnt\(2) & (!\u_spi_master_adc|Add0~3\ & VCC))
-- \u_spi_master_adc|Add0~5\ = CARRY((\u_spi_master_adc|cnt\(2) & !\u_spi_master_adc|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt\(2),
	datad => VCC,
	cin => \u_spi_master_adc|Add0~3\,
	combout => \u_spi_master_adc|Add0~4_combout\,
	cout => \u_spi_master_adc|Add0~5\);

-- Location: LCCOMB_X28_Y28_N24
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

-- Location: LCCOMB_X28_Y28_N4
\u_spi_master_adc|cnt[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[3]~10_combout\ = (\u_spi_master_adc|cnt[2]~5_combout\) # ((\u_spi_master_adc|cs_n~q\ & (\u_spi_master_adc|cnt[4]~4_combout\ & \u_spi_master_adc|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cs_n~q\,
	datab => \u_spi_master_adc|cnt[4]~4_combout\,
	datac => \u_spi_master_adc|cnt[2]~5_combout\,
	datad => \u_spi_master_adc|Add0~6_combout\,
	combout => \u_spi_master_adc|cnt[3]~10_combout\);

-- Location: FF_X28_Y28_N5
\u_spi_master_adc|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[3]~10_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(3));

-- Location: LCCOMB_X28_Y28_N0
\u_spi_master_adc|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal1~0_combout\ = ((\u_spi_master_adc|cnt\(2)) # ((!\u_spi_master_adc|cnt\(1)) # (!\u_spi_master_adc|cnt\(3)))) # (!\u_spi_master_adc|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(2),
	datac => \u_spi_master_adc|cnt\(3),
	datad => \u_spi_master_adc|cnt\(1),
	combout => \u_spi_master_adc|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y28_N8
\u_spi_master_adc|cnt[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[2]~5_combout\ = (\u_spi_master_adc|cs_n~q\ & (!\u_spi_master_adc|cnt[4]~4_combout\ & ((\u_spi_master_adc|cnt\(0)) # (\u_spi_master_adc|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cs_n~q\,
	datab => \u_spi_master_adc|cnt\(0),
	datac => \u_spi_master_adc|cnt[4]~4_combout\,
	datad => \u_spi_master_adc|Equal1~0_combout\,
	combout => \u_spi_master_adc|cnt[2]~5_combout\);

-- Location: LCCOMB_X28_Y28_N28
\u_spi_master_adc|cnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[2]~7_combout\ = (\u_spi_master_adc|cnt[4]~6_combout\ & ((\u_spi_master_adc|Add0~4_combout\) # ((\u_spi_master_adc|cnt[2]~5_combout\ & \u_spi_master_adc|cnt\(2))))) # (!\u_spi_master_adc|cnt[4]~6_combout\ & 
-- (\u_spi_master_adc|cnt[2]~5_combout\ & (\u_spi_master_adc|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[4]~6_combout\,
	datab => \u_spi_master_adc|cnt[2]~5_combout\,
	datac => \u_spi_master_adc|cnt\(2),
	datad => \u_spi_master_adc|Add0~4_combout\,
	combout => \u_spi_master_adc|cnt[2]~7_combout\);

-- Location: FF_X28_Y28_N29
\u_spi_master_adc|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[2]~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(2));

-- Location: LCCOMB_X28_Y28_N14
\u_spi_master_adc|cnt[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[4]~4_combout\ = (((!\u_spi_master_adc|cnt\(2) & !\u_spi_master_adc|cnt\(1))) # (!\u_spi_master_adc|cnt\(3))) # (!\u_spi_master_adc|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(2),
	datac => \u_spi_master_adc|cnt\(3),
	datad => \u_spi_master_adc|cnt\(1),
	combout => \u_spi_master_adc|cnt[4]~4_combout\);

-- Location: LCCOMB_X28_Y28_N12
\u_spi_master_adc|cnt[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[4]~6_combout\ = (\u_spi_master_adc|cs_n~q\ & \u_spi_master_adc|cnt[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cs_n~q\,
	datac => \u_spi_master_adc|cnt[4]~4_combout\,
	combout => \u_spi_master_adc|cnt[4]~6_combout\);

-- Location: LCCOMB_X28_Y28_N10
\u_spi_master_adc|cnt[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[0]~9_combout\ = (\u_spi_master_adc|cnt[4]~6_combout\ & ((\u_spi_master_adc|Add0~0_combout\) # ((\u_spi_master_adc|cnt[2]~5_combout\ & \u_spi_master_adc|cnt\(0))))) # (!\u_spi_master_adc|cnt[4]~6_combout\ & 
-- (\u_spi_master_adc|cnt[2]~5_combout\ & (\u_spi_master_adc|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt[4]~6_combout\,
	datab => \u_spi_master_adc|cnt[2]~5_combout\,
	datac => \u_spi_master_adc|cnt\(0),
	datad => \u_spi_master_adc|Add0~0_combout\,
	combout => \u_spi_master_adc|cnt[0]~9_combout\);

-- Location: FF_X28_Y28_N11
\u_spi_master_adc|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[0]~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(0));

-- Location: LCCOMB_X28_Y28_N2
\u_spi_master_adc|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal2~0_combout\ = (!\u_spi_master_adc|cnt\(1) & (!\u_spi_master_adc|cnt\(2) & (\u_spi_master_adc|cnt\(3) & \u_spi_master_adc|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(1),
	datab => \u_spi_master_adc|cnt\(2),
	datac => \u_spi_master_adc|cnt\(3),
	datad => \u_spi_master_adc|cnt\(4),
	combout => \u_spi_master_adc|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
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

-- Location: FF_X27_Y25_N5
\u_spi_master_adc|sclk_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|Equal2~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|sclk_rise~q\);

-- Location: LCCOMB_X26_Y25_N10
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

-- Location: LCCOMB_X26_Y25_N12
\u_spi_master_adc|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~2_combout\ = (\u_spi_master_adc|cnt_sclk\(1) & (!\u_spi_master_adc|Add1~1\)) # (!\u_spi_master_adc|cnt_sclk\(1) & ((\u_spi_master_adc|Add1~1\) # (GND)))
-- \u_spi_master_adc|Add1~3\ = CARRY((!\u_spi_master_adc|Add1~1\) # (!\u_spi_master_adc|cnt_sclk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(1),
	datad => VCC,
	cin => \u_spi_master_adc|Add1~1\,
	combout => \u_spi_master_adc|Add1~2_combout\,
	cout => \u_spi_master_adc|Add1~3\);

-- Location: LCCOMB_X26_Y25_N22
\u_spi_master_adc|cnt_sclk~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~4_combout\ = (\u_spi_master_adc|sclk_rise~q\ & (!\u_spi_master_adc|cnt_sclk\(4) & \u_spi_master_adc|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|Add1~2_combout\,
	combout => \u_spi_master_adc|cnt_sclk~4_combout\);

-- Location: LCCOMB_X26_Y25_N24
\u_spi_master_adc|cnt_sclk[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk[4]~1_combout\ = (\u_spi_master_adc|sclk_rise~q\ & (((!\u_spi_master_adc|cnt_sclk\(0) & !\u_spi_master_adc|Equal0~0_combout\)) # (!\u_spi_master_adc|cnt_sclk\(4)))) # (!\u_spi_master_adc|sclk_rise~q\ & 
-- (((!\u_spi_master_adc|cnt_sclk\(0) & !\u_spi_master_adc|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datac => \u_spi_master_adc|cnt_sclk\(0),
	datad => \u_spi_master_adc|Equal0~0_combout\,
	combout => \u_spi_master_adc|cnt_sclk[4]~1_combout\);

-- Location: FF_X26_Y25_N23
\u_spi_master_adc|cnt_sclk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|cnt_sclk[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(1));

-- Location: LCCOMB_X26_Y25_N14
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

-- Location: LCCOMB_X26_Y25_N8
\u_spi_master_adc|cnt_sclk~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~3_combout\ = (\u_spi_master_adc|sclk_rise~q\ & (\u_spi_master_adc|Add1~4_combout\ & !\u_spi_master_adc|cnt_sclk\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datac => \u_spi_master_adc|Add1~4_combout\,
	datad => \u_spi_master_adc|cnt_sclk\(4),
	combout => \u_spi_master_adc|cnt_sclk~3_combout\);

-- Location: FF_X26_Y25_N9
\u_spi_master_adc|cnt_sclk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|cnt_sclk[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(2));

-- Location: LCCOMB_X26_Y25_N16
\u_spi_master_adc|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~6_combout\ = (\u_spi_master_adc|cnt_sclk\(3) & (!\u_spi_master_adc|Add1~5\)) # (!\u_spi_master_adc|cnt_sclk\(3) & ((\u_spi_master_adc|Add1~5\) # (GND)))
-- \u_spi_master_adc|Add1~7\ = CARRY((!\u_spi_master_adc|Add1~5\) # (!\u_spi_master_adc|cnt_sclk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_spi_master_adc|cnt_sclk\(3),
	datad => VCC,
	cin => \u_spi_master_adc|Add1~5\,
	combout => \u_spi_master_adc|Add1~6_combout\,
	cout => \u_spi_master_adc|Add1~7\);

-- Location: LCCOMB_X26_Y25_N2
\u_spi_master_adc|cnt_sclk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~2_combout\ = (\u_spi_master_adc|sclk_rise~q\ & (!\u_spi_master_adc|cnt_sclk\(4) & \u_spi_master_adc|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|Add1~6_combout\,
	combout => \u_spi_master_adc|cnt_sclk~2_combout\);

-- Location: FF_X26_Y25_N3
\u_spi_master_adc|cnt_sclk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|cnt_sclk[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(3));

-- Location: LCCOMB_X26_Y25_N28
\u_spi_master_adc|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal0~0_combout\ = (\u_spi_master_adc|cnt_sclk\(1)) # (((\u_spi_master_adc|cnt_sclk\(2)) # (\u_spi_master_adc|cnt_sclk\(3))) # (!\u_spi_master_adc|cnt_sclk\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(1),
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datac => \u_spi_master_adc|cnt_sclk\(2),
	datad => \u_spi_master_adc|cnt_sclk\(3),
	combout => \u_spi_master_adc|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y25_N6
\u_spi_master_adc|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Equal0~1_combout\ = (\u_spi_master_adc|cnt_sclk\(0)) # (\u_spi_master_adc|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|cnt_sclk\(0),
	datad => \u_spi_master_adc|Equal0~0_combout\,
	combout => \u_spi_master_adc|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y25_N18
\u_spi_master_adc|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|Add1~8_combout\ = \u_spi_master_adc|Add1~7\ $ (!\u_spi_master_adc|cnt_sclk\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|cnt_sclk\(4),
	cin => \u_spi_master_adc|Add1~7\,
	combout => \u_spi_master_adc|Add1~8_combout\);

-- Location: LCCOMB_X26_Y25_N0
\u_spi_master_adc|cnt_sclk[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk[4]~5_combout\ = (\u_spi_master_adc|cnt_sclk\(4) & (((\u_spi_master_adc|Equal0~1_combout\)))) # (!\u_spi_master_adc|cnt_sclk\(4) & (\u_spi_master_adc|sclk_rise~q\ & ((\u_spi_master_adc|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datab => \u_spi_master_adc|Equal0~1_combout\,
	datac => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|Add1~8_combout\,
	combout => \u_spi_master_adc|cnt_sclk[4]~5_combout\);

-- Location: FF_X26_Y25_N1
\u_spi_master_adc|cnt_sclk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk[4]~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(4));

-- Location: LCCOMB_X26_Y25_N20
\u_spi_master_adc|cnt_sclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt_sclk~0_combout\ = (\u_spi_master_adc|sclk_rise~q\ & (!\u_spi_master_adc|cnt_sclk\(4) & \u_spi_master_adc|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|sclk_rise~q\,
	datab => \u_spi_master_adc|cnt_sclk\(4),
	datad => \u_spi_master_adc|Add1~0_combout\,
	combout => \u_spi_master_adc|cnt_sclk~0_combout\);

-- Location: FF_X26_Y25_N21
\u_spi_master_adc|cnt_sclk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt_sclk~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|cnt_sclk[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt_sclk\(0));

-- Location: IOIBUF_X28_Y29_N8
\push_start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_start,
	o => \push_start~input_o\);

-- Location: FF_X28_Y28_N21
d_push : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \push_start~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_push~q\);

-- Location: LCCOMB_X27_Y28_N10
\d2_push~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2_push~feeder_combout\ = \d_push~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_push~q\,
	combout => \d2_push~feeder_combout\);

-- Location: FF_X27_Y28_N11
d2_push : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2_push~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2_push~q\);

-- Location: LCCOMB_X27_Y28_N22
w_push : cycloneiii_lcell_comb
-- Equation(s):
-- \w_push~combout\ = (\d2_push~q\) # (!\d_push~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_push~q\,
	datad => \d2_push~q\,
	combout => \w_push~combout\);

-- Location: FF_X27_Y28_N23
\u_spi_master_adc|n_start_0d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w_push~combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|n_start_0d1~q\);

-- Location: LCCOMB_X27_Y28_N12
\u_spi_master_adc|n_start_0d2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|n_start_0d2~feeder_combout\ = \u_spi_master_adc|n_start_0d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|n_start_0d1~q\,
	combout => \u_spi_master_adc|n_start_0d2~feeder_combout\);

-- Location: FF_X27_Y28_N13
\u_spi_master_adc|n_start_0d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|n_start_0d2~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|n_start_0d2~q\);

-- Location: LCCOMB_X27_Y28_N24
\u_spi_master_adc|w_n_start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|w_n_start~0_combout\ = (!\u_spi_master_adc|n_start_0d2~q\ & \u_spi_master_adc|n_start_0d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|n_start_0d2~q\,
	datac => \u_spi_master_adc|n_start_0d1~q\,
	combout => \u_spi_master_adc|w_n_start~0_combout\);

-- Location: FF_X27_Y28_N25
\u_spi_master_adc|w_n_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|w_n_start~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|w_n_start~q\);

-- Location: LCCOMB_X27_Y28_N14
\u_spi_master_adc|cs_n~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cs_n~0_combout\ = (\u_spi_master_adc|w_n_start~q\) # ((\u_spi_master_adc|cs_n~q\ & ((\u_spi_master_adc|cnt_sclk\(0)) # (\u_spi_master_adc|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(0),
	datab => \u_spi_master_adc|w_n_start~q\,
	datac => \u_spi_master_adc|cs_n~q\,
	datad => \u_spi_master_adc|Equal0~0_combout\,
	combout => \u_spi_master_adc|cs_n~0_combout\);

-- Location: FF_X27_Y28_N15
\u_spi_master_adc|cs_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cs_n~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cs_n~q\);

-- Location: LCCOMB_X28_Y28_N26
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

-- Location: LCCOMB_X28_Y28_N6
\u_spi_master_adc|cnt[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|cnt[4]~11_combout\ = (\u_spi_master_adc|cnt[2]~5_combout\) # ((\u_spi_master_adc|cs_n~q\ & (\u_spi_master_adc|cnt[4]~4_combout\ & \u_spi_master_adc|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cs_n~q\,
	datab => \u_spi_master_adc|cnt[4]~4_combout\,
	datac => \u_spi_master_adc|Add0~8_combout\,
	datad => \u_spi_master_adc|cnt[2]~5_combout\,
	combout => \u_spi_master_adc|cnt[4]~11_combout\);

-- Location: FF_X28_Y28_N7
\u_spi_master_adc|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|cnt[4]~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|cnt\(4));

-- Location: LCCOMB_X28_Y28_N16
\u_spi_master_adc|sclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|sclk~0_combout\ = (\u_spi_master_adc|cnt\(2)) # ((\u_spi_master_adc|cnt\(4) & \u_spi_master_adc|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(1),
	datad => \u_spi_master_adc|cnt\(2),
	combout => \u_spi_master_adc|sclk~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\u_spi_master_adc|sclk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|sclk~1_combout\ = (\u_spi_master_adc|cnt\(4) & (((\u_spi_master_adc|sclk~q\) # (!\u_spi_master_adc|sclk~0_combout\)) # (!\u_spi_master_adc|cnt\(3)))) # (!\u_spi_master_adc|cnt\(4) & (\u_spi_master_adc|cnt\(3) & 
-- ((\u_spi_master_adc|sclk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt\(4),
	datab => \u_spi_master_adc|cnt\(3),
	datac => \u_spi_master_adc|sclk~q\,
	datad => \u_spi_master_adc|sclk~0_combout\,
	combout => \u_spi_master_adc|sclk~1_combout\);

-- Location: FF_X27_Y28_N1
\u_spi_master_adc|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|sclk~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|sclk~q\);

-- Location: IOIBUF_X28_Y29_N15
\sdata~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdata,
	o => \sdata~input_o\);

-- Location: LCCOMB_X26_Y25_N30
\u_spi_master_adc|data_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[0]~0_combout\ = \u_spi_master_adc|cnt_sclk\(3) $ (((\u_spi_master_adc|cnt_sclk\(2)) # ((\u_spi_master_adc|cnt_sclk\(1) & \u_spi_master_adc|cnt_sclk\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(1),
	datab => \u_spi_master_adc|cnt_sclk\(0),
	datac => \u_spi_master_adc|cnt_sclk\(2),
	datad => \u_spi_master_adc|cnt_sclk\(3),
	combout => \u_spi_master_adc|data_buffer[0]~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\u_spi_master_adc|data_buffer[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[0]~1_combout\ = (!\u_spi_master_adc|cnt_sclk\(4) & (\u_spi_master_adc|sclk_rise~q\ & \u_spi_master_adc|data_buffer[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi_master_adc|cnt_sclk\(4),
	datab => \u_spi_master_adc|sclk_rise~q\,
	datad => \u_spi_master_adc|data_buffer[0]~0_combout\,
	combout => \u_spi_master_adc|data_buffer[0]~1_combout\);

-- Location: FF_X27_Y25_N21
\u_spi_master_adc|data_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sdata~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(0));

-- Location: FF_X27_Y25_N11
\u_spi_master_adc|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(1));

-- Location: FF_X27_Y25_N1
\u_spi_master_adc|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(2));

-- Location: LCCOMB_X27_Y25_N26
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

-- Location: FF_X27_Y25_N27
\u_spi_master_adc|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[3]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(3));

-- Location: LCCOMB_X27_Y25_N24
\u_spi_master_adc|data_buffer[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[4]~feeder_combout\ = \u_spi_master_adc|data_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(3),
	combout => \u_spi_master_adc|data_buffer[4]~feeder_combout\);

-- Location: FF_X27_Y25_N25
\u_spi_master_adc|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[4]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(4));

-- Location: LCCOMB_X27_Y25_N22
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

-- Location: FF_X27_Y25_N23
\u_spi_master_adc|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[5]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(5));

-- Location: LCCOMB_X27_Y25_N16
\u_spi_master_adc|data_buffer[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_spi_master_adc|data_buffer[6]~feeder_combout\ = \u_spi_master_adc|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|data_buffer\(5),
	combout => \u_spi_master_adc|data_buffer[6]~feeder_combout\);

-- Location: FF_X27_Y25_N17
\u_spi_master_adc|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[6]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(6));

-- Location: LCCOMB_X27_Y25_N2
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

-- Location: FF_X27_Y25_N3
\u_spi_master_adc|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_spi_master_adc|data_buffer[7]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_spi_master_adc|data_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_spi_master_adc|data_buffer\(7));

-- Location: LCCOMB_X27_Y26_N0
\u_uart_tx|cnt_tx_div~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div~3_combout\ = (!\u_uart_tx|cnt_tx_div\(0) & \u_uart_tx|tx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_tx|cnt_tx_div\(0),
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|cnt_tx_div~3_combout\);

-- Location: FF_X27_Y26_N1
\u_uart_tx|cnt_tx_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(0));

-- Location: LCCOMB_X27_Y26_N26
\u_uart_tx|cnt_tx_div~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div~2_combout\ = (\u_uart_tx|tx_data[8]~1_combout\ & (\u_uart_tx|cnt_tx_div\(0) $ (\u_uart_tx|cnt_tx_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(0),
	datac => \u_uart_tx|cnt_tx_div\(1),
	datad => \u_uart_tx|tx_data[8]~1_combout\,
	combout => \u_uart_tx|cnt_tx_div~2_combout\);

-- Location: FF_X27_Y26_N27
\u_uart_tx|cnt_tx_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(1));

-- Location: LCCOMB_X27_Y26_N8
\u_uart_tx|cnt_tx_div~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div~1_combout\ = (\u_uart_tx|tx_data[8]~1_combout\ & (\u_uart_tx|cnt_tx_div\(2) $ (((\u_uart_tx|cnt_tx_div\(0) & \u_uart_tx|cnt_tx_div\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(0),
	datab => \u_uart_tx|cnt_tx_div\(1),
	datac => \u_uart_tx|cnt_tx_div\(2),
	datad => \u_uart_tx|tx_data[8]~1_combout\,
	combout => \u_uart_tx|cnt_tx_div~1_combout\);

-- Location: FF_X27_Y26_N9
\u_uart_tx|cnt_tx_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(2));

-- Location: LCCOMB_X27_Y26_N2
\u_uart_tx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal0~0_combout\ = (\u_uart_tx|cnt_tx_div\(1) & (\u_uart_tx|cnt_tx_div\(2) & \u_uart_tx|cnt_tx_div\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(1),
	datac => \u_uart_tx|cnt_tx_div\(2),
	datad => \u_uart_tx|cnt_tx_div\(0),
	combout => \u_uart_tx|Equal0~0_combout\);

-- Location: IOIBUF_X32_Y29_N8
\baudrate~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baudrate,
	o => \baudrate~input_o\);

-- Location: LCCOMB_X27_Y26_N22
\u_uart_tx|cnt_tx_div~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_tx_div~0_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal0~0_combout\ & (!\baudrate~input_o\ & !\u_uart_tx|cnt_tx_div\(3))) # (!\u_uart_tx|Equal0~0_combout\ & ((\u_uart_tx|cnt_tx_div\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|Equal0~0_combout\,
	datab => \baudrate~input_o\,
	datac => \u_uart_tx|cnt_tx_div\(3),
	datad => \u_uart_tx|tx_en~q\,
	combout => \u_uart_tx|cnt_tx_div~0_combout\);

-- Location: FF_X27_Y26_N23
\u_uart_tx|cnt_tx_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|cnt_tx_div~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_tx_div\(3));

-- Location: LCCOMB_X27_Y26_N16
\u_uart_tx|tx_data[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data[8]~1_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|cnt_tx_div\(3) $ (!\baudrate~input_o\)) # (!\u_uart_tx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(3),
	datab => \baudrate~input_o\,
	datac => \u_uart_tx|tx_en~q\,
	datad => \u_uart_tx|Equal0~0_combout\,
	combout => \u_uart_tx|tx_data[8]~1_combout\);

-- Location: LCCOMB_X28_Y26_N30
\u_uart_tx|cnt_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|cnt_bit~0_combout\ = (\u_uart_tx|tx_en~q\ & !\u_uart_tx|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_tx|tx_en~q\,
	datad => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|cnt_bit~0_combout\);

-- Location: FF_X27_Y26_N15
\u_uart_tx|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_tx|cnt_bit~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(0));

-- Location: LCCOMB_X28_Y26_N28
\u_uart_tx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Add1~0_combout\ = \u_uart_tx|cnt_bit\(1) $ (\u_uart_tx|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_tx|cnt_bit\(1),
	datad => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|Add1~0_combout\);

-- Location: FF_X28_Y26_N29
\u_uart_tx|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|Add1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_tx|ALT_INV_tx_en~q\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(1));

-- Location: LCCOMB_X28_Y26_N12
\u_uart_tx|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Add1~2_combout\ = \u_uart_tx|cnt_bit\(2) $ (((\u_uart_tx|cnt_bit\(1) & \u_uart_tx|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|cnt_bit\(1),
	datac => \u_uart_tx|cnt_bit\(2),
	datad => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|Add1~2_combout\);

-- Location: FF_X28_Y26_N13
\u_uart_tx|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|Add1~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_tx|ALT_INV_tx_en~q\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(2));

-- Location: LCCOMB_X28_Y26_N26
\u_uart_tx|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Add1~1_combout\ = \u_uart_tx|cnt_bit\(3) $ (((\u_uart_tx|cnt_bit\(2) & (\u_uart_tx|cnt_bit\(1) & \u_uart_tx|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(1),
	datac => \u_uart_tx|cnt_bit\(3),
	datad => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|Add1~1_combout\);

-- Location: FF_X28_Y26_N27
\u_uart_tx|cnt_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|Add1~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_tx|ALT_INV_tx_en~q\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|cnt_bit\(3));

-- Location: LCCOMB_X28_Y26_N16
\u_uart_tx|tx_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_en~0_combout\ = (!\u_uart_tx|cnt_bit\(2) & (\u_uart_tx|cnt_bit\(1) & (\u_uart_tx|cnt_bit\(3) & \u_uart_tx|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(1),
	datac => \u_uart_tx|cnt_bit\(3),
	datad => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|tx_en~0_combout\);

-- Location: LCCOMB_X28_Y26_N20
\u_uart_tx|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal3~0_combout\ = (\u_uart_tx|cnt_bit\(2) & (!\u_uart_tx|cnt_bit\(1) & (\u_uart_tx|cnt_bit\(3) & !\u_uart_tx|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(2),
	datab => \u_uart_tx|cnt_bit\(1),
	datac => \u_uart_tx|cnt_bit\(3),
	datad => \u_uart_tx|cnt_bit\(0),
	combout => \u_uart_tx|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y26_N6
\u_byte2ascill|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector4~0_combout\ = (\u_byte2ascill|c_state.S2~q\) # ((\u_byte2ascill|c_state.W2~q\ & !\u_uart_tx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|c_state.S2~q\,
	datac => \u_byte2ascill|c_state.W2~q\,
	datad => \u_uart_tx|Equal3~0_combout\,
	combout => \u_byte2ascill|Selector4~0_combout\);

-- Location: FF_X28_Y26_N7
\u_byte2ascill|c_state.W2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector4~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W2~q\);

-- Location: LCCOMB_X29_Y25_N24
\u_byte2ascill|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector5~0_combout\ = (\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_tx|Equal3~0_combout\,
	datad => \u_byte2ascill|c_state.W2~q\,
	combout => \u_byte2ascill|Selector5~0_combout\);

-- Location: FF_X29_Y25_N25
\u_byte2ascill|c_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector5~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S3~q\);

-- Location: LCCOMB_X28_Y26_N4
\u_byte2ascill|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector6~0_combout\ = (\u_byte2ascill|c_state.S3~q\) # ((\u_byte2ascill|c_state.W3~q\ & !\u_uart_tx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S3~q\,
	datac => \u_byte2ascill|c_state.W3~q\,
	datad => \u_uart_tx|Equal3~0_combout\,
	combout => \u_byte2ascill|Selector6~0_combout\);

-- Location: FF_X28_Y26_N5
\u_byte2ascill|c_state.W3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector6~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W3~q\);

-- Location: LCCOMB_X27_Y25_N30
\u_byte2ascill|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector0~0_combout\ = (\u_byte2ascill|c_state.W3~q\ & (!\u_uart_tx|Equal3~0_combout\ & ((\u_byte2ascill|c_state.IDLE~q\) # (!\u_spi_master_adc|Equal0~1_combout\)))) # (!\u_byte2ascill|c_state.W3~q\ & (((\u_byte2ascill|c_state.IDLE~q\)) # 
-- (!\u_spi_master_adc|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.W3~q\,
	datab => \u_spi_master_adc|Equal0~1_combout\,
	datac => \u_byte2ascill|c_state.IDLE~q\,
	datad => \u_uart_tx|Equal3~0_combout\,
	combout => \u_byte2ascill|Selector0~0_combout\);

-- Location: FF_X27_Y25_N31
\u_byte2ascill|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.IDLE~q\);

-- Location: LCCOMB_X28_Y25_N26
\u_byte2ascill|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector1~0_combout\ = (!\u_byte2ascill|c_state.IDLE~q\ & (!\u_spi_master_adc|cnt_sclk\(0) & !\u_spi_master_adc|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|c_state.IDLE~q\,
	datac => \u_spi_master_adc|cnt_sclk\(0),
	datad => \u_spi_master_adc|Equal0~0_combout\,
	combout => \u_byte2ascill|Selector1~0_combout\);

-- Location: FF_X28_Y25_N27
\u_byte2ascill|c_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S1~q\);

-- Location: LCCOMB_X28_Y26_N14
\u_byte2ascill|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector2~0_combout\ = (\u_byte2ascill|c_state.S1~q\) # ((\u_byte2ascill|c_state.W1~q\ & !\u_uart_tx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datac => \u_byte2ascill|c_state.W1~q\,
	datad => \u_uart_tx|Equal3~0_combout\,
	combout => \u_byte2ascill|Selector2~0_combout\);

-- Location: FF_X28_Y26_N15
\u_byte2ascill|c_state.W1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector2~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.W1~q\);

-- Location: LCCOMB_X29_Y25_N26
\u_byte2ascill|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Selector3~0_combout\ = (\u_uart_tx|Equal3~0_combout\ & \u_byte2ascill|c_state.W1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_tx|Equal3~0_combout\,
	datad => \u_byte2ascill|c_state.W1~q\,
	combout => \u_byte2ascill|Selector3~0_combout\);

-- Location: FF_X29_Y25_N27
\u_byte2ascill|c_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|Selector3~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|c_state.S2~q\);

-- Location: LCCOMB_X29_Y25_N28
\u_byte2ascill|data_out[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out[0]~3_combout\ = (!\u_byte2ascill|c_state.S2~q\ & (!\u_byte2ascill|c_state.S1~q\ & !\u_byte2ascill|c_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S2~q\,
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|c_state.S3~q\,
	combout => \u_byte2ascill|data_out[0]~3_combout\);

-- Location: LCCOMB_X28_Y26_N8
\u_uart_tx|tx_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_en~1_combout\ = (\u_uart_tx|tx_data[8]~1_combout\) # (((!\u_uart_tx|tx_en~0_combout\ & \u_uart_tx|tx_en~q\)) # (!\u_byte2ascill|data_out[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_data[8]~1_combout\,
	datab => \u_uart_tx|tx_en~0_combout\,
	datac => \u_uart_tx|tx_en~q\,
	datad => \u_byte2ascill|data_out[0]~3_combout\,
	combout => \u_uart_tx|tx_en~1_combout\);

-- Location: FF_X28_Y26_N9
\u_uart_tx|tx_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_en~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_en~q\);

-- Location: LCCOMB_X27_Y25_N12
\u_byte2ascill|top_4bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|top_4bit[3]~feeder_combout\ = \u_spi_master_adc|data_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(7),
	combout => \u_byte2ascill|top_4bit[3]~feeder_combout\);

-- Location: FF_X27_Y25_N13
\u_byte2ascill|top_4bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|top_4bit[3]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|top_4bit\(3));

-- Location: LCCOMB_X27_Y25_N18
\u_byte2ascill|top_4bit[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|top_4bit[2]~feeder_combout\ = \u_spi_master_adc|data_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(6),
	combout => \u_byte2ascill|top_4bit[2]~feeder_combout\);

-- Location: FF_X27_Y25_N19
\u_byte2ascill|top_4bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|top_4bit[2]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|top_4bit\(2));

-- Location: LCCOMB_X27_Y25_N14
\u_byte2ascill|top_4bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|top_4bit[0]~feeder_combout\ = \u_spi_master_adc|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_spi_master_adc|data_buffer\(4),
	combout => \u_byte2ascill|top_4bit[0]~feeder_combout\);

-- Location: FF_X27_Y25_N15
\u_byte2ascill|top_4bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|top_4bit[0]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|top_4bit\(0));

-- Location: LCCOMB_X27_Y25_N28
\u_byte2ascill|top_4bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|top_4bit[1]~feeder_combout\ = \u_spi_master_adc|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_spi_master_adc|data_buffer\(5),
	combout => \u_byte2ascill|top_4bit[1]~feeder_combout\);

-- Location: FF_X27_Y25_N29
\u_byte2ascill|top_4bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|top_4bit[1]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|top_4bit\(1));

-- Location: LCCOMB_X27_Y25_N8
\u_byte2ascill|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Add0~0_combout\ = \u_byte2ascill|top_4bit\(3) $ (((\u_byte2ascill|top_4bit\(2)) # ((\u_byte2ascill|top_4bit\(0)) # (\u_byte2ascill|top_4bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|top_4bit\(3),
	datab => \u_byte2ascill|top_4bit\(2),
	datac => \u_byte2ascill|top_4bit\(0),
	datad => \u_byte2ascill|top_4bit\(1),
	combout => \u_byte2ascill|Add0~0_combout\);

-- Location: FF_X28_Y25_N15
\u_byte2ascill|lower_4bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(1),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|lower_4bit\(1));

-- Location: FF_X28_Y25_N9
\u_byte2ascill|lower_4bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|lower_4bit\(0));

-- Location: FF_X28_Y25_N23
\u_byte2ascill|lower_4bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(3),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|lower_4bit\(3));

-- Location: FF_X28_Y25_N21
\u_byte2ascill|lower_4bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_spi_master_adc|data_buffer\(2),
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|lower_4bit\(2));

-- Location: LCCOMB_X28_Y25_N22
\u_byte2ascill|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|Add1~0_combout\ = \u_byte2ascill|lower_4bit\(3) $ (((\u_byte2ascill|lower_4bit\(1)) # ((\u_byte2ascill|lower_4bit\(0)) # (\u_byte2ascill|lower_4bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|lower_4bit\(1),
	datab => \u_byte2ascill|lower_4bit\(0),
	datac => \u_byte2ascill|lower_4bit\(3),
	datad => \u_byte2ascill|lower_4bit\(2),
	combout => \u_byte2ascill|Add1~0_combout\);

-- Location: LCCOMB_X28_Y25_N8
\u_byte2ascill|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|LessThan1~0_combout\ = (\u_byte2ascill|lower_4bit\(3) & ((\u_byte2ascill|lower_4bit\(2)) # (\u_byte2ascill|lower_4bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|lower_4bit\(3),
	datab => \u_byte2ascill|lower_4bit\(2),
	datad => \u_byte2ascill|lower_4bit\(1),
	combout => \u_byte2ascill|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\u_byte2ascill|data_out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~14_combout\ = (\u_byte2ascill|c_state.S1~q\ & ((\u_byte2ascill|top_4bit\(3)))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|lower_4bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|lower_4bit\(3),
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|top_4bit\(3),
	combout => \u_byte2ascill|data_out~14_combout\);

-- Location: LCCOMB_X27_Y25_N10
\u_byte2ascill|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|LessThan0~0_combout\ = (\u_byte2ascill|top_4bit\(3) & ((\u_byte2ascill|top_4bit\(2)) # (\u_byte2ascill|top_4bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|top_4bit\(3),
	datab => \u_byte2ascill|top_4bit\(2),
	datad => \u_byte2ascill|top_4bit\(1),
	combout => \u_byte2ascill|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y25_N4
\u_byte2ascill|data_out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~15_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((\u_byte2ascill|data_out~14_combout\) # (\u_byte2ascill|LessThan0~0_combout\)))) # (!\u_byte2ascill|c_state.S1~q\ & (!\u_byte2ascill|LessThan1~0_combout\ & 
-- (\u_byte2ascill|data_out~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|LessThan1~0_combout\,
	datac => \u_byte2ascill|data_out~14_combout\,
	datad => \u_byte2ascill|LessThan0~0_combout\,
	combout => \u_byte2ascill|data_out~15_combout\);

-- Location: LCCOMB_X28_Y25_N28
\u_byte2ascill|data_out[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out[0]~4_combout\ = (\u_byte2ascill|c_state.S1~q\ & ((\u_byte2ascill|LessThan0~0_combout\))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datac => \u_byte2ascill|LessThan1~0_combout\,
	datad => \u_byte2ascill|LessThan0~0_combout\,
	combout => \u_byte2ascill|data_out[0]~4_combout\);

-- Location: LCCOMB_X28_Y25_N2
\u_byte2ascill|data_out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~16_combout\ = (\u_byte2ascill|data_out~15_combout\ & ((\u_byte2ascill|Add0~0_combout\) # ((!\u_byte2ascill|data_out[0]~4_combout\)))) # (!\u_byte2ascill|data_out~15_combout\ & (((\u_byte2ascill|Add1~0_combout\ & 
-- \u_byte2ascill|data_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|Add0~0_combout\,
	datab => \u_byte2ascill|Add1~0_combout\,
	datac => \u_byte2ascill|data_out~15_combout\,
	datad => \u_byte2ascill|data_out[0]~4_combout\,
	combout => \u_byte2ascill|data_out~16_combout\);

-- Location: LCCOMB_X28_Y25_N12
\u_byte2ascill|data_out~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~17_combout\ = (\u_byte2ascill|data_out~16_combout\ & ((\u_byte2ascill|c_state.S1~q\) # (\u_byte2ascill|c_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|c_state.S2~q\,
	datad => \u_byte2ascill|data_out~16_combout\,
	combout => \u_byte2ascill|data_out~17_combout\);

-- Location: FF_X28_Y25_N13
\u_byte2ascill|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~17_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(3));

-- Location: LCCOMB_X29_Y25_N0
\u_byte2ascill|data_out~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~19_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((!\u_byte2ascill|LessThan0~0_combout\)))) # (!\u_byte2ascill|c_state.S1~q\ & (((!\u_byte2ascill|LessThan1~0_combout\)) # (!\u_byte2ascill|c_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S2~q\,
	datab => \u_byte2ascill|LessThan0~0_combout\,
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|LessThan1~0_combout\,
	combout => \u_byte2ascill|data_out~19_combout\);

-- Location: FF_X29_Y25_N1
\u_byte2ascill|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~19_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(5));

-- Location: LCCOMB_X29_Y25_N30
\u_byte2ascill|data_out~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~20_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((\u_byte2ascill|LessThan0~0_combout\)))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|c_state.S2~q\ & ((\u_byte2ascill|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S2~q\,
	datab => \u_byte2ascill|LessThan0~0_combout\,
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|LessThan1~0_combout\,
	combout => \u_byte2ascill|data_out~20_combout\);

-- Location: FF_X29_Y25_N31
\u_byte2ascill|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~20_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(6));

-- Location: LCCOMB_X27_Y26_N14
\u_uart_tx|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal0~1_combout\ = (\u_uart_tx|cnt_tx_div\(3) $ (!\baudrate~input_o\)) # (!\u_uart_tx|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_tx_div\(3),
	datab => \baudrate~input_o\,
	datad => \u_uart_tx|Equal0~0_combout\,
	combout => \u_uart_tx|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y26_N18
\u_uart_tx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|Equal2~0_combout\ = (\u_uart_tx|cnt_bit\(0)) # ((\u_uart_tx|cnt_bit\(1)) # ((\u_uart_tx|cnt_bit\(3)) # (\u_uart_tx|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|cnt_bit\(0),
	datab => \u_uart_tx|cnt_bit\(1),
	datac => \u_uart_tx|cnt_bit\(3),
	datad => \u_uart_tx|cnt_bit\(2),
	combout => \u_uart_tx|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y26_N10
\u_uart_tx|tx_data~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~10_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal0~1_combout\ & (\u_uart_tx|tx_data\(9))) # (!\u_uart_tx|Equal0~1_combout\ & ((!\u_uart_tx|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|Equal0~1_combout\,
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|tx_data\(9),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~10_combout\);

-- Location: FF_X28_Y26_N11
\u_uart_tx|tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~10_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(9));

-- Location: LCCOMB_X27_Y26_N6
\u_uart_tx|tx_data~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~9_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|tx_data\(9)) # (!\u_uart_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|tx_data\(9),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~9_combout\);

-- Location: FF_X27_Y26_N7
\u_uart_tx|tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(8));

-- Location: LCCOMB_X27_Y26_N4
\u_uart_tx|tx_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~8_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(8)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|data_out\(6),
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|tx_data\(8),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~8_combout\);

-- Location: FF_X27_Y26_N5
\u_uart_tx|tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(7));

-- Location: LCCOMB_X27_Y26_N18
\u_uart_tx|tx_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~7_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(7)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|data_out\(5),
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|tx_data\(7),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~7_combout\);

-- Location: FF_X27_Y26_N19
\u_uart_tx|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(6));

-- Location: LCCOMB_X29_Y25_N22
\u_byte2ascill|data_out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~18_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((!\u_byte2ascill|LessThan0~0_combout\)))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|c_state.S2~q\ & ((!\u_byte2ascill|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S2~q\,
	datab => \u_byte2ascill|LessThan0~0_combout\,
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|LessThan1~0_combout\,
	combout => \u_byte2ascill|data_out~18_combout\);

-- Location: FF_X29_Y25_N23
\u_byte2ascill|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~18_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(4));

-- Location: LCCOMB_X27_Y26_N20
\u_uart_tx|tx_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~6_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & (\u_uart_tx|tx_data\(6))) # (!\u_uart_tx|Equal2~0_combout\ & ((!\u_byte2ascill|data_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_data\(6),
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_byte2ascill|data_out\(4),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~6_combout\);

-- Location: FF_X27_Y26_N21
\u_uart_tx|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(5));

-- Location: LCCOMB_X27_Y26_N10
\u_uart_tx|tx_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~5_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & ((\u_uart_tx|tx_data\(5)))) # (!\u_uart_tx|Equal2~0_combout\ & (!\u_byte2ascill|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|data_out\(3),
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_uart_tx|tx_data\(5),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~5_combout\);

-- Location: FF_X27_Y26_N11
\u_uart_tx|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(4));

-- Location: LCCOMB_X28_Y25_N14
\u_byte2ascill|data_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~11_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((\u_byte2ascill|top_4bit\(2))))) # (!\u_byte2ascill|c_state.S1~q\ & ((\u_byte2ascill|lower_4bit\(0)) # ((\u_byte2ascill|lower_4bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|lower_4bit\(0),
	datac => \u_byte2ascill|lower_4bit\(1),
	datad => \u_byte2ascill|top_4bit\(2),
	combout => \u_byte2ascill|data_out~11_combout\);

-- Location: LCCOMB_X27_Y25_N0
\u_byte2ascill|data_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~10_combout\ = (\u_byte2ascill|top_4bit\(0)) # (\u_byte2ascill|top_4bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_byte2ascill|top_4bit\(0),
	datad => \u_byte2ascill|top_4bit\(1),
	combout => \u_byte2ascill|data_out~10_combout\);

-- Location: LCCOMB_X28_Y25_N18
\u_byte2ascill|data_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~12_combout\ = (\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|data_out~11_combout\ $ (((!\u_byte2ascill|data_out~10_combout\ & \u_byte2ascill|data_out[0]~4_combout\))))) # (!\u_byte2ascill|c_state.S1~q\ & 
-- (!\u_byte2ascill|data_out~11_combout\ & ((\u_byte2ascill|data_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|data_out~11_combout\,
	datac => \u_byte2ascill|data_out~10_combout\,
	datad => \u_byte2ascill|data_out[0]~4_combout\,
	combout => \u_byte2ascill|data_out~12_combout\);

-- Location: LCCOMB_X28_Y25_N16
\u_byte2ascill|data_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~13_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((\u_byte2ascill|data_out~12_combout\)))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|c_state.S2~q\ & (\u_byte2ascill|lower_4bit\(2) $ (\u_byte2ascill|data_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|c_state.S2~q\,
	datac => \u_byte2ascill|lower_4bit\(2),
	datad => \u_byte2ascill|data_out~12_combout\,
	combout => \u_byte2ascill|data_out~13_combout\);

-- Location: FF_X28_Y25_N17
\u_byte2ascill|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~13_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(2));

-- Location: LCCOMB_X27_Y26_N28
\u_uart_tx|tx_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~4_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & (\u_uart_tx|tx_data\(4))) # (!\u_uart_tx|Equal2~0_combout\ & ((!\u_byte2ascill|data_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_data\(4),
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_byte2ascill|data_out\(2),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~4_combout\);

-- Location: FF_X27_Y26_N29
\u_uart_tx|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(3));

-- Location: LCCOMB_X28_Y25_N20
\u_byte2ascill|data_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~7_combout\ = (\u_byte2ascill|c_state.S1~q\ & ((\u_byte2ascill|top_4bit\(1)))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|lower_4bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|lower_4bit\(0),
	datad => \u_byte2ascill|top_4bit\(1),
	combout => \u_byte2ascill|data_out~7_combout\);

-- Location: LCCOMB_X28_Y25_N10
\u_byte2ascill|data_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~8_combout\ = (\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|data_out~7_combout\ $ (((!\u_byte2ascill|top_4bit\(0) & \u_byte2ascill|data_out[0]~4_combout\))))) # (!\u_byte2ascill|c_state.S1~q\ & 
-- (((!\u_byte2ascill|data_out~7_combout\ & \u_byte2ascill|data_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|top_4bit\(0),
	datab => \u_byte2ascill|c_state.S1~q\,
	datac => \u_byte2ascill|data_out~7_combout\,
	datad => \u_byte2ascill|data_out[0]~4_combout\,
	combout => \u_byte2ascill|data_out~8_combout\);

-- Location: LCCOMB_X28_Y25_N24
\u_byte2ascill|data_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~9_combout\ = (\u_byte2ascill|c_state.S1~q\ & (((\u_byte2ascill|data_out~8_combout\)))) # (!\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|c_state.S2~q\ & (\u_byte2ascill|lower_4bit\(1) $ (\u_byte2ascill|data_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|lower_4bit\(1),
	datab => \u_byte2ascill|c_state.S2~q\,
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|data_out~8_combout\,
	combout => \u_byte2ascill|data_out~9_combout\);

-- Location: FF_X28_Y25_N25
\u_byte2ascill|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~9_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(1));

-- Location: LCCOMB_X27_Y26_N30
\u_uart_tx|tx_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~3_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & (\u_uart_tx|tx_data\(3))) # (!\u_uart_tx|Equal2~0_combout\ & ((!\u_byte2ascill|data_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_en~q\,
	datab => \u_uart_tx|tx_data\(3),
	datac => \u_byte2ascill|data_out\(1),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~3_combout\);

-- Location: FF_X27_Y26_N31
\u_uart_tx|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(2));

-- Location: LCCOMB_X28_Y25_N6
\u_byte2ascill|data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~5_combout\ = \u_byte2ascill|data_out[0]~4_combout\ $ (((\u_byte2ascill|c_state.S1~q\ & (\u_byte2ascill|top_4bit\(0))) # (!\u_byte2ascill|c_state.S1~q\ & ((\u_byte2ascill|lower_4bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|top_4bit\(0),
	datab => \u_byte2ascill|lower_4bit\(0),
	datac => \u_byte2ascill|c_state.S1~q\,
	datad => \u_byte2ascill|data_out[0]~4_combout\,
	combout => \u_byte2ascill|data_out~5_combout\);

-- Location: LCCOMB_X28_Y25_N0
\u_byte2ascill|data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_byte2ascill|data_out~6_combout\ = (\u_byte2ascill|data_out~5_combout\ & ((\u_byte2ascill|c_state.S1~q\) # (\u_byte2ascill|c_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_byte2ascill|c_state.S1~q\,
	datab => \u_byte2ascill|c_state.S2~q\,
	datad => \u_byte2ascill|data_out~5_combout\,
	combout => \u_byte2ascill|data_out~6_combout\);

-- Location: FF_X28_Y25_N1
\u_byte2ascill|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_byte2ascill|data_out~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_byte2ascill|ALT_INV_data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_byte2ascill|data_out\(0));

-- Location: LCCOMB_X27_Y26_N12
\u_uart_tx|tx_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~2_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|Equal2~0_combout\ & (\u_uart_tx|tx_data\(2))) # (!\u_uart_tx|Equal2~0_combout\ & ((!\u_byte2ascill|data_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_data\(2),
	datab => \u_uart_tx|tx_en~q\,
	datac => \u_byte2ascill|data_out\(0),
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~2_combout\);

-- Location: FF_X27_Y26_N13
\u_uart_tx|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(1));

-- Location: LCCOMB_X27_Y26_N24
\u_uart_tx|tx_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_tx|tx_data~0_combout\ = (\u_uart_tx|tx_en~q\ & ((\u_uart_tx|tx_data\(1)) # (!\u_uart_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_tx|tx_data\(1),
	datac => \u_uart_tx|tx_en~q\,
	datad => \u_uart_tx|Equal2~0_combout\,
	combout => \u_uart_tx|tx_data~0_combout\);

-- Location: FF_X27_Y26_N25
\u_uart_tx|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_tx|tx_data~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_tx|ALT_INV_tx_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_tx|tx_data\(0));

-- Location: LCCOMB_X37_Y27_N20
\u_uart_rx|cnt_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit~0_combout\ = (\u_uart_rx|rx_en~q\ & !\u_uart_rx|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datac => \u_uart_rx|cnt_bit\(0),
	combout => \u_uart_rx|cnt_bit~0_combout\);

-- Location: LCCOMB_X36_Y27_N26
\u_uart_rx|cnt_rx_div~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div~0_combout\ = (!\u_uart_rx|cnt_rx_div\(0) & \u_uart_rx|rx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|cnt_rx_div\(0),
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|cnt_rx_div~0_combout\);

-- Location: FF_X36_Y27_N27
\u_uart_rx|cnt_rx_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(0));

-- Location: LCCOMB_X36_Y27_N10
\u_uart_rx|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add0~2_combout\ = \u_uart_rx|cnt_rx_div\(0) $ (\u_uart_rx|cnt_rx_div\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(0),
	datac => \u_uart_rx|cnt_rx_div\(1),
	combout => \u_uart_rx|Add0~2_combout\);

-- Location: FF_X36_Y27_N11
\u_uart_rx|cnt_rx_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Add0~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_rx|ALT_INV_rx_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(1));

-- Location: LCCOMB_X36_Y27_N4
\u_uart_rx|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add0~1_combout\ = \u_uart_rx|cnt_rx_div\(2) $ (((\u_uart_rx|cnt_rx_div\(0) & \u_uart_rx|cnt_rx_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(0),
	datab => \u_uart_rx|cnt_rx_div\(1),
	datac => \u_uart_rx|cnt_rx_div\(2),
	combout => \u_uart_rx|Add0~1_combout\);

-- Location: FF_X36_Y27_N5
\u_uart_rx|cnt_rx_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Add0~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_rx|ALT_INV_rx_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(2));

-- Location: LCCOMB_X36_Y27_N22
\u_uart_rx|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add0~0_combout\ = \u_uart_rx|cnt_rx_div\(3) $ (((\u_uart_rx|cnt_rx_div\(0) & (\u_uart_rx|cnt_rx_div\(1) & \u_uart_rx|cnt_rx_div\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(0),
	datab => \u_uart_rx|cnt_rx_div\(1),
	datac => \u_uart_rx|cnt_rx_div\(3),
	datad => \u_uart_rx|cnt_rx_div\(2),
	combout => \u_uart_rx|Add0~0_combout\);

-- Location: FF_X36_Y27_N23
\u_uart_rx|cnt_rx_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Add0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_rx|ALT_INV_rx_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(3));

-- Location: LCCOMB_X36_Y27_N16
\u_uart_rx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~0_combout\ = ((\baudrate~input_o\ $ (!\u_uart_rx|cnt_rx_div\(2))) # (!\u_uart_rx|cnt_rx_div\(1))) # (!\u_uart_rx|cnt_rx_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate~input_o\,
	datab => \u_uart_rx|cnt_rx_div\(2),
	datac => \u_uart_rx|cnt_rx_div\(0),
	datad => \u_uart_rx|cnt_rx_div\(1),
	combout => \u_uart_rx|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y27_N6
\u_uart_rx|data_buffer[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer[2]~1_combout\ = (\u_uart_rx|rx_en~q\ & ((\u_uart_rx|cnt_rx_div\(3)) # (\u_uart_rx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(3),
	datac => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|Equal0~0_combout\,
	combout => \u_uart_rx|data_buffer[2]~1_combout\);

-- Location: FF_X37_Y27_N21
\u_uart_rx|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_bit~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(0));

-- Location: LCCOMB_X36_Y27_N18
\u_uart_rx|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add1~1_combout\ = \u_uart_rx|cnt_bit\(1) $ (\u_uart_rx|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|cnt_bit\(1),
	datad => \u_uart_rx|cnt_bit\(0),
	combout => \u_uart_rx|Add1~1_combout\);

-- Location: FF_X36_Y27_N19
\u_uart_rx|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Add1~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_rx|ALT_INV_rx_en~q\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(1));

-- Location: LCCOMB_X36_Y27_N20
\u_uart_rx|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add1~2_combout\ = \u_uart_rx|cnt_bit\(2) $ (((\u_uart_rx|cnt_bit\(0) & \u_uart_rx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_bit\(0),
	datac => \u_uart_rx|cnt_bit\(2),
	datad => \u_uart_rx|cnt_bit\(1),
	combout => \u_uart_rx|Add1~2_combout\);

-- Location: FF_X36_Y27_N21
\u_uart_rx|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Add1~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_rx|ALT_INV_rx_en~q\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(2));

-- Location: LCCOMB_X36_Y27_N28
\u_uart_rx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add1~0_combout\ = \u_uart_rx|cnt_bit\(3) $ (((\u_uart_rx|cnt_bit\(2) & (\u_uart_rx|cnt_bit\(1) & \u_uart_rx|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(2),
	datab => \u_uart_rx|cnt_bit\(1),
	datac => \u_uart_rx|cnt_bit\(3),
	datad => \u_uart_rx|cnt_bit\(0),
	combout => \u_uart_rx|Add1~0_combout\);

-- Location: FF_X36_Y27_N29
\u_uart_rx|cnt_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Add1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sclr => \u_uart_rx|ALT_INV_rx_en~q\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(3));

-- Location: LCCOMB_X35_Y27_N10
\u_uart_rx|rx_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_en~0_combout\ = (!\u_uart_rx|cnt_bit\(2) & (\u_uart_rx|cnt_bit\(1) & (\u_uart_rx|cnt_bit\(0) & \u_uart_rx|cnt_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(2),
	datab => \u_uart_rx|cnt_bit\(1),
	datac => \u_uart_rx|cnt_bit\(0),
	datad => \u_uart_rx|cnt_bit\(3),
	combout => \u_uart_rx|rx_en~0_combout\);

-- Location: IOIBUF_X35_Y29_N22
\inv_rxd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inv_rxd,
	o => \inv_rxd~input_o\);

-- Location: LCCOMB_X35_Y27_N28
\u_uart_rx|uart_rxd_d1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|uart_rxd_d1~feeder_combout\ = \inv_rxd~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inv_rxd~input_o\,
	combout => \u_uart_rx|uart_rxd_d1~feeder_combout\);

-- Location: FF_X35_Y27_N29
\u_uart_rx|uart_rxd_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|uart_rxd_d1~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|uart_rxd_d1~q\);

-- Location: LCCOMB_X35_Y27_N26
\u_uart_rx|uart_rxd_d2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|uart_rxd_d2~feeder_combout\ = \u_uart_rx|uart_rxd_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|uart_rxd_d1~q\,
	combout => \u_uart_rx|uart_rxd_d2~feeder_combout\);

-- Location: FF_X35_Y27_N27
\u_uart_rx|uart_rxd_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|uart_rxd_d2~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|uart_rxd_d2~q\);

-- Location: LCCOMB_X35_Y27_N14
\u_uart_rx|uart_rxd_d3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|uart_rxd_d3~feeder_combout\ = \u_uart_rx|uart_rxd_d2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|uart_rxd_d2~q\,
	combout => \u_uart_rx|uart_rxd_d3~feeder_combout\);

-- Location: FF_X35_Y27_N15
\u_uart_rx|uart_rxd_d3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|uart_rxd_d3~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|uart_rxd_d3~q\);

-- Location: LCCOMB_X35_Y27_N16
\u_uart_rx|start_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|start_en~0_combout\ = (!\u_uart_rx|rx_en~q\ & (!\u_uart_rx|uart_rxd_d3~q\ & \u_uart_rx|uart_rxd_d2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datab => \u_uart_rx|uart_rxd_d3~q\,
	datac => \u_uart_rx|uart_rxd_d2~q\,
	combout => \u_uart_rx|start_en~0_combout\);

-- Location: FF_X35_Y27_N17
\u_uart_rx|start_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|start_en~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|start_en~q\);

-- Location: LCCOMB_X35_Y27_N12
\u_uart_rx|rx_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_en~1_combout\ = (\u_uart_rx|start_en~q\) # ((\u_uart_rx|data_buffer[2]~1_combout\) # ((!\u_uart_rx|rx_en~0_combout\ & \u_uart_rx|rx_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~0_combout\,
	datab => \u_uart_rx|start_en~q\,
	datac => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer[2]~1_combout\,
	combout => \u_uart_rx|rx_en~1_combout\);

-- Location: FF_X35_Y27_N13
\u_uart_rx|rx_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_en~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_en~q\);

-- Location: LCCOMB_X35_Y27_N20
\u_uart_rx|data_buffer~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~9_combout\ = (\u_uart_rx|cnt_bit\(2)) # ((\u_uart_rx|cnt_bit\(3)) # ((\u_uart_rx|cnt_bit\(0)) # (\u_uart_rx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(2),
	datab => \u_uart_rx|cnt_bit\(3),
	datac => \u_uart_rx|cnt_bit\(0),
	datad => \u_uart_rx|cnt_bit\(1),
	combout => \u_uart_rx|data_buffer~9_combout\);

-- Location: LCCOMB_X35_Y27_N24
\u_uart_rx|data_buffer~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~10_combout\ = (\u_uart_rx|cnt_rx_div\(3) & (((!\u_uart_rx|data_buffer\(9))))) # (!\u_uart_rx|cnt_rx_div\(3) & (!\u_uart_rx|uart_rxd_d2~q\ & ((\u_uart_rx|data_buffer~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|uart_rxd_d2~q\,
	datab => \u_uart_rx|data_buffer\(9),
	datac => \u_uart_rx|cnt_rx_div\(3),
	datad => \u_uart_rx|data_buffer~9_combout\,
	combout => \u_uart_rx|data_buffer~10_combout\);

-- Location: LCCOMB_X35_Y27_N18
\u_uart_rx|data_buffer~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~11_combout\ = (\u_uart_rx|rx_en~q\ & ((\u_uart_rx|Equal0~0_combout\ & (\u_uart_rx|data_buffer\(9))) # (!\u_uart_rx|Equal0~0_combout\ & ((!\u_uart_rx|data_buffer~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datab => \u_uart_rx|Equal0~0_combout\,
	datac => \u_uart_rx|data_buffer\(9),
	datad => \u_uart_rx|data_buffer~10_combout\,
	combout => \u_uart_rx|data_buffer~11_combout\);

-- Location: FF_X35_Y27_N19
\u_uart_rx|data_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~11_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(9));

-- Location: LCCOMB_X36_Y27_N0
\u_uart_rx|data_buffer~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~8_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(9),
	combout => \u_uart_rx|data_buffer~8_combout\);

-- Location: FF_X36_Y27_N1
\u_uart_rx|data_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(8));

-- Location: LCCOMB_X36_Y27_N2
\u_uart_rx|data_buffer~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~7_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(8),
	combout => \u_uart_rx|data_buffer~7_combout\);

-- Location: FF_X36_Y27_N3
\u_uart_rx|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(7));

-- Location: LCCOMB_X36_Y27_N12
\u_uart_rx|data_buffer~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~6_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(7),
	combout => \u_uart_rx|data_buffer~6_combout\);

-- Location: FF_X36_Y27_N13
\u_uart_rx|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(6));

-- Location: LCCOMB_X36_Y27_N14
\u_uart_rx|data_buffer~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~5_combout\ = (\u_uart_rx|data_buffer\(6) & \u_uart_rx|rx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|data_buffer\(6),
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|data_buffer~5_combout\);

-- Location: FF_X36_Y27_N15
\u_uart_rx|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(5));

-- Location: LCCOMB_X36_Y27_N24
\u_uart_rx|data_buffer~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~4_combout\ = (\u_uart_rx|data_buffer\(5) & \u_uart_rx|rx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_buffer\(5),
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|data_buffer~4_combout\);

-- Location: FF_X36_Y27_N25
\u_uart_rx|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(4));

-- Location: LCCOMB_X37_Y27_N10
\fnd_data[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[3]~3_combout\ = !\u_uart_rx|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(4),
	combout => \fnd_data[3]~3_combout\);

-- Location: LCCOMB_X37_Y27_N18
\u_uart_rx|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal3~0_combout\ = (\u_uart_rx|cnt_bit\(1) & (!\u_uart_rx|cnt_bit\(0) & (\u_uart_rx|cnt_bit\(3) & !\u_uart_rx|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(1),
	datab => \u_uart_rx|cnt_bit\(0),
	datac => \u_uart_rx|cnt_bit\(3),
	datad => \u_uart_rx|cnt_bit\(2),
	combout => \u_uart_rx|Equal3~0_combout\);

-- Location: FF_X37_Y27_N11
\fnd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[3]~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(3));

-- Location: LCCOMB_X36_Y27_N30
\u_uart_rx|data_buffer~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~3_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(4),
	combout => \u_uart_rx|data_buffer~3_combout\);

-- Location: FF_X36_Y27_N31
\u_uart_rx|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~3_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(3));

-- Location: LCCOMB_X37_Y27_N12
\u_uart_rx|data_buffer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~2_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(3),
	combout => \u_uart_rx|data_buffer~2_combout\);

-- Location: FF_X37_Y27_N13
\u_uart_rx|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(2));

-- Location: LCCOMB_X36_Y27_N8
\u_uart_rx|data_buffer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~0_combout\ = (\u_uart_rx|data_buffer\(2) & \u_uart_rx|rx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|data_buffer\(2),
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|data_buffer~0_combout\);

-- Location: FF_X36_Y27_N9
\u_uart_rx|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|ALT_INV_data_buffer[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(1));

-- Location: LCCOMB_X37_Y27_N16
\fnd_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[0]~0_combout\ = !\u_uart_rx|data_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(1),
	combout => \fnd_data[0]~0_combout\);

-- Location: FF_X37_Y27_N17
\fnd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[0]~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(0));

-- Location: LCCOMB_X37_Y27_N22
\fnd_data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[1]~1_combout\ = !\u_uart_rx|data_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(2),
	combout => \fnd_data[1]~1_combout\);

-- Location: FF_X37_Y27_N23
\fnd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[1]~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(1));

-- Location: LCCOMB_X37_Y27_N28
\fnd_data[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[2]~2_combout\ = !\u_uart_rx|data_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(3),
	combout => \fnd_data[2]~2_combout\);

-- Location: FF_X37_Y27_N29
\fnd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[2]~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(2));

-- Location: LCCOMB_X37_Y27_N0
\u_fnd_1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr6~0_combout\ = (fnd_data(3) & (fnd_data(0) & (fnd_data(1) $ (fnd_data(2))))) # (!fnd_data(3) & (!fnd_data(1) & (fnd_data(0) $ (fnd_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fnd_data(3),
	datab => fnd_data(0),
	datac => fnd_data(1),
	datad => fnd_data(2),
	combout => \u_fnd_1|WideOr6~0_combout\);

-- Location: LCCOMB_X37_Y27_N26
\fnd_data[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[4]~4_combout\ = !\u_uart_rx|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(5),
	combout => \fnd_data[4]~4_combout\);

-- Location: FF_X37_Y27_N27
\fnd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[4]~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(4));

-- Location: LCCOMB_X37_Y27_N24
\fnd_data[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[7]~7_combout\ = !\u_uart_rx|data_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|data_buffer\(8),
	combout => \fnd_data[7]~7_combout\);

-- Location: FF_X37_Y27_N25
\fnd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[7]~7_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(7));

-- Location: LCCOMB_X37_Y27_N4
\fnd_data[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[5]~5_combout\ = !\u_uart_rx|data_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(6),
	combout => \fnd_data[5]~5_combout\);

-- Location: FF_X37_Y27_N5
\fnd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[5]~5_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(5));

-- Location: LCCOMB_X37_Y27_N2
\fnd_data[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_data[6]~6_combout\ = !\u_uart_rx|data_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(7),
	combout => \fnd_data[6]~6_combout\);

-- Location: FF_X37_Y27_N3
\fnd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fnd_data[6]~6_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \u_uart_rx|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fnd_data(6));

-- Location: LCCOMB_X37_Y27_N6
\u_fnd_2|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr6~0_combout\ = (fnd_data(7) & (fnd_data(4) & (fnd_data(5) $ (fnd_data(6))))) # (!fnd_data(7) & (!fnd_data(5) & (fnd_data(4) $ (fnd_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fnd_data(4),
	datab => fnd_data(7),
	datac => fnd_data(5),
	datad => fnd_data(6),
	combout => \u_fnd_2|WideOr6~0_combout\);

ww_sclk <= \sclk~output_o\;

ww_cs_n <= \cs_n~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_txd <= \txd~output_o\;

ww_fnd_30_out <= \fnd_30_out~output_o\;

ww_fnd_74_out <= \fnd_74_out~output_o\;
END structure;


