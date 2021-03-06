--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Wed Apr  8 11:15:21 2020
--Host        : JacobOffersen running 64-bit Ubuntu 19.10
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_blk_mem_gen_0_1;
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  signal BRAM_PORTA_0_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTA_0_1_CLK : STD_LOGIC;
  signal BRAM_PORTA_0_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTA_0_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTA_0_1_EN : STD_LOGIC;
  signal BRAM_PORTA_0_1_RST : STD_LOGIC;
  signal BRAM_PORTA_0_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_PORTA_1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTA_1_1_CLK : STD_LOGIC;
  signal BRAM_PORTA_1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTA_1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTA_1_1_EN : STD_LOGIC;
  signal BRAM_PORTA_1_1_RST : STD_LOGIC;
  signal BRAM_PORTA_1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_PORTB_0_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTB_0_1_CLK : STD_LOGIC;
  signal BRAM_PORTB_0_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTB_0_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTB_0_1_EN : STD_LOGIC;
  signal BRAM_PORTB_0_1_RST : STD_LOGIC;
  signal BRAM_PORTB_0_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_PORTB_1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTB_1_1_CLK : STD_LOGIC;
  signal BRAM_PORTB_1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTB_1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_PORTB_1_1_EN : STD_LOGIC;
  signal BRAM_PORTB_1_1_RST : STD_LOGIC;
  signal BRAM_PORTB_1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 CLK";
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 EN";
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 RST";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 CLK";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 EN";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 RST";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 CLK";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 EN";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 RST";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 CLK";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 EN";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 RST";
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 ADDR";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of BRAM_PORTA_0_addr : signal is "XIL_INTERFACENAME BRAM_PORTA_0, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32";
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DIN";
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DOUT";
  attribute X_INTERFACE_INFO of BRAM_PORTA_0_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 WE";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 ADDR";
  attribute X_INTERFACE_PARAMETER of BRAM_PORTA_1_addr : signal is "XIL_INTERFACENAME BRAM_PORTA_1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 DIN";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 DOUT";
  attribute X_INTERFACE_INFO of BRAM_PORTA_1_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA_1 WE";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 ADDR";
  attribute X_INTERFACE_PARAMETER of BRAM_PORTB_0_addr : signal is "XIL_INTERFACENAME BRAM_PORTB_0, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 DIN";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 DOUT";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 WE";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 ADDR";
  attribute X_INTERFACE_PARAMETER of BRAM_PORTB_1_addr : signal is "XIL_INTERFACENAME BRAM_PORTB_1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 DIN";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 DOUT";
  attribute X_INTERFACE_INFO of BRAM_PORTB_1_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB_1 WE";
