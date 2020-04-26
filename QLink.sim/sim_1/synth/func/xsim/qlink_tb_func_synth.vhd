-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Apr 24 17:22:39 2020
-- Host        : JacobOffersen running 64-bit Ubuntu 19.10
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jacoboffersen/advanced_programmable_electronics/QLink_/QLink.sim/sim_1/synth/func/xsim/qlink_tb_func_synth.vhd
-- Design      : receiver_top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_RX is
  port (
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    DIBDI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI_SCLK_I_IBUF_BUFG : in STD_LOGIC;
    SPI_MOSI_I_IBUF : in STD_LOGIC;
    RESET_O : in STD_LOGIC
  );
end SPI_RX;

architecture STRUCTURE of SPI_RX is
  signal \^dibdi\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Q1 : STD_LOGIC;
  signal Q2 : STD_LOGIC;
  signal bitcnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 to 31 );
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_MOSI : label is "TRUE";
  attribute box_type : string;
  attribute box_type of IDDR_MOSI : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcnt[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \bitcnt[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \bitcnt[3]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \bitcnt[4]_i_1__0\ : label is "soft_lutpair78";
begin
  DIBDI(31 downto 0) <= \^dibdi\(31 downto 0);
IDDR_MOSI: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => SPI_MOSI_I_IBUF,
      Q1 => Q1,
      Q2 => Q2,
      R => '0',
      S => '0'
    );
WR_O_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(2),
      I2 => bitcnt(3),
      I3 => bitcnt(4),
      O => p_1_in(31)
    );
WR_O_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => p_1_in(31),
      Q => WEBWE(0),
      R => RESET_O
    );
\bitcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcnt(1),
      I1 => RESET_O,
      O => \bitcnt[1]_i_1_n_0\
    );
\bitcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(2),
      I2 => RESET_O,
      O => \bitcnt[2]_i_1_n_0\
    );
\bitcnt[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      O => \bitcnt[3]_i_1__0_n_0\
    );
\bitcnt[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => bitcnt(2),
      I3 => bitcnt(1),
      O => \bitcnt[4]_i_1__0_n_0\
    );
\bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \bitcnt[1]_i_1_n_0\,
      Q => bitcnt(1),
      R => '0'
    );
\bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \bitcnt[2]_i_1_n_0\,
      Q => bitcnt(2),
      R => '0'
    );
\bitcnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \bitcnt[3]_i_1__0_n_0\,
      Q => bitcnt(3),
      S => RESET_O
    );
\bitcnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \bitcnt[4]_i_1__0_n_0\,
      Q => bitcnt(4),
      S => RESET_O
    );
\nxt_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(0),
      O => \nxt_data[0]_i_1_n_0\
    );
\nxt_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(10),
      O => \nxt_data[10]_i_1_n_0\
    );
\nxt_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(11),
      O => \nxt_data[11]_i_1_n_0\
    );
\nxt_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(12),
      O => \nxt_data[12]_i_1_n_0\
    );
\nxt_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(13),
      O => \nxt_data[13]_i_1_n_0\
    );
\nxt_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(14),
      O => \nxt_data[14]_i_1_n_0\
    );
\nxt_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00008000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(15),
      O => \nxt_data[15]_i_1_n_0\
    );
\nxt_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(16),
      O => \nxt_data[16]_i_1_n_0\
    );
\nxt_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000040"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(4),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(17),
      O => \nxt_data[17]_i_1_n_0\
    );
\nxt_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(18),
      O => \nxt_data[18]_i_1_n_0\
    );
\nxt_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(4),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(19),
      O => \nxt_data[19]_i_1_n_0\
    );
\nxt_data[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000010"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(1),
      O => \nxt_data[1]_i_1__0_n_0\
    );
\nxt_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(20),
      O => \nxt_data[20]_i_1_n_0\
    );
\nxt_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(4),
      I2 => Q2,
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(21),
      O => \nxt_data[21]_i_1_n_0\
    );
\nxt_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(22),
      O => \nxt_data[22]_i_1_n_0\
    );
\nxt_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00008000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(23),
      O => \nxt_data[23]_i_1_n_0\
    );
\nxt_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(3),
      I2 => bitcnt(4),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(24),
      O => \nxt_data[24]_i_1_n_0\
    );
\nxt_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10000000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(25),
      O => \nxt_data[25]_i_1_n_0\
    );
\nxt_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(3),
      I2 => bitcnt(4),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(26),
      O => \nxt_data[26]_i_1_n_0\
    );
\nxt_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF40000000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(27),
      O => \nxt_data[27]_i_1_n_0\
    );
\nxt_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(3),
      I2 => bitcnt(4),
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(28),
      O => \nxt_data[28]_i_1_n_0\
    );
\nxt_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF40000000"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(2),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(29),
      O => \nxt_data[29]_i_1_n_0\
    );
\nxt_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(2),
      O => \nxt_data[2]_i_1_n_0\
    );
\nxt_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(30),
      O => \nxt_data[30]_i_1_n_0\
    );
\nxt_data[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(2),
      I2 => bitcnt(3),
      I3 => bitcnt(4),
      I4 => Q2,
      I5 => \^dibdi\(31),
      O => \nxt_data[31]_i_1__0_n_0\
    );
\nxt_data[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00001000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(3),
      O => \nxt_data[3]_i_1__0_n_0\
    );
\nxt_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(4),
      O => \nxt_data[4]_i_1_n_0\
    );
\nxt_data[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00001000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(5),
      O => \nxt_data[5]_i_1__0_n_0\
    );
\nxt_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(6),
      O => \nxt_data[6]_i_1_n_0\
    );
\nxt_data[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000080"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(7),
      O => \nxt_data[7]_i_1__0_n_0\
    );
\nxt_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(8),
      O => \nxt_data[8]_i_1_n_0\
    );
\nxt_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000040"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(9),
      O => \nxt_data[9]_i_1_n_0\
    );
\nxt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[0]_i_1_n_0\,
      Q => \^dibdi\(0),
      R => RESET_O
    );
\nxt_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[10]_i_1_n_0\,
      Q => \^dibdi\(10),
      R => RESET_O
    );
\nxt_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[11]_i_1_n_0\,
      Q => \^dibdi\(11),
      R => RESET_O
    );
\nxt_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[12]_i_1_n_0\,
      Q => \^dibdi\(12),
      R => RESET_O
    );
\nxt_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[13]_i_1_n_0\,
      Q => \^dibdi\(13),
      R => RESET_O
    );
\nxt_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[14]_i_1_n_0\,
      Q => \^dibdi\(14),
      R => RESET_O
    );
\nxt_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[15]_i_1_n_0\,
      Q => \^dibdi\(15),
      R => RESET_O
    );
\nxt_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[16]_i_1_n_0\,
      Q => \^dibdi\(16),
      R => RESET_O
    );
\nxt_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[17]_i_1_n_0\,
      Q => \^dibdi\(17),
      R => RESET_O
    );
\nxt_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[18]_i_1_n_0\,
      Q => \^dibdi\(18),
      R => RESET_O
    );
\nxt_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[19]_i_1_n_0\,
      Q => \^dibdi\(19),
      R => RESET_O
    );
\nxt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[1]_i_1__0_n_0\,
      Q => \^dibdi\(1),
      R => RESET_O
    );
\nxt_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[20]_i_1_n_0\,
      Q => \^dibdi\(20),
      R => RESET_O
    );
\nxt_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[21]_i_1_n_0\,
      Q => \^dibdi\(21),
      R => RESET_O
    );
\nxt_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[22]_i_1_n_0\,
      Q => \^dibdi\(22),
      R => RESET_O
    );
\nxt_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[23]_i_1_n_0\,
      Q => \^dibdi\(23),
      R => RESET_O
    );
\nxt_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[24]_i_1_n_0\,
      Q => \^dibdi\(24),
      R => RESET_O
    );
\nxt_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[25]_i_1_n_0\,
      Q => \^dibdi\(25),
      R => RESET_O
    );
\nxt_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[26]_i_1_n_0\,
      Q => \^dibdi\(26),
      R => RESET_O
    );
\nxt_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[27]_i_1_n_0\,
      Q => \^dibdi\(27),
      R => RESET_O
    );
\nxt_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[28]_i_1_n_0\,
      Q => \^dibdi\(28),
      R => RESET_O
    );
\nxt_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[29]_i_1_n_0\,
      Q => \^dibdi\(29),
      R => RESET_O
    );
\nxt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[2]_i_1_n_0\,
      Q => \^dibdi\(2),
      R => RESET_O
    );
\nxt_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[30]_i_1_n_0\,
      Q => \^dibdi\(30),
      R => RESET_O
    );
\nxt_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[31]_i_1__0_n_0\,
      Q => \^dibdi\(31),
      R => RESET_O
    );
\nxt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[3]_i_1__0_n_0\,
      Q => \^dibdi\(3),
      R => RESET_O
    );
\nxt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[4]_i_1_n_0\,
      Q => \^dibdi\(4),
      R => RESET_O
    );
\nxt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[5]_i_1__0_n_0\,
      Q => \^dibdi\(5),
      R => RESET_O
    );
\nxt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[6]_i_1_n_0\,
      Q => \^dibdi\(6),
      R => RESET_O
    );
\nxt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[7]_i_1__0_n_0\,
      Q => \^dibdi\(7),
      R => RESET_O
    );
\nxt_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[8]_i_1_n_0\,
      Q => \^dibdi\(8),
      R => RESET_O
    );
\nxt_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF_BUFG,
      CE => '1',
      D => \nxt_data[9]_i_1_n_0\,
      Q => \^dibdi\(9),
      R => RESET_O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_TX is
  port (
    SPI_MOSI_O_OBUF : out STD_LOGIC;
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESET_O : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end SPI_TX;

architecture STRUCTURE of SPI_TX is
  signal D1 : STD_LOGIC;
  signal D1_i_4_n_0 : STD_LOGIC;
  signal D1_i_5_n_0 : STD_LOGIC;
  signal D1_i_6_n_0 : STD_LOGIC;
  signal D1_i_7_n_0 : STD_LOGIC;
  signal D1_reg_i_1_n_0 : STD_LOGIC;
  signal D1_reg_i_2_n_0 : STD_LOGIC;
  signal D1_reg_i_3_n_0 : STD_LOGIC;
  signal D2 : STD_LOGIC;
  signal D2_i_4_n_0 : STD_LOGIC;
  signal D2_i_5_n_0 : STD_LOGIC;
  signal D2_i_6_n_0 : STD_LOGIC;
  signal D2_i_7_n_0 : STD_LOGIC;
  signal D2_reg_i_1_n_0 : STD_LOGIC;
  signal D2_reg_i_2_n_0 : STD_LOGIC;
  signal D2_reg_i_3_n_0 : STD_LOGIC;
  signal \bitcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal nxt_data : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal NLW_ODDR_MOSI_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_MOSI_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_SCLK_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_SCLK_S_UNCONNECTED : STD_LOGIC;
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR_MOSI : label is "TRUE";
  attribute box_type : string;
  attribute box_type of ODDR_MOSI : label is "PRIMITIVE";
  attribute \__SRVAL\ of ODDR_SCLK : label is "TRUE";
  attribute box_type of ODDR_SCLK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcnt[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \bitcnt[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \bitcnt[3]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \bitcnt[4]_i_2\ : label is "soft_lutpair80";
begin
D1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(6),
      I1 => data(4),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(2),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(0),
      O => D1_i_4_n_0
    );
D1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(14),
      I1 => data(12),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(10),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(8),
      O => D1_i_5_n_0
    );
D1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(22),
      I1 => data(20),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(18),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(16),
      O => D1_i_6_n_0
    );
D1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(30),
      I1 => data(28),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(26),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(24),
      O => D1_i_7_n_0
    );
D1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D1_reg_i_1_n_0,
      Q => D1,
      R => RESET_O
    );
D1_reg_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => D1_reg_i_2_n_0,
      I1 => D1_reg_i_3_n_0,
      O => D1_reg_i_1_n_0,
      S => \bitcnt_reg__0\(4)
    );
D1_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => D1_i_4_n_0,
      I1 => D1_i_5_n_0,
      O => D1_reg_i_2_n_0,
      S => \bitcnt_reg__0\(3)
    );
D1_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => D1_i_6_n_0,
      I1 => D1_i_7_n_0,
      O => D1_reg_i_3_n_0,
      S => \bitcnt_reg__0\(3)
    );
D2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(7),
      I1 => data(5),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(3),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(1),
      O => D2_i_4_n_0
    );
D2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(15),
      I1 => data(13),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(11),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(9),
      O => D2_i_5_n_0
    );
D2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(23),
      I1 => data(21),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(19),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(17),
      O => D2_i_6_n_0
    );
D2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(31),
      I1 => data(29),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(27),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(25),
      O => D2_i_7_n_0
    );
D2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D2_reg_i_1_n_0,
      Q => D2,
      R => RESET_O
    );
D2_reg_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => D2_reg_i_2_n_0,
      I1 => D2_reg_i_3_n_0,
      O => D2_reg_i_1_n_0,
      S => \bitcnt_reg__0\(4)
    );
D2_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => D2_i_4_n_0,
      I1 => D2_i_5_n_0,
      O => D2_reg_i_2_n_0,
      S => \bitcnt_reg__0\(3)
    );
D2_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => D2_i_6_n_0,
      I1 => D2_i_7_n_0,
      O => D2_reg_i_3_n_0,
      S => \bitcnt_reg__0\(3)
    );
ODDR_MOSI: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => D1,
      D2 => D2,
      Q => SPI_MOSI_O_OBUF,
      R => NLW_ODDR_MOSI_R_UNCONNECTED,
      S => NLW_ODDR_MOSI_S_UNCONNECTED
    );
ODDR_SCLK: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => SPI_SCLK_O_OBUF,
      R => NLW_ODDR_SCLK_R_UNCONNECTED,
      S => NLW_ODDR_SCLK_S_UNCONNECTED
    );
\bitcnt[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitcnt_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\bitcnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bitcnt_reg__0\(2),
      I1 => \bitcnt_reg__0\(1),
      O => \p_0_in__2\(2)
    );
\bitcnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bitcnt_reg__0\(3),
      I1 => \bitcnt_reg__0\(1),
      I2 => \bitcnt_reg__0\(2),
      O => \p_0_in__2\(3)
    );
\bitcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => RESET_O,
      I1 => \bitcnt_reg__0\(1),
      I2 => \bitcnt_reg__0\(2),
      I3 => \bitcnt_reg__0\(3),
      I4 => \bitcnt_reg__0\(4),
      O => \bitcnt[4]_i_1_n_0\
    );
\bitcnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bitcnt_reg__0\(4),
      I1 => \bitcnt_reg__0\(3),
      I2 => \bitcnt_reg__0\(2),
      I3 => \bitcnt_reg__0\(1),
      O => \p_0_in__2\(4)
    );
\bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__2\(1),
      Q => \bitcnt_reg__0\(1),
      R => \bitcnt[4]_i_1_n_0\
    );
\bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__2\(2),
      Q => \bitcnt_reg__0\(2),
      R => \bitcnt[4]_i_1_n_0\
    );
\bitcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__2\(3),
      Q => \bitcnt_reg__0\(3),
      R => \bitcnt[4]_i_1_n_0\
    );
\bitcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__2\(4),
      Q => \bitcnt_reg__0\(4),
      R => \bitcnt[4]_i_1_n_0\
    );
\nxt_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \bitcnt_reg__0\(1),
      I1 => \bitcnt_reg__0\(2),
      I2 => \bitcnt_reg__0\(3),
      I3 => \bitcnt_reg__0\(4),
      I4 => RESET_O,
      O => nxt_data
    );
\nxt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(0),
      Q => data(0),
      R => '0'
    );
\nxt_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(10),
      Q => data(10),
      R => '0'
    );
\nxt_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(11),
      Q => data(11),
      R => '0'
    );
\nxt_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(12),
      Q => data(12),
      R => '0'
    );
\nxt_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(13),
      Q => data(13),
      R => '0'
    );
\nxt_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(14),
      Q => data(14),
      R => '0'
    );
\nxt_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(15),
      Q => data(15),
      R => '0'
    );
\nxt_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(16),
      Q => data(16),
      R => '0'
    );
\nxt_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(17),
      Q => data(17),
      R => '0'
    );
\nxt_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(18),
      Q => data(18),
      R => '0'
    );
\nxt_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(19),
      Q => data(19),
      R => '0'
    );
\nxt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(1),
      Q => data(1),
      R => '0'
    );
\nxt_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(20),
      Q => data(20),
      R => '0'
    );
\nxt_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(21),
      Q => data(21),
      R => '0'
    );
\nxt_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(22),
      Q => data(22),
      R => '0'
    );
\nxt_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(23),
      Q => data(23),
      R => '0'
    );
\nxt_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(24),
      Q => data(24),
      R => '0'
    );
\nxt_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(25),
      Q => data(25),
      R => '0'
    );
\nxt_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(26),
      Q => data(26),
      R => '0'
    );
\nxt_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(27),
      Q => data(27),
      R => '0'
    );
\nxt_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(28),
      Q => data(28),
      R => '0'
    );
\nxt_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(29),
      Q => data(29),
      R => '0'
    );
