<<<<<<< HEAD
-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/01/2023 00:39:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Contador_vhd_vec_tst IS
END Contador_vhd_vec_tst;
ARCHITECTURE Contador_arch OF Contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A6 : STD_LOGIC;
SIGNAL A7 : STD_LOGIC;
SIGNAL B6 : STD_LOGIC;
SIGNAL B7 : STD_LOGIC;
SIGNAL C6 : STD_LOGIC;
SIGNAL C7 : STD_LOGIC;
SIGNAL ck50 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count_dir : STD_LOGIC;
SIGNAL D6 : STD_LOGIC;
SIGNAL D7 : STD_LOGIC;
SIGNAL E6 : STD_LOGIC;
SIGNAL E7 : STD_LOGIC;
SIGNAL F6 : STD_LOGIC;
SIGNAL F7 : STD_LOGIC;
SIGNAL G6 : STD_LOGIC;
SIGNAL G7 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT Contador
	PORT (
	A6 : OUT STD_LOGIC;
	A7 : OUT STD_LOGIC;
	B6 : OUT STD_LOGIC;
	B7 : OUT STD_LOGIC;
	C6 : OUT STD_LOGIC;
	C7 : OUT STD_LOGIC;
	ck50 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	count_dir : IN STD_LOGIC;
	D6 : OUT STD_LOGIC;
	D7 : OUT STD_LOGIC;
	E6 : OUT STD_LOGIC;
	E7 : OUT STD_LOGIC;
	F6 : OUT STD_LOGIC;
	F7 : OUT STD_LOGIC;
	G6 : OUT STD_LOGIC;
	G7 : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Contador
	PORT MAP (
-- list connections between master ports and signals
	A6 => A6,
	A7 => A7,
	B6 => B6,
	B7 => B7,
	C6 => C6,
	C7 => C7,
	ck50 => ck50,
	clk => clk,
	count_dir => count_dir,
	D6 => D6,
	D7 => D7,
	E6 => E6,
	E7 => E7,
	F6 => F6,
	F7 => F7,
	G6 => G6,
	G7 => G7,
	reset => reset,
	rst => rst
	);

-- ck50
t_prcs_ck50: PROCESS
BEGIN
LOOP
	ck50 <= '0';
	WAIT FOR 10000 ps;
	ck50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ck50;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- count_dir
t_prcs_count_dir: PROCESS
BEGIN
	count_dir <= '0';
WAIT;
END PROCESS t_prcs_count_dir;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END Contador_arch;
=======
-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/18/2023 09:20:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Contador_vhd_vec_tst IS
END Contador_vhd_vec_tst;
ARCHITECTURE Contador_arch OF Contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A6 : STD_LOGIC;
SIGNAL A7 : STD_LOGIC;
SIGNAL B6 : STD_LOGIC;
SIGNAL B7 : STD_LOGIC;
SIGNAL C6 : STD_LOGIC;
SIGNAL C7 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL D6 : STD_LOGIC;
SIGNAL D7 : STD_LOGIC;
SIGNAL E6 : STD_LOGIC;
SIGNAL E7 : STD_LOGIC;
SIGNAL F6 : STD_LOGIC;
SIGNAL F7 : STD_LOGIC;
SIGNAL G6 : STD_LOGIC;
SIGNAL G7 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT Contador
	PORT (
	A6 : BUFFER STD_LOGIC;
	A7 : BUFFER STD_LOGIC;
	B6 : BUFFER STD_LOGIC;
	B7 : BUFFER STD_LOGIC;
	C6 : BUFFER STD_LOGIC;
	C7 : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	D6 : BUFFER STD_LOGIC;
	D7 : BUFFER STD_LOGIC;
	E6 : BUFFER STD_LOGIC;
	E7 : BUFFER STD_LOGIC;
	F6 : BUFFER STD_LOGIC;
	F7 : BUFFER STD_LOGIC;
	G6 : BUFFER STD_LOGIC;
	G7 : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Contador
	PORT MAP (
-- list connections between master ports and signals
	A6 => A6,
	A7 => A7,
	B6 => B6,
	B7 => B7,
	C6 => C6,
	C7 => C7,
	clk => clk,
	D6 => D6,
	D7 => D7,
	E6 => E6,
	E7 => E7,
	F6 => F6,
	F7 => F7,
	G6 => G6,
	G7 => G7,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Contador_arch;
>>>>>>> origin/main
