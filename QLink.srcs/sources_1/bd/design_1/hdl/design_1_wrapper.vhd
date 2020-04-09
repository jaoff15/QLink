--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Wed Apr  8 11:15:21 2020
--Host        : JacobOffersen running 64-bit Ubuntu 19.10
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC;
    BRAM_PORTA_0_rst : in STD_LOGIC;
    BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_clk : in STD_LOGIC;
    BRAM_PORTA_1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_en : in STD_LOGIC;
    BRAM_PORTA_1_rst : in STD_LOGIC;
    BRAM_PORTA_1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_clk : in STD_LOGIC;
    BRAM_PORTB_0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_en : in STD_LOGIC;
    BRAM_PORTB_0_rst : in STD_LOGIC;
    BRAM_PORTB_0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_clk : in STD_LOGIC;
    BRAM_PORTB_1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_en : in STD_LOGIC;
    BRAM_PORTB_1_rst : in STD_LOGIC;
    BRAM_PORTB_1_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC;
    BRAM_PORTA_0_rst : in STD_LOGIC;
    BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_clk : in STD_LOGIC;
    BRAM_PORTB_0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_en : in STD_LOGIC;
    BRAM_PORTB_0_rst : in STD_LOGIC;
    BRAM_PORTB_0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_clk : in STD_LOGIC;
    BRAM_PORTA_1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_en : in STD_LOGIC;
    BRAM_PORTA_1_rst : in STD_LOGIC;
    BRAM_PORTA_1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_clk : in STD_LOGIC;
    BRAM_PORTB_1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_en : in STD_LOGIC;
    BRAM_PORTB_1_rst : in STD_LOGIC;
    BRAM_PORTB_1_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      BRAM_PORTA_0_addr(31 downto 0) => BRAM_PORTA_0_addr(31 downto 0),
      BRAM_PORTA_0_clk => BRAM_PORTA_0_clk,
      BRAM_PORTA_0_din(31 downto 0) => BRAM_PORTA_0_din(31 downto 0),
      BRAM_PORTA_0_dout(31 downto 0) => BRAM_PORTA_0_dout(31 downto 0),
      BRAM_PORTA_0_en => BRAM_PORTA_0_en,
      BRAM_PORTA_0_rst => BRAM_PORTA_0_rst,
      BRAM_PORTA_0_we(3 downto 0) => BRAM_PORTA_0_we(3 downto 0),
      BRAM_PORTA_1_addr(31 downto 0) => BRAM_PORTA_1_addr(31 downto 0),
      BRAM_PORTA_1_clk => BRAM_PORTA_1_clk,
      BRAM_PORTA_1_din(31 downto 0) => BRAM_PORTA_1_din(31 downto 0),
      BRAM_PORTA_1_dout(31 downto 0) => BRAM_PORTA_1_dout(31 downto 0),
      BRAM_PORTA_1_en => BRAM_PORTA_1_en,
      BRAM_PORTA_1_rst => BRAM_PORTA_1_rst,
      BRAM_PORTA_1_we(3 downto 0) => BRAM_PORTA_1_we(3 downto 0),
      BRAM_PORTB_0_addr(31 downto 0) => BRAM_PORTB_0_addr(31 downto 0),
      BRAM_PORTB_0_clk => BRAM_PORTB_0_clk,
      BRAM_PORTB_0_din(31 downto 0) => BRAM_PORTB_0_din(31 downto 0),
      BRAM_PORTB_0_dout(31 downto 0) => BRAM_PORTB_0_dout(31 downto 0),
      BRAM_PORTB_0_en => BRAM_PORTB_0_en,
      BRAM_PORTB_0_rst => BRAM_PORTB_0_rst,
      BRAM_PORTB_0_we(3 downto 0) => BRAM_PORTB_0_we(3 downto 0),
      BRAM_PORTB_1_addr(31 downto 0) => BRAM_PORTB_1_addr(31 downto 0),
      BRAM_PORTB_1_clk => BRAM_PORTB_1_clk,
      BRAM_PORTB_1_din(31 downto 0) => BRAM_PORTB_1_din(31 downto 0),
      BRAM_PORTB_1_dout(31 downto 0) => BRAM_PORTB_1_dout(31 downto 0),
      BRAM_PORTB_1_en => BRAM_PORTB_1_en,
      BRAM_PORTB_1_rst => BRAM_PORTB_1_rst,
      BRAM_PORTB_1_we(3 downto 0) => BRAM_PORTB_1_we(3 downto 0)
    );
end STRUCTURE;