\nxt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(2),
      Q => data(2),
      R => '0'
    );
\nxt_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(30),
      Q => data(30),
      R => '0'
    );
\nxt_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(31),
      Q => data(31),
      R => '0'
    );
\nxt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(3),
      Q => data(3),
      R => '0'
    );
\nxt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(4),
      Q => data(4),
      R => '0'
    );
\nxt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(5),
      Q => data(5),
      R => '0'
    );
\nxt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(6),
      Q => data(6),
      R => '0'
    );
\nxt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(7),
      Q => data(7),
      R => '0'
    );
\nxt_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(8),
      Q => data(8),
      R => '0'
    );
\nxt_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_data,
      D => D(9),
      Q => data(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_RAM_module is
  port (
    \data32_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \data32_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIBDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end block_RAM_module;

architecture STRUCTURE of block_RAM_module is
  signal NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_UNISIM_RAM1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_UNISIM_RAM1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UNISIM_RAM1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of UNISIM_RAM0 : label is "PRIMITIVE";
  attribute box_type of UNISIM_RAM1 : label is "PRIMITIVE";
begin
UNISIM_RAM0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 12) => B"0000",
      ADDRARDADDR(11 downto 5) => Q(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"0000001000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => \data32_reg[31]_0\(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \data32_reg[31]\(31 downto 0),
      DOBDO(31 downto 0) => D(31 downto 0),
      DOPADOP(3 downto 0) => NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_UNISIM_RAM0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
UNISIM_RAM1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 12) => B"0000",
      ADDRARDADDR(11 downto 5) => Q(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"0000001000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_UNISIM_RAM1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_UNISIM_RAM1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DBITERR => NLW_UNISIM_RAM1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => \data32_reg[31]_0\(31 downto 0),
      DIBDI(31 downto 0) => DIBDI(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => NLW_UNISIM_RAM1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_UNISIM_RAM1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_UNISIM_RAM1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_UNISIM_RAM1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_UNISIM_RAM1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_UNISIM_RAM1_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => WEBWE(0),
      WEBWE(6) => WEBWE(0),
      WEBWE(5) => WEBWE(0),
      WEBWE(4) => WEBWE(0),
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_serial is
  port (
    \data32_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \adr_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_rx_state_reg[17]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    E : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \adr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rx_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    timestamp_enable_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \FSM_onehot_rx_state_reg[18]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_0\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_1\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_2\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_3\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_4\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_5\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_6\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_7\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_8\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_9\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_10\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_11\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_12\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_13\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_14\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[4]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_15\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_16\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_17\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_18\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_19\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_20\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_21\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_22\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_23\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_24\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_25\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_26\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_27\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_28\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_29\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_30\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_31\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[14]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[8]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[9]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[15]\ : in STD_LOGIC;
    timestamp_enable : in STD_LOGIC
  );
end decode_serial;

architecture STRUCTURE of decode_serial is
  signal \FSM_onehot_rx_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[14]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[15]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[15]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \adr[4]_i_2_n_0\ : STD_LOGIC;
  signal \adr[4]_i_3_n_0\ : STD_LOGIC;
  signal \adr[4]_i_4_n_0\ : STD_LOGIC;
  signal \adr[4]_i_5_n_0\ : STD_LOGIC;
  signal \adr[5]_i_2_n_0\ : STD_LOGIC;
  signal \adr[6]_i_2_n_0\ : STD_LOGIC;
  signal bitcnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dec_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dec_strb : STD_LOGIC;
  signal \nxt_bitcnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_data[7]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal strobe2 : STD_LOGIC;
  signal strobe2_i_1_n_0 : STD_LOGIC;
  signal strobe_i_1_n_0 : STD_LOGIC;
  signal subcnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \subcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[0]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[15]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_13\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_15\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_19\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_20\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_21\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_22\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adr[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \adr[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adr[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \adr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adr[3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adr[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \adr[4]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \adr[4]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adr[5]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \adr[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \adr[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adr[7]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data32[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data32[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data32[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data32[11]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data32[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data32[13]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data32[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data32[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data32[15]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data32[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data32[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data32[18]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data32[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data32[19]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data32[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data32[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data32[21]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data32[22]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data32[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data32[23]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data32[24]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data32[25]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data32[26]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data32[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data32[27]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data32[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data32[29]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data32[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data32[30]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data32[31]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data32[31]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data32[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data32[3]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data32[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data32[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data32[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data32[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data32[7]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data32[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data32[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \nxt_bitcnt[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \nxt_bitcnt[2]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \nxt_data[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of strobe2_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of strobe_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \subcnt[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \subcnt[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \subcnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \subcnt[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \subcnt[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \subcnt[3]_i_4\ : label is "soft_lutpair39";
begin
\FSM_onehot_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0D00DDDD"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[4]\,
      I1 => \FSM_onehot_rx_state_reg[3]\,
      I2 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I4 => dec_strb,
      I5 => \FSM_onehot_rx_state[0]_i_4_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(0)
    );
\FSM_onehot_rx_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F777F7FFFF77F7"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[18]_31\,
      I1 => \FSM_onehot_rx_state[0]_i_5_n_0\,
      I2 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state_reg[14]\,
      I4 => \out\(0),
      I5 => \FSM_onehot_rx_state[0]_i_7_n_0\,
      O => \FSM_onehot_rx_state[0]_i_4_n_0\
    );
\FSM_onehot_rx_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80080000FFFFFFFF"
    )
        port map (
      I0 => dec_strb,
      I1 => dec_data(4),
      I2 => dec_data(0),
      I3 => dec_data(2),
      I4 => \FSM_onehot_rx_state[17]_i_17_n_0\,
      I5 => \out\(1),
      O => \FSM_onehot_rx_state[0]_i_5_n_0\
    );
\FSM_onehot_rx_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(1),
      I2 => dec_data(2),
      I3 => dec_data(0),
      I4 => dec_strb,
      I5 => \FSM_onehot_rx_state[0]_i_8_n_0\,
      O => \FSM_onehot_rx_state[0]_i_7_n_0\
    );
\FSM_onehot_rx_state[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => dec_data(7),
      I1 => dec_data(3),
      I2 => dec_data(5),
      I3 => dec_data(6),
      O => \FSM_onehot_rx_state[0]_i_8_n_0\
    );
\FSM_onehot_rx_state[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(9),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(10)
    );
\FSM_onehot_rx_state[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(10),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(11)
    );
\FSM_onehot_rx_state[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(11),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(12)
    );
\FSM_onehot_rx_state[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(12),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(13)
    );
\FSM_onehot_rx_state[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I1 => dec_data(2),
      I2 => dec_data(1),
      I3 => dec_data(0),
      O => \FSM_onehot_rx_state_reg[17]\(14)
    );
\FSM_onehot_rx_state[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(7),
      I2 => dec_data(6),
      I3 => \out\(1),
      I4 => dec_data(4),
      I5 => dec_strb,
      O => \FSM_onehot_rx_state[14]_i_2_n_0\
    );
\FSM_onehot_rx_state[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(13),
      I1 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(15)
    );
\FSM_onehot_rx_state[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state[15]_i_3_n_0\,
      I1 => dec_data(3),
      I2 => dec_strb,
      I3 => dec_data(0),
      I4 => dec_data(1),
      I5 => dec_data(2),
      O => \FSM_onehot_rx_state[15]_i_2_n_0\
    );
\FSM_onehot_rx_state[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(5),
      I2 => dec_data(4),
      I3 => dec_data(7),
      O => \FSM_onehot_rx_state[15]_i_3_n_0\
    );
\FSM_onehot_rx_state[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(14),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(16)
    );
\FSM_onehot_rx_state[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(15),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(17)
    );
\FSM_onehot_rx_state[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(0),
      I2 => dec_data(7),
      I3 => dec_data(3),
      I4 => dec_data(5),
      I5 => dec_data(6),
      O => \FSM_onehot_rx_state[17]_i_10_n_0\
    );
\FSM_onehot_rx_state[17]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => dec_data(2),
      I1 => dec_data(0),
      I2 => dec_data(6),
      I3 => dec_data(3),
      O => \FSM_onehot_rx_state[17]_i_11_n_0\
    );
\FSM_onehot_rx_state[17]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dec_data(5),
      I1 => dec_data(7),
      I2 => dec_data(4),
      I3 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_12_n_0\
    );
\FSM_onehot_rx_state[17]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => dec_data(7),
      I1 => dec_data(3),
      I2 => dec_data(5),
      I3 => dec_data(6),
      O => \FSM_onehot_rx_state[17]_i_13_n_0\
    );
\FSM_onehot_rx_state[17]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dec_data(0),
      I1 => dec_data(6),
      O => \FSM_onehot_rx_state[17]_i_14_n_0\
    );
\FSM_onehot_rx_state[17]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dec_data(7),
      I1 => dec_data(3),
      I2 => dec_data(5),
      I3 => dec_data(4),
      O => \FSM_onehot_rx_state[17]_i_15_n_0\
    );
\FSM_onehot_rx_state[17]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(5),
      O => \FSM_onehot_rx_state[17]_i_16_n_0\
    );
\FSM_onehot_rx_state[17]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => dec_data(7),
      I1 => dec_data(3),
      I2 => dec_data(6),
      I3 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_17_n_0\
    );
\FSM_onehot_rx_state[17]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(5),
      I2 => dec_data(3),
      I3 => dec_data(7),
      I4 => dec_data(4),
      I5 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_18_n_0\
    );
\FSM_onehot_rx_state[17]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(6),
      I2 => dec_data(7),
      I3 => dec_data(3),
      I4 => dec_data(2),
      O => \FSM_onehot_rx_state[17]_i_19_n_0\
    );
\FSM_onehot_rx_state[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_5_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_7_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_8_n_0\,
      I5 => \FSM_onehot_rx_state[17]_i_9_n_0\,
      O => \FSM_onehot_rx_state[17]_i_2_n_0\
    );
\FSM_onehot_rx_state[17]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dec_data(0),
      I1 => dec_data(4),
      O => \FSM_onehot_rx_state[17]_i_20_n_0\
    );
\FSM_onehot_rx_state[17]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(2),
      I2 => dec_data(6),
      I3 => dec_data(0),
      O => \FSM_onehot_rx_state[17]_i_21_n_0\
    );
\FSM_onehot_rx_state[17]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dec_data(2),
      I1 => dec_data(0),
      O => \FSM_onehot_rx_state[17]_i_22_n_0\
    );
\FSM_onehot_rx_state[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(6),
      I2 => dec_data(5),
      I3 => dec_data(3),
      I4 => dec_data(7),
      O => \FSM_onehot_rx_state[17]_i_3_n_0\
    );
\FSM_onehot_rx_state[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(2),
      I2 => \FSM_onehot_rx_state[17]_i_10_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_11_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_12_n_0\,
      O => \FSM_onehot_rx_state[17]_i_4_n_0\
    );
\FSM_onehot_rx_state[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444F444444444"
    )
        port map (
      I0 => \FSM_onehot_rx_state[1]_i_3_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_13_n_0\,
      I2 => dec_data(1),
      I3 => dec_data(2),
      I4 => \FSM_onehot_rx_state[17]_i_14_n_0\,
      I5 => \FSM_onehot_rx_state[17]_i_15_n_0\,
      O => \FSM_onehot_rx_state[17]_i_5_n_0\
    );
\FSM_onehot_rx_state[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00100010001000"
    )
        port map (
      I0 => dec_data(0),
      I1 => \FSM_onehot_rx_state[17]_i_16_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_17_n_0\,
      I3 => dec_data(2),
      I4 => dec_data(1),
      I5 => \FSM_onehot_rx_state[17]_i_10_n_0\,
      O => \FSM_onehot_rx_state[17]_i_6_n_0\
    );
\FSM_onehot_rx_state[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00000020000000"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(1),
      I2 => \FSM_onehot_rx_state[17]_i_15_n_0\,
      I3 => dec_data(2),
      I4 => dec_data(0),
      I5 => \FSM_onehot_rx_state[17]_i_18_n_0\,
      O => \FSM_onehot_rx_state[17]_i_7_n_0\
    );
\FSM_onehot_rx_state[17]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \FSM_onehot_rx_state[15]_i_3_n_0\,
      I1 => dec_data(2),
      I2 => dec_data(3),
      I3 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_8_n_0\
    );
\FSM_onehot_rx_state[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_19_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_20_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_12_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_21_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_18_n_0\,
      I5 => \FSM_onehot_rx_state[17]_i_22_n_0\,
      O => \FSM_onehot_rx_state[17]_i_9_n_0\
    );
\FSM_onehot_rx_state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAF8FA00FAF8FAF8"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[8]\,
      I1 => \FSM_onehot_rx_state_reg[9]\,
      I2 => \FSM_onehot_rx_state_reg[15]\,
      I3 => dec_strb,
      I4 => \out\(16),
      I5 => \FSM_onehot_rx_state_reg[18]_31\,
      O => \FSM_onehot_rx_state_reg[0]\(0)
    );
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \out\(0),
      I1 => dec_data(6),
      I2 => dec_data(5),
      I3 => \FSM_onehot_rx_state[1]_i_2_n_0\,
      I4 => dec_strb,
      I5 => \FSM_onehot_rx_state[1]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(1)
    );
\FSM_onehot_rx_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(7),
      O => \FSM_onehot_rx_state[1]_i_2_n_0\
    );
\FSM_onehot_rx_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => dec_data(0),
      I1 => dec_data(2),
      I2 => dec_data(1),
      I3 => dec_data(4),
      O => \FSM_onehot_rx_state[1]_i_3_n_0\
    );
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I1 => dec_data(0),
      I2 => dec_data(2),
      I3 => dec_data(1),
      O => \FSM_onehot_rx_state_reg[17]\(2)
    );
\FSM_onehot_rx_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(2),
      I1 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(3)
    );
\FSM_onehot_rx_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(3),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(4)
    );
\FSM_onehot_rx_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(4),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(5)
    );
\FSM_onehot_rx_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(5),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(6)
    );
\FSM_onehot_rx_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(6),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(7)
    );
\FSM_onehot_rx_state[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(7),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(8)
    );
\FSM_onehot_rx_state[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \out\(8),
      I1 => dec_strb,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(9)
    );
\adr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(15),
      I2 => \adr[4]_i_2_n_0\,
      O => \adr_reg[7]\(0)
    );
\adr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(15),
      I2 => \adr[5]_i_2_n_0\,
      O => \adr_reg[7]\(1)
    );
\adr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(15),
      I2 => \adr[6]_i_2_n_0\,
      O => \adr_reg[7]\(2)
    );
\adr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E000E0"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(15),
      I2 => dec_strb,
      I3 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \adr_reg[7]_0\(0)
    );
\adr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(15),
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \adr_reg[7]\(3)
    );
\adr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(14),
      I2 => \adr[4]_i_2_n_0\,
      O => \adr_reg[7]\(4)
    );
\adr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002022"
    )
        port map (
      I0 => \adr[4]_i_3_n_0\,
      I1 => \adr[4]_i_4_n_0\,
      I2 => \adr[4]_i_5_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I5 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      O => \adr[4]_i_2_n_0\
    );
\adr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0F07FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state[15]_i_3_n_0\,
      I1 => dec_data(3),
      I2 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I3 => dec_data(2),
      I4 => dec_data(1),
      I5 => dec_data(0),
      O => \adr[4]_i_3_n_0\
    );
\adr[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(0),
      I2 => \FSM_onehot_rx_state[17]_i_19_n_0\,
      O => \adr[4]_i_4_n_0\
    );
\adr[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(2),
      I2 => dec_data(0),
      O => \adr[4]_i_5_n_0\
    );
\adr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(14),
      I2 => \adr[5]_i_2_n_0\,
      O => \adr_reg[7]\(5)
    );
\adr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000111"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_7_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I2 => dec_data(1),
      I3 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_9_n_0\,
      O => \adr[5]_i_2_n_0\
    );
\adr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(14),
      I2 => \adr[6]_i_2_n_0\,
      O => \adr_reg[7]\(6)
    );
\adr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010001"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_5_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_7_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I5 => dec_data(2),
      O => \adr[6]_i_2_n_0\
    );
\adr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E000E0"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(14),
      I2 => dec_strb,
      I3 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      O => \adr_reg[7]_0\(1)
    );
\adr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(14),
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \adr_reg[7]\(7)
    );
\data32[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_15\,
      O => \data32_reg[31]\(0)
    );
\data32[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_1\,
      O => \data32_reg[31]\(10)
    );
\data32[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(10),
      O => E(2)
    );
\data32[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_9\,
      O => \data32_reg[31]\(11)
    );
\data32[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_18\,
      O => \data32_reg[31]\(12)
    );
\data32[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_26\,
      O => \data32_reg[31]\(13)
    );
\data32[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_2\,
      O => \data32_reg[31]\(14)
    );
\data32[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(9),
      O => E(3)
    );
\data32[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_10\,
      O => \data32_reg[31]\(15)
    );
\data32[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_19\,
      O => \data32_reg[31]\(16)
    );
\data32[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_27\,
      O => \data32_reg[31]\(17)
    );
\data32[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_3\,
      O => \data32_reg[31]\(18)
    );
\data32[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(8),
      O => E(4)
    );
