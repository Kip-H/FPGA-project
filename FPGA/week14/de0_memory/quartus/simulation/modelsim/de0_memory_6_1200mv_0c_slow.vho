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

-- DATE "06/02/2024 22:24:38"

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
	uart_rxd : IN std_logic;
	push_read : IN std_logic;
	fnd_30_out : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd_74_out : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- fnd_30_out[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_30_out[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_74_out[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_read	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rxd	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_uart_rxd : std_logic;
SIGNAL ww_push_read : std_logic;
SIGNAL ww_fnd_30_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd_74_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fnd_30_out[0]~output_o\ : std_logic;
SIGNAL \fnd_30_out[1]~output_o\ : std_logic;
SIGNAL \fnd_30_out[2]~output_o\ : std_logic;
SIGNAL \fnd_30_out[3]~output_o\ : std_logic;
SIGNAL \fnd_30_out[4]~output_o\ : std_logic;
SIGNAL \fnd_30_out[5]~output_o\ : std_logic;
SIGNAL \fnd_30_out[6]~output_o\ : std_logic;
SIGNAL \fnd_74_out[0]~output_o\ : std_logic;
SIGNAL \fnd_74_out[1]~output_o\ : std_logic;
SIGNAL \fnd_74_out[2]~output_o\ : std_logic;
SIGNAL \fnd_74_out[3]~output_o\ : std_logic;
SIGNAL \fnd_74_out[4]~output_o\ : std_logic;
SIGNAL \fnd_74_out[5]~output_o\ : std_logic;
SIGNAL \fnd_74_out[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_rxd~input_o\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d1~q\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d2~q\ : std_logic;
SIGNAL \u_uart_rx|uart_rxd_d3~q\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[0]~13_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[10]~35\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[11]~36_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal2~2_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[11]~37\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[12]~38_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal2~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal2~1_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[6]~19_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[0]~14\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[1]~15_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[1]~16\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[2]~17_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[2]~18\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[3]~20_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[3]~21\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[4]~22_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[4]~23\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[5]~24_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[5]~25\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[6]~26_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[6]~27\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[7]~28_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[7]~29\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[8]~30_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[8]~31\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[9]~32_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[9]~33\ : std_logic;
SIGNAL \u_uart_rx|cnt_rx_div[10]~34_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~3_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit~6_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit~0_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit~4_combout\ : std_logic;
SIGNAL \u_uart_rx|Add1~0_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit[3]~3_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_en~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_en~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_en~q\ : std_logic;
SIGNAL \u_uart_rx|start_en~0_combout\ : std_logic;
SIGNAL \u_uart_rx|start_en~q\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit[3]~1_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit[3]~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Add1~1_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt_bit[2]~5_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wen~1_combout\ : std_logic;
SIGNAL \push_read~input_o\ : std_logic;
SIGNAL \u_Mem_Controller|ren~feeder_combout\ : std_logic;
SIGNAL \u_Mem_Controller|ren~q\ : std_logic;
SIGNAL \u_Mem_Controller|raddr[0]~0_combout\ : std_logic;
SIGNAL \u_Mem_Controller|raddr[1]~1_combout\ : std_logic;
SIGNAL \u_Mem_Controller|clear~0_combout\ : std_logic;
SIGNAL \u_Mem_Controller|clear~q\ : std_logic;
SIGNAL \u_Mem_Controller|waddr~0_combout\ : std_logic;
SIGNAL \u_Mem_Controller|waddr[0]~1_combout\ : std_logic;
SIGNAL \u_Mem_Controller|waddr~2_combout\ : std_logic;
SIGNAL \u_Mem_Controller|waddr~3_combout\ : std_logic;
SIGNAL \u_Mem_Controller|waddr~4_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wen~0_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wen~2_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wen~q\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~9_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~10_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~8_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer[4]~1_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~7_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~6_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~5_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~4_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~3_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~2_combout\ : std_logic;
SIGNAL \u_uart_rx|data_buffer~0_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[0]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[1]~1_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[2]~2_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[3]~3_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[4]~4_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[5]~5_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[6]~6_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata[7]~7_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr6~0_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr5~0_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr4~0_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr3~0_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr2~0_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr1~0_combout\ : std_logic;
SIGNAL \u_fnd_1|WideOr0~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr6~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr5~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr4~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr3~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr2~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr1~0_combout\ : std_logic;
SIGNAL \u_fnd_2|WideOr0~0_combout\ : std_logic;
SIGNAL \u_Mem_Controller|wdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_Mem_Controller|waddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_Mem_Controller|raddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_Mem_Controller|fnd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_rx|data_buffer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_uart_rx|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_rx|cnt_rx_div\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_n_rst~input_o\ : std_logic;
SIGNAL \u_uart_rx|ALT_INV_cnt_bit[3]~2_combout\ : std_logic;
SIGNAL \u_fnd_2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \u_fnd_1|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_uart_rxd <= uart_rxd;
ww_push_read <= push_read;
fnd_30_out <= ww_fnd_30_out;
fnd_74_out <= ww_fnd_74_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\u_Mem_Controller|wdata\(7) & \u_Mem_Controller|wdata\(6) & \u_Mem_Controller|wdata\(5) & \u_Mem_Controller|wdata\(4) & \u_Mem_Controller|wdata\(3) & \u_Mem_Controller|wdata\(2) & \u_Mem_Controller|wdata\(1) & \u_Mem_Controller|wdata\(0));

\u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_Mem_Controller|waddr\(2) & \u_Mem_Controller|waddr\(1) & \u_Mem_Controller|waddr\(0));

\u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \u_Mem_Controller|raddr\(1) & \u_Mem_Controller|raddr\(0));

\u_Mem_Controller|fnd_data\(0) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u_Mem_Controller|fnd_data\(1) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u_Mem_Controller|fnd_data\(2) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u_Mem_Controller|fnd_data\(3) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u_Mem_Controller|fnd_data\(4) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u_Mem_Controller|fnd_data\(5) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u_Mem_Controller|fnd_data\(6) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u_Mem_Controller|fnd_data\(7) <= \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_n_rst~input_o\ <= NOT \n_rst~input_o\;
\u_uart_rx|ALT_INV_cnt_bit[3]~2_combout\ <= NOT \u_uart_rx|cnt_bit[3]~2_combout\;
\u_fnd_2|ALT_INV_WideOr0~0_combout\ <= NOT \u_fnd_2|WideOr0~0_combout\;
\u_fnd_1|ALT_INV_WideOr0~0_combout\ <= NOT \u_fnd_1|WideOr0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\fnd_30_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\fnd_30_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\fnd_30_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\fnd_30_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\fnd_30_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\fnd_30_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\fnd_30_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_30_out[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\fnd_74_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\fnd_74_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\fnd_74_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\fnd_74_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\fnd_74_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\fnd_74_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\fnd_74_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_fnd_2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_74_out[6]~output_o\);

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

-- Location: IOIBUF_X41_Y8_N8
\uart_rxd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rxd,
	o => \uart_rxd~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: FF_X12_Y11_N3
\u_uart_rx|uart_rxd_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rxd~input_o\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|uart_rxd_d1~q\);

