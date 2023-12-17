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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/16/2023 22:22:58"

-- 
-- Device: Altera EP4CGX50DF27C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BLOCO_FLIR IS
    PORT (
	EN_COD : IN std_logic;
	S_COD : IN std_logic_vector(1 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	C_0_1_2_3 : IN std_logic_vector(3 DOWNTO 0);
	CK : IN std_logic;
	CLR_AS : IN std_logic;
	CLR_R : IN std_logic;
	LD_R : IN std_logic;
	LD_OUT : IN std_logic;
	F : OUT std_logic_vector(9 DOWNTO 0)
	);
END BLOCO_FLIR;

-- Design Ports Information
-- F[0]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[9]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_AS	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_OUT	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_R	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_R	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_0_1_2_3[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_COD[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_COD	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_COD[0]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_P24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_0_1_2_3[1]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_0_1_2_3[2]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_0_1_2_3[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BLOCO_FLIR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EN_COD : std_logic;
SIGNAL ww_S_COD : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C_0_1_2_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CK : std_logic;
SIGNAL ww_CLR_AS : std_logic;
SIGNAL ww_CLR_R : std_logic;
SIGNAL ww_LD_R : std_logic;
SIGNAL ww_LD_OUT : std_logic;
SIGNAL ww_F : std_logic_vector(9 DOWNTO 0);
SIGNAL \CK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR_R~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR_AS~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U2|U3|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \F[8]~output_o\ : std_logic;
SIGNAL \F[9]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \CLR_R~input_o\ : std_logic;
SIGNAL \CLR_R~inputclkctrl_outclk\ : std_logic;
SIGNAL \LD_R~input_o\ : std_logic;
SIGNAL \BL_RXC_00|REGY00|FF0|q~q\ : std_logic;
SIGNAL \BL_RXC_01|REGY00|FF0|q~q\ : std_logic;
SIGNAL \C_0_1_2_3[0]~input_o\ : std_logic;
SIGNAL \CLR_AS~input_o\ : std_logic;
SIGNAL \CLR_AS~inputclkctrl_outclk\ : std_logic;
SIGNAL \S_COD[1]~input_o\ : std_logic;
SIGNAL \S_COD[0]~input_o\ : std_logic;
SIGNAL \EN_COD~input_o\ : std_logic;
SIGNAL \COD00|DEMUX_00|Mux1~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|REGC00|FF0|q~q\ : std_logic;
SIGNAL \SOMA_00|U1|U1|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_02|REGY00|FF0|q~q\ : std_logic;
SIGNAL \COD00|DEMUX_00|Mux2~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|REGC00|FF0|q~q\ : std_logic;
SIGNAL \SOMA_01|U1|U1|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \LD_OUT~input_o\ : std_logic;
SIGNAL \REG_01_10BITS|FF0|q~q\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \BL_RXC_00|REGY00|FF1|q~q\ : std_logic;
SIGNAL \BL_RXC_01|REGY00|FF1|q~q\ : std_logic;
SIGNAL \BL_RXC_02|REGY00|FF1|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_01|U1|U2|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF1|q~q\ : std_logic;
SIGNAL \C_0_1_2_3[1]~input_o\ : std_logic;
SIGNAL \BL_RXC_01|REGC00|FF1|q~q\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \COD00|DEMUX_00|Mux0~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|REGC00|FF1|q~q\ : std_logic;
SIGNAL \BL_RXC_00|REGC00|FF0|q~q\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U1|U2|Cout~0_combout\ : std_logic;
SIGNAL \C_0_1_2_3[2]~input_o\ : std_logic;
SIGNAL \BL_RXC_02|REGC00|FF2|q~q\ : std_logic;
SIGNAL \BL_RXC_02|REGC00|FF1|q~q\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \BL_RXC_00|REGY00|FF2|q~q\ : std_logic;
SIGNAL \BL_RXC_01|REGY00|FF2|q~q\ : std_logic;
SIGNAL \BL_RXC_02|REGY00|FF2|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_01|REGC00|FF2|q~q\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ : std_logic;
SIGNAL \SOMA_00|U1|U3|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_01|U1|U3|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF2|q~q\ : std_logic;
SIGNAL \C_0_1_2_3[3]~input_o\ : std_logic;
SIGNAL \BL_RXC_01|REGC00|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U3|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|REGC00|FF2|q~q\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \BL_RXC_00|REGY00|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U3|Cout~3_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U1|U4|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U1|U3|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \SOMA_01|U1|U2|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U1|U3|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_01|REGY00|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|REGC00|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_02|REGY00|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U3|Cout~3_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \SOMA_01|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U2|U1|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|mux04|O~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF4|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|REGC00|FF3|q~q\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U2|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U2|U1|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_01|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U2|U2|HalfAdder2|Sum~combout\ : std_logic;
SIGNAL \REG_01_10BITS|mux05|O~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF5|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \SOMA_00|U2|U3|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_01|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U2|U3|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|mux06|O~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF6|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|ADD3|U2|U3|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_01|MULT|ADD3|U2|U3|Cout~0_combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\ : std_logic;
SIGNAL \BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum~combout\ : std_logic;
SIGNAL \SOMA_00|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_00|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_00|U2|U3|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U2|U3|Cout~0_combout\ : std_logic;
SIGNAL \SOMA_01|U2|U4|HalfAdder2|Sum~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|mux07|O~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF7|q~q\ : std_logic;
SIGNAL \REG_01_10BITS|mux08|O~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF8|q~q\ : std_logic;
SIGNAL \REG_01_10BITS|mux09|O~0_combout\ : std_logic;
SIGNAL \REG_01_10BITS|FF9|q~q\ : std_logic;
SIGNAL \BL_RXC_02|MULT|B3andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_02|MULT|B2andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_02|MULT|B1andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_02|MULT|B0andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_01|MULT|B3andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_01|MULT|B2andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_01|MULT|B1andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_01|MULT|B0andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_00|MULT|B3andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_00|MULT|B2andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_00|MULT|B1andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL_RXC_00|MULT|B0andA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_CLR_AS~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLR_R~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_EN_COD <= EN_COD;
ww_S_COD <= S_COD;
ww_Y <= Y;
ww_C_0_1_2_3 <= C_0_1_2_3;
ww_CK <= CK;
ww_CLR_AS <= CLR_AS;
ww_CLR_R <= CLR_R;
ww_LD_R <= LD_R;
ww_LD_OUT <= LD_OUT;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK~input_o\);

\CLR_R~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR_R~input_o\);

\CLR_AS~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR_AS~input_o\);
\ALT_INV_CLR_AS~inputclkctrl_outclk\ <= NOT \CLR_AS~inputclkctrl_outclk\;
\ALT_INV_CLR_R~inputclkctrl_outclk\ <= NOT \CLR_R~inputclkctrl_outclk\;

-- Location: LCCOMB_X75_Y23_N8
\BL_RXC_01|MULT|B0andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B0andA\(2) = (\BL_RXC_01|REGC00|FF0|q~q\ & \BL_RXC_01|REGY00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datad => \BL_RXC_01|REGY00|FF2|q~q\,
	combout => \BL_RXC_01|MULT|B0andA\(2));

-- Location: LCCOMB_X78_Y22_N30
\BL_RXC_02|MULT|B2andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B2andA\(0) = (\BL_RXC_02|REGC00|FF2|q~q\ & \BL_RXC_02|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_02|REGC00|FF2|q~q\,
	datad => \BL_RXC_02|REGY00|FF0|q~q\,
	combout => \BL_RXC_02|MULT|B2andA\(0));

-- Location: LCCOMB_X79_Y23_N16
\BL_RXC_00|MULT|B3andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B3andA\(0) = (\BL_RXC_00|REGC00|FF3|q~q\ & \BL_RXC_00|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_00|REGC00|FF3|q~q\,
	datad => \BL_RXC_00|REGY00|FF0|q~q\,
	combout => \BL_RXC_00|MULT|B3andA\(0));

-- Location: LCCOMB_X78_Y22_N0
\BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ = \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ $ (((\BL_RXC_02|REGY00|FF0|q~q\ & \BL_RXC_02|REGC00|FF3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF0|q~q\,
	datac => \BL_RXC_02|REGC00|FF3|q~q\,
	datad => \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X76_Y23_N30
\BL_RXC_01|MULT|B2andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B2andA\(2) = (\BL_RXC_01|REGY00|FF2|q~q\ & \BL_RXC_01|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_01|REGY00|FF2|q~q\,
	datad => \BL_RXC_01|REGC00|FF2|q~q\,
	combout => \BL_RXC_01|MULT|B2andA\(2));

-- Location: LCCOMB_X80_Y23_N12
\BL_RXC_00|MULT|B2andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B2andA\(2) = (\BL_RXC_00|REGC00|FF2|q~q\ & \BL_RXC_00|REGY00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_00|REGC00|FF2|q~q\,
	datad => \BL_RXC_00|REGY00|FF2|q~q\,
	combout => \BL_RXC_00|MULT|B2andA\(2));

-- Location: LCCOMB_X77_Y22_N12
\BL_RXC_02|MULT|B3andA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B3andA\(1) = (\BL_RXC_02|REGC00|FF3|q~q\ & \BL_RXC_02|REGY00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_02|REGC00|FF3|q~q\,
	datac => \BL_RXC_02|REGY00|FF1|q~q\,
	combout => \BL_RXC_02|MULT|B3andA\(1));

-- Location: LCCOMB_X77_Y22_N30
\BL_RXC_02|MULT|B1andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B1andA\(3) = (\BL_RXC_02|REGY00|FF3|q~q\ & \BL_RXC_02|REGC00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_02|REGY00|FF3|q~q\,
	datad => \BL_RXC_02|REGC00|FF1|q~q\,
	combout => \BL_RXC_02|MULT|B1andA\(3));

-- Location: LCCOMB_X80_Y23_N6
\BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\ $ (((\BL_RXC_00|REGC00|FF3|q~q\ & \BL_RXC_00|REGY00|FF2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF3|q~q\,
	datab => \BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_00|REGY00|FF2|q~q\,
	datad => \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X76_Y22_N10
\BL_RXC_01|MULT|B2andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B2andA\(3) = (\BL_RXC_01|REGY00|FF3|q~q\ & \BL_RXC_01|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGY00|FF3|q~q\,
	datad => \BL_RXC_01|REGC00|FF2|q~q\,
	combout => \BL_RXC_01|MULT|B2andA\(3));

-- Location: LCCOMB_X76_Y23_N12
\BL_RXC_01|MULT|ADD2|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\ = (\BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\ & ((\BL_RXC_01|MULT|B2andA\(3)) # ((\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\ & \BL_RXC_01|MULT|B1andA\(3))))) # (!\BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\ & 
-- (\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\ & (\BL_RXC_01|MULT|B1andA\(3) & \BL_RXC_01|MULT|B2andA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\,
	datab => \BL_RXC_01|MULT|B1andA\(3),
	datac => \BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|B2andA\(3),
	combout => \BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X79_Y23_N24
\BL_RXC_00|MULT|B2andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B2andA\(3) = (\BL_RXC_00|REGY00|FF3|q~q\ & \BL_RXC_00|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_00|REGY00|FF3|q~q\,
	datad => \BL_RXC_00|REGC00|FF2|q~q\,
	combout => \BL_RXC_00|MULT|B2andA\(3));

-- Location: LCCOMB_X80_Y23_N30
\BL_RXC_00|MULT|B3andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B3andA\(2) = (\BL_RXC_00|REGC00|FF3|q~q\ & \BL_RXC_00|REGY00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF3|q~q\,
	datac => \BL_RXC_00|REGY00|FF2|q~q\,
	combout => \BL_RXC_00|MULT|B3andA\(2));

-- Location: LCCOMB_X80_Y23_N22
\BL_RXC_00|MULT|ADD3|U2|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U2|U3|Cout~0_combout\ = (\BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\ & ((\BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\) # ((\BL_RXC_00|REGC00|FF3|q~q\ & \BL_RXC_00|REGY00|FF3|q~q\)))) # (!\BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\ & 
-- (\BL_RXC_00|REGC00|FF3|q~q\ & (\BL_RXC_00|REGY00|FF3|q~q\ & \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF3|q~q\,
	datab => \BL_RXC_00|REGY00|FF3|q~q\,
	datac => \BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\,
	datad => \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD3|U2|U3|Cout~0_combout\);

-- Location: LCCOMB_X76_Y23_N6
\BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ = (\BL_RXC_01|REGY00|FF3|q~q\ & (\BL_RXC_01|REGC00|FF2|q~q\ $ (((\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\ & \BL_RXC_01|REGC00|FF1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\,
	datab => \BL_RXC_01|REGY00|FF3|q~q\,
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|REGC00|FF2|q~q\,
	combout => \BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X77_Y22_N22
\BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ = (\BL_RXC_02|REGY00|FF3|q~q\ & (\BL_RXC_02|REGC00|FF2|q~q\ $ (((\BL_RXC_02|REGC00|FF1|q~q\ & \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF3|q~q\,
	datab => \BL_RXC_02|REGC00|FF1|q~q\,
	datac => \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_02|REGC00|FF2|q~q\,
	combout => \BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\);

-- Location: IOOBUF_X81_Y17_N2
\F[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF0|q~q\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X81_Y26_N2
\F[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF1|q~q\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X81_Y23_N9
\F[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF2|q~q\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X81_Y23_N2
\F[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF3|q~q\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X81_Y39_N9
\F[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF4|q~q\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X81_Y39_N2
\F[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF5|q~q\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X81_Y25_N9
\F[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF6|q~q\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\F[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF7|q~q\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X81_Y25_N23
\F[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF8|q~q\,
	devoe => ww_devoe,
	o => \F[8]~output_o\);

-- Location: IOOBUF_X81_Y20_N2
\F[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_01_10BITS|FF9|q~q\,
	devoe => ww_devoe,
	o => \F[9]~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\CK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

-- Location: CLKCTRL_G29
\CK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y26_N8
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\CLR_R~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_R,
	o => \CLR_R~input_o\);

-- Location: CLKCTRL_G27
\CLR_R~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR_R~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR_R~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y21_N1
\LD_R~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_R,
	o => \LD_R~input_o\);

-- Location: FF_X79_Y23_N5
\BL_RXC_00|REGY00|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \Y[0]~input_o\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGY00|FF0|q~q\);

-- Location: FF_X75_Y23_N25
\BL_RXC_01|REGY00|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_00|REGY00|FF0|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGY00|FF0|q~q\);

-- Location: IOIBUF_X81_Y25_N1
\C_0_1_2_3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_0_1_2_3(0),
	o => \C_0_1_2_3[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\CLR_AS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_AS,
	o => \CLR_AS~input_o\);

-- Location: CLKCTRL_G28
\CLR_AS~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR_AS~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR_AS~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y14_N15
\S_COD[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_COD(1),
	o => \S_COD[1]~input_o\);

-- Location: IOIBUF_X81_Y14_N1
\S_COD[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_COD(0),
	o => \S_COD[0]~input_o\);

-- Location: IOIBUF_X81_Y19_N1
\EN_COD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_COD,
	o => \EN_COD~input_o\);

-- Location: LCCOMB_X80_Y19_N16
\COD00|DEMUX_00|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COD00|DEMUX_00|Mux1~0_combout\ = (!\S_COD[1]~input_o\ & (\S_COD[0]~input_o\ & \EN_COD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_COD[1]~input_o\,
	datac => \S_COD[0]~input_o\,
	datad => \EN_COD~input_o\,
	combout => \COD00|DEMUX_00|Mux1~0_combout\);

-- Location: FF_X75_Y23_N15
\BL_RXC_01|REGC00|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[0]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGC00|FF0|q~q\);

-- Location: LCCOMB_X79_Y23_N28
\SOMA_00|U1|U1|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U1|HalfAdder1|Sum~combout\ = (\BL_RXC_00|REGC00|FF0|q~q\ & (\BL_RXC_00|REGY00|FF0|q~q\ $ (((\BL_RXC_01|REGY00|FF0|q~q\ & \BL_RXC_01|REGC00|FF0|q~q\))))) # (!\BL_RXC_00|REGC00|FF0|q~q\ & (((\BL_RXC_01|REGY00|FF0|q~q\ & 
-- \BL_RXC_01|REGC00|FF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF0|q~q\,
	datab => \BL_RXC_00|REGY00|FF0|q~q\,
	datac => \BL_RXC_01|REGY00|FF0|q~q\,
	datad => \BL_RXC_01|REGC00|FF0|q~q\,
	combout => \SOMA_00|U1|U1|HalfAdder1|Sum~combout\);

-- Location: FF_X78_Y22_N5
\BL_RXC_02|REGY00|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_01|REGY00|FF0|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGY00|FF0|q~q\);

-- Location: LCCOMB_X80_Y19_N8
\COD00|DEMUX_00|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COD00|DEMUX_00|Mux2~0_combout\ = (\S_COD[1]~input_o\ & (!\S_COD[0]~input_o\ & \EN_COD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_COD[1]~input_o\,
	datac => \S_COD[0]~input_o\,
	datad => \EN_COD~input_o\,
	combout => \COD00|DEMUX_00|Mux2~0_combout\);

-- Location: FF_X78_Y22_N31
\BL_RXC_02|REGC00|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[0]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGC00|FF0|q~q\);

-- Location: LCCOMB_X78_Y23_N4
\SOMA_01|U1|U1|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U1|HalfAdder1|Sum~combout\ = \SOMA_00|U1|U1|HalfAdder1|Sum~combout\ $ (((\BL_RXC_02|REGY00|FF0|q~q\ & \BL_RXC_02|REGC00|FF0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOMA_00|U1|U1|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_02|REGY00|FF0|q~q\,
	datad => \BL_RXC_02|REGC00|FF0|q~q\,
	combout => \SOMA_01|U1|U1|HalfAdder1|Sum~combout\);

-- Location: IOIBUF_X38_Y0_N8
\LD_OUT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_OUT,
	o => \LD_OUT~input_o\);

-- Location: FF_X78_Y23_N5
\REG_01_10BITS|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \SOMA_01|U1|U1|HalfAdder1|Sum~combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	ena => \LD_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF0|q~q\);

-- Location: LCCOMB_X78_Y23_N8
\BL_RXC_02|MULT|B0andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B0andA\(0) = (\BL_RXC_02|REGY00|FF0|q~q\ & \BL_RXC_02|REGC00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_02|REGY00|FF0|q~q\,
	datad => \BL_RXC_02|REGC00|FF0|q~q\,
	combout => \BL_RXC_02|MULT|B0andA\(0));

-- Location: IOIBUF_X81_Y16_N1
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: FF_X79_Y23_N17
\BL_RXC_00|REGY00|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \Y[1]~input_o\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGY00|FF1|q~q\);

-- Location: FF_X75_Y23_N23
\BL_RXC_01|REGY00|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_00|REGY00|FF1|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGY00|FF1|q~q\);

-- Location: FF_X78_Y22_N21
\BL_RXC_02|REGY00|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_01|REGY00|FF1|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGY00|FF1|q~q\);

-- Location: LCCOMB_X78_Y22_N4
\BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ = (\BL_RXC_02|REGC00|FF1|q~q\ & (\BL_RXC_02|REGY00|FF0|q~q\ $ (((\BL_RXC_02|REGC00|FF0|q~q\ & \BL_RXC_02|REGY00|FF1|q~q\))))) # (!\BL_RXC_02|REGC00|FF1|q~q\ & (\BL_RXC_02|REGC00|FF0|q~q\ & 
-- ((\BL_RXC_02|REGY00|FF1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGC00|FF1|q~q\,
	datab => \BL_RXC_02|REGC00|FF0|q~q\,
	datac => \BL_RXC_02|REGY00|FF0|q~q\,
	datad => \BL_RXC_02|REGY00|FF1|q~q\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X78_Y23_N18
\SOMA_01|U1|U2|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U2|HalfAdder2|Sum~combout\ = \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\ $ (\BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ $ (((\BL_RXC_02|MULT|B0andA\(0) & \SOMA_00|U1|U1|HalfAdder1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\,
	datab => \BL_RXC_02|MULT|B0andA\(0),
	datac => \BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\,
	datad => \SOMA_00|U1|U1|HalfAdder1|Sum~combout\,
	combout => \SOMA_01|U1|U2|HalfAdder2|Sum~combout\);

-- Location: FF_X78_Y23_N19
\REG_01_10BITS|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \SOMA_01|U1|U2|HalfAdder2|Sum~combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	ena => \LD_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF1|q~q\);

-- Location: IOIBUF_X81_Y21_N8
\C_0_1_2_3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_0_1_2_3(1),
	o => \C_0_1_2_3[1]~input_o\);

-- Location: FF_X75_Y23_N9
\BL_RXC_01|REGC00|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[1]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGC00|FF1|q~q\);

-- Location: LCCOMB_X75_Y23_N30
\BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ = (\BL_RXC_01|REGY00|FF1|q~q\ & (\BL_RXC_01|REGC00|FF0|q~q\ $ (((\BL_RXC_01|REGC00|FF1|q~q\ & \BL_RXC_01|REGY00|FF0|q~q\))))) # (!\BL_RXC_01|REGY00|FF1|q~q\ & (((\BL_RXC_01|REGC00|FF1|q~q\ & 
-- \BL_RXC_01|REGY00|FF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGY00|FF1|q~q\,
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|REGY00|FF0|q~q\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X80_Y19_N18
\COD00|DEMUX_00|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COD00|DEMUX_00|Mux0~0_combout\ = (!\S_COD[1]~input_o\ & (!\S_COD[0]~input_o\ & \EN_COD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_COD[1]~input_o\,
	datac => \S_COD[0]~input_o\,
	datad => \EN_COD~input_o\,
	combout => \COD00|DEMUX_00|Mux0~0_combout\);

-- Location: FF_X79_Y23_N15
\BL_RXC_00|REGC00|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[1]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGC00|FF1|q~q\);

-- Location: FF_X79_Y23_N23
\BL_RXC_00|REGC00|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[0]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGC00|FF0|q~q\);

-- Location: LCCOMB_X79_Y23_N22
\BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ = (\BL_RXC_00|REGY00|FF0|q~q\ & (\BL_RXC_00|REGC00|FF1|q~q\ $ (((\BL_RXC_00|REGC00|FF0|q~q\ & \BL_RXC_00|REGY00|FF1|q~q\))))) # (!\BL_RXC_00|REGY00|FF0|q~q\ & (((\BL_RXC_00|REGC00|FF0|q~q\ & 
-- \BL_RXC_00|REGY00|FF1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGY00|FF0|q~q\,
	datab => \BL_RXC_00|REGC00|FF1|q~q\,
	datac => \BL_RXC_00|REGC00|FF0|q~q\,
	datad => \BL_RXC_00|REGY00|FF1|q~q\,
	combout => \BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X79_Y23_N30
\BL_RXC_00|MULT|B0andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B0andA\(0) = (\BL_RXC_00|REGC00|FF0|q~q\ & \BL_RXC_00|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_00|REGC00|FF0|q~q\,
	datad => \BL_RXC_00|REGY00|FF0|q~q\,
	combout => \BL_RXC_00|MULT|B0andA\(0));

-- Location: LCCOMB_X78_Y23_N20
\SOMA_00|U1|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U2|Cout~0_combout\ = (\BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ & ((\BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\) # ((\BL_RXC_01|MULT|B0andA\(0) & \BL_RXC_00|MULT|B0andA\(0))))) # 
-- (!\BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ & (\BL_RXC_01|MULT|B0andA\(0) & (\BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ & \BL_RXC_00|MULT|B0andA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B0andA\(0),
	datab => \BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\,
	datad => \BL_RXC_00|MULT|B0andA\(0),
	combout => \SOMA_00|U1|U2|Cout~0_combout\);

-- Location: IOIBUF_X81_Y20_N8
\C_0_1_2_3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_0_1_2_3(2),
	o => \C_0_1_2_3[2]~input_o\);

-- Location: FF_X78_Y22_N3
\BL_RXC_02|REGC00|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[2]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGC00|FF2|q~q\);

-- Location: FF_X78_Y22_N23
\BL_RXC_02|REGC00|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[1]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGC00|FF1|q~q\);

-- Location: IOIBUF_X81_Y16_N8
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: FF_X79_Y23_N13
\BL_RXC_00|REGY00|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \Y[2]~input_o\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGY00|FF2|q~q\);

-- Location: FF_X75_Y23_N7
\BL_RXC_01|REGY00|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_00|REGY00|FF2|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGY00|FF2|q~q\);

-- Location: FF_X78_Y22_N25
\BL_RXC_02|REGY00|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_01|REGY00|FF2|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGY00|FF2|q~q\);

-- Location: LCCOMB_X78_Y22_N6
\BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ = \BL_RXC_02|REGY00|FF2|q~q\ $ (((\BL_RXC_02|REGC00|FF1|q~q\ & (!\BL_RXC_02|REGY00|FF0|q~q\ & \BL_RXC_02|REGY00|FF1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGC00|FF1|q~q\,
	datab => \BL_RXC_02|REGY00|FF2|q~q\,
	datac => \BL_RXC_02|REGY00|FF0|q~q\,
	datad => \BL_RXC_02|REGY00|FF1|q~q\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\);

-- Location: LCCOMB_X78_Y22_N20
\BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ = (\BL_RXC_02|REGC00|FF0|q~q\ & (((\BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\)))) # (!\BL_RXC_02|REGC00|FF0|q~q\ & (\BL_RXC_02|REGC00|FF1|q~q\ & (\BL_RXC_02|REGY00|FF1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGC00|FF0|q~q\,
	datab => \BL_RXC_02|REGC00|FF1|q~q\,
	datac => \BL_RXC_02|REGY00|FF1|q~q\,
	datad => \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\);

-- Location: LCCOMB_X78_Y22_N22
\BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ = \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ $ (((\BL_RXC_02|REGY00|FF0|q~q\ & \BL_RXC_02|REGC00|FF2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF0|q~q\,
	datab => \BL_RXC_02|REGC00|FF2|q~q\,
	datad => \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	combout => \BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\);

-- Location: FF_X75_Y23_N13
\BL_RXC_01|REGC00|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[2]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGC00|FF2|q~q\);

-- Location: LCCOMB_X75_Y23_N14
\BL_RXC_01|MULT|B2andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B2andA\(0) = (\BL_RXC_01|REGY00|FF0|q~q\ & \BL_RXC_01|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGY00|FF0|q~q\,
	datad => \BL_RXC_01|REGC00|FF2|q~q\,
	combout => \BL_RXC_01|MULT|B2andA\(0));

-- Location: LCCOMB_X75_Y23_N20
\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2_combout\ = (\BL_RXC_01|REGC00|FF1|q~q\ & ((!\BL_RXC_01|REGY00|FF0|q~q\) # (!\BL_RXC_01|REGC00|FF0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|REGY00|FF0|q~q\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2_combout\);

-- Location: LCCOMB_X75_Y23_N26
\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ = (\BL_RXC_01|REGY00|FF2|q~q\ & (\BL_RXC_01|REGC00|FF0|q~q\ $ (((\BL_RXC_01|REGY00|FF1|q~q\ & \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2_combout\))))) # (!\BL_RXC_01|REGY00|FF2|q~q\ & 
-- (((\BL_RXC_01|REGY00|FF1|q~q\ & \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGY00|FF2|q~q\,
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datac => \BL_RXC_01|REGY00|FF1|q~q\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~2_combout\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\);

-- Location: LCCOMB_X79_Y23_N10
\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ = \BL_RXC_00|REGY00|FF2|q~q\ $ (((\BL_RXC_00|REGC00|FF1|q~q\ & (\BL_RXC_00|REGY00|FF1|q~q\ & !\BL_RXC_00|REGY00|FF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGY00|FF2|q~q\,
	datab => \BL_RXC_00|REGC00|FF1|q~q\,
	datac => \BL_RXC_00|REGY00|FF1|q~q\,
	datad => \BL_RXC_00|REGY00|FF0|q~q\,
	combout => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\);

-- Location: LCCOMB_X79_Y23_N14
\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ = (\BL_RXC_00|REGC00|FF0|q~q\ & (((\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\)))) # (!\BL_RXC_00|REGC00|FF0|q~q\ & (\BL_RXC_00|REGY00|FF1|q~q\ & (\BL_RXC_00|REGC00|FF1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF0|q~q\,
	datab => \BL_RXC_00|REGY00|FF1|q~q\,
	datac => \BL_RXC_00|REGC00|FF1|q~q\,
	datad => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\,
	combout => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\);

-- Location: LCCOMB_X78_Y23_N22
\SOMA_00|U1|U3|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U3|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|B2andA\(0) $ (\BL_RXC_01|MULT|B2andA\(0) $ (\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ $ (\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B2andA\(0),
	datab => \BL_RXC_01|MULT|B2andA\(0),
	datac => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\,
	datad => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	combout => \SOMA_00|U1|U3|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X78_Y23_N24
\SOMA_01|U1|U3|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U3|HalfAdder2|Sum~combout\ = \SOMA_01|U1|U2|Cout~0_combout\ $ (\SOMA_00|U1|U2|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ $ (\SOMA_00|U1|U3|HalfAdder1|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_01|U1|U2|Cout~0_combout\,
	datab => \SOMA_00|U1|U2|Cout~0_combout\,
	datac => \BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\,
	datad => \SOMA_00|U1|U3|HalfAdder1|Sum~combout\,
	combout => \SOMA_01|U1|U3|HalfAdder2|Sum~combout\);

-- Location: FF_X78_Y23_N25
\REG_01_10BITS|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \SOMA_01|U1|U3|HalfAdder2|Sum~combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	ena => \LD_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF2|q~q\);

-- Location: IOIBUF_X81_Y25_N15
\C_0_1_2_3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_0_1_2_3(3),
	o => \C_0_1_2_3[3]~input_o\);

-- Location: FF_X75_Y23_N1
\BL_RXC_01|REGC00|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[3]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGC00|FF3|q~q\);

-- Location: LCCOMB_X75_Y23_N22
\BL_RXC_01|MULT|B3andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B3andA\(0) = (\BL_RXC_01|REGC00|FF3|q~q\ & \BL_RXC_01|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGC00|FF3|q~q\,
	datad => \BL_RXC_01|REGY00|FF0|q~q\,
	combout => \BL_RXC_01|MULT|B3andA\(0));

-- Location: LCCOMB_X75_Y23_N2
\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\ = (\BL_RXC_01|REGY00|FF1|q~q\ & (\BL_RXC_01|REGC00|FF1|q~q\ & ((!\BL_RXC_01|REGY00|FF0|q~q\) # (!\BL_RXC_01|REGC00|FF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGY00|FF1|q~q\,
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|REGY00|FF0|q~q\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\);

-- Location: LCCOMB_X75_Y23_N16
\BL_RXC_01|MULT|B2andA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B2andA\(1) = (\BL_RXC_01|REGC00|FF2|q~q\ & \BL_RXC_01|REGY00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_01|REGC00|FF2|q~q\,
	datad => \BL_RXC_01|REGY00|FF1|q~q\,
	combout => \BL_RXC_01|MULT|B2andA\(1));

-- Location: LCCOMB_X75_Y23_N4
\BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\ = \BL_RXC_01|MULT|B2andA\(1) $ (((\BL_RXC_01|MULT|B2andA\(0) & (\BL_RXC_01|MULT|B0andA\(2) $ (\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B0andA\(2),
	datab => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\,
	datac => \BL_RXC_01|MULT|B2andA\(1),
	datad => \BL_RXC_01|MULT|B2andA\(0),
	combout => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X75_Y23_N12
\BL_RXC_01|MULT|ADD1|U1|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U3|Cout~0_combout\ = (\BL_RXC_01|REGC00|FF0|q~q\ & \BL_RXC_01|REGY00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datad => \BL_RXC_01|REGY00|FF1|q~q\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~0_combout\);

-- Location: LCCOMB_X75_Y23_N18
\BL_RXC_01|MULT|ADD1|U1|U3|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\ = (\BL_RXC_01|REGC00|FF1|q~q\ & (\BL_RXC_01|MULT|ADD1|U1|U3|Cout~0_combout\ & ((\BL_RXC_01|REGY00|FF2|q~q\) # (\BL_RXC_01|REGY00|FF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGY00|FF2|q~q\,
	datab => \BL_RXC_01|REGY00|FF0|q~q\,
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\);

-- Location: LCCOMB_X76_Y23_N4
\BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\ $ (\BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\ $ (\BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\,
	datac => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\,
	combout => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\);

-- Location: FF_X79_Y23_N27
\BL_RXC_00|REGC00|FF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[2]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGC00|FF2|q~q\);

-- Location: LCCOMB_X79_Y23_N12
\BL_RXC_00|MULT|B2andA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B2andA\(1) = (\BL_RXC_00|REGY00|FF1|q~q\ & \BL_RXC_00|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_00|REGY00|FF1|q~q\,
	datad => \BL_RXC_00|REGC00|FF2|q~q\,
	combout => \BL_RXC_00|MULT|B2andA\(1));

-- Location: LCCOMB_X79_Y23_N4
\BL_RXC_00|MULT|B2andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B2andA\(0) = (\BL_RXC_00|REGY00|FF0|q~q\ & \BL_RXC_00|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_00|REGY00|FF0|q~q\,
	datad => \BL_RXC_00|REGC00|FF2|q~q\,
	combout => \BL_RXC_00|MULT|B2andA\(0));

-- Location: IOIBUF_X81_Y19_N8
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: FF_X79_Y23_N25
\BL_RXC_00|REGY00|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \Y[3]~input_o\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGY00|FF3|q~q\);

-- Location: LCCOMB_X79_Y23_N26
\BL_RXC_00|MULT|B0andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B0andA\(3) = (\BL_RXC_00|REGC00|FF0|q~q\ & \BL_RXC_00|REGY00|FF3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF0|q~q\,
	datad => \BL_RXC_00|REGY00|FF3|q~q\,
	combout => \BL_RXC_00|MULT|B0andA\(3));

-- Location: LCCOMB_X79_Y23_N6
\BL_RXC_00|MULT|ADD1|U1|U3|Cout~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U3|Cout~3_combout\ = (\BL_RXC_00|REGY00|FF2|q~q\) # (\BL_RXC_00|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGY00|FF2|q~q\,
	datad => \BL_RXC_00|REGY00|FF0|q~q\,
	combout => \BL_RXC_00|MULT|ADD1|U1|U3|Cout~3_combout\);

-- Location: LCCOMB_X79_Y23_N0
\BL_RXC_00|MULT|ADD1|U1|U3|Cout~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\ = (\BL_RXC_00|REGC00|FF0|q~q\ & (\BL_RXC_00|REGY00|FF1|q~q\ & (\BL_RXC_00|REGC00|FF1|q~q\ & \BL_RXC_00|MULT|ADD1|U1|U3|Cout~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF0|q~q\,
	datab => \BL_RXC_00|REGY00|FF1|q~q\,
	datac => \BL_RXC_00|REGC00|FF1|q~q\,
	datad => \BL_RXC_00|MULT|ADD1|U1|U3|Cout~3_combout\,
	combout => \BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\);

-- Location: LCCOMB_X79_Y23_N2
\BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_00|MULT|B0andA\(3) $ (\BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\ $ (((\BL_RXC_00|REGY00|FF2|q~q\ & \BL_RXC_00|REGC00|FF1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGY00|FF2|q~q\,
	datab => \BL_RXC_00|REGC00|FF1|q~q\,
	datac => \BL_RXC_00|MULT|B0andA\(3),
	datad => \BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\,
	combout => \BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X79_Y23_N8
\BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_00|MULT|B2andA\(1) $ (\BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ $ (((\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ & \BL_RXC_00|MULT|B2andA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	datab => \BL_RXC_00|MULT|B2andA\(1),
	datac => \BL_RXC_00|MULT|B2andA\(0),
	datad => \BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N28
\SOMA_00|U1|U4|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U4|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|B3andA\(0) $ (\BL_RXC_01|MULT|B3andA\(0) $ (\BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ $ (\BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B3andA\(0),
	datab => \BL_RXC_01|MULT|B3andA\(0),
	datac => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	combout => \SOMA_00|U1|U4|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X75_Y23_N24
\BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ = \BL_RXC_01|MULT|B0andA\(2) $ (\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\ $ (((\BL_RXC_01|REGC00|FF2|q~q\ & \BL_RXC_01|REGY00|FF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B0andA\(2),
	datab => \BL_RXC_01|REGC00|FF2|q~q\,
	datac => \BL_RXC_01|REGY00|FF0|q~q\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~3_combout\,
	combout => \BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X78_Y23_N2
\SOMA_00|U1|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U3|Cout~0_combout\ = (\BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ & ((\SOMA_00|U1|U2|Cout~0_combout\) # (\BL_RXC_00|MULT|B2andA\(0) $ (\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\)))) # 
-- (!\BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ & (\SOMA_00|U1|U2|Cout~0_combout\ & (\BL_RXC_00|MULT|B2andA\(0) $ (\BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B2andA\(0),
	datab => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	datac => \BL_RXC_01|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\,
	datad => \SOMA_00|U1|U2|Cout~0_combout\,
	combout => \SOMA_00|U1|U3|Cout~0_combout\);

-- Location: LCCOMB_X75_Y23_N0
\BL_RXC_01|MULT|B0andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B0andA\(0) = (\BL_RXC_01|REGC00|FF0|q~q\ & \BL_RXC_01|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGC00|FF0|q~q\,
	datad => \BL_RXC_01|REGY00|FF0|q~q\,
	combout => \BL_RXC_01|MULT|B0andA\(0));

-- Location: LCCOMB_X78_Y22_N12
\SOMA_00|U1|U2|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\ = \BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ $ (((\BL_RXC_00|MULT|B0andA\(0) & \BL_RXC_01|MULT|B0andA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B0andA\(0),
	datab => \BL_RXC_01|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_00|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\,
	datad => \BL_RXC_01|MULT|B0andA\(0),
	combout => \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X78_Y22_N10
\SOMA_01|U1|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U2|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ & ((\SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\) # ((\SOMA_00|U1|U1|HalfAdder1|Sum~combout\ & \BL_RXC_02|MULT|B0andA\(0))))) # 
-- (!\BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\ & (\SOMA_00|U1|U1|HalfAdder1|Sum~combout\ & (\BL_RXC_02|MULT|B0andA\(0) & \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U1|U1|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_02|MULT|ADD1|U1|U2|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_02|MULT|B0andA\(0),
	datad => \SOMA_00|U1|U2|HalfAdder2|Sum~0_combout\,
	combout => \SOMA_01|U1|U2|Cout~0_combout\);

-- Location: LCCOMB_X77_Y23_N10
\SOMA_01|U1|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U3|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ & ((\SOMA_01|U1|U2|Cout~0_combout\) # (\SOMA_00|U1|U2|Cout~0_combout\ $ (\SOMA_00|U1|U3|HalfAdder1|Sum~combout\)))) # (!\BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\ 
-- & (\SOMA_01|U1|U2|Cout~0_combout\ & (\SOMA_00|U1|U2|Cout~0_combout\ $ (\SOMA_00|U1|U3|HalfAdder1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U1|U2|Cout~0_combout\,
	datab => \SOMA_00|U1|U3|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_02|MULT|ADD2|U1|U3|HalfAdder1|Sum~combout\,
	datad => \SOMA_01|U1|U2|Cout~0_combout\,
	combout => \SOMA_01|U1|U3|Cout~0_combout\);

-- Location: LCCOMB_X78_Y23_N30
\SOMA_01|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ $ (\SOMA_00|U1|U4|HalfAdder1|Sum~combout\ $ (\SOMA_00|U1|U3|Cout~0_combout\ $ (\SOMA_01|U1|U3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\,
	datab => \SOMA_00|U1|U4|HalfAdder1|Sum~combout\,
	datac => \SOMA_00|U1|U3|Cout~0_combout\,
	datad => \SOMA_01|U1|U3|Cout~0_combout\,
	combout => \SOMA_01|U1|U4|HalfAdder2|Sum~combout\);

-- Location: FF_X78_Y23_N31
\REG_01_10BITS|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \SOMA_01|U1|U4|HalfAdder2|Sum~combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	ena => \LD_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF3|q~q\);

-- Location: FF_X76_Y23_N9
\BL_RXC_01|REGY00|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_00|REGY00|FF3|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_01|REGY00|FF3|q~q\);

-- Location: LCCOMB_X76_Y23_N10
\BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\ = (\BL_RXC_01|REGC00|FF0|q~q\ & (\BL_RXC_01|REGY00|FF3|q~q\ $ (((\BL_RXC_01|REGC00|FF1|q~q\ & \BL_RXC_01|REGY00|FF2|q~q\))))) # (!\BL_RXC_01|REGC00|FF0|q~q\ & (((\BL_RXC_01|REGC00|FF1|q~q\ & 
-- \BL_RXC_01|REGY00|FF2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGC00|FF0|q~q\,
	datab => \BL_RXC_01|REGY00|FF3|q~q\,
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|REGY00|FF2|q~q\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X79_Y23_N18
\BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ = \BL_RXC_01|MULT|B3andA\(0) $ (\BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\ $ (\BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\ $ (\BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B3andA\(0),
	datab => \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~0_combout\,
	datac => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~0_combout\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\,
	combout => \BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X78_Y23_N28
\SOMA_00|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U1|U4|Cout~0_combout\ = (\SOMA_00|U1|U3|Cout~0_combout\ & ((\BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\) # (\BL_RXC_00|MULT|B3andA\(0) $ (\BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\)))) # (!\SOMA_00|U1|U3|Cout~0_combout\ & 
-- (\BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ & (\BL_RXC_00|MULT|B3andA\(0) $ (\BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B3andA\(0),
	datab => \SOMA_00|U1|U3|Cout~0_combout\,
	datac => \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_01|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\,
	combout => \SOMA_00|U1|U4|Cout~0_combout\);

-- Location: FF_X78_Y22_N1
\BL_RXC_02|REGC00|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[3]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGC00|FF3|q~q\);

-- Location: LCCOMB_X78_Y22_N8
\BL_RXC_02|MULT|B3andA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B3andA\(0) = (\BL_RXC_02|REGC00|FF3|q~q\ & \BL_RXC_02|REGY00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_02|REGC00|FF3|q~q\,
	datad => \BL_RXC_02|REGY00|FF0|q~q\,
	combout => \BL_RXC_02|MULT|B3andA\(0));

-- Location: LCCOMB_X78_Y22_N24
\BL_RXC_02|MULT|B2andA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B2andA\(1) = (\BL_RXC_02|REGC00|FF2|q~q\ & \BL_RXC_02|REGY00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_02|REGC00|FF2|q~q\,
	datad => \BL_RXC_02|REGY00|FF1|q~q\,
	combout => \BL_RXC_02|MULT|B2andA\(1));

-- Location: FF_X78_Y22_N9
\BL_RXC_02|REGY00|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \BL_RXC_01|REGY00|FF3|q~q\,
	clrn => \ALT_INV_CLR_R~inputclkctrl_outclk\,
	sload => VCC,
	ena => \LD_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_02|REGY00|FF3|q~q\);

-- Location: LCCOMB_X78_Y22_N26
\BL_RXC_02|MULT|B0andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B0andA\(3) = (\BL_RXC_02|REGC00|FF0|q~q\ & \BL_RXC_02|REGY00|FF3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGC00|FF0|q~q\,
	datac => \BL_RXC_02|REGY00|FF3|q~q\,
	combout => \BL_RXC_02|MULT|B0andA\(3));

-- Location: LCCOMB_X78_Y22_N2
\BL_RXC_02|MULT|ADD1|U1|U3|Cout~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U3|Cout~3_combout\ = (\BL_RXC_02|REGY00|FF0|q~q\) # (\BL_RXC_02|REGY00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_02|REGY00|FF0|q~q\,
	datad => \BL_RXC_02|REGY00|FF2|q~q\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U3|Cout~3_combout\);

-- Location: LCCOMB_X78_Y22_N16
\BL_RXC_02|MULT|ADD1|U1|U3|Cout~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\ = (\BL_RXC_02|REGC00|FF0|q~q\ & (\BL_RXC_02|REGY00|FF1|q~q\ & (\BL_RXC_02|REGC00|FF1|q~q\ & \BL_RXC_02|MULT|ADD1|U1|U3|Cout~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGC00|FF0|q~q\,
	datab => \BL_RXC_02|REGY00|FF1|q~q\,
	datac => \BL_RXC_02|REGC00|FF1|q~q\,
	datad => \BL_RXC_02|MULT|ADD1|U1|U3|Cout~3_combout\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\);

-- Location: LCCOMB_X78_Y22_N28
\BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_02|MULT|B0andA\(3) $ (\BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\ $ (((\BL_RXC_02|REGC00|FF1|q~q\ & \BL_RXC_02|REGY00|FF2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGC00|FF1|q~q\,
	datab => \BL_RXC_02|REGY00|FF2|q~q\,
	datac => \BL_RXC_02|MULT|B0andA\(3),
	datad => \BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X78_Y22_N14
\BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_02|MULT|B2andA\(1) $ (\BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ $ (((\BL_RXC_02|MULT|B2andA\(0) & \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B2andA\(0),
	datab => \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	datac => \BL_RXC_02|MULT|B2andA\(1),
	datad => \BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X77_Y22_N24
\BL_RXC_02|MULT|B2andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B2andA\(2) = (\BL_RXC_02|REGY00|FF2|q~q\ & \BL_RXC_02|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_02|REGY00|FF2|q~q\,
	datad => \BL_RXC_02|REGC00|FF2|q~q\,
	combout => \BL_RXC_02|MULT|B2andA\(2));

-- Location: LCCOMB_X77_Y22_N26
\BL_RXC_02|MULT|ADD1|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\ = (\BL_RXC_02|MULT|B0andA\(3) & ((\BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\) # ((\BL_RXC_02|REGY00|FF2|q~q\ & \BL_RXC_02|REGC00|FF1|q~q\)))) # (!\BL_RXC_02|MULT|B0andA\(3) & (\BL_RXC_02|REGY00|FF2|q~q\ & 
-- (\BL_RXC_02|REGC00|FF1|q~q\ & \BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF2|q~q\,
	datab => \BL_RXC_02|REGC00|FF1|q~q\,
	datac => \BL_RXC_02|MULT|B0andA\(3),
	datad => \BL_RXC_02|MULT|ADD1|U1|U3|Cout~9_combout\,
	combout => \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X78_Y22_N18
\BL_RXC_02|MULT|ADD2|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\ = (\BL_RXC_02|MULT|B2andA\(1) & ((\BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\) # ((\BL_RXC_02|MULT|B2andA\(0) & \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\)))) # (!\BL_RXC_02|MULT|B2andA\(1) & 
-- (\BL_RXC_02|MULT|B2andA\(0) & (\BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\ & \BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B2andA\(0),
	datab => \BL_RXC_02|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	datac => \BL_RXC_02|MULT|B2andA\(1),
	datad => \BL_RXC_02|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X77_Y22_N16
\BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ = \BL_RXC_02|MULT|B1andA\(3) $ (\BL_RXC_02|MULT|B2andA\(2) $ (\BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B1andA\(3),
	datab => \BL_RXC_02|MULT|B2andA\(2),
	datac => \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X77_Y22_N18
\BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ = \BL_RXC_02|MULT|B3andA\(1) $ (\BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ $ (((\BL_RXC_02|MULT|B3andA\(0) & \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B3andA\(1),
	datab => \BL_RXC_02|MULT|B3andA\(0),
	datac => \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N2
\SOMA_01|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U1|U4|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ & ((\SOMA_01|U1|U3|Cout~0_combout\) # (\SOMA_00|U1|U4|HalfAdder1|Sum~combout\ $ (\SOMA_00|U1|U3|Cout~0_combout\)))) # (!\BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\ 
-- & (\SOMA_01|U1|U3|Cout~0_combout\ & (\SOMA_00|U1|U4|HalfAdder1|Sum~combout\ $ (\SOMA_00|U1|U3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|ADD3|U1|U4|HalfAdder1|Sum~combout\,
	datab => \SOMA_00|U1|U4|HalfAdder1|Sum~combout\,
	datac => \SOMA_00|U1|U3|Cout~0_combout\,
	datad => \SOMA_01|U1|U3|Cout~0_combout\,
	combout => \SOMA_01|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X78_Y23_N10
\SOMA_01|U2|U1|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U1|HalfAdder2|Sum~0_combout\ = \SOMA_00|U2|U1|HalfAdder1|Sum~combout\ $ (\SOMA_00|U1|U4|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ $ (\SOMA_01|U1|U4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U2|U1|HalfAdder1|Sum~combout\,
	datab => \SOMA_00|U1|U4|Cout~0_combout\,
	datac => \BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\,
	datad => \SOMA_01|U1|U4|Cout~0_combout\,
	combout => \SOMA_01|U2|U1|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X78_Y23_N16
\REG_01_10BITS|mux04|O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_01_10BITS|mux04|O~0_combout\ = (\LD_OUT~input_o\ & ((\SOMA_01|U2|U1|HalfAdder2|Sum~0_combout\))) # (!\LD_OUT~input_o\ & (\REG_01_10BITS|FF0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LD_OUT~input_o\,
	datac => \REG_01_10BITS|FF0|q~q\,
	datad => \SOMA_01|U2|U1|HalfAdder2|Sum~0_combout\,
	combout => \REG_01_10BITS|mux04|O~0_combout\);

-- Location: FF_X78_Y23_N17
\REG_01_10BITS|FF4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \REG_01_10BITS|mux04|O~0_combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF4|q~q\);

-- Location: LCCOMB_X77_Y22_N28
\BL_RXC_02|MULT|B3andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B3andA\(2) = (\BL_RXC_02|REGY00|FF2|q~q\ & \BL_RXC_02|REGC00|FF3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF2|q~q\,
	datac => \BL_RXC_02|REGC00|FF3|q~q\,
	combout => \BL_RXC_02|MULT|B3andA\(2));

-- Location: LCCOMB_X77_Y22_N4
\BL_RXC_02|MULT|ADD2|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\ = (\BL_RXC_02|MULT|B2andA\(2) & ((\BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\) # (\BL_RXC_02|MULT|B1andA\(3) $ (\BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\)))) # (!\BL_RXC_02|MULT|B2andA\(2) & 
-- (\BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\ & (\BL_RXC_02|MULT|B1andA\(3) $ (\BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B1andA\(3),
	datab => \BL_RXC_02|MULT|B2andA\(2),
	datac => \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD2|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X77_Y22_N6
\BL_RXC_02|MULT|ADD3|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\ = (\BL_RXC_02|MULT|B3andA\(1) & ((\BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\) # ((\BL_RXC_02|MULT|B3andA\(0) & \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\)))) # (!\BL_RXC_02|MULT|B3andA\(1) & 
-- (\BL_RXC_02|MULT|B3andA\(0) & (\BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ & \BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B3andA\(1),
	datab => \BL_RXC_02|MULT|B3andA\(0),
	datac => \BL_RXC_02|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_02|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X77_Y22_N2
\BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ = \BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_02|MULT|B3andA\(2) $ (\BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_02|MULT|B3andA\(2),
	datac => \BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\);

-- Location: FF_X79_Y23_N7
\BL_RXC_00|REGC00|FF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \C_0_1_2_3[3]~input_o\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COD00|DEMUX_00|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL_RXC_00|REGC00|FF3|q~q\);

-- Location: LCCOMB_X80_Y23_N20
\BL_RXC_00|MULT|B3andA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B3andA\(1) = (\BL_RXC_00|REGY00|FF1|q~q\ & \BL_RXC_00|REGC00|FF3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_00|REGY00|FF1|q~q\,
	datad => \BL_RXC_00|REGC00|FF3|q~q\,
	combout => \BL_RXC_00|MULT|B3andA\(1));

-- Location: LCCOMB_X80_Y23_N2
\BL_RXC_00|MULT|B1andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|B1andA\(3) = (\BL_RXC_00|REGC00|FF1|q~q\ & \BL_RXC_00|REGY00|FF3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF1|q~q\,
	datad => \BL_RXC_00|REGY00|FF3|q~q\,
	combout => \BL_RXC_00|MULT|B1andA\(3));

-- Location: LCCOMB_X80_Y23_N26
\BL_RXC_00|MULT|ADD1|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\ = (\BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\ & ((\BL_RXC_00|MULT|B0andA\(3)) # ((\BL_RXC_00|REGC00|FF1|q~q\ & \BL_RXC_00|REGY00|FF2|q~q\)))) # (!\BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\ & 
-- (\BL_RXC_00|REGC00|FF1|q~q\ & (\BL_RXC_00|REGY00|FF2|q~q\ & \BL_RXC_00|MULT|B0andA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF1|q~q\,
	datab => \BL_RXC_00|REGY00|FF2|q~q\,
	datac => \BL_RXC_00|MULT|ADD1|U1|U3|Cout~9_combout\,
	datad => \BL_RXC_00|MULT|B0andA\(3),
	combout => \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X79_Y23_N20
\BL_RXC_00|MULT|ADD2|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\ = (\BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ & ((\BL_RXC_00|MULT|B2andA\(1)) # ((\BL_RXC_00|MULT|B2andA\(0) & \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\)))) # 
-- (!\BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ & (\BL_RXC_00|MULT|B2andA\(1) & (\BL_RXC_00|MULT|B2andA\(0) & \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\,
	datab => \BL_RXC_00|MULT|B2andA\(1),
	datac => \BL_RXC_00|MULT|B2andA\(0),
	datad => \BL_RXC_00|MULT|ADD1|U1|U3|HalfAdder2|Sum~5_combout\,
	combout => \BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X80_Y23_N28
\BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ = \BL_RXC_00|MULT|B2andA\(2) $ (\BL_RXC_00|MULT|B1andA\(3) $ (\BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\ $ (\BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B2andA\(2),
	datab => \BL_RXC_00|MULT|B1andA\(3),
	datac => \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X80_Y23_N14
\BL_RXC_00|MULT|ADD3|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\ = (\BL_RXC_00|MULT|B3andA\(1) & ((\BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\) # ((\BL_RXC_00|MULT|B3andA\(0) & \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\)))) # (!\BL_RXC_00|MULT|B3andA\(1) & 
-- (\BL_RXC_00|MULT|B3andA\(0) & (\BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ & \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B3andA\(0),
	datab => \BL_RXC_00|MULT|B3andA\(1),
	datac => \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X76_Y22_N0
\BL_RXC_01|MULT|B3andA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B3andA\(2) = (\BL_RXC_01|REGY00|FF2|q~q\ & \BL_RXC_01|REGC00|FF3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_01|REGY00|FF2|q~q\,
	datad => \BL_RXC_01|REGC00|FF3|q~q\,
	combout => \BL_RXC_01|MULT|B3andA\(2));

-- Location: LCCOMB_X76_Y23_N8
\BL_RXC_01|MULT|B1andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B1andA\(3) = (\BL_RXC_01|REGY00|FF3|q~q\ & \BL_RXC_01|REGC00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_01|REGY00|FF3|q~q\,
	datad => \BL_RXC_01|REGC00|FF1|q~q\,
	combout => \BL_RXC_01|MULT|B1andA\(3));

-- Location: LCCOMB_X76_Y23_N0
\BL_RXC_01|MULT|B0andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B0andA\(3) = (\BL_RXC_01|REGY00|FF3|q~q\ & \BL_RXC_01|REGC00|FF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_01|REGY00|FF3|q~q\,
	datad => \BL_RXC_01|REGC00|FF0|q~q\,
	combout => \BL_RXC_01|MULT|B0andA\(3));

-- Location: LCCOMB_X76_Y23_N26
\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\ = (\BL_RXC_01|MULT|B0andA\(3) & ((\BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\) # ((\BL_RXC_01|REGY00|FF2|q~q\ & \BL_RXC_01|REGC00|FF1|q~q\)))) # (!\BL_RXC_01|MULT|B0andA\(3) & (\BL_RXC_01|REGY00|FF2|q~q\ & 
-- (\BL_RXC_01|REGC00|FF1|q~q\ & \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGY00|FF2|q~q\,
	datab => \BL_RXC_01|MULT|B0andA\(3),
	datac => \BL_RXC_01|REGC00|FF1|q~q\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X75_Y23_N10
\BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\ = \BL_RXC_01|MULT|B0andA\(3) $ (\BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\ $ (((\BL_RXC_01|REGY00|FF2|q~q\ & \BL_RXC_01|REGC00|FF1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|REGY00|FF2|q~q\,
	datab => \BL_RXC_01|REGC00|FF1|q~q\,
	datac => \BL_RXC_01|MULT|B0andA\(3),
	datad => \BL_RXC_01|MULT|ADD1|U1|U3|Cout~1_combout\,
	combout => \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X75_Y23_N28
\BL_RXC_01|MULT|ADD2|U1|U4|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\ = (\BL_RXC_01|MULT|B2andA\(1) & ((\BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\) # ((\BL_RXC_01|MULT|B2andA\(0) & \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\)))) # (!\BL_RXC_01|MULT|B2andA\(1) & 
-- (\BL_RXC_01|MULT|B2andA\(0) & (\BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\ & \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B2andA\(0),
	datab => \BL_RXC_01|MULT|B2andA\(1),
	datac => \BL_RXC_01|MULT|ADD1|U1|U3|HalfAdder2|Sum~4_combout\,
	datad => \BL_RXC_01|MULT|ADD1|U1|U4|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X76_Y23_N22
\BL_RXC_01|MULT|ADD2|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\ = (\BL_RXC_01|MULT|B2andA\(2) & ((\BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\) # (\BL_RXC_01|MULT|B1andA\(3) $ (\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\)))) # (!\BL_RXC_01|MULT|B2andA\(2) & 
-- (\BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\ & (\BL_RXC_01|MULT|B1andA\(3) $ (\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B2andA\(2),
	datab => \BL_RXC_01|MULT|B1andA\(3),
	datac => \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X75_Y23_N6
\BL_RXC_01|MULT|B3andA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|B3andA\(1) = (\BL_RXC_01|REGC00|FF3|q~q\ & \BL_RXC_01|REGY00|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_01|REGC00|FF3|q~q\,
	datad => \BL_RXC_01|REGY00|FF1|q~q\,
	combout => \BL_RXC_01|MULT|B3andA\(1));

-- Location: LCCOMB_X76_Y23_N16
\BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ = \BL_RXC_01|MULT|B2andA\(2) $ (\BL_RXC_01|MULT|B1andA\(3) $ (\BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\ $ (\BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B2andA\(2),
	datab => \BL_RXC_01|MULT|B1andA\(3),
	datac => \BL_RXC_01|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD2|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X76_Y23_N28
\BL_RXC_01|MULT|ADD3|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\ = (\BL_RXC_01|MULT|B3andA\(1) & ((\BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\) # ((\BL_RXC_01|MULT|B3andA\(0) & \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\)))) # (!\BL_RXC_01|MULT|B3andA\(1) & 
-- (\BL_RXC_01|MULT|B3andA\(0) & (\BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ & \BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B3andA\(0),
	datab => \BL_RXC_01|MULT|B3andA\(1),
	datac => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X76_Y23_N20
\BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ = \BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_01|MULT|B3andA\(2) $ (\BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\ $ (\BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_01|MULT|B3andA\(2),
	datac => \BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N16
\SOMA_00|U2|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U2|U2|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\ $ (\BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\,
	combout => \SOMA_00|U2|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X76_Y23_N2
\BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ = \BL_RXC_01|MULT|B3andA\(1) $ (\BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ $ (((\BL_RXC_01|MULT|B3andA\(0) & \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|B3andA\(0),
	datab => \BL_RXC_01|MULT|B3andA\(1),
	datac => \BL_RXC_01|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_01|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N8
\SOMA_00|U2|U1|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U2|U1|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\ $ (\BL_RXC_00|MULT|B3andA\(1) $ (\BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ $ (\BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\,
	datab => \BL_RXC_00|MULT|B3andA\(1),
	datac => \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\,
	combout => \SOMA_00|U2|U1|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N30
\SOMA_01|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U1|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ & ((\SOMA_01|U1|U4|Cout~0_combout\) # (\SOMA_00|U1|U4|Cout~0_combout\ $ (\SOMA_00|U2|U1|HalfAdder1|Sum~combout\)))) # (!\BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ 
-- & (\SOMA_01|U1|U4|Cout~0_combout\ & (\SOMA_00|U1|U4|Cout~0_combout\ $ (\SOMA_00|U2|U1|HalfAdder1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\,
	datab => \SOMA_00|U1|U4|Cout~0_combout\,
	datac => \SOMA_00|U2|U1|HalfAdder1|Sum~combout\,
	datad => \SOMA_01|U1|U4|Cout~0_combout\,
	combout => \SOMA_01|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X78_Y23_N12
\SOMA_01|U2|U2|HalfAdder2|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U2|HalfAdder2|Sum~combout\ = \SOMA_00|U2|U1|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ $ (\SOMA_00|U2|U2|HalfAdder1|Sum~combout\ $ (\SOMA_01|U2|U1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U2|U1|Cout~0_combout\,
	datab => \BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\,
	datac => \SOMA_00|U2|U2|HalfAdder1|Sum~combout\,
	datad => \SOMA_01|U2|U1|Cout~0_combout\,
	combout => \SOMA_01|U2|U2|HalfAdder2|Sum~combout\);

-- Location: LCCOMB_X78_Y23_N26
\REG_01_10BITS|mux05|O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_01_10BITS|mux05|O~0_combout\ = (\LD_OUT~input_o\ & ((\SOMA_01|U2|U2|HalfAdder2|Sum~combout\))) # (!\LD_OUT~input_o\ & (\REG_01_10BITS|FF1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_01_10BITS|FF1|q~q\,
	datac => \LD_OUT~input_o\,
	datad => \SOMA_01|U2|U2|HalfAdder2|Sum~combout\,
	combout => \REG_01_10BITS|mux05|O~0_combout\);

-- Location: FF_X78_Y23_N27
\REG_01_10BITS|FF5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \REG_01_10BITS|mux05|O~0_combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF5|q~q\);

-- Location: LCCOMB_X77_Y22_N10
\BL_RXC_02|MULT|B2andA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|B2andA\(3) = (\BL_RXC_02|REGY00|FF3|q~q\ & \BL_RXC_02|REGC00|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BL_RXC_02|REGY00|FF3|q~q\,
	datad => \BL_RXC_02|REGC00|FF2|q~q\,
	combout => \BL_RXC_02|MULT|B2andA\(3));

-- Location: LCCOMB_X77_Y22_N8
\BL_RXC_02|MULT|ADD2|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\ = (\BL_RXC_02|MULT|B2andA\(3) & ((\BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\) # ((\BL_RXC_02|MULT|B1andA\(3) & \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\)))) # (!\BL_RXC_02|MULT|B2andA\(3) & 
-- (\BL_RXC_02|MULT|B1andA\(3) & (\BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\ & \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|B1andA\(3),
	datab => \BL_RXC_02|MULT|B2andA\(3),
	datac => \BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD1|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X77_Y22_N20
\BL_RXC_02|MULT|ADD3|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\ = (\BL_RXC_02|MULT|B3andA\(2) & ((\BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\) # (\BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\)))) # (!\BL_RXC_02|MULT|B3andA\(2) 
-- & (\BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\ & (\BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_02|MULT|B3andA\(2),
	datac => \BL_RXC_02|MULT|ADD2|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD3|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X77_Y22_N14
\BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ = \BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\ $ (((\BL_RXC_02|REGY00|FF3|q~q\ & \BL_RXC_02|REGC00|FF3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF3|q~q\,
	datab => \BL_RXC_02|REGC00|FF3|q~q\,
	datac => \BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X80_Y23_N16
\BL_RXC_00|MULT|ADD2|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\ = (\BL_RXC_00|MULT|B2andA\(2) & ((\BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\) # (\BL_RXC_00|MULT|B1andA\(3) $ (\BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\)))) # (!\BL_RXC_00|MULT|B2andA\(2) & 
-- (\BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\ & (\BL_RXC_00|MULT|B1andA\(3) $ (\BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B2andA\(2),
	datab => \BL_RXC_00|MULT|B1andA\(3),
	datac => \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_00|MULT|ADD2|U1|U4|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X80_Y23_N10
\BL_RXC_00|MULT|ADD2|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\ = (\BL_RXC_00|MULT|B2andA\(3) & ((\BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\) # ((\BL_RXC_00|MULT|B1andA\(3) & \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\)))) # (!\BL_RXC_00|MULT|B2andA\(3) & 
-- (\BL_RXC_00|MULT|B1andA\(3) & (\BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\ & \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B2andA\(3),
	datab => \BL_RXC_00|MULT|B1andA\(3),
	datac => \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X80_Y23_N8
\BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\ $ (((\BL_RXC_00|REGY00|FF3|q~q\ & \BL_RXC_00|REGC00|FF3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_00|REGY00|FF3|q~q\,
	datac => \BL_RXC_00|REGC00|FF3|q~q\,
	datad => \BL_RXC_00|MULT|ADD2|U2|U2|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X80_Y23_N24
\BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ = (\BL_RXC_00|REGY00|FF3|q~q\ & (\BL_RXC_00|REGC00|FF2|q~q\ $ (((\BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\ & \BL_RXC_00|REGC00|FF1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF2|q~q\,
	datab => \BL_RXC_00|REGY00|FF3|q~q\,
	datac => \BL_RXC_00|MULT|ADD1|U1|U4|Cout~0_combout\,
	datad => \BL_RXC_00|REGC00|FF1|q~q\,
	combout => \BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X80_Y23_N0
\BL_RXC_00|MULT|ADD3|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\ = (\BL_RXC_00|MULT|B3andA\(2) & ((\BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\) # (\BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\)))) # (!\BL_RXC_00|MULT|B3andA\(2) 
-- & (\BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\ & (\BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|B3andA\(2),
	datab => \BL_RXC_00|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_00|MULT|ADD2|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X76_Y23_N18
\BL_RXC_01|MULT|ADD3|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\ = (\BL_RXC_01|MULT|B3andA\(2) & ((\BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\) # (\BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\)))) # (!\BL_RXC_01|MULT|B3andA\(2) 
-- & (\BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\ & (\BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD2|U2|U2|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_01|MULT|B3andA\(2),
	datac => \BL_RXC_01|MULT|ADD2|U2|U1|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U1|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X76_Y23_N14
\BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ = \BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\ $ (\BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\ $ (((\BL_RXC_01|REGC00|FF3|q~q\ & \BL_RXC_01|REGY00|FF3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\,
	datab => \BL_RXC_01|REGC00|FF3|q~q\,
	datac => \BL_RXC_01|REGY00|FF3|q~q\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X77_Y23_N22
\SOMA_00|U2|U3|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U2|U3|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\ $ (\BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\,
	datac => \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\,
	combout => \SOMA_00|U2|U3|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N20
\SOMA_01|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U2|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ & ((\SOMA_01|U2|U1|Cout~0_combout\) # (\SOMA_00|U2|U1|Cout~0_combout\ $ (\SOMA_00|U2|U2|HalfAdder1|Sum~combout\)))) # (!\BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ 
-- & (\SOMA_01|U2|U1|Cout~0_combout\ & (\SOMA_00|U2|U1|Cout~0_combout\ $ (\SOMA_00|U2|U2|HalfAdder1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U2|U1|Cout~0_combout\,
	datab => \BL_RXC_02|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\,
	datac => \SOMA_01|U2|U1|Cout~0_combout\,
	datad => \SOMA_00|U2|U2|HalfAdder1|Sum~combout\,
	combout => \SOMA_01|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X77_Y23_N24
\SOMA_01|U2|U3|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U3|HalfAdder2|Sum~0_combout\ = \SOMA_00|U2|U2|Cout~0_combout\ $ (\BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ $ (\SOMA_00|U2|U3|HalfAdder1|Sum~combout\ $ (\SOMA_01|U2|U2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U2|U2|Cout~0_combout\,
	datab => \BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\,
	datac => \SOMA_00|U2|U3|HalfAdder1|Sum~combout\,
	datad => \SOMA_01|U2|U2|Cout~0_combout\,
	combout => \SOMA_01|U2|U3|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X77_Y23_N0
\REG_01_10BITS|mux06|O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_01_10BITS|mux06|O~0_combout\ = (\LD_OUT~input_o\ & ((\SOMA_01|U2|U3|HalfAdder2|Sum~0_combout\))) # (!\LD_OUT~input_o\ & (\REG_01_10BITS|FF2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_01_10BITS|FF2|q~q\,
	datac => \LD_OUT~input_o\,
	datad => \SOMA_01|U2|U3|HalfAdder2|Sum~0_combout\,
	combout => \REG_01_10BITS|mux06|O~0_combout\);

-- Location: FF_X77_Y23_N1
\REG_01_10BITS|FF6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \REG_01_10BITS|mux06|O~0_combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF6|q~q\);

-- Location: LCCOMB_X77_Y22_N0
\BL_RXC_02|MULT|ADD3|U2|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_02|MULT|ADD3|U2|U3|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\ & ((\BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\) # ((\BL_RXC_02|REGY00|FF3|q~q\ & \BL_RXC_02|REGC00|FF3|q~q\)))) # (!\BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\ & 
-- (\BL_RXC_02|REGY00|FF3|q~q\ & (\BL_RXC_02|REGC00|FF3|q~q\ & \BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_02|REGY00|FF3|q~q\,
	datab => \BL_RXC_02|REGC00|FF3|q~q\,
	datac => \BL_RXC_02|MULT|ADD2|U2|U2|Cout~0_combout\,
	datad => \BL_RXC_02|MULT|ADD3|U2|U2|Cout~0_combout\,
	combout => \BL_RXC_02|MULT|ADD3|U2|U3|Cout~0_combout\);

-- Location: LCCOMB_X76_Y23_N24
\BL_RXC_01|MULT|ADD3|U2|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_01|MULT|ADD3|U2|U3|Cout~0_combout\ = (\BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\ & ((\BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\) # ((\BL_RXC_01|REGC00|FF3|q~q\ & \BL_RXC_01|REGY00|FF3|q~q\)))) # (!\BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\ & 
-- (\BL_RXC_01|REGC00|FF3|q~q\ & (\BL_RXC_01|REGY00|FF3|q~q\ & \BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD2|U2|U2|Cout~0_combout\,
	datab => \BL_RXC_01|REGC00|FF3|q~q\,
	datac => \BL_RXC_01|REGY00|FF3|q~q\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U2|Cout~0_combout\,
	combout => \BL_RXC_01|MULT|ADD3|U2|U3|Cout~0_combout\);

-- Location: LCCOMB_X78_Y23_N6
\BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\ = (\BL_RXC_00|REGY00|FF0|q~q\ & (\BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\ & \BL_RXC_00|REGC00|FF3|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGY00|FF0|q~q\,
	datac => \BL_RXC_00|MULT|ADD2|U1|U4|HalfAdder2|Sum~combout\,
	datad => \BL_RXC_00|REGC00|FF3|q~q\,
	combout => \BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\);

-- Location: LCCOMB_X80_Y23_N4
\BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum~combout\ = \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\ $ (((\BL_RXC_00|REGC00|FF3|q~q\ & \BL_RXC_00|REGY00|FF1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|REGC00|FF3|q~q\,
	datac => \BL_RXC_00|REGY00|FF1|q~q\,
	datad => \BL_RXC_00|MULT|ADD2|U2|U1|HalfAdder2|Sum~combout\,
	combout => \BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum~combout\);

-- Location: LCCOMB_X77_Y23_N12
\SOMA_00|U2|U1|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U2|U1|Cout~0_combout\ = (\BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ & ((\SOMA_00|U1|U4|Cout~0_combout\) # (\BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum~combout\)))) # 
-- (!\BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\ & (\SOMA_00|U1|U4|Cout~0_combout\ & (\BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_01|MULT|ADD3|U2|U1|HalfAdder2|Sum~combout\,
	datab => \BL_RXC_00|MULT|ADD3|U1|U4|HalfAdder1|CarryOut~combout\,
	datac => \BL_RXC_00|MULT|ADD3|U2|U1|HalfAdder1|Sum~combout\,
	datad => \SOMA_00|U1|U4|Cout~0_combout\,
	combout => \SOMA_00|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X77_Y23_N26
\SOMA_00|U2|U2|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U2|U2|Cout~0_combout\ = (\BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ & ((\SOMA_00|U2|U1|Cout~0_combout\) # (\BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\)))) # 
-- (!\BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\ & (\SOMA_00|U2|U1|Cout~0_combout\ & (\BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD3|U2|U2|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_01|MULT|ADD3|U2|U2|HalfAdder2|Sum~combout\,
	datac => \BL_RXC_00|MULT|ADD3|U2|U1|Cout~0_combout\,
	datad => \SOMA_00|U2|U1|Cout~0_combout\,
	combout => \SOMA_00|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X77_Y23_N4
\SOMA_00|U2|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_00|U2|U3|Cout~0_combout\ = (\SOMA_00|U2|U2|Cout~0_combout\ & ((\BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\) # (\BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\)))) # 
-- (!\SOMA_00|U2|U2|Cout~0_combout\ & (\BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ & (\BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\ $ (\BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD3|U2|U3|HalfAdder1|Sum~combout\,
	datab => \BL_RXC_00|MULT|ADD3|U2|U2|Cout~0_combout\,
	datac => \SOMA_00|U2|U2|Cout~0_combout\,
	datad => \BL_RXC_01|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\,
	combout => \SOMA_00|U2|U3|Cout~0_combout\);

-- Location: LCCOMB_X77_Y23_N6
\SOMA_01|U2|U3|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U3|Cout~0_combout\ = (\BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ & ((\SOMA_01|U2|U2|Cout~0_combout\) # (\SOMA_00|U2|U2|Cout~0_combout\ $ (\SOMA_00|U2|U3|HalfAdder1|Sum~combout\)))) # 
-- (!\BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\ & (\SOMA_01|U2|U2|Cout~0_combout\ & (\SOMA_00|U2|U2|Cout~0_combout\ $ (\SOMA_00|U2|U3|HalfAdder1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA_00|U2|U2|Cout~0_combout\,
	datab => \BL_RXC_02|MULT|ADD3|U2|U3|HalfAdder2|Sum~0_combout\,
	datac => \SOMA_00|U2|U3|HalfAdder1|Sum~combout\,
	datad => \SOMA_01|U2|U2|Cout~0_combout\,
	combout => \SOMA_01|U2|U3|Cout~0_combout\);

-- Location: LCCOMB_X77_Y23_N18
\SOMA_01|U2|U4|HalfAdder2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SOMA_01|U2|U4|HalfAdder2|Sum~0_combout\ = \BL_RXC_00|MULT|ADD3|U2|U3|Cout~0_combout\ $ (\BL_RXC_01|MULT|ADD3|U2|U3|Cout~0_combout\ $ (\SOMA_00|U2|U3|Cout~0_combout\ $ (\SOMA_01|U2|U3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL_RXC_00|MULT|ADD3|U2|U3|Cout~0_combout\,
	datab => \BL_RXC_01|MULT|ADD3|U2|U3|Cout~0_combout\,
	datac => \SOMA_00|U2|U3|Cout~0_combout\,
	datad => \SOMA_01|U2|U3|Cout~0_combout\,
	combout => \SOMA_01|U2|U4|HalfAdder2|Sum~0_combout\);

-- Location: LCCOMB_X77_Y23_N14
\REG_01_10BITS|mux07|O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_01_10BITS|mux07|O~0_combout\ = (\LD_OUT~input_o\ & ((\BL_RXC_02|MULT|ADD3|U2|U3|Cout~0_combout\ $ (\SOMA_01|U2|U4|HalfAdder2|Sum~0_combout\)))) # (!\LD_OUT~input_o\ & (\REG_01_10BITS|FF3|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_01_10BITS|FF3|q~q\,
	datab => \BL_RXC_02|MULT|ADD3|U2|U3|Cout~0_combout\,
	datac => \LD_OUT~input_o\,
	datad => \SOMA_01|U2|U4|HalfAdder2|Sum~0_combout\,
	combout => \REG_01_10BITS|mux07|O~0_combout\);

-- Location: FF_X77_Y23_N15
\REG_01_10BITS|FF7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \REG_01_10BITS|mux07|O~0_combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF7|q~q\);

-- Location: LCCOMB_X78_Y23_N0
\REG_01_10BITS|mux08|O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_01_10BITS|mux08|O~0_combout\ = (!\LD_OUT~input_o\ & \REG_01_10BITS|FF1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LD_OUT~input_o\,
	datad => \REG_01_10BITS|FF1|q~q\,
	combout => \REG_01_10BITS|mux08|O~0_combout\);

-- Location: FF_X78_Y23_N1
\REG_01_10BITS|FF8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \REG_01_10BITS|mux08|O~0_combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF8|q~q\);

-- Location: LCCOMB_X78_Y23_N14
\REG_01_10BITS|mux09|O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_01_10BITS|mux09|O~0_combout\ = (!\LD_OUT~input_o\ & \REG_01_10BITS|FF2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LD_OUT~input_o\,
	datad => \REG_01_10BITS|FF2|q~q\,
	combout => \REG_01_10BITS|mux09|O~0_combout\);

-- Location: FF_X78_Y23_N15
\REG_01_10BITS|FF9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \REG_01_10BITS|mux09|O~0_combout\,
	clrn => \ALT_INV_CLR_AS~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_01_10BITS|FF9|q~q\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_F(8) <= \F[8]~output_o\;

ww_F(9) <= \F[9]~output_o\;
END structure;