\data32[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_11\,
      O => \data32_reg[31]\(19)
    );
\data32[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_23\,
      O => \data32_reg[31]\(1)
    );
\data32[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_20\,
      O => \data32_reg[31]\(20)
    );
\data32[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_28\,
      O => \data32_reg[31]\(21)
    );
\data32[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_4\,
      O => \data32_reg[31]\(22)
    );
\data32[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(7),
      O => E(5)
    );
\data32[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_12\,
      O => \data32_reg[31]\(23)
    );
\data32[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_21\,
      O => \data32_reg[31]\(24)
    );
\data32[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_29\,
      O => \data32_reg[31]\(25)
    );
\data32[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_5\,
      O => \data32_reg[31]\(26)
    );
\data32[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(6),
      O => E(6)
    );
\data32[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_13\,
      O => \data32_reg[31]\(27)
    );
\data32[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_22\,
      O => \data32_reg[31]\(28)
    );
\data32[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_30\,
      O => \data32_reg[31]\(29)
    );
\data32[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]\,
      O => \data32_reg[31]\(2)
    );
\data32[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_6\,
      O => \data32_reg[31]\(30)
    );
\data32[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(5),
      O => E(7)
    );
\data32[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_14\,
      O => \data32_reg[31]\(31)
    );
\data32[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(12),
      O => E(0)
    );
\data32[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_7\,
      O => \data32_reg[31]\(3)
    );
\data32[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_16\,
      O => \data32_reg[31]\(4)
    );
\data32[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_24\,
      O => \data32_reg[31]\(5)
    );
\data32[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_0\,
      O => \data32_reg[31]\(6)
    );
\data32[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I3 => dec_strb,
      I4 => \out\(11),
      O => E(1)
    );
\data32[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_8\,
      O => \data32_reg[31]\(7)
    );
\data32[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_17\,
      O => \data32_reg[31]\(8)
    );
\data32[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_25\,
      O => \data32_reg[31]\(9)
    );
\nxt_bitcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcnt(0),
      O => \nxt_bitcnt[0]_i_1__0_n_0\
    );
\nxt_bitcnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      O => \nxt_bitcnt[1]_i_1_n_0\
    );
\nxt_bitcnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(0),
      I2 => bitcnt(1),
      O => \nxt_bitcnt[2]_i_1__0_n_0\
    );
\nxt_bitcnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => SR(0),
      I1 => subcnt(2),
      I2 => subcnt(0),
      I3 => subcnt(1),
      I4 => \subcnt[3]_i_5_n_0\,
      O => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => subcnt(1),
      I1 => subcnt(0),
      I2 => subcnt(2),
      I3 => subcnt(3),
      O => \nxt_bitcnt[3]_i_2__0_n_0\
    );
\nxt_bitcnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C8C"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      O => \nxt_bitcnt[3]_i_3_n_0\
    );
\nxt_bitcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_bitcnt[3]_i_2__0_n_0\,
      D => \nxt_bitcnt[0]_i_1__0_n_0\,
      Q => bitcnt(0),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_bitcnt[3]_i_2__0_n_0\,
      D => \nxt_bitcnt[1]_i_1_n_0\,
      Q => bitcnt(1),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_bitcnt[3]_i_2__0_n_0\,
      D => \nxt_bitcnt[2]_i_1__0_n_0\,
      Q => bitcnt(2),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_bitcnt[3]_i_2__0_n_0\,
      D => \nxt_bitcnt[3]_i_3_n_0\,
      Q => bitcnt(3),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \nxt_bitcnt[3]_i_2__0_n_0\,
      I1 => bitcnt(3),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => bitcnt(2),
      I5 => \nxt_data[7]_i_2_n_0\,
      O => p_0_in(0)
    );
\nxt_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \nxt_bitcnt[3]_i_2__0_n_0\,
      I1 => bitcnt(3),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => bitcnt(2),
      I5 => \nxt_data[7]_i_2_n_0\,
      O => p_0_in(1)
    );
\nxt_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(1),
      I2 => bitcnt(0),
      I3 => bitcnt(2),
      I4 => \nxt_data[7]_i_2_n_0\,
      O => p_0_in(2)
    );
\nxt_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => \nxt_data[7]_i_2_n_0\,
      O => p_0_in(3)
    );
\nxt_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \nxt_bitcnt[3]_i_2__0_n_0\,
      I1 => \nxt_data[7]_i_2_n_0\,
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => bitcnt(3),
      O => p_0_in(4)
    );
\nxt_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \nxt_bitcnt[3]_i_2__0_n_0\,
      I1 => \nxt_data[7]_i_2_n_0\,
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => bitcnt(3),
      O => p_0_in(5)
    );
\nxt_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => \nxt_data[7]_i_2_n_0\,
      O => p_0_in(6)
    );
\nxt_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => \nxt_data[7]_i_2_n_0\,
      O => p_0_in(7)
    );
\nxt_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => subcnt(1),
      I1 => subcnt(0),
      I2 => subcnt(2),
      I3 => subcnt(3),
      O => \nxt_data[7]_i_2_n_0\
    );
\nxt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(0),
      D => D(0),
      Q => dec_data(0),
      R => SR(0)
    );
\nxt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(1),
      D => D(0),
      Q => dec_data(1),
      R => SR(0)
    );
\nxt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(2),
      D => D(0),
      Q => dec_data(2),
      R => SR(0)
    );
\nxt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(3),
      D => D(0),
      Q => dec_data(3),
      R => SR(0)
    );
\nxt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(4),
      D => D(0),
      Q => dec_data(4),
      R => SR(0)
    );
\nxt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(5),
      D => D(0),
      Q => dec_data(5),
      R => SR(0)
    );
\nxt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(6),
      D => D(0),
      Q => dec_data(6),
      R => SR(0)
    );
\nxt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(7),
      D => D(0),
      Q => dec_data(7),
      R => SR(0)
    );
strobe2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(0),
      I2 => bitcnt(3),
      I3 => bitcnt(2),
      O => strobe2_i_1_n_0
    );
strobe2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => strobe2_i_1_n_0,
      Q => strobe2,
      R => '0'
    );
strobe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => strobe2,
      O => strobe_i_1_n_0
    );
strobe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => strobe_i_1_n_0,
      Q => dec_strb,
      R => '0'
    );
\subcnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => subcnt(0),
      I1 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[0]_i_1_n_0\
    );
\subcnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => subcnt(0),
      I1 => subcnt(1),
      I2 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[1]_i_1_n_0\
    );
\subcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => subcnt(1),
      I1 => subcnt(0),
      I2 => subcnt(2),
      I3 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[2]_i_1_n_0\
    );
\subcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => SR(0),
      I1 => subcnt(3),
      I2 => D(0),
      I3 => bitcnt(3),
      I4 => \subcnt[3]_i_3_n_0\,
      I5 => \subcnt[3]_i_4_n_0\,
      O => \subcnt[3]_i_1_n_0\
    );
\subcnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => subcnt(2),
      I1 => subcnt(0),
      I2 => subcnt(1),
      I3 => subcnt(3),
      I4 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[3]_i_2_n_0\
    );
\subcnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => subcnt(2),
      I1 => subcnt(0),
      I2 => subcnt(1),
      O => \subcnt[3]_i_3_n_0\
    );
\subcnt[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bitcnt(0),
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      O => \subcnt[3]_i_4_n_0\
    );
\subcnt[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => subcnt(3),
      I5 => D(0),
      O => \subcnt[3]_i_5_n_0\
    );
\subcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[0]_i_1_n_0\,
      Q => subcnt(0),
      R => \subcnt[3]_i_1_n_0\
    );
\subcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[1]_i_1_n_0\,
      Q => subcnt(1),
      R => \subcnt[3]_i_1_n_0\
    );
\subcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[2]_i_1_n_0\,
      Q => subcnt(2),
      R => \subcnt[3]_i_1_n_0\
    );
\subcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[3]_i_2_n_0\,
      Q => subcnt(3),
      R => \subcnt[3]_i_1_n_0\
    );
timestamp_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000400"
    )
        port map (
      I0 => dec_data(5),
      I1 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I2 => dec_data(2),
      I3 => dec_data(1),
      I4 => dec_data(0),
      I5 => timestamp_enable,
      O => timestamp_enable_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encode_serial is
  port (
    TX_O_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nxt_char_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enc_wr_reg : out STD_LOGIC;
    nxt_sendstring : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \nxt_char_cnt_reg[2]\ : in STD_LOGIC;
    sendstring : in STD_LOGIC;
    \nxt_char_cnt_reg[3]\ : in STD_LOGIC;
    enc_wr_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rx_state_reg[15]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[8]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \nxt_enc_data_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end encode_serial;

architecture STRUCTURE of encode_serial is
  signal data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal enc_busy : STD_LOGIC;
  signal nxt_bitcnt : STD_LOGIC;
  signal \nxt_bitcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_4_n_0\ : STD_LOGIC;
  signal nxt_bitcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^nxt_char_cnt_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal sel : STD_LOGIC;
  signal \subcnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal subcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_done : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_i_2_n_0 : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_2_n_0 : STD_LOGIC;
  signal tx_i_3_n_0 : STD_LOGIC;
  signal tx_i_4_n_0 : STD_LOGIC;
  signal tx_req_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nxt_bitcnt[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \nxt_bitcnt[1]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \nxt_bitcnt[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_3__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \subcnt[1]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \subcnt[2]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \subcnt[3]_i_3__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of tx_done_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of tx_i_3 : label is "soft_lutpair50";
begin
  \nxt_char_cnt_reg[0]\(0) <= \^nxt_char_cnt_reg[0]\(0);
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(0),
      Q => data(0),
      R => SR(0)
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(1),
      Q => data(1),
      R => SR(0)
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(2),
      Q => data(2),
      R => SR(0)
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(3),
      Q => data(3),
      R => SR(0)
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(4),
      Q => data(4),
      R => SR(0)
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(5),
      Q => data(5),
      R => SR(0)
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(6),
      Q => data(6),
      R => SR(0)
    );
enc_wr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^nxt_char_cnt_reg[0]\(0),
      I1 => SR(0),
      O => enc_wr_reg
    );
\nxt_bitcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nxt_bitcnt_reg(0),
      O => \nxt_bitcnt[0]_i_1_n_0\
    );
\nxt_bitcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => nxt_bitcnt_reg(1),
      I1 => nxt_bitcnt_reg(0),
      O => \nxt_bitcnt[1]_i_1__0_n_0\
    );
\nxt_bitcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => nxt_bitcnt_reg(2),
      I1 => nxt_bitcnt_reg(0),
      I2 => nxt_bitcnt_reg(1),
      O => \p_0_in__0\(2)
    );
\nxt_bitcnt[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SR(0),
      I1 => enc_busy,
      O => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => subcnt_reg(2),
      I1 => subcnt_reg(0),
      I2 => subcnt_reg(1),
      I3 => subcnt_reg(3),
      I4 => \nxt_bitcnt[3]_i_4_n_0\,
      O => nxt_bitcnt
    );
\nxt_bitcnt[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => nxt_bitcnt_reg(3),
      I1 => nxt_bitcnt_reg(2),
      I2 => nxt_bitcnt_reg(1),
      I3 => nxt_bitcnt_reg(0),
      O => \p_0_in__0\(3)
    );
\nxt_bitcnt[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => nxt_bitcnt_reg(3),
      I1 => nxt_bitcnt_reg(2),
      I2 => nxt_bitcnt_reg(1),
      I3 => nxt_bitcnt_reg(0),
      O => \nxt_bitcnt[3]_i_4_n_0\
    );
\nxt_bitcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[0]_i_1_n_0\,
      Q => nxt_bitcnt_reg(0),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[1]_i_1__0_n_0\,
      Q => nxt_bitcnt_reg(1),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \p_0_in__0\(2),
      Q => nxt_bitcnt_reg(2),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \p_0_in__0\(3),
      Q => nxt_bitcnt_reg(3),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_char_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEFF"
    )
        port map (
      I0 => \nxt_char_cnt_reg[2]\,
      I1 => sendstring,
      I2 => Q(3),
      I3 => \nxt_char_cnt_reg[3]\,
      I4 => enc_busy,
      I5 => enc_wr_reg_0(0),
      O => \^nxt_char_cnt_reg[0]\(0)
    );
\nxt_enc_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040444444444"
    )
        port map (
      I0 => SR(0),
      I1 => \^nxt_char_cnt_reg[0]\(0),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => E(0)
    );
sendstring_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[15]\,
      I1 => \FSM_onehot_rx_state_reg[8]\,
      I2 => sendstring,
      I3 => enc_busy,
      I4 => \out\(0),
      O => nxt_sendstring
    );
\subcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => subcnt_reg(0),
      O => p_0_in(0)
    );
\subcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => subcnt_reg(1),
      I1 => subcnt_reg(0),
      O => p_0_in(1)
    );
\subcnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => subcnt_reg(2),
      I1 => subcnt_reg(0),
      I2 => subcnt_reg(1),
      O => p_0_in(2)
    );
\subcnt[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => enc_busy,
      I1 => SR(0),
      I2 => nxt_bitcnt,
      O => \subcnt[3]_i_1__0_n_0\
    );
\subcnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => subcnt_reg(2),
      I1 => subcnt_reg(0),
      I2 => subcnt_reg(1),
      I3 => subcnt_reg(3),
      O => sel
    );
\subcnt[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => subcnt_reg(3),
      I1 => subcnt_reg(1),
      I2 => subcnt_reg(0),
      I3 => subcnt_reg(2),
      O => p_0_in(3)
    );
\subcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(0),
      Q => subcnt_reg(0),
      R => \subcnt[3]_i_1__0_n_0\
    );
\subcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(1),
      Q => subcnt_reg(1),
      R => \subcnt[3]_i_1__0_n_0\
    );
\subcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(2),
      Q => subcnt_reg(2),
      R => \subcnt[3]_i_1__0_n_0\
    );
\subcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(3),
      Q => subcnt_reg(3),
      R => \subcnt[3]_i_1__0_n_0\
    );
tx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => tx_done,
      I1 => tx_done_i_2_n_0,
      I2 => \nxt_bitcnt[3]_i_4_n_0\,
      I3 => enc_busy,
      I4 => SR(0),
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => subcnt_reg(3),
      I1 => subcnt_reg(1),
      I2 => subcnt_reg(0),
      I3 => subcnt_reg(2),
      O => tx_done_i_2_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done,
      R => '0'
    );
tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF382"
    )
        port map (
      I0 => tx_i_2_n_0,
      I1 => tx_i_3_n_0,
      I2 => nxt_bitcnt_reg(2),
      I3 => nxt_bitcnt_reg(3),
      I4 => \nxt_bitcnt[3]_i_1__0_n_0\,
      I5 => tx_i_4_n_0,
      O => tx_i_1_n_0
    );
tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => data(0),
      I1 => data(1),
      I2 => nxt_bitcnt_reg(1),
      I3 => nxt_bitcnt_reg(0),
      I4 => data(2),
      I5 => data(3),
      O => tx_i_2_n_0
    );
tx_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nxt_bitcnt_reg(1),
      I1 => nxt_bitcnt_reg(0),
      O => tx_i_3_n_0
    );
tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CC0000000000"
    )
        port map (
      I0 => data(6),
      I1 => data(5),
      I2 => data(4),
      I3 => nxt_bitcnt_reg(1),
      I4 => nxt_bitcnt_reg(0),
      I5 => nxt_bitcnt_reg(2),
      O => tx_i_4_n_0
    );
tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_i_1_n_0,
      Q => TX_O_OBUF,
      R => '0'
    );
tx_req_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => enc_wr_reg_0(0),
      I1 => tx_done,
      I2 => enc_busy,
      O => tx_req_i_1_n_0
    );
tx_req_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_req_i_1_n_0,
      Q => enc_busy,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mmcm48 is
  port (
    CLK48_O : out STD_LOGIC;
    buf_reset_reg : out STD_LOGIC;
    CLK100_I_IBUF : in STD_LOGIC
  );
end mmcm48;

architecture STRUCTURE of mmcm48 is
  signal PLL_LOCK_O : STD_LOGIC;
  signal clk_feedback : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MMCME2_BASE_inst : label is "MMCME2_BASE";
  attribute box_type : string;
  attribute box_type of MMCME2_BASE_inst : label is "PRIMITIVE";
begin
MMCME2_BASE_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 62.500000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clk_feedback,
      CLKFBOUT => clk_feedback,
      CLKFBOUTB => NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => CLK100_I_IBUF,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => CLK48_O,
      CLKOUT0B => NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_MMCME2_BASE_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => PLL_LOCK_O,
      PSCLK => '0',
      PSDONE => NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