-- Location: FF_X8_Y11_N5
\u_uart_rx|uart_rxd_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|uart_rxd_d1~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|uart_rxd_d2~q\);

-- Location: FF_X8_Y11_N31
\u_uart_rx|uart_rxd_d3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|uart_rxd_d2~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|uart_rxd_d3~q\);

-- Location: LCCOMB_X10_Y6_N2
\u_uart_rx|cnt_rx_div[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[0]~13_combout\ = \u_uart_rx|cnt_rx_div\(0) $ (VCC)
-- \u_uart_rx|cnt_rx_div[0]~14\ = CARRY(\u_uart_rx|cnt_rx_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(0),
	datad => VCC,
	combout => \u_uart_rx|cnt_rx_div[0]~13_combout\,
	cout => \u_uart_rx|cnt_rx_div[0]~14\);

-- Location: LCCOMB_X10_Y6_N22
\u_uart_rx|cnt_rx_div[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[10]~34_combout\ = (\u_uart_rx|cnt_rx_div\(10) & (\u_uart_rx|cnt_rx_div[9]~33\ $ (GND))) # (!\u_uart_rx|cnt_rx_div\(10) & (!\u_uart_rx|cnt_rx_div[9]~33\ & VCC))
-- \u_uart_rx|cnt_rx_div[10]~35\ = CARRY((\u_uart_rx|cnt_rx_div\(10) & !\u_uart_rx|cnt_rx_div[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(10),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[9]~33\,
	combout => \u_uart_rx|cnt_rx_div[10]~34_combout\,
	cout => \u_uart_rx|cnt_rx_div[10]~35\);

-- Location: LCCOMB_X10_Y6_N24
\u_uart_rx|cnt_rx_div[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[11]~36_combout\ = (\u_uart_rx|cnt_rx_div\(11) & (!\u_uart_rx|cnt_rx_div[10]~35\)) # (!\u_uart_rx|cnt_rx_div\(11) & ((\u_uart_rx|cnt_rx_div[10]~35\) # (GND)))
-- \u_uart_rx|cnt_rx_div[11]~37\ = CARRY((!\u_uart_rx|cnt_rx_div[10]~35\) # (!\u_uart_rx|cnt_rx_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(11),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[10]~35\,
	combout => \u_uart_rx|cnt_rx_div[11]~36_combout\,
	cout => \u_uart_rx|cnt_rx_div[11]~37\);

-- Location: FF_X10_Y6_N25
\u_uart_rx|cnt_rx_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[11]~36_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(11));

-- Location: LCCOMB_X17_Y10_N12
\u_uart_rx|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal2~2_combout\ = (((\u_uart_rx|cnt_rx_div\(9)) # (\u_uart_rx|cnt_rx_div\(11))) # (!\u_uart_rx|cnt_rx_div\(10))) # (!\u_uart_rx|cnt_rx_div\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(6),
	datab => \u_uart_rx|cnt_rx_div\(10),
	datac => \u_uart_rx|cnt_rx_div\(9),
	datad => \u_uart_rx|cnt_rx_div\(11),
	combout => \u_uart_rx|Equal2~2_combout\);

-- Location: LCCOMB_X10_Y6_N26
\u_uart_rx|cnt_rx_div[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[12]~38_combout\ = \u_uart_rx|cnt_rx_div\(12) $ (!\u_uart_rx|cnt_rx_div[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(12),
	cin => \u_uart_rx|cnt_rx_div[11]~37\,
	combout => \u_uart_rx|cnt_rx_div[12]~38_combout\);

-- Location: FF_X10_Y6_N27
\u_uart_rx|cnt_rx_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[12]~38_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(12));

-- Location: LCCOMB_X10_Y6_N30
\u_uart_rx|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~2_combout\ = (\u_uart_rx|cnt_rx_div\(0) & (!\u_uart_rx|cnt_rx_div\(8) & (\u_uart_rx|cnt_rx_div\(1) & !\u_uart_rx|cnt_rx_div\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(0),
	datab => \u_uart_rx|cnt_rx_div\(8),
	datac => \u_uart_rx|cnt_rx_div\(1),
	datad => \u_uart_rx|cnt_rx_div\(7),
	combout => \u_uart_rx|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y10_N0
\u_uart_rx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal2~0_combout\ = (\u_uart_rx|cnt_rx_div\(5)) # (((\u_uart_rx|cnt_rx_div\(3)) # (!\u_uart_rx|cnt_rx_div\(2))) # (!\u_uart_rx|cnt_rx_div\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(5),
	datab => \u_uart_rx|cnt_rx_div\(4),
	datac => \u_uart_rx|cnt_rx_div\(2),
	datad => \u_uart_rx|cnt_rx_div\(3),
	combout => \u_uart_rx|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\u_uart_rx|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal2~1_combout\ = (\u_uart_rx|Equal2~0_combout\) # (!\u_uart_rx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|Equal0~2_combout\,
	datad => \u_uart_rx|Equal2~0_combout\,
	combout => \u_uart_rx|Equal2~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\u_uart_rx|cnt_rx_div[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[6]~19_combout\ = ((!\u_uart_rx|Equal2~2_combout\ & (\u_uart_rx|cnt_rx_div\(12) & !\u_uart_rx|Equal2~1_combout\))) # (!\u_uart_rx|rx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal2~2_combout\,
	datab => \u_uart_rx|rx_en~q\,
	datac => \u_uart_rx|cnt_rx_div\(12),
	datad => \u_uart_rx|Equal2~1_combout\,
	combout => \u_uart_rx|cnt_rx_div[6]~19_combout\);

-- Location: FF_X10_Y6_N3
\u_uart_rx|cnt_rx_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[0]~13_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(0));

-- Location: LCCOMB_X10_Y6_N4
\u_uart_rx|cnt_rx_div[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[1]~15_combout\ = (\u_uart_rx|cnt_rx_div\(1) & (!\u_uart_rx|cnt_rx_div[0]~14\)) # (!\u_uart_rx|cnt_rx_div\(1) & ((\u_uart_rx|cnt_rx_div[0]~14\) # (GND)))
-- \u_uart_rx|cnt_rx_div[1]~16\ = CARRY((!\u_uart_rx|cnt_rx_div[0]~14\) # (!\u_uart_rx|cnt_rx_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(1),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[0]~14\,
	combout => \u_uart_rx|cnt_rx_div[1]~15_combout\,
	cout => \u_uart_rx|cnt_rx_div[1]~16\);

-- Location: FF_X10_Y6_N5
\u_uart_rx|cnt_rx_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[1]~15_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(1));

-- Location: LCCOMB_X10_Y6_N6
\u_uart_rx|cnt_rx_div[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[2]~17_combout\ = (\u_uart_rx|cnt_rx_div\(2) & (\u_uart_rx|cnt_rx_div[1]~16\ $ (GND))) # (!\u_uart_rx|cnt_rx_div\(2) & (!\u_uart_rx|cnt_rx_div[1]~16\ & VCC))
-- \u_uart_rx|cnt_rx_div[2]~18\ = CARRY((\u_uart_rx|cnt_rx_div\(2) & !\u_uart_rx|cnt_rx_div[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(2),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[1]~16\,
	combout => \u_uart_rx|cnt_rx_div[2]~17_combout\,
	cout => \u_uart_rx|cnt_rx_div[2]~18\);

-- Location: FF_X10_Y6_N7
\u_uart_rx|cnt_rx_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[2]~17_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(2));

-- Location: LCCOMB_X10_Y6_N8
\u_uart_rx|cnt_rx_div[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[3]~20_combout\ = (\u_uart_rx|cnt_rx_div\(3) & (!\u_uart_rx|cnt_rx_div[2]~18\)) # (!\u_uart_rx|cnt_rx_div\(3) & ((\u_uart_rx|cnt_rx_div[2]~18\) # (GND)))
-- \u_uart_rx|cnt_rx_div[3]~21\ = CARRY((!\u_uart_rx|cnt_rx_div[2]~18\) # (!\u_uart_rx|cnt_rx_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(3),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[2]~18\,
	combout => \u_uart_rx|cnt_rx_div[3]~20_combout\,
	cout => \u_uart_rx|cnt_rx_div[3]~21\);

-- Location: FF_X10_Y6_N9
\u_uart_rx|cnt_rx_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[3]~20_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(3));

-- Location: LCCOMB_X10_Y6_N10
\u_uart_rx|cnt_rx_div[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[4]~22_combout\ = (\u_uart_rx|cnt_rx_div\(4) & (\u_uart_rx|cnt_rx_div[3]~21\ $ (GND))) # (!\u_uart_rx|cnt_rx_div\(4) & (!\u_uart_rx|cnt_rx_div[3]~21\ & VCC))
-- \u_uart_rx|cnt_rx_div[4]~23\ = CARRY((\u_uart_rx|cnt_rx_div\(4) & !\u_uart_rx|cnt_rx_div[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(4),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[3]~21\,
	combout => \u_uart_rx|cnt_rx_div[4]~22_combout\,
	cout => \u_uart_rx|cnt_rx_div[4]~23\);

-- Location: FF_X10_Y6_N11
\u_uart_rx|cnt_rx_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[4]~22_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(4));

-- Location: LCCOMB_X10_Y6_N12
\u_uart_rx|cnt_rx_div[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[5]~24_combout\ = (\u_uart_rx|cnt_rx_div\(5) & (!\u_uart_rx|cnt_rx_div[4]~23\)) # (!\u_uart_rx|cnt_rx_div\(5) & ((\u_uart_rx|cnt_rx_div[4]~23\) # (GND)))
-- \u_uart_rx|cnt_rx_div[5]~25\ = CARRY((!\u_uart_rx|cnt_rx_div[4]~23\) # (!\u_uart_rx|cnt_rx_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(5),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[4]~23\,
	combout => \u_uart_rx|cnt_rx_div[5]~24_combout\,
	cout => \u_uart_rx|cnt_rx_div[5]~25\);

-- Location: FF_X10_Y6_N13
\u_uart_rx|cnt_rx_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[5]~24_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(5));

-- Location: LCCOMB_X10_Y6_N14
\u_uart_rx|cnt_rx_div[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[6]~26_combout\ = (\u_uart_rx|cnt_rx_div\(6) & (\u_uart_rx|cnt_rx_div[5]~25\ $ (GND))) # (!\u_uart_rx|cnt_rx_div\(6) & (!\u_uart_rx|cnt_rx_div[5]~25\ & VCC))
-- \u_uart_rx|cnt_rx_div[6]~27\ = CARRY((\u_uart_rx|cnt_rx_div\(6) & !\u_uart_rx|cnt_rx_div[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(6),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[5]~25\,
	combout => \u_uart_rx|cnt_rx_div[6]~26_combout\,
	cout => \u_uart_rx|cnt_rx_div[6]~27\);

-- Location: FF_X10_Y6_N15
\u_uart_rx|cnt_rx_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[6]~26_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(6));

-- Location: LCCOMB_X10_Y6_N16
\u_uart_rx|cnt_rx_div[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[7]~28_combout\ = (\u_uart_rx|cnt_rx_div\(7) & (!\u_uart_rx|cnt_rx_div[6]~27\)) # (!\u_uart_rx|cnt_rx_div\(7) & ((\u_uart_rx|cnt_rx_div[6]~27\) # (GND)))
-- \u_uart_rx|cnt_rx_div[7]~29\ = CARRY((!\u_uart_rx|cnt_rx_div[6]~27\) # (!\u_uart_rx|cnt_rx_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(7),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[6]~27\,
	combout => \u_uart_rx|cnt_rx_div[7]~28_combout\,
	cout => \u_uart_rx|cnt_rx_div[7]~29\);

-- Location: FF_X10_Y6_N17
\u_uart_rx|cnt_rx_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[7]~28_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(7));

-- Location: LCCOMB_X10_Y6_N18
\u_uart_rx|cnt_rx_div[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[8]~30_combout\ = (\u_uart_rx|cnt_rx_div\(8) & (\u_uart_rx|cnt_rx_div[7]~29\ $ (GND))) # (!\u_uart_rx|cnt_rx_div\(8) & (!\u_uart_rx|cnt_rx_div[7]~29\ & VCC))
-- \u_uart_rx|cnt_rx_div[8]~31\ = CARRY((\u_uart_rx|cnt_rx_div\(8) & !\u_uart_rx|cnt_rx_div[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(8),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[7]~29\,
	combout => \u_uart_rx|cnt_rx_div[8]~30_combout\,
	cout => \u_uart_rx|cnt_rx_div[8]~31\);

-- Location: FF_X10_Y6_N19
\u_uart_rx|cnt_rx_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[8]~30_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(8));

-- Location: LCCOMB_X10_Y6_N20
\u_uart_rx|cnt_rx_div[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_rx_div[9]~32_combout\ = (\u_uart_rx|cnt_rx_div\(9) & (!\u_uart_rx|cnt_rx_div[8]~31\)) # (!\u_uart_rx|cnt_rx_div\(9) & ((\u_uart_rx|cnt_rx_div[8]~31\) # (GND)))
-- \u_uart_rx|cnt_rx_div[9]~33\ = CARRY((!\u_uart_rx|cnt_rx_div[8]~31\) # (!\u_uart_rx|cnt_rx_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_rx_div\(9),
	datad => VCC,
	cin => \u_uart_rx|cnt_rx_div[8]~31\,
	combout => \u_uart_rx|cnt_rx_div[9]~32_combout\,
	cout => \u_uart_rx|cnt_rx_div[9]~33\);

-- Location: FF_X10_Y6_N21
\u_uart_rx|cnt_rx_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[9]~32_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(9));

-- Location: FF_X10_Y6_N23
\u_uart_rx|cnt_rx_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_rx_div[10]~34_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_uart_rx|cnt_rx_div[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_rx_div\(10));

-- Location: LCCOMB_X10_Y6_N28
\u_uart_rx|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~1_combout\ = (\u_uart_rx|cnt_rx_div\(10)) # (((\u_uart_rx|cnt_rx_div\(6)) # (!\u_uart_rx|cnt_rx_div\(11))) # (!\u_uart_rx|cnt_rx_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(10),
	datab => \u_uart_rx|cnt_rx_div\(9),
	datac => \u_uart_rx|cnt_rx_div\(6),
	datad => \u_uart_rx|cnt_rx_div\(11),
	combout => \u_uart_rx|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y6_N0
\u_uart_rx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~0_combout\ = ((\u_uart_rx|cnt_rx_div\(2)) # ((\u_uart_rx|cnt_rx_div\(4)) # (!\u_uart_rx|cnt_rx_div\(3)))) # (!\u_uart_rx|cnt_rx_div\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_rx_div\(5),
	datab => \u_uart_rx|cnt_rx_div\(2),
	datac => \u_uart_rx|cnt_rx_div\(3),
	datad => \u_uart_rx|cnt_rx_div\(4),
	combout => \u_uart_rx|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y11_N2
\u_uart_rx|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~3_combout\ = (\u_uart_rx|Equal0~1_combout\) # (((\u_uart_rx|Equal0~0_combout\) # (\u_uart_rx|cnt_rx_div\(12))) # (!\u_uart_rx|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal0~1_combout\,
	datab => \u_uart_rx|Equal0~2_combout\,
	datac => \u_uart_rx|Equal0~0_combout\,
	datad => \u_uart_rx|cnt_rx_div\(12),
	combout => \u_uart_rx|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y11_N14
\u_uart_rx|cnt_bit~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit~6_combout\ = (\u_uart_rx|rx_en~q\ & ((\u_uart_rx|start_en~q\) # ((!\u_uart_rx|cnt_bit\(0) & !\u_uart_rx|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datab => \u_uart_rx|start_en~q\,
	datac => \u_uart_rx|cnt_bit\(0),
	datad => \u_uart_rx|Equal0~3_combout\,
	combout => \u_uart_rx|cnt_bit~6_combout\);

-- Location: FF_X8_Y11_N15
\u_uart_rx|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_bit~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|ALT_INV_cnt_bit[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(0));

-- Location: LCCOMB_X8_Y11_N18
\u_uart_rx|cnt_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit~0_combout\ = (\u_uart_rx|rx_en~q\ & (!\u_uart_rx|start_en~q\ & !\u_uart_rx|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~q\,
	datab => \u_uart_rx|start_en~q\,
	datad => \u_uart_rx|Equal0~3_combout\,
	combout => \u_uart_rx|cnt_bit~0_combout\);

-- Location: LCCOMB_X8_Y11_N10
\u_uart_rx|cnt_bit~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit~4_combout\ = (\u_uart_rx|cnt_bit~0_combout\ & (\u_uart_rx|cnt_bit\(0) $ (\u_uart_rx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_bit\(0),
	datac => \u_uart_rx|cnt_bit\(1),
	datad => \u_uart_rx|cnt_bit~0_combout\,
	combout => \u_uart_rx|cnt_bit~4_combout\);

-- Location: FF_X8_Y11_N11
\u_uart_rx|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_bit~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|ALT_INV_cnt_bit[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(1));

-- Location: LCCOMB_X8_Y11_N20
\u_uart_rx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add1~0_combout\ = \u_uart_rx|cnt_bit\(3) $ (((\u_uart_rx|cnt_bit\(1) & (\u_uart_rx|cnt_bit\(2) & \u_uart_rx|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(1),
	datab => \u_uart_rx|cnt_bit\(2),
	datac => \u_uart_rx|cnt_bit\(0),
	datad => \u_uart_rx|cnt_bit\(3),
	combout => \u_uart_rx|Add1~0_combout\);

-- Location: LCCOMB_X8_Y11_N0
\u_uart_rx|cnt_bit[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit[3]~3_combout\ = (\u_uart_rx|cnt_bit[3]~2_combout\ & ((\u_uart_rx|cnt_bit\(3)) # ((\u_uart_rx|cnt_bit~0_combout\ & \u_uart_rx|Add1~0_combout\)))) # (!\u_uart_rx|cnt_bit[3]~2_combout\ & (\u_uart_rx|cnt_bit~0_combout\ & 
-- ((\u_uart_rx|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit[3]~2_combout\,
	datab => \u_uart_rx|cnt_bit~0_combout\,
	datac => \u_uart_rx|cnt_bit\(3),
	datad => \u_uart_rx|Add1~0_combout\,
	combout => \u_uart_rx|cnt_bit[3]~3_combout\);

-- Location: FF_X8_Y11_N1
\u_uart_rx|cnt_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_bit[3]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(3));

-- Location: LCCOMB_X8_Y11_N26
\u_uart_rx|rx_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_en~0_combout\ = (\u_uart_rx|cnt_bit\(1) & (!\u_uart_rx|cnt_bit\(2) & (\u_uart_rx|cnt_bit\(0) & \u_uart_rx|cnt_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(1),
	datab => \u_uart_rx|cnt_bit\(2),
	datac => \u_uart_rx|cnt_bit\(0),
	datad => \u_uart_rx|cnt_bit\(3),
	combout => \u_uart_rx|rx_en~0_combout\);

-- Location: LCCOMB_X8_Y11_N6
\u_uart_rx|rx_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_en~1_combout\ = (\u_uart_rx|start_en~q\) # ((\u_uart_rx|rx_en~q\ & ((\u_uart_rx|Equal0~3_combout\) # (!\u_uart_rx|rx_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_en~0_combout\,
	datab => \u_uart_rx|start_en~q\,
	datac => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|Equal0~3_combout\,
	combout => \u_uart_rx|rx_en~1_combout\);

-- Location: FF_X8_Y11_N7
\u_uart_rx|rx_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_en~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_en~q\);

-- Location: LCCOMB_X8_Y11_N24
\u_uart_rx|start_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|start_en~0_combout\ = (\u_uart_rx|uart_rxd_d2~q\ & (!\u_uart_rx|uart_rxd_d3~q\ & !\u_uart_rx|rx_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|uart_rxd_d2~q\,
	datac => \u_uart_rx|uart_rxd_d3~q\,
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|start_en~0_combout\);

-- Location: FF_X8_Y11_N25
\u_uart_rx|start_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|start_en~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|start_en~q\);

-- Location: LCCOMB_X8_Y11_N12
\u_uart_rx|cnt_bit[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit[3]~1_combout\ = (!\u_uart_rx|start_en~q\ & ((!\u_uart_rx|cnt_bit\(3)) # (!\u_uart_rx|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|start_en~q\,
	datac => \u_uart_rx|cnt_bit\(2),
	datad => \u_uart_rx|cnt_bit\(3),
	combout => \u_uart_rx|cnt_bit[3]~1_combout\);

-- Location: LCCOMB_X8_Y11_N22
\u_uart_rx|cnt_bit[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit[3]~2_combout\ = (\u_uart_rx|cnt_bit[3]~1_combout\ & (\u_uart_rx|Equal0~3_combout\ & \u_uart_rx|rx_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit[3]~1_combout\,
	datab => \u_uart_rx|Equal0~3_combout\,
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|cnt_bit[3]~2_combout\);

-- Location: LCCOMB_X8_Y11_N8
\u_uart_rx|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add1~1_combout\ = \u_uart_rx|cnt_bit\(2) $ (((\u_uart_rx|cnt_bit\(0) & \u_uart_rx|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_bit\(2),
	datac => \u_uart_rx|cnt_bit\(0),
	datad => \u_uart_rx|cnt_bit\(1),
	combout => \u_uart_rx|Add1~1_combout\);

-- Location: LCCOMB_X8_Y11_N28
\u_uart_rx|cnt_bit[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt_bit[2]~5_combout\ = (\u_uart_rx|cnt_bit[3]~2_combout\ & ((\u_uart_rx|cnt_bit\(2)) # ((\u_uart_rx|Add1~1_combout\ & \u_uart_rx|cnt_bit~0_combout\)))) # (!\u_uart_rx|cnt_bit[3]~2_combout\ & (\u_uart_rx|Add1~1_combout\ & 
-- ((\u_uart_rx|cnt_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit[3]~2_combout\,
	datab => \u_uart_rx|Add1~1_combout\,
	datac => \u_uart_rx|cnt_bit\(2),
	datad => \u_uart_rx|cnt_bit~0_combout\,
	combout => \u_uart_rx|cnt_bit[2]~5_combout\);

-- Location: FF_X8_Y11_N29
\u_uart_rx|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt_bit[2]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt_bit\(2));

-- Location: LCCOMB_X8_Y11_N16
\u_Mem_Controller|wen~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wen~1_combout\ = (!\u_uart_rx|cnt_bit\(2) & !\u_uart_rx|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt_bit\(2),
	datac => \u_uart_rx|cnt_bit\(0),
	combout => \u_Mem_Controller|wen~1_combout\);

-- Location: IOIBUF_X0_Y23_N1
\push_read~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_read,
	o => \push_read~input_o\);

-- Location: LCCOMB_X12_Y11_N0
\u_Mem_Controller|ren~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|ren~feeder_combout\ = \push_read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \push_read~input_o\,
	combout => \u_Mem_Controller|ren~feeder_combout\);

-- Location: FF_X12_Y11_N1
\u_Mem_Controller|ren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|ren~feeder_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|ren~q\);

-- Location: LCCOMB_X12_Y11_N12
\u_Mem_Controller|raddr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|raddr[0]~0_combout\ = \u_Mem_Controller|raddr\(0) $ (\u_Mem_Controller|ren~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_Mem_Controller|raddr\(0),
	datad => \u_Mem_Controller|ren~q\,
	combout => \u_Mem_Controller|raddr[0]~0_combout\);

-- Location: FF_X12_Y11_N13
\u_Mem_Controller|raddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|raddr[0]~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|raddr\(0));

-- Location: LCCOMB_X12_Y11_N22
\u_Mem_Controller|raddr[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|raddr[1]~1_combout\ = \u_Mem_Controller|raddr\(1) $ (((\u_Mem_Controller|ren~q\ & \u_Mem_Controller|raddr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Mem_Controller|ren~q\,
	datac => \u_Mem_Controller|raddr\(1),
	datad => \u_Mem_Controller|raddr\(0),
	combout => \u_Mem_Controller|raddr[1]~1_combout\);

-- Location: FF_X12_Y11_N23
\u_Mem_Controller|raddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|raddr[1]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|raddr\(1));

-- Location: LCCOMB_X12_Y11_N28
\u_Mem_Controller|clear~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|clear~0_combout\ = (\push_read~input_o\ & (\u_Mem_Controller|raddr\(1) & \u_Mem_Controller|raddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \push_read~input_o\,
	datac => \u_Mem_Controller|raddr\(1),
	datad => \u_Mem_Controller|raddr\(0),
	combout => \u_Mem_Controller|clear~0_combout\);

-- Location: FF_X12_Y11_N29
\u_Mem_Controller|clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|clear~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|clear~q\);

-- Location: LCCOMB_X12_Y11_N6
\u_Mem_Controller|waddr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|waddr~0_combout\ = (!\u_Mem_Controller|waddr\(0) & !\u_Mem_Controller|clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_Mem_Controller|waddr\(0),
	datad => \u_Mem_Controller|clear~q\,
	combout => \u_Mem_Controller|waddr~0_combout\);

-- Location: LCCOMB_X12_Y11_N30
\u_Mem_Controller|waddr[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|waddr[0]~1_combout\ = (\u_Mem_Controller|clear~q\) # ((\u_Mem_Controller|wen~q\ & !\u_Mem_Controller|waddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Mem_Controller|clear~q\,
	datac => \u_Mem_Controller|wen~q\,
	datad => \u_Mem_Controller|waddr\(2),
	combout => \u_Mem_Controller|waddr[0]~1_combout\);

-- Location: FF_X12_Y11_N7
\u_Mem_Controller|waddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|waddr~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Mem_Controller|waddr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|waddr\(0));

-- Location: LCCOMB_X12_Y11_N24
\u_Mem_Controller|waddr~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|waddr~2_combout\ = (!\u_Mem_Controller|clear~q\ & (\u_Mem_Controller|waddr\(1) $ (\u_Mem_Controller|waddr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Mem_Controller|clear~q\,
	datac => \u_Mem_Controller|waddr\(1),
	datad => \u_Mem_Controller|waddr\(0),
	combout => \u_Mem_Controller|waddr~2_combout\);

-- Location: FF_X12_Y11_N25
\u_Mem_Controller|waddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|waddr~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_Mem_Controller|waddr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|waddr\(1));

-- Location: LCCOMB_X12_Y11_N16
\u_Mem_Controller|waddr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|waddr~3_combout\ = (\u_Mem_Controller|waddr\(0) & (!\u_Mem_Controller|clear~q\ & (\u_Mem_Controller|wen~q\ & \u_Mem_Controller|waddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|waddr\(0),
	datab => \u_Mem_Controller|clear~q\,
	datac => \u_Mem_Controller|wen~q\,
	datad => \u_Mem_Controller|waddr\(1),
	combout => \u_Mem_Controller|waddr~3_combout\);

-- Location: LCCOMB_X12_Y11_N10
\u_Mem_Controller|waddr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|waddr~4_combout\ = (\u_Mem_Controller|waddr~3_combout\) # ((\u_Mem_Controller|waddr\(2) & !\u_Mem_Controller|clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Mem_Controller|waddr~3_combout\,
	datac => \u_Mem_Controller|waddr\(2),
	datad => \u_Mem_Controller|clear~q\,
	combout => \u_Mem_Controller|waddr~4_combout\);

-- Location: FF_X12_Y11_N11
\u_Mem_Controller|waddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|waddr~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|waddr\(2));

-- Location: LCCOMB_X12_Y11_N18
\u_Mem_Controller|wen~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wen~0_combout\ = (\u_uart_rx|cnt_bit\(3) & (((\u_Mem_Controller|waddr\(1)) # (\u_Mem_Controller|waddr\(0))) # (!\u_Mem_Controller|waddr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(3),
	datab => \u_Mem_Controller|waddr\(2),
	datac => \u_Mem_Controller|waddr\(1),
	datad => \u_Mem_Controller|waddr\(0),
	combout => \u_Mem_Controller|wen~0_combout\);

-- Location: LCCOMB_X12_Y11_N26
\u_Mem_Controller|wen~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wen~2_combout\ = (\u_Mem_Controller|wen~1_combout\ & (\u_uart_rx|cnt_bit\(1) & (!\u_uart_rx|Equal0~3_combout\ & \u_Mem_Controller|wen~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|wen~1_combout\,
	datab => \u_uart_rx|cnt_bit\(1),
	datac => \u_uart_rx|Equal0~3_combout\,
	datad => \u_Mem_Controller|wen~0_combout\,
	combout => \u_Mem_Controller|wen~2_combout\);

-- Location: FF_X12_Y11_N27
\u_Mem_Controller|wen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wen~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wen~q\);

-- Location: LCCOMB_X8_Y11_N4
\u_uart_rx|data_buffer~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~9_combout\ = (!\u_uart_rx|uart_rxd_d2~q\ & ((\u_uart_rx|cnt_bit\(1)) # ((\u_uart_rx|cnt_bit\(3)) # (!\u_Mem_Controller|wen~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt_bit\(1),
	datab => \u_uart_rx|cnt_bit\(3),
	datac => \u_uart_rx|uart_rxd_d2~q\,
	datad => \u_Mem_Controller|wen~1_combout\,
	combout => \u_uart_rx|data_buffer~9_combout\);

-- Location: LCCOMB_X9_Y12_N14
\u_uart_rx|data_buffer~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~10_combout\ = (\u_uart_rx|rx_en~q\ & ((\u_uart_rx|Equal0~3_combout\ & (\u_uart_rx|data_buffer\(9))) # (!\u_uart_rx|Equal0~3_combout\ & ((!\u_uart_rx|data_buffer~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal0~3_combout\,
	datab => \u_uart_rx|rx_en~q\,
	datac => \u_uart_rx|data_buffer\(9),
	datad => \u_uart_rx|data_buffer~9_combout\,
	combout => \u_uart_rx|data_buffer~10_combout\);

-- Location: FF_X9_Y12_N15
\u_uart_rx|data_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~10_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(9));

-- Location: LCCOMB_X9_Y12_N10
\u_uart_rx|data_buffer~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~8_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datac => \u_uart_rx|data_buffer\(9),
	combout => \u_uart_rx|data_buffer~8_combout\);

-- Location: LCCOMB_X9_Y12_N4
\u_uart_rx|data_buffer[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer[4]~1_combout\ = (!\u_uart_rx|rx_en~q\) # (!\u_uart_rx|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|Equal0~3_combout\,
	datad => \u_uart_rx|rx_en~q\,
	combout => \u_uart_rx|data_buffer[4]~1_combout\);

-- Location: FF_X9_Y12_N11
\u_uart_rx|data_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(8));

-- Location: LCCOMB_X9_Y12_N8
\u_uart_rx|data_buffer~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~7_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(8),
	combout => \u_uart_rx|data_buffer~7_combout\);

-- Location: FF_X9_Y12_N9
\u_uart_rx|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(7));

-- Location: LCCOMB_X9_Y12_N30
\u_uart_rx|data_buffer~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~6_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datac => \u_uart_rx|data_buffer\(7),
	combout => \u_uart_rx|data_buffer~6_combout\);

-- Location: FF_X9_Y12_N31
\u_uart_rx|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(6));

-- Location: LCCOMB_X9_Y12_N12
\u_uart_rx|data_buffer~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~5_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datac => \u_uart_rx|data_buffer\(6),
	combout => \u_uart_rx|data_buffer~5_combout\);

-- Location: FF_X9_Y12_N13
\u_uart_rx|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(5));

-- Location: LCCOMB_X9_Y12_N18
\u_uart_rx|data_buffer~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~4_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(5),
	combout => \u_uart_rx|data_buffer~4_combout\);

-- Location: FF_X9_Y12_N19
\u_uart_rx|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(4));

-- Location: LCCOMB_X9_Y12_N16
\u_uart_rx|data_buffer~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~3_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(4),
	combout => \u_uart_rx|data_buffer~3_combout\);

-- Location: FF_X9_Y12_N17
\u_uart_rx|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(3));

-- Location: LCCOMB_X9_Y12_N6
\u_uart_rx|data_buffer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~2_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(3),
	combout => \u_uart_rx|data_buffer~2_combout\);

-- Location: FF_X9_Y12_N7
\u_uart_rx|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(2));

-- Location: LCCOMB_X9_Y12_N28
\u_uart_rx|data_buffer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_buffer~0_combout\ = (\u_uart_rx|rx_en~q\ & \u_uart_rx|data_buffer\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_en~q\,
	datad => \u_uart_rx|data_buffer\(2),
	combout => \u_uart_rx|data_buffer~0_combout\);

-- Location: FF_X9_Y12_N29
\u_uart_rx|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|data_buffer~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart_rx|data_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_buffer\(1));

-- Location: LCCOMB_X12_Y11_N20
\u_Mem_Controller|wdata[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[0]~0_combout\ = !\u_uart_rx|data_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(1),
	combout => \u_Mem_Controller|wdata[0]~0_combout\);

-- Location: FF_X12_Y11_N21
\u_Mem_Controller|wdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[0]~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(0));

-- Location: LCCOMB_X15_Y12_N0
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X9_Y12_N0
\u_Mem_Controller|wdata[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[1]~1_combout\ = !\u_uart_rx|data_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(2),
	combout => \u_Mem_Controller|wdata[1]~1_combout\);

-- Location: FF_X9_Y12_N1
\u_Mem_Controller|wdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[1]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(1));

-- Location: LCCOMB_X9_Y12_N26
\u_Mem_Controller|wdata[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[2]~2_combout\ = !\u_uart_rx|data_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(3),
	combout => \u_Mem_Controller|wdata[2]~2_combout\);

-- Location: FF_X9_Y12_N27
\u_Mem_Controller|wdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[2]~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(2));

-- Location: LCCOMB_X9_Y12_N20
\u_Mem_Controller|wdata[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[3]~3_combout\ = !\u_uart_rx|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(4),
	combout => \u_Mem_Controller|wdata[3]~3_combout\);

-- Location: FF_X9_Y12_N21
\u_Mem_Controller|wdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[3]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(3));

-- Location: LCCOMB_X9_Y12_N22
\u_Mem_Controller|wdata[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[4]~4_combout\ = !\u_uart_rx|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(5),
	combout => \u_Mem_Controller|wdata[4]~4_combout\);

-- Location: FF_X9_Y12_N23
\u_Mem_Controller|wdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[4]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(4));

-- Location: LCCOMB_X9_Y12_N24
\u_Mem_Controller|wdata[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[5]~5_combout\ = !\u_uart_rx|data_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|data_buffer\(6),
	combout => \u_Mem_Controller|wdata[5]~5_combout\);

-- Location: FF_X9_Y12_N25
\u_Mem_Controller|wdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[5]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(5));

-- Location: LCCOMB_X9_Y12_N2
\u_Mem_Controller|wdata[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[6]~6_combout\ = !\u_uart_rx|data_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|data_buffer\(7),
	combout => \u_Mem_Controller|wdata[6]~6_combout\);

-- Location: FF_X9_Y12_N3
\u_Mem_Controller|wdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[6]~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(6));

-- Location: LCCOMB_X12_Y11_N8
\u_Mem_Controller|wdata[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_Mem_Controller|wdata[7]~7_combout\ = !\u_uart_rx|data_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|data_buffer\(8),
	combout => \u_Mem_Controller|wdata[7]~7_combout\);

-- Location: FF_X12_Y11_N9
\u_Mem_Controller|wdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_Mem_Controller|wdata[7]~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Mem_Controller|wdata\(7));

-- Location: M9K_X13_Y12_N0
\u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dual_16x8:u_ram_dual_16x8|altsyncram:altsyncram_component|altsyncram_vtn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_Mem_Controller|wen~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \u_Mem_Controller|ren~q\,
	clr0 => \ALT_INV_n_rst~input_o\,
	portadatain => \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_ram_dual_16x8|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y27_N0
\u_fnd_1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr6~0_combout\ = (\u_Mem_Controller|fnd_data\(2) & (!\u_Mem_Controller|fnd_data\(1) & (\u_Mem_Controller|fnd_data\(3) $ (!\u_Mem_Controller|fnd_data\(0))))) # (!\u_Mem_Controller|fnd_data\(2) & (\u_Mem_Controller|fnd_data\(0) & 
-- (\u_Mem_Controller|fnd_data\(1) $ (!\u_Mem_Controller|fnd_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y27_N26
\u_fnd_1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr5~0_combout\ = (\u_Mem_Controller|fnd_data\(2) & (\u_Mem_Controller|fnd_data\(1) $ (\u_Mem_Controller|fnd_data\(3) $ (\u_Mem_Controller|fnd_data\(0))))) # (!\u_Mem_Controller|fnd_data\(2) & (\u_Mem_Controller|fnd_data\(1) & 
-- (\u_Mem_Controller|fnd_data\(3) & \u_Mem_Controller|fnd_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y27_N28
\u_fnd_1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr4~0_combout\ = (\u_Mem_Controller|fnd_data\(2) & (\u_Mem_Controller|fnd_data\(3) & ((\u_Mem_Controller|fnd_data\(1)) # (!\u_Mem_Controller|fnd_data\(0))))) # (!\u_Mem_Controller|fnd_data\(2) & (\u_Mem_Controller|fnd_data\(1) & 
-- (!\u_Mem_Controller|fnd_data\(3) & !\u_Mem_Controller|fnd_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y27_N6
\u_fnd_1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr3~0_combout\ = (\u_Mem_Controller|fnd_data\(1) & ((\u_Mem_Controller|fnd_data\(2) & ((\u_Mem_Controller|fnd_data\(0)))) # (!\u_Mem_Controller|fnd_data\(2) & (\u_Mem_Controller|fnd_data\(3) & !\u_Mem_Controller|fnd_data\(0))))) # 
-- (!\u_Mem_Controller|fnd_data\(1) & (!\u_Mem_Controller|fnd_data\(3) & (\u_Mem_Controller|fnd_data\(2) $ (\u_Mem_Controller|fnd_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y27_N8
\u_fnd_1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr2~0_combout\ = (\u_Mem_Controller|fnd_data\(1) & (((!\u_Mem_Controller|fnd_data\(3) & \u_Mem_Controller|fnd_data\(0))))) # (!\u_Mem_Controller|fnd_data\(1) & ((\u_Mem_Controller|fnd_data\(2) & (!\u_Mem_Controller|fnd_data\(3))) # 
-- (!\u_Mem_Controller|fnd_data\(2) & ((\u_Mem_Controller|fnd_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y27_N2
\u_fnd_1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr1~0_combout\ = (\u_Mem_Controller|fnd_data\(1) & (!\u_Mem_Controller|fnd_data\(2) & (!\u_Mem_Controller|fnd_data\(3)))) # (!\u_Mem_Controller|fnd_data\(1) & (\u_Mem_Controller|fnd_data\(0) & (\u_Mem_Controller|fnd_data\(2) $ 
-- (!\u_Mem_Controller|fnd_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y27_N12
\u_fnd_1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_1|WideOr0~0_combout\ = (\u_Mem_Controller|fnd_data\(0) & ((\u_Mem_Controller|fnd_data\(3)) # (\u_Mem_Controller|fnd_data\(1) $ (\u_Mem_Controller|fnd_data\(2))))) # (!\u_Mem_Controller|fnd_data\(0) & ((\u_Mem_Controller|fnd_data\(1)) # 
-- (\u_Mem_Controller|fnd_data\(2) $ (\u_Mem_Controller|fnd_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(1),
	datab => \u_Mem_Controller|fnd_data\(2),
	datac => \u_Mem_Controller|fnd_data\(3),
	datad => \u_Mem_Controller|fnd_data\(0),
	combout => \u_fnd_1|WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y23_N0
\u_fnd_2|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr6~0_combout\ = (\u_Mem_Controller|fnd_data\(6) & (!\u_Mem_Controller|fnd_data\(5) & (\u_Mem_Controller|fnd_data\(4) $ (!\u_Mem_Controller|fnd_data\(7))))) # (!\u_Mem_Controller|fnd_data\(6) & (\u_Mem_Controller|fnd_data\(4) & 
-- (\u_Mem_Controller|fnd_data\(7) $ (!\u_Mem_Controller|fnd_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr6~0_combout\);

-- Location: LCCOMB_X19_Y23_N2
\u_fnd_2|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr5~0_combout\ = (\u_Mem_Controller|fnd_data\(6) & (\u_Mem_Controller|fnd_data\(4) $ (\u_Mem_Controller|fnd_data\(7) $ (\u_Mem_Controller|fnd_data\(5))))) # (!\u_Mem_Controller|fnd_data\(6) & (\u_Mem_Controller|fnd_data\(4) & 
-- (\u_Mem_Controller|fnd_data\(7) & \u_Mem_Controller|fnd_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr5~0_combout\);

-- Location: LCCOMB_X19_Y23_N4
\u_fnd_2|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr4~0_combout\ = (\u_Mem_Controller|fnd_data\(6) & (\u_Mem_Controller|fnd_data\(7) & ((\u_Mem_Controller|fnd_data\(5)) # (!\u_Mem_Controller|fnd_data\(4))))) # (!\u_Mem_Controller|fnd_data\(6) & (!\u_Mem_Controller|fnd_data\(4) & 
-- (!\u_Mem_Controller|fnd_data\(7) & \u_Mem_Controller|fnd_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr4~0_combout\);

-- Location: LCCOMB_X19_Y23_N6
\u_fnd_2|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr3~0_combout\ = (\u_Mem_Controller|fnd_data\(5) & ((\u_Mem_Controller|fnd_data\(6) & (\u_Mem_Controller|fnd_data\(4))) # (!\u_Mem_Controller|fnd_data\(6) & (!\u_Mem_Controller|fnd_data\(4) & \u_Mem_Controller|fnd_data\(7))))) # 
-- (!\u_Mem_Controller|fnd_data\(5) & (!\u_Mem_Controller|fnd_data\(7) & (\u_Mem_Controller|fnd_data\(6) $ (\u_Mem_Controller|fnd_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr3~0_combout\);

-- Location: LCCOMB_X19_Y23_N8
\u_fnd_2|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr2~0_combout\ = (\u_Mem_Controller|fnd_data\(5) & (((\u_Mem_Controller|fnd_data\(4) & !\u_Mem_Controller|fnd_data\(7))))) # (!\u_Mem_Controller|fnd_data\(5) & ((\u_Mem_Controller|fnd_data\(6) & ((!\u_Mem_Controller|fnd_data\(7)))) # 
-- (!\u_Mem_Controller|fnd_data\(6) & (\u_Mem_Controller|fnd_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr2~0_combout\);

-- Location: LCCOMB_X19_Y23_N18
\u_fnd_2|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr1~0_combout\ = (\u_Mem_Controller|fnd_data\(5) & (!\u_Mem_Controller|fnd_data\(6) & ((!\u_Mem_Controller|fnd_data\(7))))) # (!\u_Mem_Controller|fnd_data\(5) & (\u_Mem_Controller|fnd_data\(4) & (\u_Mem_Controller|fnd_data\(6) $ 
-- (!\u_Mem_Controller|fnd_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr1~0_combout\);

-- Location: LCCOMB_X19_Y23_N12
\u_fnd_2|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_fnd_2|WideOr0~0_combout\ = (\u_Mem_Controller|fnd_data\(4) & ((\u_Mem_Controller|fnd_data\(7)) # (\u_Mem_Controller|fnd_data\(6) $ (\u_Mem_Controller|fnd_data\(5))))) # (!\u_Mem_Controller|fnd_data\(4) & ((\u_Mem_Controller|fnd_data\(5)) # 
-- (\u_Mem_Controller|fnd_data\(6) $ (\u_Mem_Controller|fnd_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Mem_Controller|fnd_data\(6),
	datab => \u_Mem_Controller|fnd_data\(4),
	datac => \u_Mem_Controller|fnd_data\(7),
	datad => \u_Mem_Controller|fnd_data\(5),
	combout => \u_fnd_2|WideOr0~0_combout\);

ww_fnd_30_out(0) <= \fnd_30_out[0]~output_o\;

ww_fnd_30_out(1) <= \fnd_30_out[1]~output_o\;

ww_fnd_30_out(2) <= \fnd_30_out[2]~output_o\;

ww_fnd_30_out(3) <= \fnd_30_out[3]~output_o\;

ww_fnd_30_out(4) <= \fnd_30_out[4]~output_o\;

ww_fnd_30_out(5) <= \fnd_30_out[5]~output_o\;

ww_fnd_30_out(6) <= \fnd_30_out[6]~output_o\;

ww_fnd_74_out(0) <= \fnd_74_out[0]~output_o\;

ww_fnd_74_out(1) <= \fnd_74_out[1]~output_o\;

ww_fnd_74_out(2) <= \fnd_74_out[2]~output_o\;

ww_fnd_74_out(3) <= \fnd_74_out[3]~output_o\;

ww_fnd_74_out(4) <= \fnd_74_out[4]~output_o\;

ww_fnd_74_out(5) <= \fnd_74_out[5]~output_o\;

ww_fnd_74_out(6) <= \fnd_74_out[6]~output_o\;
END structure;


