--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Sat Apr 11 16:21:46 2020
--Host        : JacobOffersen running 64-bit Ubuntu 19.10
--Command     : generate_target spi_clk_generator_wrapper.bd
--Design      : spi_clk_generator_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_clk_generator_wrapper is
  port (
    clk_in1_0 : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    locked_0 : out STD_LOGIC
  );
end spi_clk_generator_wrapper;

architecture STRUCTURE of spi_clk_generator_wrapper is
  component spi_clk_generator is
  port (
    clk_in1_0 : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    locked_0 : out STD_LOGIC
  );
  end component spi_clk_generator;
begin
spi_clk_generator_i: component spi_clk_generator
     port map (
      clk_in1_0 => clk_in1_0,
      clk_out1_0 => clk_out1_0,
      locked_0 => locked_0
    );
end STRUCTURE;