buf_reset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PLL_LOCK_O,
      O => buf_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity QLinkMaster is
  port (
    CLK48_O : out STD_LOGIC;
    TX_O_OBUF : out STD_LOGIC;
    RESET_O : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    STATUSLED_O_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    UNISIM_RAM0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK100_I_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end QLinkMaster;

architecture STRUCTURE of QLinkMaster is
  signal ADDR_B_O : STD_LOGIC_VECTOR ( 7 to 7 );
  signal DECODE_n_0 : STD_LOGIC;
  signal DECODE_n_1 : STD_LOGIC;
  signal DECODE_n_10 : STD_LOGIC;
  signal DECODE_n_11 : STD_LOGIC;
  signal DECODE_n_12 : STD_LOGIC;
  signal DECODE_n_13 : STD_LOGIC;
  signal DECODE_n_14 : STD_LOGIC;
  signal DECODE_n_15 : STD_LOGIC;
  signal DECODE_n_16 : STD_LOGIC;
  signal DECODE_n_17 : STD_LOGIC;
  signal DECODE_n_18 : STD_LOGIC;
  signal DECODE_n_19 : STD_LOGIC;
  signal DECODE_n_2 : STD_LOGIC;
  signal DECODE_n_20 : STD_LOGIC;
  signal DECODE_n_21 : STD_LOGIC;
  signal DECODE_n_22 : STD_LOGIC;
  signal DECODE_n_23 : STD_LOGIC;
  signal DECODE_n_24 : STD_LOGIC;
  signal DECODE_n_25 : STD_LOGIC;
  signal DECODE_n_26 : STD_LOGIC;
  signal DECODE_n_27 : STD_LOGIC;
  signal DECODE_n_28 : STD_LOGIC;
  signal DECODE_n_29 : STD_LOGIC;
  signal DECODE_n_3 : STD_LOGIC;
  signal DECODE_n_30 : STD_LOGIC;
  signal DECODE_n_31 : STD_LOGIC;
  signal DECODE_n_32 : STD_LOGIC;
  signal DECODE_n_33 : STD_LOGIC;
  signal DECODE_n_34 : STD_LOGIC;
  signal DECODE_n_35 : STD_LOGIC;
  signal DECODE_n_36 : STD_LOGIC;
  signal DECODE_n_37 : STD_LOGIC;
  signal DECODE_n_38 : STD_LOGIC;
  signal DECODE_n_39 : STD_LOGIC;
  signal DECODE_n_4 : STD_LOGIC;
  signal DECODE_n_40 : STD_LOGIC;
  signal DECODE_n_41 : STD_LOGIC;
  signal DECODE_n_42 : STD_LOGIC;
  signal DECODE_n_44 : STD_LOGIC;
  signal DECODE_n_45 : STD_LOGIC;
  signal DECODE_n_46 : STD_LOGIC;
  signal DECODE_n_47 : STD_LOGIC;
  signal DECODE_n_48 : STD_LOGIC;
  signal DECODE_n_49 : STD_LOGIC;
  signal DECODE_n_5 : STD_LOGIC;
  signal DECODE_n_50 : STD_LOGIC;
  signal DECODE_n_51 : STD_LOGIC;
  signal DECODE_n_52 : STD_LOGIC;
  signal DECODE_n_53 : STD_LOGIC;
  signal DECODE_n_54 : STD_LOGIC;
  signal DECODE_n_55 : STD_LOGIC;
  signal DECODE_n_56 : STD_LOGIC;
  signal DECODE_n_57 : STD_LOGIC;
  signal DECODE_n_58 : STD_LOGIC;
  signal DECODE_n_59 : STD_LOGIC;
  signal DECODE_n_6 : STD_LOGIC;
  signal DECODE_n_60 : STD_LOGIC;
  signal DECODE_n_61 : STD_LOGIC;
  signal DECODE_n_62 : STD_LOGIC;
  signal DECODE_n_63 : STD_LOGIC;
  signal DECODE_n_64 : STD_LOGIC;
  signal DECODE_n_65 : STD_LOGIC;
  signal DECODE_n_66 : STD_LOGIC;
  signal DECODE_n_67 : STD_LOGIC;
  signal DECODE_n_68 : STD_LOGIC;
  signal DECODE_n_69 : STD_LOGIC;
  signal DECODE_n_7 : STD_LOGIC;
  signal DECODE_n_8 : STD_LOGIC;
  signal DECODE_n_9 : STD_LOGIC;
  signal ENCODE_n_1 : STD_LOGIC;
  signal ENCODE_n_2 : STD_LOGIC;
  signal ENCODE_n_3 : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[10]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[10]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[11]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[11]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[12]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[12]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[14]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[14]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[15]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[15]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[16]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[16]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[8]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[9]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[9]\ : signal is "yes";
  signal LED_O_i_1_n_0 : STD_LOGIC;
  signal MMCM48_INST_n_1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^reset_o\ : STD_LOGIC;
  signal \^unisim_ram0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal buf_reset : STD_LOGIC;
  signal char_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \clk_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal clk_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \data32[0]_i_2_n_0\ : STD_LOGIC;
  signal \data32[10]_i_2_n_0\ : STD_LOGIC;
  signal \data32[11]_i_3_n_0\ : STD_LOGIC;
  signal \data32[12]_i_2_n_0\ : STD_LOGIC;
  signal \data32[13]_i_2_n_0\ : STD_LOGIC;
  signal \data32[14]_i_2_n_0\ : STD_LOGIC;
  signal \data32[15]_i_3_n_0\ : STD_LOGIC;
  signal \data32[16]_i_2_n_0\ : STD_LOGIC;
  signal \data32[17]_i_2_n_0\ : STD_LOGIC;
  signal \data32[18]_i_2_n_0\ : STD_LOGIC;
  signal \data32[19]_i_3_n_0\ : STD_LOGIC;
  signal \data32[1]_i_2_n_0\ : STD_LOGIC;
  signal \data32[20]_i_2_n_0\ : STD_LOGIC;
  signal \data32[21]_i_2_n_0\ : STD_LOGIC;
  signal \data32[22]_i_2_n_0\ : STD_LOGIC;
  signal \data32[23]_i_3_n_0\ : STD_LOGIC;
  signal \data32[24]_i_2_n_0\ : STD_LOGIC;
  signal \data32[25]_i_2_n_0\ : STD_LOGIC;
  signal \data32[26]_i_2_n_0\ : STD_LOGIC;
  signal \data32[27]_i_3_n_0\ : STD_LOGIC;
  signal \data32[28]_i_2_n_0\ : STD_LOGIC;
  signal \data32[29]_i_2_n_0\ : STD_LOGIC;
  signal \data32[2]_i_2_n_0\ : STD_LOGIC;
  signal \data32[30]_i_2_n_0\ : STD_LOGIC;
  signal \data32[31]_i_3_n_0\ : STD_LOGIC;
  signal \data32[31]_i_4_n_0\ : STD_LOGIC;
  signal \data32[31]_i_5_n_0\ : STD_LOGIC;
  signal \data32[31]_i_6_n_0\ : STD_LOGIC;
  signal \data32[3]_i_3_n_0\ : STD_LOGIC;
  signal \data32[4]_i_2_n_0\ : STD_LOGIC;
  signal \data32[5]_i_2_n_0\ : STD_LOGIC;
  signal \data32[6]_i_2_n_0\ : STD_LOGIC;
  signal \data32[7]_i_3_n_0\ : STD_LOGIC;
  signal \data32[8]_i_2_n_0\ : STD_LOGIC;
  signal \data32[9]_i_2_n_0\ : STD_LOGIC;
  signal enc_wr : STD_LOGIC;
  signal \led_idx[5]_i_3_n_0\ : STD_LOGIC;
  signal \led_idx[5]_i_4_n_0\ : STD_LOGIC;
  signal \led_idx[5]_i_5_n_0\ : STD_LOGIC;
  signal \led_idx[5]_i_6_n_0\ : STD_LOGIC;
  signal \led_idx[5]_i_7_n_0\ : STD_LOGIC;
  signal \led_idx_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal nxt_char_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \nxt_char_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_char_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal nxt_enc_data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \nxt_enc_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_26_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_27_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_28_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_29_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_30_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_31_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_32_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_33_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_26_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_27_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[6]\ : STD_LOGIC;
  signal nxt_rd : STD_LOGIC;
  attribute RTL_KEEP of nxt_rd : signal is "yes";
  signal nxt_sendstring : STD_LOGIC;
  signal nxt_timestamp : STD_LOGIC;
  attribute RTL_KEEP of nxt_timestamp : signal is "yes";
  signal nxt_timestamp_enable : STD_LOGIC;
  signal nxt_wr : STD_LOGIC;
  attribute RTL_KEEP of nxt_wr : signal is "yes";
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal sel : STD_LOGIC;
  signal sendstring : STD_LOGIC;
  signal timestamp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_enable : STD_LOGIC;
  signal \NLW_clk_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[0]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_rx_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[10]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[10]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[11]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[11]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[12]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[12]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[13]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[13]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[14]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[14]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[15]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[15]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[16]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[16]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[17]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[17]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[18]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[18]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[1]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[2]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[3]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[4]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[5]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[6]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[7]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[7]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[8]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[8]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[9]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_idx[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \led_idx[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \led_idx[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \led_idx[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \nxt_char_cnt[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \nxt_char_cnt[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \nxt_char_cnt[4]_i_3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \nxt_char_cnt[4]_i_4\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_16\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_20\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_21\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_7\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_20\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_25\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_28\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_29\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_30\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_32\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_14\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_15\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_16\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_21\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_22\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_23\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_24\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_25\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_27\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_16\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_17\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_18\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_19\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_20\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_21\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_22\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_24\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_8\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_9\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \nxt_enc_data[4]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_14\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_15\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_17\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_18\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_19\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_20\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_21\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_22\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_23\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_25\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_6\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_7\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_8\ : label is "soft_lutpair54";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  RESET_O <= \^reset_o\;
  UNISIM_RAM0(31 downto 0) <= \^unisim_ram0\(31 downto 0);
DECODE: entity work.decode_serial
     port map (
      CLK => CLK,
      D(0) => D(0),
      E(7) => DECODE_n_58,
      E(6) => DECODE_n_59,
      E(5) => DECODE_n_60,
      E(4) => DECODE_n_61,
      E(3) => DECODE_n_62,
      E(2) => DECODE_n_63,
      E(1) => DECODE_n_64,
      E(0) => DECODE_n_65,
      \FSM_onehot_rx_state_reg[0]\(0) => DECODE_n_68,
      \FSM_onehot_rx_state_reg[14]\ => \FSM_onehot_rx_state[0]_i_6_n_0\,
      \FSM_onehot_rx_state_reg[15]\ => \FSM_onehot_rx_state[18]_i_4_n_0\,
      \FSM_onehot_rx_state_reg[17]\(17) => DECODE_n_40,
      \FSM_onehot_rx_state_reg[17]\(16) => DECODE_n_41,
      \FSM_onehot_rx_state_reg[17]\(15) => DECODE_n_42,
      \FSM_onehot_rx_state_reg[17]\(14) => nxt_timestamp_enable,
      \FSM_onehot_rx_state_reg[17]\(13) => DECODE_n_44,
      \FSM_onehot_rx_state_reg[17]\(12) => DECODE_n_45,
      \FSM_onehot_rx_state_reg[17]\(11) => DECODE_n_46,
      \FSM_onehot_rx_state_reg[17]\(10) => DECODE_n_47,
      \FSM_onehot_rx_state_reg[17]\(9) => DECODE_n_48,
      \FSM_onehot_rx_state_reg[17]\(8) => DECODE_n_49,
      \FSM_onehot_rx_state_reg[17]\(7) => DECODE_n_50,
      \FSM_onehot_rx_state_reg[17]\(6) => DECODE_n_51,
      \FSM_onehot_rx_state_reg[17]\(5) => DECODE_n_52,
      \FSM_onehot_rx_state_reg[17]\(4) => DECODE_n_53,
      \FSM_onehot_rx_state_reg[17]\(3) => DECODE_n_54,
      \FSM_onehot_rx_state_reg[17]\(2) => DECODE_n_55,
      \FSM_onehot_rx_state_reg[17]\(1) => DECODE_n_56,
      \FSM_onehot_rx_state_reg[17]\(0) => DECODE_n_57,
      \FSM_onehot_rx_state_reg[18]\ => \data32[2]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_0\ => \data32[6]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_1\ => \data32[10]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_10\ => \data32[15]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_11\ => \data32[19]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_12\ => \data32[23]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_13\ => \data32[27]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_14\ => \data32[31]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_15\ => \data32[0]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_16\ => \data32[4]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_17\ => \data32[8]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_18\ => \data32[12]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_19\ => \data32[16]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_2\ => \data32[14]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_20\ => \data32[20]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_21\ => \data32[24]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_22\ => \data32[28]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_23\ => \data32[1]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_24\ => \data32[5]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_25\ => \data32[9]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_26\ => \data32[13]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_27\ => \data32[17]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_28\ => \data32[21]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_29\ => \data32[25]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_3\ => \data32[18]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_30\ => \data32[29]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_31\ => \FSM_onehot_rx_state[18]_i_5_n_0\,
      \FSM_onehot_rx_state_reg[18]_4\ => \data32[22]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_5\ => \data32[26]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_6\ => \data32[30]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_7\ => \data32[3]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_8\ => \data32[7]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_9\ => \data32[11]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[3]\ => \FSM_onehot_rx_state[0]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[4]\ => \FSM_onehot_rx_state[0]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[8]\ => \FSM_onehot_rx_state[18]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[9]\ => \FSM_onehot_rx_state[18]_i_3_n_0\,
      SR(0) => \^reset_o\,
      \adr_reg[7]\(7) => DECODE_n_32,
      \adr_reg[7]\(6) => DECODE_n_33,
      \adr_reg[7]\(5) => DECODE_n_34,
      \adr_reg[7]\(4) => DECODE_n_35,
      \adr_reg[7]\(3) => DECODE_n_36,
      \adr_reg[7]\(2) => DECODE_n_37,
      \adr_reg[7]\(1) => DECODE_n_38,
      \adr_reg[7]\(0) => DECODE_n_39,
      \adr_reg[7]_0\(1) => DECODE_n_66,
      \adr_reg[7]_0\(0) => DECODE_n_67,
      \data32_reg[31]\(31) => DECODE_n_0,
      \data32_reg[31]\(30) => DECODE_n_1,
      \data32_reg[31]\(29) => DECODE_n_2,
      \data32_reg[31]\(28) => DECODE_n_3,
      \data32_reg[31]\(27) => DECODE_n_4,
      \data32_reg[31]\(26) => DECODE_n_5,
      \data32_reg[31]\(25) => DECODE_n_6,
      \data32_reg[31]\(24) => DECODE_n_7,
      \data32_reg[31]\(23) => DECODE_n_8,
      \data32_reg[31]\(22) => DECODE_n_9,
      \data32_reg[31]\(21) => DECODE_n_10,
      \data32_reg[31]\(20) => DECODE_n_11,
      \data32_reg[31]\(19) => DECODE_n_12,
      \data32_reg[31]\(18) => DECODE_n_13,
      \data32_reg[31]\(17) => DECODE_n_14,
      \data32_reg[31]\(16) => DECODE_n_15,
      \data32_reg[31]\(15) => DECODE_n_16,
      \data32_reg[31]\(14) => DECODE_n_17,
      \data32_reg[31]\(13) => DECODE_n_18,
      \data32_reg[31]\(12) => DECODE_n_19,
      \data32_reg[31]\(11) => DECODE_n_20,
      \data32_reg[31]\(10) => DECODE_n_21,
      \data32_reg[31]\(9) => DECODE_n_22,
      \data32_reg[31]\(8) => DECODE_n_23,
      \data32_reg[31]\(7) => DECODE_n_24,
      \data32_reg[31]\(6) => DECODE_n_25,
      \data32_reg[31]\(5) => DECODE_n_26,
      \data32_reg[31]\(4) => DECODE_n_27,
      \data32_reg[31]\(3) => DECODE_n_28,
      \data32_reg[31]\(2) => DECODE_n_29,
      \data32_reg[31]\(1) => DECODE_n_30,
      \data32_reg[31]\(0) => DECODE_n_31,
      \out\(17) => nxt_timestamp,
      \out\(16) => nxt_rd,
      \out\(15) => \FSM_onehot_rx_state_reg_n_0_[16]\,
      \out\(14) => \FSM_onehot_rx_state_reg_n_0_[15]\,
      \out\(13) => \FSM_onehot_rx_state_reg_n_0_[14]\,
      \out\(12) => \FSM_onehot_rx_state_reg_n_0_[12]\,
      \out\(11) => \FSM_onehot_rx_state_reg_n_0_[11]\,
      \out\(10) => \FSM_onehot_rx_state_reg_n_0_[10]\,
      \out\(9) => \FSM_onehot_rx_state_reg_n_0_[9]\,
      \out\(8) => \FSM_onehot_rx_state_reg_n_0_[8]\,
      \out\(7) => \FSM_onehot_rx_state_reg_n_0_[7]\,
      \out\(6) => \FSM_onehot_rx_state_reg_n_0_[6]\,
      \out\(5) => \FSM_onehot_rx_state_reg_n_0_[5]\,
      \out\(4) => \FSM_onehot_rx_state_reg_n_0_[4]\,
      \out\(3) => \FSM_onehot_rx_state_reg_n_0_[3]\,
      \out\(2) => \FSM_onehot_rx_state_reg_n_0_[2]\,
      \out\(1) => \FSM_onehot_rx_state_reg_n_0_[1]\,
      \out\(0) => \FSM_onehot_rx_state_reg_n_0_[0]\,
      timestamp_enable => timestamp_enable,
      timestamp_enable_reg => DECODE_n_69
    );
ENCODE: entity work.encode_serial
     port map (
      CLK => CLK,
      E(0) => ENCODE_n_1,
      \FSM_onehot_rx_state_reg[15]\ => \FSM_onehot_rx_state[18]_i_4_n_0\,
      \FSM_onehot_rx_state_reg[8]\ => \FSM_onehot_rx_state[18]_i_2_n_0\,
      Q(3 downto 0) => char_cnt(4 downto 1),
      SR(0) => \^reset_o\,
      TX_O_OBUF => TX_O_OBUF,
      enc_wr_reg => ENCODE_n_3,
      enc_wr_reg_0(0) => enc_wr,
      \nxt_char_cnt_reg[0]\(0) => ENCODE_n_2,
      \nxt_char_cnt_reg[2]\ => \nxt_char_cnt[4]_i_3_n_0\,
      \nxt_char_cnt_reg[3]\ => \nxt_char_cnt[4]_i_4_n_0\,
      \nxt_enc_data_reg[6]\(6) => \nxt_enc_data_reg_n_0_[6]\,
      \nxt_enc_data_reg[6]\(5) => \nxt_enc_data_reg_n_0_[5]\,
      \nxt_enc_data_reg[6]\(4) => \nxt_enc_data_reg_n_0_[4]\,
      \nxt_enc_data_reg[6]\(3) => \nxt_enc_data_reg_n_0_[3]\,
      \nxt_enc_data_reg[6]\(2) => \nxt_enc_data_reg_n_0_[2]\,
      \nxt_enc_data_reg[6]\(1) => \nxt_enc_data_reg_n_0_[1]\,
      \nxt_enc_data_reg[6]\(0) => \nxt_enc_data_reg_n_0_[0]\,
      nxt_sendstring => nxt_sendstring,
      \out\(0) => nxt_timestamp,
      sendstring => sendstring
    );
\FSM_onehot_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[12]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[7]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[11]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[5]\,
      O => \FSM_onehot_rx_state[0]_i_2_n_0\
    );
\FSM_onehot_rx_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[15]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[10]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      O => \FSM_onehot_rx_state[0]_i_3_n_0\
    );
\FSM_onehot_rx_state[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[14]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => \FSM_onehot_rx_state[0]_i_6_n_0\
    );
\FSM_onehot_rx_state[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[14]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => \FSM_onehot_rx_state[18]_i_2_n_0\
    );
\FSM_onehot_rx_state[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      O => \FSM_onehot_rx_state[18]_i_3_n_0\
    );
\FSM_onehot_rx_state[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => \FSM_onehot_rx_state[0]_i_2_n_0\,
      I1 => \FSM_onehot_rx_state[18]_i_6_n_0\,
      I2 => \FSM_onehot_rx_state[18]_i_5_n_0\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[15]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[10]\,
      O => \FSM_onehot_rx_state[18]_i_4_n_0\
    );
\FSM_onehot_rx_state[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nxt_timestamp,
      I1 => nxt_wr,
      O => \FSM_onehot_rx_state[18]_i_5_n_0\
    );
\FSM_onehot_rx_state[18]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I1 => nxt_rd,
      O => \FSM_onehot_rx_state[18]_i_6_n_0\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_57,
      Q => \FSM_onehot_rx_state_reg_n_0_[0]\,
      S => \^reset_o\
    );
\FSM_onehot_rx_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_47,
      Q => \FSM_onehot_rx_state_reg_n_0_[10]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_46,
      Q => \FSM_onehot_rx_state_reg_n_0_[11]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_45,
      Q => \FSM_onehot_rx_state_reg_n_0_[12]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_44,
      Q => nxt_wr,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => nxt_timestamp_enable,
      Q => \FSM_onehot_rx_state_reg_n_0_[14]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_42,
      Q => \FSM_onehot_rx_state_reg_n_0_[15]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_41,
      Q => \FSM_onehot_rx_state_reg_n_0_[16]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_40,
      Q => nxt_rd,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => nxt_rd,
      Q => nxt_timestamp,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_56,
      Q => \FSM_onehot_rx_state_reg_n_0_[1]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_55,
      Q => \FSM_onehot_rx_state_reg_n_0_[2]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_54,
      Q => \FSM_onehot_rx_state_reg_n_0_[3]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_53,
      Q => \FSM_onehot_rx_state_reg_n_0_[4]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_52,
      Q => \FSM_onehot_rx_state_reg_n_0_[5]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_51,
      Q => \FSM_onehot_rx_state_reg_n_0_[6]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_50,
      Q => \FSM_onehot_rx_state_reg_n_0_[7]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_49,
      Q => \FSM_onehot_rx_state_reg_n_0_[8]\,
      R => \^reset_o\
    );
\FSM_onehot_rx_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_48,
      Q => \FSM_onehot_rx_state_reg_n_0_[9]\,
      R => \^reset_o\
    );
LED_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1410FF7F90F0FFFF"
    )
        port map (
      I0 => \led_idx_reg__0\(3),
      I1 => \led_idx_reg__0\(5),
      I2 => \led_idx_reg__0\(1),
      I3 => \led_idx_reg__0\(2),
      I4 => \led_idx_reg__0\(0),
      I5 => \led_idx_reg__0\(4),
      O => LED_O_i_1_n_0
    );
LED_O_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => LED_O_i_1_n_0,
      Q => STATUSLED_O_OBUF,
      R => \^reset_o\
    );