begin
  BRAM_PORTA_0_1_ADDR(31 downto 0) <= BRAM_PORTA_0_addr(31 downto 0);
  BRAM_PORTA_0_1_CLK <= BRAM_PORTA_0_clk;
  BRAM_PORTA_0_1_DIN(31 downto 0) <= BRAM_PORTA_0_din(31 downto 0);
  BRAM_PORTA_0_1_EN <= BRAM_PORTA_0_en;
  BRAM_PORTA_0_1_RST <= BRAM_PORTA_0_rst;
  BRAM_PORTA_0_1_WE(3 downto 0) <= BRAM_PORTA_0_we(3 downto 0);
  BRAM_PORTA_0_dout(31 downto 0) <= BRAM_PORTA_0_1_DOUT(31 downto 0);
  BRAM_PORTA_1_1_ADDR(31 downto 0) <= BRAM_PORTA_1_addr(31 downto 0);
  BRAM_PORTA_1_1_CLK <= BRAM_PORTA_1_clk;
  BRAM_PORTA_1_1_DIN(31 downto 0) <= BRAM_PORTA_1_din(31 downto 0);
  BRAM_PORTA_1_1_EN <= BRAM_PORTA_1_en;
  BRAM_PORTA_1_1_RST <= BRAM_PORTA_1_rst;
  BRAM_PORTA_1_1_WE(3 downto 0) <= BRAM_PORTA_1_we(3 downto 0);
  BRAM_PORTA_1_dout(31 downto 0) <= BRAM_PORTA_1_1_DOUT(31 downto 0);
  BRAM_PORTB_0_1_ADDR(31 downto 0) <= BRAM_PORTB_0_addr(31 downto 0);
  BRAM_PORTB_0_1_CLK <= BRAM_PORTB_0_clk;
  BRAM_PORTB_0_1_DIN(31 downto 0) <= BRAM_PORTB_0_din(31 downto 0);
  BRAM_PORTB_0_1_EN <= BRAM_PORTB_0_en;
  BRAM_PORTB_0_1_RST <= BRAM_PORTB_0_rst;
  BRAM_PORTB_0_1_WE(3 downto 0) <= BRAM_PORTB_0_we(3 downto 0);
  BRAM_PORTB_0_dout(31 downto 0) <= BRAM_PORTB_0_1_DOUT(31 downto 0);
  BRAM_PORTB_1_1_ADDR(31 downto 0) <= BRAM_PORTB_1_addr(31 downto 0);
  BRAM_PORTB_1_1_CLK <= BRAM_PORTB_1_clk;
  BRAM_PORTB_1_1_DIN(31 downto 0) <= BRAM_PORTB_1_din(31 downto 0);
  BRAM_PORTB_1_1_EN <= BRAM_PORTB_1_en;
  BRAM_PORTB_1_1_RST <= BRAM_PORTB_1_rst;
  BRAM_PORTB_1_1_WE(3 downto 0) <= BRAM_PORTB_1_we(3 downto 0);
  BRAM_PORTB_1_dout(31 downto 0) <= BRAM_PORTB_1_1_DOUT(31 downto 0);
blk_mem_gen_0: component design_1_blk_mem_gen_0_1
     port map (
      addra(31 downto 0) => BRAM_PORTA_0_1_ADDR(31 downto 0),
      addrb(31 downto 0) => BRAM_PORTB_0_1_ADDR(31 downto 0),
      clka => BRAM_PORTA_0_1_CLK,
      clkb => BRAM_PORTB_0_1_CLK,
      dina(31 downto 0) => BRAM_PORTA_0_1_DIN(31 downto 0),
      dinb(31 downto 0) => BRAM_PORTB_0_1_DIN(31 downto 0),
      douta(31 downto 0) => BRAM_PORTA_0_1_DOUT(31 downto 0),
      doutb(31 downto 0) => BRAM_PORTB_0_1_DOUT(31 downto 0),
      ena => BRAM_PORTA_0_1_EN,
      enb => BRAM_PORTB_0_1_EN,
      rsta => BRAM_PORTA_0_1_RST,
      rstb => BRAM_PORTB_0_1_RST,
      wea(3 downto 0) => BRAM_PORTA_0_1_WE(3 downto 0),
      web(3 downto 0) => BRAM_PORTB_0_1_WE(3 downto 0)
    );
blk_mem_gen_1: component design_1_blk_mem_gen_0_0
     port map (
      addra(31 downto 0) => BRAM_PORTA_1_1_ADDR(31 downto 0),
      addrb(31 downto 0) => BRAM_PORTB_1_1_ADDR(31 downto 0),
      clka => BRAM_PORTA_1_1_CLK,
      clkb => BRAM_PORTB_1_1_CLK,
      dina(31 downto 0) => BRAM_PORTA_1_1_DIN(31 downto 0),
      dinb(31 downto 0) => BRAM_PORTB_1_1_DIN(31 downto 0),
      douta(31 downto 0) => BRAM_PORTA_1_1_DOUT(31 downto 0),
      doutb(31 downto 0) => BRAM_PORTB_1_1_DOUT(31 downto 0),
      ena => BRAM_PORTA_1_1_EN,
      enb => BRAM_PORTB_1_1_EN,
      rsta => BRAM_PORTA_1_1_RST,
      rstb => BRAM_PORTB_1_1_RST,
      wea(3 downto 0) => BRAM_PORTA_1_1_WE(3 downto 0),
      web(3 downto 0) => BRAM_PORTB_1_1_WE(3 downto 0)
    );
end STRUCTURE;