MMCM48_INST: entity work.mmcm48
     port map (
      CLK100_I_IBUF => CLK100_I_IBUF,
      CLK48_O => CLK48_O,
      buf_reset_reg => MMCM48_INST_n_1
    );
\adr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_39,
      Q => \^q\(0),
      R => \^reset_o\
    );
\adr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_38,
      Q => \^q\(1),
      R => \^reset_o\
    );
\adr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_37,
      Q => \^q\(2),
      R => \^reset_o\
    );
\adr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_36,
      Q => \^q\(3),
      R => \^reset_o\
    );
\adr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_35,
      Q => \^q\(4),
      R => \^reset_o\
    );
\adr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_34,
      Q => \^q\(5),
      R => \^reset_o\
    );
\adr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_33,
      Q => \^q\(6),
      R => \^reset_o\
    );
\adr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_32,
      Q => ADDR_B_O(7),
      R => \^reset_o\
    );
buf_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MMCM48_INST_n_1,
      Q => buf_reset,
      R => '0'
    );
\clk_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt_reg(0),
      O => \clk_cnt[0]_i_2_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[0]_i_1_n_7\,
      Q => clk_cnt_reg(0),
      R => \^reset_o\
    );
\clk_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_cnt_reg[0]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[0]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[0]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_cnt_reg[0]_i_1_n_4\,
      O(2) => \clk_cnt_reg[0]_i_1_n_5\,
      O(1) => \clk_cnt_reg[0]_i_1_n_6\,
      O(0) => \clk_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => clk_cnt_reg(3 downto 1),
      S(0) => \clk_cnt[0]_i_2_n_0\
    );
\clk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_5\,
      Q => clk_cnt_reg(10),
      R => \^reset_o\
    );
\clk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_4\,
      Q => clk_cnt_reg(11),
      R => \^reset_o\
    );
\clk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_7\,
      Q => clk_cnt_reg(12),
      R => \^reset_o\
    );
\clk_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[8]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[12]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[12]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[12]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[12]_i_1_n_4\,
      O(2) => \clk_cnt_reg[12]_i_1_n_5\,
      O(1) => \clk_cnt_reg[12]_i_1_n_6\,
      O(0) => \clk_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(15 downto 12)
    );
\clk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_6\,
      Q => clk_cnt_reg(13),
      R => \^reset_o\
    );
\clk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_5\,
      Q => clk_cnt_reg(14),
      R => \^reset_o\
    );
\clk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[12]_i_1_n_4\,
      Q => clk_cnt_reg(15),
      R => \^reset_o\
    );
\clk_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_7\,
      Q => clk_cnt_reg(16),
      R => \^reset_o\
    );
\clk_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[12]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[16]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[16]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[16]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[16]_i_1_n_4\,
      O(2) => \clk_cnt_reg[16]_i_1_n_5\,
      O(1) => \clk_cnt_reg[16]_i_1_n_6\,
      O(0) => \clk_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(19 downto 16)
    );
\clk_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_6\,
      Q => clk_cnt_reg(17),
      R => \^reset_o\
    );
\clk_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_5\,
      Q => clk_cnt_reg(18),
      R => \^reset_o\
    );
\clk_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[16]_i_1_n_4\,
      Q => clk_cnt_reg(19),
      R => \^reset_o\
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[0]_i_1_n_6\,
      Q => clk_cnt_reg(1),
      R => \^reset_o\
    );
\clk_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_7\,
      Q => clk_cnt_reg(20),
      R => \^reset_o\
    );
\clk_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[16]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[20]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[20]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[20]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[20]_i_1_n_4\,
      O(2) => \clk_cnt_reg[20]_i_1_n_5\,
      O(1) => \clk_cnt_reg[20]_i_1_n_6\,
      O(0) => \clk_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(23 downto 20)
    );
\clk_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_6\,
      Q => clk_cnt_reg(21),
      R => \^reset_o\
    );
\clk_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_5\,
      Q => clk_cnt_reg(22),
      R => \^reset_o\
    );
\clk_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[20]_i_1_n_4\,
      Q => clk_cnt_reg(23),
      R => \^reset_o\
    );
\clk_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_7\,
      Q => clk_cnt_reg(24),
      R => \^reset_o\
    );
\clk_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[20]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[24]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[24]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[24]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[24]_i_1_n_4\,
      O(2) => \clk_cnt_reg[24]_i_1_n_5\,
      O(1) => \clk_cnt_reg[24]_i_1_n_6\,
      O(0) => \clk_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(27 downto 24)
    );
\clk_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_6\,
      Q => clk_cnt_reg(25),
      R => \^reset_o\
    );
\clk_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_5\,
      Q => clk_cnt_reg(26),
      R => \^reset_o\
    );
\clk_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[24]_i_1_n_4\,
      Q => clk_cnt_reg(27),
      R => \^reset_o\
    );
\clk_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_7\,
      Q => clk_cnt_reg(28),
      R => \^reset_o\
    );
\clk_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clk_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clk_cnt_reg[28]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[28]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[28]_i_1_n_4\,
      O(2) => \clk_cnt_reg[28]_i_1_n_5\,
      O(1) => \clk_cnt_reg[28]_i_1_n_6\,
      O(0) => \clk_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(31 downto 28)
    );
\clk_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_6\,
      Q => clk_cnt_reg(29),
      R => \^reset_o\
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[0]_i_1_n_5\,
      Q => clk_cnt_reg(2),
      R => \^reset_o\
    );
\clk_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_5\,
      Q => clk_cnt_reg(30),
      R => \^reset_o\
    );
\clk_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[28]_i_1_n_4\,
      Q => clk_cnt_reg(31),
      R => \^reset_o\
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[0]_i_1_n_4\,
      Q => clk_cnt_reg(3),
      R => \^reset_o\
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_7\,
      Q => clk_cnt_reg(4),
      R => \^reset_o\
    );
\clk_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[0]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[4]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[4]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[4]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[4]_i_1_n_4\,
      O(2) => \clk_cnt_reg[4]_i_1_n_5\,
      O(1) => \clk_cnt_reg[4]_i_1_n_6\,
      O(0) => \clk_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(7 downto 4)
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_6\,
      Q => clk_cnt_reg(5),
      R => \^reset_o\
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_5\,
      Q => clk_cnt_reg(6),
      R => \^reset_o\
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[4]_i_1_n_4\,
      Q => clk_cnt_reg(7),
      R => \^reset_o\
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_7\,
      Q => clk_cnt_reg(8),
      R => \^reset_o\
    );
\clk_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt_reg[4]_i_1_n_0\,
      CO(3) => \clk_cnt_reg[8]_i_1_n_0\,
      CO(2) => \clk_cnt_reg[8]_i_1_n_1\,
      CO(1) => \clk_cnt_reg[8]_i_1_n_2\,
      CO(0) => \clk_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt_reg[8]_i_1_n_4\,
      O(2) => \clk_cnt_reg[8]_i_1_n_5\,
      O(1) => \clk_cnt_reg[8]_i_1_n_6\,
      O(0) => \clk_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => clk_cnt_reg(11 downto 8)
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt_reg[8]_i_1_n_6\,
      Q => clk_cnt_reg(9),
      R => \^reset_o\
    );
\data32[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(0),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(0),
      O => \data32[0]_i_2_n_0\
    );
\data32[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(10),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(10),
      O => \data32[10]_i_2_n_0\
    );
\data32[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(11),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(11),
      O => \data32[11]_i_3_n_0\
    );
\data32[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(12),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(12),
      O => \data32[12]_i_2_n_0\
    );
\data32[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(13),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(13),
      O => \data32[13]_i_2_n_0\
    );
\data32[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(14),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(14),
      O => \data32[14]_i_2_n_0\
    );
\data32[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(15),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(15),
      O => \data32[15]_i_3_n_0\
    );
\data32[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(16),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(16),
      O => \data32[16]_i_2_n_0\
    );
\data32[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(17),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(17),
      O => \data32[17]_i_2_n_0\
    );
\data32[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(18),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(18),
      O => \data32[18]_i_2_n_0\
    );
\data32[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(19),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(19),
      O => \data32[19]_i_3_n_0\
    );
\data32[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(1),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(1),
      O => \data32[1]_i_2_n_0\
    );
\data32[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(20),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(20),
      O => \data32[20]_i_2_n_0\
    );
\data32[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(21),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(21),
      O => \data32[21]_i_2_n_0\
    );
\data32[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(22),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(22),
      O => \data32[22]_i_2_n_0\
    );
\data32[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(23),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(23),
      O => \data32[23]_i_3_n_0\
    );
\data32[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(24),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(24),
      O => \data32[24]_i_2_n_0\
    );
\data32[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(25),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(25),
      O => \data32[25]_i_2_n_0\
    );
\data32[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(26),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(26),
      O => \data32[26]_i_2_n_0\
    );
\data32[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(27),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(27),
      O => \data32[27]_i_3_n_0\
    );
\data32[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(28),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(28),
      O => \data32[28]_i_2_n_0\
    );
\data32[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(29),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(29),
      O => \data32[29]_i_2_n_0\
    );
\data32[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(2),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(2),
      O => \data32[2]_i_2_n_0\
    );
\data32[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(30),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(30),
      O => \data32[30]_i_2_n_0\
    );
\data32[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8A80"
    )
        port map (
      I0 => nxt_timestamp,
      I1 => DOADO(31),
      I2 => ADDR_B_O(7),
      I3 => UNISIM_RAM0_0(31),
      I4 => \data32[31]_i_4_n_0\,
      O => \data32[31]_i_3_n_0\
    );
\data32[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data32[31]_i_5_n_0\,
      I1 => \data32[31]_i_6_n_0\,
      I2 => nxt_wr,
      I3 => \FSM_onehot_rx_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I5 => nxt_rd,
      O => \data32[31]_i_4_n_0\
    );
\data32[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[14]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      O => \data32[31]_i_5_n_0\
    );
\data32[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[3]\,
      O => \data32[31]_i_6_n_0\
    );
\data32[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(3),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(3),
      O => \data32[3]_i_3_n_0\
    );
\data32[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(4),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(4),
      O => \data32[4]_i_2_n_0\
    );
\data32[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(5),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(5),
      O => \data32[5]_i_2_n_0\
    );
\data32[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(6),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(6),
      O => \data32[6]_i_2_n_0\
    );
\data32[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(7),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(7),
      O => \data32[7]_i_3_n_0\
    );
\data32[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(8),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(8),
      O => \data32[8]_i_2_n_0\
    );
\data32[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(9),
      I3 => ADDR_B_O(7),
      I4 => UNISIM_RAM0_0(9),
      O => \data32[9]_i_2_n_0\
    );
\data32_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_31,
      Q => \^unisim_ram0\(0),
      R => \^reset_o\
    );
\data32_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_21,
      Q => \^unisim_ram0\(10),
      R => \^reset_o\
    );
\data32_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_20,
      Q => \^unisim_ram0\(11),
      R => \^reset_o\
    );
\data32_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_19,
      Q => \^unisim_ram0\(12),
      R => \^reset_o\
    );
\data32_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_18,
      Q => \^unisim_ram0\(13),
      R => \^reset_o\
    );
\data32_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_17,
      Q => \^unisim_ram0\(14),
      R => \^reset_o\
    );
\data32_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_16,
      Q => \^unisim_ram0\(15),
      R => \^reset_o\
    );
\data32_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_15,
      Q => \^unisim_ram0\(16),
      R => \^reset_o\
    );
\data32_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_14,
      Q => \^unisim_ram0\(17),
      R => \^reset_o\
    );
\data32_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_13,
      Q => \^unisim_ram0\(18),
      R => \^reset_o\
    );
\data32_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_12,
      Q => \^unisim_ram0\(19),
      R => \^reset_o\
    );
\data32_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_30,
      Q => \^unisim_ram0\(1),
      R => \^reset_o\
    );
\data32_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_11,
      Q => \^unisim_ram0\(20),
      R => \^reset_o\
    );
\data32_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_10,
      Q => \^unisim_ram0\(21),
      R => \^reset_o\
    );
\data32_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_9,
      Q => \^unisim_ram0\(22),
      R => \^reset_o\
    );
\data32_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_8,
      Q => \^unisim_ram0\(23),
      R => \^reset_o\
    );
\data32_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_7,
      Q => \^unisim_ram0\(24),
      R => \^reset_o\
    );
\data32_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_6,
      Q => \^unisim_ram0\(25),
      R => \^reset_o\
    );
\data32_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_5,
      Q => \^unisim_ram0\(26),
      R => \^reset_o\
    );
\data32_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_4,
      Q => \^unisim_ram0\(27),
      R => \^reset_o\
    );
\data32_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_3,
      Q => \^unisim_ram0\(28),
      R => \^reset_o\
    );
\data32_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_2,
      Q => \^unisim_ram0\(29),
      R => \^reset_o\
    );
\data32_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_29,
      Q => \^unisim_ram0\(2),
      R => \^reset_o\
    );
\data32_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_1,
      Q => \^unisim_ram0\(30),
      R => \^reset_o\
    );
\data32_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_0,
      Q => \^unisim_ram0\(31),
      R => \^reset_o\
    );
\data32_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_28,
      Q => \^unisim_ram0\(3),
      R => \^reset_o\
    );
\data32_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_27,
      Q => \^unisim_ram0\(4),
      R => \^reset_o\
    );
\data32_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_26,
      Q => \^unisim_ram0\(5),
      R => \^reset_o\
    );
\data32_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_25,
      Q => \^unisim_ram0\(6),
      R => \^reset_o\
    );
\data32_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_24,
      Q => \^unisim_ram0\(7),
      R => \^reset_o\
    );
\data32_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_23,
      Q => \^unisim_ram0\(8),
      R => \^reset_o\
    );
\data32_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_22,
      Q => \^unisim_ram0\(9),
      R => \^reset_o\
    );
enc_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => ENCODE_n_3,
      Q => enc_wr,
      R => '0'
    );
\led_idx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \led_idx_reg__0\(0),
      O => p_0_in_0(0)
    );
\led_idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_idx_reg__0\(0),
      I1 => \led_idx_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\led_idx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \led_idx_reg__0\(2),
      I1 => \led_idx_reg__0\(1),
      I2 => \led_idx_reg__0\(0),
      O => \p_0_in__1\(2)
    );
\led_idx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \led_idx_reg__0\(3),
      I1 => \led_idx_reg__0\(0),
      I2 => \led_idx_reg__0\(1),
      I3 => \led_idx_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\led_idx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \led_idx_reg__0\(4),
      I1 => \led_idx_reg__0\(2),
      I2 => \led_idx_reg__0\(1),
      I3 => \led_idx_reg__0\(0),
      I4 => \led_idx_reg__0\(3),
      O => \p_0_in__1\(4)
    );
\led_idx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \led_idx[5]_i_3_n_0\,
      I1 => clk_cnt_reg(22),
      I2 => clk_cnt_reg(15),
      I3 => clk_cnt_reg(21),
      I4 => clk_cnt_reg(7),
      I5 => \led_idx[5]_i_4_n_0\,
      O => sel
    );
\led_idx[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \led_idx_reg__0\(5),
      I1 => \led_idx_reg__0\(3),
      I2 => \led_idx_reg__0\(0),
      I3 => \led_idx_reg__0\(1),
      I4 => \led_idx_reg__0\(2),
      I5 => \led_idx_reg__0\(4),
      O => \p_0_in__1\(5)
    );
\led_idx[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_cnt_reg(11),
      I1 => clk_cnt_reg(12),
      I2 => clk_cnt_reg(20),
      I3 => clk_cnt_reg(16),
      O => \led_idx[5]_i_3_n_0\
    );
\led_idx[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \led_idx[5]_i_5_n_0\,
      I1 => \led_idx[5]_i_6_n_0\,
      I2 => \led_idx[5]_i_7_n_0\,
      I3 => clk_cnt_reg(18),
      I4 => clk_cnt_reg(8),
      I5 => clk_cnt_reg(13),
      O => \led_idx[5]_i_4_n_0\
    );
\led_idx[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_cnt_reg(3),
      I1 => clk_cnt_reg(6),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(2),
      O => \led_idx[5]_i_5_n_0\
    );
\led_idx[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_cnt_reg(10),
      I1 => clk_cnt_reg(4),
      I2 => clk_cnt_reg(17),
      I3 => clk_cnt_reg(9),
      O => \led_idx[5]_i_6_n_0\
    );
\led_idx[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_cnt_reg(14),
      I1 => clk_cnt_reg(5),
      I2 => clk_cnt_reg(19),
      I3 => clk_cnt_reg(0),
      O => \led_idx[5]_i_7_n_0\
    );
\led_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in_0(0),
      Q => \led_idx_reg__0\(0),
      R => \^reset_o\
    );
\led_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \p_0_in__1\(1),
      Q => \led_idx_reg__0\(1),
      R => \^reset_o\
    );
\led_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \p_0_in__1\(2),
      Q => \led_idx_reg__0\(2),
      R => \^reset_o\
    );
\led_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \p_0_in__1\(3),
      Q => \led_idx_reg__0\(3),
      R => \^reset_o\
    );
\led_idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \p_0_in__1\(4),
      Q => \led_idx_reg__0\(4),
      R => \^reset_o\
    );
\led_idx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \p_0_in__1\(5),
      Q => \led_idx_reg__0\(5),
      R => \^reset_o\
    );
\nxt_char_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000555F55FF"
    )
        port map (
      I0 => char_cnt(4),
      I1 => timestamp_enable,
      I2 => char_cnt(2),
      I3 => char_cnt(3),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => nxt_char_cnt(0)
    );
\nxt_char_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00373700"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(4),
      I2 => char_cnt(3),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      O => nxt_char_cnt(1)
    );
\nxt_char_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"154017C0"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => char_cnt(2),
      I4 => char_cnt(3),
      O => nxt_char_cnt(2)
    );
\nxt_char_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0330330023003300"
    )
        port map (
      I0 => timestamp_enable,
      I1 => char_cnt(4),
      I2 => char_cnt(0),
      I3 => char_cnt(3),
      I4 => char_cnt(1),
      I5 => char_cnt(2),
      O => nxt_char_cnt(3)
    );
\nxt_char_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030FD0000000"
    )
        port map (
      I0 => timestamp_enable,
      I1 => char_cnt(2),
      I2 => char_cnt(3),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => char_cnt(4),
      O => nxt_char_cnt(4)
    );
\nxt_char_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(1),
      O => \nxt_char_cnt[4]_i_3_n_0\
    );
\nxt_char_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => char_cnt(3),
      I1 => char_cnt(0),
      O => \nxt_char_cnt[4]_i_4_n_0\
    );
\nxt_char_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(0),
      Q => char_cnt(0),
      R => \^reset_o\
    );
\nxt_char_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(1),
      Q => char_cnt(1),
      R => \^reset_o\
    );
\nxt_char_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(2),
      Q => char_cnt(2),
      R => \^reset_o\
    );
\nxt_char_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(3),
      Q => char_cnt(3),
      R => \^reset_o\
    );
\nxt_char_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(4),
      Q => char_cnt(4),
      R => \^reset_o\
    );
\nxt_enc_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFEEFE"
    )
        port map (
      I0 => char_cnt(4),
      I1 => \nxt_enc_data[0]_i_2_n_0\,
      I2 => \nxt_enc_data[0]_i_3_n_0\,
      I3 => \nxt_enc_data_reg[0]_i_4_n_0\,
      I4 => \nxt_enc_data[0]_i_5_n_0\,
      I5 => \nxt_enc_data[0]_i_6_n_0\,
      O => nxt_enc_data(0)
    );
\nxt_enc_data[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => \^unisim_ram0\(0),
      I1 => \nxt_enc_data[6]_i_17_n_0\,
      I2 => char_cnt(0),
      I3 => \^unisim_ram0\(4),
      I4 => \nxt_enc_data[6]_i_19_n_0\,
      O => \nxt_enc_data[0]_i_10_n_0\
    );
\nxt_enc_data[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000D2FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \nxt_enc_data[6]_i_25_n_0\,
      I2 => \^q\(0),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => char_cnt(2),
      O => \nxt_enc_data[0]_i_11_n_0\
    );
\nxt_enc_data[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088080808080"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \nxt_enc_data[3]_i_9_n_0\,
      I2 => \^unisim_ram0\(24),
      I3 => \^unisim_ram0\(25),
      I4 => \^unisim_ram0\(26),
      I5 => \^unisim_ram0\(27),
      O => \nxt_enc_data[0]_i_12_n_0\
    );
\nxt_enc_data[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001111111100000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^unisim_ram0\(29),
      I3 => \^unisim_ram0\(30),
      I4 => \^unisim_ram0\(31),
      I5 => \^unisim_ram0\(28),
      O => \nxt_enc_data[0]_i_13_n_0\
    );
\nxt_enc_data[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011144444"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => ADDR_B_O(7),
      I5 => char_cnt(1),
      O => \nxt_enc_data[0]_i_14_n_0\
    );
\nxt_enc_data[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F90909F9FFFFFFFF"
    )
        port map (
      I0 => \^unisim_ram0\(20),
      I1 => \nxt_enc_data[6]_i_21_n_0\,
      I2 => char_cnt(0),
      I3 => \^unisim_ram0\(16),
      I4 => \nxt_enc_data[6]_i_20_n_0\,
      I5 => \nxt_enc_data[0]_i_21_n_0\,
      O => \nxt_enc_data[0]_i_15_n_0\
    );
\nxt_enc_data[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      I2 => char_cnt(0),
      O => \nxt_enc_data[0]_i_16_n_0\
    );
\nxt_enc_data[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014551455140014"
    )
        port map (
      I0 => char_cnt(1),
      I1 => timestamp(16),
      I2 => \nxt_enc_data[6]_i_9_n_0\,
      I3 => char_cnt(0),
      I4 => \nxt_enc_data[6]_i_8_n_0\,
      I5 => timestamp(12),
      O => \nxt_enc_data[0]_i_17_n_0\
    );
\nxt_enc_data[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      O => \nxt_enc_data[0]_i_18_n_0\
    );
\nxt_enc_data[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F9FFF0F0FFF"
    )
        port map (
      I0 => timestamp(4),
      I1 => \nxt_enc_data[6]_i_6_n_0\,
      I2 => char_cnt(1),
      I3 => timestamp(8),
      I4 => \nxt_enc_data[6]_i_7_n_0\,
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_19_n_0\
    );
\nxt_enc_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028AA0000"
    )
        port map (
      I0 => char_cnt(3),
      I1 => timestamp(28),
      I2 => \nxt_enc_data[0]_i_7_n_0\,
      I3 => \nxt_enc_data[3]_i_9_n_0\,
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[0]_i_8_n_0\,
      O => \nxt_enc_data[0]_i_2_n_0\
    );
\nxt_enc_data[0]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^unisim_ram0\(15),
      I1 => \^unisim_ram0\(14),
      I2 => \^unisim_ram0\(13),
      O => \nxt_enc_data[0]_i_20_n_0\
    );
\nxt_enc_data[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(1),
      O => \nxt_enc_data[0]_i_21_n_0\
    );
\nxt_enc_data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(3),
      I1 => char_cnt(2),
      O => \nxt_enc_data[0]_i_3_n_0\
    );
\nxt_enc_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[0]_i_11_n_0\,
      I2 => \nxt_enc_data[0]_i_12_n_0\,
      I3 => \nxt_enc_data[0]_i_13_n_0\,
      I4 => \nxt_enc_data[0]_i_14_n_0\,
      I5 => \nxt_enc_data[0]_i_15_n_0\,
      O => \nxt_enc_data[0]_i_5_n_0\
    );
\nxt_enc_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90FF909090909090"
    )
        port map (
      I0 => timestamp(0),
      I1 => \nxt_enc_data[6]_i_3_n_0\,
      I2 => \nxt_enc_data[0]_i_16_n_0\,
      I3 => \nxt_enc_data[0]_i_17_n_0\,
      I4 => \nxt_enc_data[0]_i_18_n_0\,
      I5 => \nxt_enc_data[0]_i_19_n_0\,
      O => \nxt_enc_data[0]_i_6_n_0\
    );
\nxt_enc_data[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(31),
      I1 => timestamp(30),
      I2 => timestamp(29),
      O => \nxt_enc_data[0]_i_7_n_0\
    );
\nxt_enc_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090909000F0F000"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_15_n_0\,
      I1 => timestamp(20),
      I2 => char_cnt(1),
      I3 => timestamp(24),
      I4 => \nxt_enc_data[6]_i_14_n_0\,
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_8_n_0\
    );
\nxt_enc_data[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => \^unisim_ram0\(8),
      I1 => \nxt_enc_data[6]_i_18_n_0\,
      I2 => char_cnt(0),
      I3 => \^unisim_ram0\(12),
      I4 => \nxt_enc_data[0]_i_20_n_0\,
      O => \nxt_enc_data[0]_i_9_n_0\
    );
\nxt_enc_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF0E"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_2_n_0\,
      I1 => \nxt_enc_data[1]_i_3_n_0\,
      I2 => char_cnt(4),
      I3 => \nxt_enc_data[1]_i_4_n_0\,
      I4 => \nxt_enc_data[1]_i_5_n_0\,
      O => nxt_enc_data(1)
    );
\nxt_enc_data[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A6A200000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => ADDR_B_O(7),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_10_n_0\
    );
\nxt_enc_data[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFEEEEEEEFEEE"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_23_n_0\,
      I1 => \nxt_enc_data[1]_i_24_n_0\,
      I2 => timestamp(21),
      I3 => \nxt_enc_data[2]_i_16_n_0\,
      I4 => \nxt_enc_data[1]_i_25_n_0\,
      I5 => timestamp(22),
      O => \nxt_enc_data[1]_i_11_n_0\
    );
\nxt_enc_data[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5104555551005555"
    )
        port map (
      I0 => char_cnt(1),
      I1 => timestamp(31),
      I2 => timestamp(28),
      I3 => timestamp(29),
      I4 => char_cnt(0),
      I5 => timestamp(30),
      O => \nxt_enc_data[1]_i_12_n_0\
    );
\nxt_enc_data[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F3FF73F"
    )
        port map (
      I0 => \^unisim_ram0\(10),
      I1 => \nxt_enc_data[3]_i_9_n_0\,
      I2 => \^unisim_ram0\(9),
      I3 => \^unisim_ram0\(11),
      I4 => \^unisim_ram0\(8),
      I5 => \nxt_enc_data[1]_i_26_n_0\,
      O => \nxt_enc_data[1]_i_13_n_0\
    );
\nxt_enc_data[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFCFCFCFCFEFC"
    )
        port map (
      I0 => \^unisim_ram0\(6),
      I1 => \nxt_enc_data[1]_i_27_n_0\,
      I2 => \nxt_enc_data[1]_i_28_n_0\,
      I3 => \nxt_enc_data[3]_i_16_n_0\,
      I4 => \nxt_enc_data[1]_i_29_n_0\,
      I5 => \^unisim_ram0\(5),
      O => \nxt_enc_data[1]_i_14_n_0\
    );
\nxt_enc_data[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEAAAAAAAAAAAA"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^unisim_ram0\(1),
      I2 => \^unisim_ram0\(3),
      I3 => \^unisim_ram0\(0),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_15_n_0\
    );
\nxt_enc_data[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00440000004400F0"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_25_n_0\,
      I1 => timestamp(10),
      I2 => timestamp(18),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \nxt_enc_data[1]_i_30_n_0\,
      O => \nxt_enc_data[1]_i_16_n_0\
    );
\nxt_enc_data[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA2000000"
    )
        port map (
      I0 => timestamp(5),
      I1 => timestamp(7),
      I2 => timestamp(4),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[1]_i_31_n_0\,
      O => \nxt_enc_data[1]_i_17_n_0\
    );
\nxt_enc_data[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFDDFFFF"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => timestamp(12),
      I3 => timestamp(15),
      I4 => timestamp(13),
      I5 => \nxt_enc_data[1]_i_32_n_0\,
      O => \nxt_enc_data[1]_i_18_n_0\
    );
\nxt_enc_data[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440000F0000000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_15_n_0\,
      I1 => timestamp(6),
      I2 => timestamp(9),
      I3 => \nxt_enc_data[1]_i_33_n_0\,
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_19_n_0\
    );
\nxt_enc_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFE00FE"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_6_n_0\,
      I1 => \nxt_enc_data[1]_i_7_n_0\,
      I2 => \nxt_enc_data[1]_i_8_n_0\,
      I3 => \nxt_enc_data[1]_i_9_n_0\,
      I4 => \nxt_enc_data[1]_i_10_n_0\,
      I5 => char_cnt(3),
      O => \nxt_enc_data[1]_i_2_n_0\
    );
\nxt_enc_data[1]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(4),
      O => \nxt_enc_data[1]_i_20_n_0\
    );
\nxt_enc_data[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A6A200000000"
    )
        port map (
      I0 => \^unisim_ram0\(25),
      I1 => \^unisim_ram0\(27),
      I2 => \^unisim_ram0\(24),
      I3 => \^unisim_ram0\(26),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_21_n_0\
    );
\nxt_enc_data[1]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      O => \nxt_enc_data[1]_i_22_n_0\
    );
\nxt_enc_data[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D00000FFFFFFFF"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(24),
      I2 => timestamp(25),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_23_n_0\
    );
\nxt_enc_data[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(24),
      I2 => timestamp(25),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => timestamp(26),
      O => \nxt_enc_data[1]_i_24_n_0\
    );
\nxt_enc_data[1]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timestamp(23),
      I1 => timestamp(20),
      O => \nxt_enc_data[1]_i_25_n_0\
    );
\nxt_enc_data[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^unisim_ram0\(12),
      I1 => \^unisim_ram0\(15),
      I2 => \^unisim_ram0\(13),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \^unisim_ram0\(14),
      O => \nxt_enc_data[1]_i_26_n_0\
    );
\nxt_enc_data[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^unisim_ram0\(2),
      I3 => \^unisim_ram0\(0),
      I4 => \^unisim_ram0\(3),
      I5 => \^unisim_ram0\(1),
      O => \nxt_enc_data[1]_i_27_n_0\
    );
\nxt_enc_data[1]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^unisim_ram0\(12),
      I3 => \^unisim_ram0\(15),
      I4 => \^unisim_ram0\(13),
      O => \nxt_enc_data[1]_i_28_n_0\
    );
\nxt_enc_data[1]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^unisim_ram0\(4),
      I1 => \^unisim_ram0\(7),
      O => \nxt_enc_data[1]_i_29_n_0\
    );
\nxt_enc_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0E000E0"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_11_n_0\,
      I1 => \nxt_enc_data[1]_i_12_n_0\,
      I2 => char_cnt(3),
      I3 => \nxt_enc_data[1]_i_13_n_0\,
      I4 => \nxt_enc_data[1]_i_14_n_0\,
      I5 => \nxt_enc_data[1]_i_15_n_0\,
      O => \nxt_enc_data[1]_i_3_n_0\
    );
\nxt_enc_data[1]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => timestamp(17),
      I1 => timestamp(16),
      I2 => timestamp(19),
      O => \nxt_enc_data[1]_i_30_n_0\
    );
\nxt_enc_data[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => timestamp(15),
      I1 => timestamp(12),
      I2 => timestamp(13),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => timestamp(14),
      O => \nxt_enc_data[1]_i_31_n_0\
    );
\nxt_enc_data[1]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001010"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(17),
      I3 => timestamp(16),
      I4 => timestamp(19),
      O => \nxt_enc_data[1]_i_32_n_0\
    );
\nxt_enc_data[1]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => timestamp(8),
      I1 => timestamp(11),
      O => \nxt_enc_data[1]_i_33_n_0\
    );
\nxt_enc_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444404444"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(4),
      I2 => \nxt_enc_data[1]_i_16_n_0\,
      I3 => \nxt_enc_data[1]_i_17_n_0\,
      I4 => \nxt_enc_data[1]_i_18_n_0\,
      I5 => \nxt_enc_data[1]_i_19_n_0\,
      O => \nxt_enc_data[1]_i_4_n_0\
    );
\nxt_enc_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C000C00000800"
    )
        port map (
      I0 => timestamp(2),
      I1 => \nxt_enc_data[1]_i_20_n_0\,
      I2 => char_cnt(0),
      I3 => timestamp(3),
      I4 => timestamp(0),
      I5 => timestamp(1),
      O => \nxt_enc_data[1]_i_5_n_0\
    );
\nxt_enc_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A8A0000FFFFFFFF"
    )
        port map (
      I0 => \^unisim_ram0\(21),
      I1 => \^unisim_ram0\(20),
      I2 => \^unisim_ram0\(23),
      I3 => \^unisim_ram0\(22),
      I4 => \nxt_enc_data[3]_i_16_n_0\,
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_6_n_0\
    );
\nxt_enc_data[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111001100001000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^unisim_ram0\(30),
      I3 => \^unisim_ram0\(31),
      I4 => \^unisim_ram0\(28),
      I5 => \^unisim_ram0\(29),
      O => \nxt_enc_data[1]_i_7_n_0\
    );
\nxt_enc_data[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8A208A00"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_16_n_0\,
      I1 => \^unisim_ram0\(16),
      I2 => \^unisim_ram0\(19),
      I3 => \^unisim_ram0\(17),
      I4 => \^unisim_ram0\(18),
      I5 => \nxt_enc_data[1]_i_21_n_0\,
      O => \nxt_enc_data[1]_i_8_n_0\
    );
\nxt_enc_data[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555F57F"
    )
        port map (
      I0 => char_cnt(1),
      I1 => \^q\(2),
      I2 => \nxt_enc_data[1]_i_22_n_0\,
      I3 => \^q\(1),
      I4 => char_cnt(0),
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_9_n_0\
    );
\nxt_enc_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF88B8"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_2_n_0\,
      I1 => char_cnt(3),
      I2 => \nxt_enc_data[2]_i_3_n_0\,
      I3 => \nxt_enc_data[2]_i_4_n_0\,
      I4 => char_cnt(4),
      I5 => \nxt_enc_data[2]_i_5_n_0\,
      O => nxt_enc_data(2)
    );
\nxt_enc_data[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \^unisim_ram0\(11),
      I1 => \^unisim_ram0\(8),
      I2 => \^unisim_ram0\(9),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^unisim_ram0\(10),
      O => \nxt_enc_data[2]_i_10_n_0\
    );
\nxt_enc_data[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAEAEAEAEA"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^q\(2),
      I2 => \nxt_enc_data[3]_i_16_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \nxt_enc_data[2]_i_11_n_0\
    );
\nxt_enc_data[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FD00000000"
    )
        port map (
      I0 => \^unisim_ram0\(31),
      I1 => \^unisim_ram0\(28),
      I2 => \^unisim_ram0\(29),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \^unisim_ram0\(30),
      O => \nxt_enc_data[2]_i_12_n_0\
    );
\nxt_enc_data[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000088880000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_23_n_0\,
      I1 => \^unisim_ram0\(26),
      I2 => \nxt_enc_data[2]_i_24_n_0\,
      I3 => \^unisim_ram0\(18),
      I4 => char_cnt(0),
      I5 => char_cnt(1),
      O => \nxt_enc_data[2]_i_13_n_0\
    );
\nxt_enc_data[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^unisim_ram0\(21),
      I1 => \^unisim_ram0\(20),
      I2 => \^unisim_ram0\(23),
      O => \nxt_enc_data[2]_i_14_n_0\
    );
\nxt_enc_data[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(5),
      I1 => timestamp(7),
      I2 => timestamp(4),
      O => \nxt_enc_data[2]_i_15_n_0\
    );
\nxt_enc_data[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      O => \nxt_enc_data[2]_i_16_n_0\
    );
\nxt_enc_data[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0880000008800"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_25_n_0\,
      I1 => timestamp(10),
      I2 => timestamp(14),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[2]_i_26_n_0\,
      O => \nxt_enc_data[2]_i_17_n_0\
    );
\nxt_enc_data[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AAA2A2A2A2A"
    )
        port map (
      I0 => \nxt_enc_data[0]_i_18_n_0\,
      I1 => timestamp(18),
      I2 => \nxt_enc_data[2]_i_27_n_0\,
      I3 => timestamp(17),
      I4 => timestamp(16),
      I5 => timestamp(19),
      O => \nxt_enc_data[2]_i_18_n_0\
    );
\nxt_enc_data[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040044444444"
    )
        port map (
      I0 => char_cnt(0),
      I1 => \nxt_enc_data[1]_i_20_n_0\,
      I2 => timestamp(0),
      I3 => timestamp(3),
      I4 => timestamp(1),
      I5 => timestamp(2),
      O => \nxt_enc_data[2]_i_19_n_0\
    );
\nxt_enc_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFE0"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_6_n_0\,
      I1 => \nxt_enc_data[2]_i_7_n_0\,
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[2]_i_8_n_0\,
      I4 => \nxt_enc_data[2]_i_9_n_0\,
      I5 => \nxt_enc_data[2]_i_10_n_0\,
      O => \nxt_enc_data[2]_i_2_n_0\
    );
\nxt_enc_data[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(24),
      I2 => timestamp(25),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => timestamp(26),
      O => \nxt_enc_data[2]_i_20_n_0\
    );
\nxt_enc_data[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^unisim_ram0\(13),
      I1 => \^unisim_ram0\(15),
      I2 => \^unisim_ram0\(12),
      O => \nxt_enc_data[2]_i_21_n_0\
    );
\nxt_enc_data[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^unisim_ram0\(5),
      I1 => \^unisim_ram0\(7),
      I2 => \^unisim_ram0\(4),
      O => \nxt_enc_data[2]_i_22_n_0\
    );
\nxt_enc_data[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^unisim_ram0\(25),
      I1 => \^unisim_ram0\(27),
      I2 => \^unisim_ram0\(24),
      O => \nxt_enc_data[2]_i_23_n_0\
    );
\nxt_enc_data[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^unisim_ram0\(17),
      I1 => \^unisim_ram0\(19),
      I2 => \^unisim_ram0\(16),
      O => \nxt_enc_data[2]_i_24_n_0\
    );
\nxt_enc_data[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(9),
      I1 => timestamp(11),
      I2 => timestamp(8),
      O => \nxt_enc_data[2]_i_25_n_0\
    );
\nxt_enc_data[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => timestamp(13),
      I1 => timestamp(12),
      I2 => timestamp(15),
      O => \nxt_enc_data[2]_i_26_n_0\
    );
\nxt_enc_data[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      O => \nxt_enc_data[2]_i_27_n_0\
    );
\nxt_enc_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFB000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => ADDR_B_O(7),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \nxt_enc_data[3]_i_9_n_0\,
      I5 => \nxt_enc_data[2]_i_11_n_0\,
      O => \nxt_enc_data[2]_i_3_n_0\
    );
\nxt_enc_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404040404"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_12_n_0\,
      I1 => char_cnt(2),
      I2 => \nxt_enc_data[2]_i_13_n_0\,
      I3 => \nxt_enc_data[2]_i_14_n_0\,
      I4 => \nxt_enc_data[3]_i_16_n_0\,
      I5 => \^unisim_ram0\(22),
      O => \nxt_enc_data[2]_i_4_n_0\
    );
\nxt_enc_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF007F0000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_15_n_0\,
      I1 => timestamp(6),
      I2 => \nxt_enc_data[2]_i_16_n_0\,
      I3 => \nxt_enc_data[2]_i_17_n_0\,
      I4 => \nxt_enc_data[2]_i_18_n_0\,
      I5 => \nxt_enc_data[2]_i_19_n_0\,
      O => \nxt_enc_data[2]_i_5_n_0\
    );
\nxt_enc_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAEAEAEAEA"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_20_n_0\,
      I1 => timestamp(30),
      I2 => \nxt_enc_data[3]_i_9_n_0\,
      I3 => timestamp(28),
      I4 => timestamp(29),
      I5 => timestamp(31),
      O => \nxt_enc_data[2]_i_6_n_0\
    );
\nxt_enc_data[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => timestamp(23),
      I1 => timestamp(20),
      I2 => timestamp(21),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => timestamp(22),
      O => \nxt_enc_data[2]_i_7_n_0\
    );
\nxt_enc_data[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080008080"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^unisim_ram0\(2),
      I3 => \^unisim_ram0\(0),
      I4 => \^unisim_ram0\(3),
      I5 => \^unisim_ram0\(1),
      O => \nxt_enc_data[2]_i_8_n_0\
    );
\nxt_enc_data[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F00000002222"
    )
        port map (
      I0 => \^unisim_ram0\(14),
      I1 => \nxt_enc_data[2]_i_21_n_0\,
      I2 => \nxt_enc_data[2]_i_22_n_0\,
      I3 => \^unisim_ram0\(6),
      I4 => char_cnt(0),
      I5 => char_cnt(1),
      O => \nxt_enc_data[2]_i_9_n_0\
    );
\nxt_enc_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF88B8"
    )
        port map (
      I0 => \nxt_enc_data_reg[3]_i_2_n_0\,
      I1 => char_cnt(3),
      I2 => \nxt_enc_data[3]_i_3_n_0\,
      I3 => \nxt_enc_data[3]_i_4_n_0\,
      I4 => char_cnt(4),
      I5 => \nxt_enc_data[3]_i_5_n_0\,
      O => nxt_enc_data(3)
    );
\nxt_enc_data[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000200"
    )
        port map (
      I0 => \^unisim_ram0\(23),
      I1 => \^unisim_ram0\(22),
      I2 => \^unisim_ram0\(21),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[3]_i_23_n_0\,
      O => \nxt_enc_data[3]_i_10_n_0\
    );
\nxt_enc_data[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECECECFCEC"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(2),
      I2 => char_cnt(1),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \nxt_enc_data[3]_i_11_n_0\
    );
\nxt_enc_data[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400040404040"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(2),
      I2 => char_cnt(4),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[3]_i_12_n_0\
    );
\nxt_enc_data[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => timestamp(19),
      I1 => timestamp(18),
      I2 => timestamp(17),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[3]_i_24_n_0\,
      O => \nxt_enc_data[3]_i_13_n_0\
    );
\nxt_enc_data[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0200FFFFFFFF"
    )
        port map (
      I0 => timestamp(7),
      I1 => timestamp(6),
      I2 => timestamp(5),
      I3 => \nxt_enc_data[2]_i_16_n_0\,
      I4 => char_cnt(2),
      I5 => char_cnt(4),
      O => \nxt_enc_data[3]_i_14_n_0\
    );
\nxt_enc_data[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timestamp(9),
      I1 => timestamp(10),
      O => \nxt_enc_data[3]_i_15_n_0\
    );
\nxt_enc_data[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      O => \nxt_enc_data[3]_i_16_n_0\
    );
\nxt_enc_data[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^unisim_ram0\(1),
      I1 => \^unisim_ram0\(2),
      O => \nxt_enc_data[3]_i_17_n_0\
    );
\nxt_enc_data[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^unisim_ram0\(7),
      I3 => \^unisim_ram0\(5),
      I4 => \^unisim_ram0\(6),
      O => \nxt_enc_data[3]_i_18_n_0\
    );
\nxt_enc_data[3]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^unisim_ram0\(14),
      I1 => \^unisim_ram0\(13),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^unisim_ram0\(15),
      O => \nxt_enc_data[3]_i_19_n_0\
    );
\nxt_enc_data[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^unisim_ram0\(11),
      I3 => \^unisim_ram0\(9),
      I4 => \^unisim_ram0\(10),
      O => \nxt_enc_data[3]_i_20_n_0\
    );
\nxt_enc_data[3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => timestamp(25),
      I1 => timestamp(26),
      I2 => timestamp(27),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      O => \nxt_enc_data[3]_i_21_n_0\
    );
\nxt_enc_data[3]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEECE"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => timestamp(31),
      I3 => timestamp(29),
      I4 => timestamp(30),
      O => \nxt_enc_data[3]_i_22_n_0\
    );
\nxt_enc_data[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080FFFFFFFF"
    )
        port map (
      I0 => \^unisim_ram0\(19),
      I1 => char_cnt(0),
      I2 => char_cnt(1),
      I3 => \^unisim_ram0\(17),
      I4 => \^unisim_ram0\(18),
      I5 => char_cnt(2),
      O => \nxt_enc_data[3]_i_23_n_0\
    );
\nxt_enc_data[3]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(13),
      I3 => timestamp(14),
      I4 => timestamp(15),
      O => \nxt_enc_data[3]_i_24_n_0\
    );
\nxt_enc_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_8_n_0\,
      I1 => \^unisim_ram0\(26),
      I2 => \^unisim_ram0\(25),
      I3 => \nxt_enc_data[3]_i_9_n_0\,
      I4 => \^unisim_ram0\(27),
      I5 => \nxt_enc_data[3]_i_10_n_0\,
      O => \nxt_enc_data[3]_i_3_n_0\
    );
\nxt_enc_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFDF"
    )
        port map (
      I0 => ADDR_B_O(7),
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \nxt_enc_data[3]_i_11_n_0\,
      O => \nxt_enc_data[3]_i_4_n_0\
    );
\nxt_enc_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABABABABAB"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_12_n_0\,
      I1 => \nxt_enc_data[3]_i_13_n_0\,
      I2 => \nxt_enc_data[3]_i_14_n_0\,
      I3 => \nxt_enc_data[3]_i_15_n_0\,
      I4 => timestamp(11),
      I5 => \nxt_enc_data[3]_i_16_n_0\,
      O => \nxt_enc_data[3]_i_5_n_0\
    );
\nxt_enc_data[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF08"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_16_n_0\,
      I1 => \^unisim_ram0\(3),
      I2 => \nxt_enc_data[3]_i_17_n_0\,
      I3 => \nxt_enc_data[3]_i_18_n_0\,
      I4 => \nxt_enc_data[3]_i_19_n_0\,
      I5 => \nxt_enc_data[3]_i_20_n_0\,
      O => \nxt_enc_data[3]_i_6_n_0\
    );
\nxt_enc_data[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFFFFFFFFFF"
    )
        port map (
      I0 => timestamp(23),
      I1 => \nxt_enc_data[2]_i_16_n_0\,
      I2 => timestamp(21),
      I3 => timestamp(22),
      I4 => \nxt_enc_data[3]_i_21_n_0\,
      I5 => \nxt_enc_data[3]_i_22_n_0\,
      O => \nxt_enc_data[3]_i_7_n_0\
    );
\nxt_enc_data[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^unisim_ram0\(30),
      I1 => \^unisim_ram0\(29),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^unisim_ram0\(31),
      O => \nxt_enc_data[3]_i_8_n_0\
    );
\nxt_enc_data[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      O => \nxt_enc_data[3]_i_9_n_0\
    );
\nxt_enc_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005030300F5F3F3F"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_3_n_0\,
      I1 => \nxt_enc_data[6]_i_4_n_0\,
      I2 => char_cnt(4),
      I3 => char_cnt(0),
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[4]_i_2_n_0\,
      O => nxt_enc_data(4)
    );
\nxt_enc_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0EFEFE0EF"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_10_n_0\,
      I1 => \nxt_enc_data[6]_i_11_n_0\,
      I2 => char_cnt(3),
      I3 => char_cnt(2),
      I4 => \nxt_enc_data[6]_i_12_n_0\,
      I5 => \nxt_enc_data[4]_i_3_n_0\,
      O => \nxt_enc_data[4]_i_2_n_0\
    );
\nxt_enc_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00088888"
    )
        port map (
      I0 => \nxt_enc_data[4]_i_4_n_0\,
      I1 => char_cnt(0),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => ADDR_B_O(7),
      I5 => char_cnt(1),
      O => \nxt_enc_data[4]_i_3_n_0\
    );
\nxt_enc_data[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45454555"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \nxt_enc_data[4]_i_4_n_0\
    );
\nxt_enc_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005030300F5F3F3F"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_3_n_0\,
      I1 => \nxt_enc_data[6]_i_4_n_0\,
      I2 => char_cnt(4),
      I3 => char_cnt(0),
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[6]_i_5_n_0\,
      O => nxt_enc_data(5)
    );
\nxt_enc_data[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA020200A002020"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \nxt_enc_data[6]_i_14_n_0\,
      I2 => char_cnt(1),
      I3 => \nxt_enc_data[0]_i_7_n_0\,
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[6]_i_15_n_0\,
      O => \nxt_enc_data[6]_i_10_n_0\
    );
\nxt_enc_data[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A0AA"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_16_n_0\,
      I1 => \nxt_enc_data[6]_i_17_n_0\,
      I2 => \nxt_enc_data[6]_i_18_n_0\,
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \nxt_enc_data[6]_i_19_n_0\,
      O => \nxt_enc_data[6]_i_11_n_0\
    );
\nxt_enc_data[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_20_n_0\,
      I1 => \nxt_enc_data[6]_i_21_n_0\,
      I2 => char_cnt(1),
      I3 => \nxt_enc_data[6]_i_22_n_0\,
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[6]_i_23_n_0\,
      O => \nxt_enc_data[6]_i_12_n_0\
    );
\nxt_enc_data[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333303313131313"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_24_n_0\,
      I1 => char_cnt(2),
      I2 => char_cnt(0),
      I3 => \^q\(3),
      I4 => \nxt_enc_data[6]_i_25_n_0\,
      I5 => char_cnt(1),
      O => \nxt_enc_data[6]_i_13_n_0\
    );
\nxt_enc_data[6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(26),
      I1 => timestamp(25),
      I2 => timestamp(27),
      O => \nxt_enc_data[6]_i_14_n_0\
    );
\nxt_enc_data[6]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(23),
      I1 => timestamp(22),
      I2 => timestamp(21),
      O => \nxt_enc_data[6]_i_15_n_0\
    );
\nxt_enc_data[6]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555554440"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^unisim_ram0\(15),
      I2 => \^unisim_ram0\(14),
      I3 => \^unisim_ram0\(13),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[6]_i_16_n_0\
    );
\nxt_enc_data[6]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^unisim_ram0\(2),
      I1 => \^unisim_ram0\(1),
      I2 => \^unisim_ram0\(3),
      O => \nxt_enc_data[6]_i_17_n_0\
    );
\nxt_enc_data[6]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^unisim_ram0\(10),
      I1 => \^unisim_ram0\(9),
      I2 => \^unisim_ram0\(11),
      O => \nxt_enc_data[6]_i_18_n_0\
    );
\nxt_enc_data[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^unisim_ram0\(6),
      I1 => \^unisim_ram0\(5),
      I2 => \^unisim_ram0\(7),
      O => \nxt_enc_data[6]_i_19_n_0\
    );
\nxt_enc_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0FBF8F3000B080"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_3_n_0\,
      I1 => char_cnt(2),
      I2 => char_cnt(4),
      I3 => \nxt_enc_data[6]_i_4_n_0\,
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[6]_i_5_n_0\,
      O => nxt_enc_data(6)
    );
\nxt_enc_data[6]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^unisim_ram0\(19),
      I1 => \^unisim_ram0\(18),
      I2 => \^unisim_ram0\(17),
      O => \nxt_enc_data[6]_i_20_n_0\
    );
\nxt_enc_data[6]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^unisim_ram0\(23),
      I1 => \^unisim_ram0\(22),
      I2 => \^unisim_ram0\(21),
      O => \nxt_enc_data[6]_i_21_n_0\
    );
\nxt_enc_data[6]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^unisim_ram0\(27),
      I1 => \^unisim_ram0\(26),
      I2 => \^unisim_ram0\(25),
      O => \nxt_enc_data[6]_i_22_n_0\
    );
\nxt_enc_data[6]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^unisim_ram0\(31),
      I1 => \^unisim_ram0\(30),
      I2 => \^unisim_ram0\(29),
      O => \nxt_enc_data[6]_i_23_n_0\
    );
\nxt_enc_data[6]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => ADDR_B_O(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      O => \nxt_enc_data[6]_i_24_n_0\
    );
\nxt_enc_data[6]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \nxt_enc_data[6]_i_25_n_0\
    );
\nxt_enc_data[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(3),
      I1 => timestamp(2),
      I2 => timestamp(1),
      O => \nxt_enc_data[6]_i_3_n_0\
    );
\nxt_enc_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_6_n_0\,
      I1 => \nxt_enc_data[6]_i_7_n_0\,
      I2 => char_cnt(1),
      I3 => \nxt_enc_data[6]_i_8_n_0\,
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[6]_i_9_n_0\,
      O => \nxt_enc_data[6]_i_4_n_0\
    );
\nxt_enc_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0EFEFE0EF"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_10_n_0\,
      I1 => \nxt_enc_data[6]_i_11_n_0\,
      I2 => char_cnt(3),
      I3 => char_cnt(2),
      I4 => \nxt_enc_data[6]_i_12_n_0\,
      I5 => \nxt_enc_data[6]_i_13_n_0\,
      O => \nxt_enc_data[6]_i_5_n_0\
    );
\nxt_enc_data[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(7),
      I1 => timestamp(6),
      I2 => timestamp(5),
      O => \nxt_enc_data[6]_i_6_n_0\
    );
\nxt_enc_data[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(11),
      I1 => timestamp(10),
      I2 => timestamp(9),
      O => \nxt_enc_data[6]_i_7_n_0\
    );
\nxt_enc_data[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(15),
      I1 => timestamp(14),
      I2 => timestamp(13),
      O => \nxt_enc_data[6]_i_8_n_0\
    );
\nxt_enc_data[6]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(19),
      I1 => timestamp(18),
      I2 => timestamp(17),
      O => \nxt_enc_data[6]_i_9_n_0\
    );
\nxt_enc_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(0),
      Q => \nxt_enc_data_reg_n_0_[0]\,
      R => '0'
    );
\nxt_enc_data_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nxt_enc_data[0]_i_9_n_0\,
      I1 => \nxt_enc_data[0]_i_10_n_0\,
      O => \nxt_enc_data_reg[0]_i_4_n_0\,
      S => char_cnt(1)
    );
\nxt_enc_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(1),
      Q => \nxt_enc_data_reg_n_0_[1]\,
      R => '0'
    );
\nxt_enc_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(2),
      Q => \nxt_enc_data_reg_n_0_[2]\,
      R => '0'
    );
\nxt_enc_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(3),
      Q => \nxt_enc_data_reg_n_0_[3]\,
      R => '0'
    );
\nxt_enc_data_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nxt_enc_data[3]_i_6_n_0\,
      I1 => \nxt_enc_data[3]_i_7_n_0\,
      O => \nxt_enc_data_reg[3]_i_2_n_0\,
      S => char_cnt(2)
    );
\nxt_enc_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(4),
      Q => \nxt_enc_data_reg_n_0_[4]\,
      R => '0'
    );
\nxt_enc_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(5),
      Q => \nxt_enc_data_reg_n_0_[5]\,
      R => '0'
    );
\nxt_enc_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(6),
      Q => \nxt_enc_data_reg_n_0_[6]\,
      R => '0'
    );
sendstring_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => nxt_sendstring,
      Q => sendstring,
      R => \^reset_o\
    );
sys_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => buf_reset,
      Q => \^reset_o\,
      R => '0'
    );
timestamp_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => DECODE_n_69,
      Q => timestamp_enable,
      R => \^reset_o\
    );
\timestamp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(0),
      Q => timestamp(0),
      R => \^reset_o\
    );
\timestamp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(10),
      Q => timestamp(10),
      R => \^reset_o\
    );
\timestamp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(11),
      Q => timestamp(11),
      R => \^reset_o\
    );
\timestamp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(12),
      Q => timestamp(12),
      R => \^reset_o\
    );
\timestamp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(13),
      Q => timestamp(13),
      R => \^reset_o\
    );
\timestamp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(14),
      Q => timestamp(14),
      R => \^reset_o\
    );
\timestamp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(15),
      Q => timestamp(15),
      R => \^reset_o\
    );
\timestamp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(16),
      Q => timestamp(16),
      R => \^reset_o\
    );
\timestamp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(17),
      Q => timestamp(17),
      R => \^reset_o\
    );
\timestamp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(18),
      Q => timestamp(18),
      R => \^reset_o\
    );
\timestamp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(19),
      Q => timestamp(19),
      R => \^reset_o\
    );
\timestamp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(1),
      Q => timestamp(1),
      R => \^reset_o\
    );
\timestamp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(20),
      Q => timestamp(20),
      R => \^reset_o\
    );
\timestamp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(21),
      Q => timestamp(21),
      R => \^reset_o\
    );
\timestamp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(22),
      Q => timestamp(22),
      R => \^reset_o\
    );
\timestamp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(23),
      Q => timestamp(23),
      R => \^reset_o\
    );
\timestamp_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(24),
      Q => timestamp(24),
      R => \^reset_o\
    );
\timestamp_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(25),
      Q => timestamp(25),
      R => \^reset_o\
    );
\timestamp_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(26),
      Q => timestamp(26),
      R => \^reset_o\
    );
\timestamp_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(27),
      Q => timestamp(27),
      R => \^reset_o\
    );
\timestamp_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(28),
      Q => timestamp(28),
      R => \^reset_o\
    );
\timestamp_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(29),
      Q => timestamp(29),
      R => \^reset_o\
    );
\timestamp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(2),
      Q => timestamp(2),
      R => \^reset_o\
    );
\timestamp_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(30),
      Q => timestamp(30),
      R => \^reset_o\
    );
\timestamp_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(31),
      Q => timestamp(31),
      R => \^reset_o\
    );
\timestamp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(3),
      Q => timestamp(3),
      R => \^reset_o\
    );
\timestamp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(4),
      Q => timestamp(4),
      R => \^reset_o\
    );
\timestamp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(5),
      Q => timestamp(5),
      R => \^reset_o\
    );
\timestamp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(6),
      Q => timestamp(6),
      R => \^reset_o\
    );
\timestamp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(7),
      Q => timestamp(7),
      R => \^reset_o\
    );
\timestamp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(8),
      Q => timestamp(8),
      R => \^reset_o\
    );
\timestamp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(9),
      Q => timestamp(9),
      R => \^reset_o\
    );
wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => nxt_wr,
      Q => WEA(0),
      R => \^reset_o\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity receiver_top is
  port (
    CLK100_I : in STD_LOGIC;
    LEDS_O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    STATUSLED_O : out STD_LOGIC;
    TX_O : out STD_LOGIC;
    RX_I : in STD_LOGIC;
    SPI_MOSI_O : out STD_LOGIC;
    SPI_SCLK_O : out STD_LOGIC;
    SPI_MOSI_I : in STD_LOGIC;
    SPI_SCLK_I : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of receiver_top : entity is true;
end receiver_top;

architecture STRUCTURE of receiver_top is
  signal ADDR_B_O : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal CLK100_I_IBUF : STD_LOGIC;
  signal CLK48_O : STD_LOGIC;
  signal CLK48_O_BUFG : STD_LOGIC;
  signal DATA_BB_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_B_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RESET_O : STD_LOGIC;
  signal RX_I_IBUF : STD_LOGIC;
  signal SPI_MOSI_I_IBUF : STD_LOGIC;
  signal SPI_MOSI_O_OBUF : STD_LOGIC;
  signal SPI_SCLK_I_IBUF : STD_LOGIC;
  signal SPI_SCLK_I_IBUF_BUFG : STD_LOGIC;
  signal SPI_SCLK_O_OBUF : STD_LOGIC;
  signal STATUSLED_O_OBUF : STD_LOGIC;
  signal TX_O_OBUF : STD_LOGIC;
  signal WR_O : STD_LOGIC;
  signal portA_0_do : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal portA_1_do : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wr_B : STD_LOGIC;
begin
CLK100_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100_I,
      O => CLK100_I_IBUF
    );
CLK48_O_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK48_O,
      O => CLK48_O_BUFG
    );
\LEDS_O_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(0)
    );
\LEDS_O_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(1)
    );
\LEDS_O_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(2)
    );
\LEDS_O_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(3)
    );
\LEDS_O_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(4)
    );
\LEDS_O_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(5)
    );
\LEDS_O_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(6)
    );
\LEDS_O_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LEDS_O(7)
    );
QLINK1: entity work.QLinkMaster
     port map (
      CLK => CLK48_O_BUFG,
      CLK100_I_IBUF => CLK100_I_IBUF,
      CLK48_O => CLK48_O,
      D(0) => RX_I_IBUF,
      DOADO(31 downto 0) => portA_1_do(31 downto 0),
      Q(6 downto 0) => ADDR_B_O(6 downto 0),
      RESET_O => RESET_O,
      STATUSLED_O_OBUF => STATUSLED_O_OBUF,
      TX_O_OBUF => TX_O_OBUF,
      UNISIM_RAM0(31 downto 0) => DATA_B_O(31 downto 0),
      UNISIM_RAM0_0(31 downto 0) => portA_0_do(31 downto 0),
      WEA(0) => WR_O
    );
RAM0: entity work.block_RAM_module
     port map (
      CLK => CLK48_O_BUFG,
      D(31 downto 0) => DATA_BB_O(31 downto 0),
      DIBDI(31 downto 0) => DATA_O(31 downto 0),
      DOADO(31 downto 0) => portA_1_do(31 downto 0),
      Q(6 downto 0) => ADDR_B_O(6 downto 0),
      WEA(0) => WR_O,
      WEBWE(0) => wr_B,
      \data32_reg[31]\(31 downto 0) => portA_0_do(31 downto 0),
      \data32_reg[31]_0\(31 downto 0) => DATA_B_O(31 downto 0)
    );
RX_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RX_I,
      O => RX_I_IBUF
    );
SPI_MOSI_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SPI_MOSI_I,
      O => SPI_MOSI_I_IBUF
    );
SPI_MOSI_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SPI_MOSI_O_OBUF,
      O => SPI_MOSI_O
    );
SPI_SCLK_I_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => SPI_SCLK_I_IBUF,
      O => SPI_SCLK_I_IBUF_BUFG
    );
SPI_SCLK_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SPI_SCLK_I,
      O => SPI_SCLK_I_IBUF
    );
SPI_SCLK_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SPI_SCLK_O_OBUF,
      O => SPI_SCLK_O
    );
STATUSLED_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => STATUSLED_O_OBUF,
      O => STATUSLED_O
    );
SpiRx: entity work.SPI_RX
     port map (
      DIBDI(31 downto 0) => DATA_O(31 downto 0),
      RESET_O => RESET_O,
      SPI_MOSI_I_IBUF => SPI_MOSI_I_IBUF,
      SPI_SCLK_I_IBUF_BUFG => SPI_SCLK_I_IBUF_BUFG,
      WEBWE(0) => wr_B
    );
SpiTx: entity work.SPI_TX
     port map (
      CLK => CLK48_O_BUFG,
      D(31 downto 0) => DATA_BB_O(31 downto 0),
      RESET_O => RESET_O,
      SPI_MOSI_O_OBUF => SPI_MOSI_O_OBUF,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF
    );
TX_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TX_O_OBUF,
      O => TX_O
    );
end STRUCTURE;
