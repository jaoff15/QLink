library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Library UNISIM;                    -- For Xilinx primitives
use UNISIM.vcomponents.all;        --   allow all "components"
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity receiver_top is
    Port ( CLK100_I    : in  STD_LOGIC;
           LEDS_O      : out STD_LOGIC_VECTOR(7 downto 0);
           STATUSLED_O : out STD_LOGIC;
           
           -- UART
           TX_O        : out STD_LOGIC;
           RX_I        : in  STD_LOGIC;
           
           -- SPI
           -- TX
           SPI_MOSI_O  : out std_logic;
           SPI_SCLK_O  : out std_logic;
           -- RX
           SPI_MOSI_I  : in  std_logic;
           SPI_SCLK_I  : in  std_logic
            );
end receiver_top;
 
architecture rtl of receiver_top is


-- Define linkmaster component
component QLinkMaster is
  Generic ( CLK_I_PERIOD : real range 2.0 to 64.0);
  Port    ( RESET_I      : in  STD_LOGIC;
            CLK_I        : in  STD_LOGIC;
            RX_I         : in  STD_LOGIC;
            TX_O         : out STD_LOGIC;
            CLK48_O      : out STD_LOGIC;
            ADDR_B_O     : out STD_LOGIC_VECTOR(7 downto 0);
            DATA_B_O     : out STD_LOGIC_VECTOR(31 downto 0);
            DATA_B_I     : in  STD_LOGIC_VECTOR(31 downto 0);
            WR_O         : out STD_LOGIC;
            RD_O         : out STD_LOGIC;
            RESET_O      : out STD_LOGIC;
            LED_O        : out STD_LOGIC );
end component;

-- Define RAM component
--component distributed_RAM_module is
----generic  ( BASE_ADDR : std_logic_vector(3 downto 0) := (others => '0'));
--generic  ( BASE_ADDR : integer range 0 to 15);
--    Port ( CLK_I    : in  STD_LOGIC := '0';
--           RESET_I  : in  STD_LOGIC := '0';
--           ADDR_B_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
--           DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
--           DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
--           WR_I     : in  STD_LOGIC := '0';
--           RD_I     : in  STD_LOGIC := '0');
--end component;

component block_RAM_module is
 Port ( CLKA_I    : in  STD_LOGIC := '0';
        CLKB_I    : in  STD_LOGIC := '0';
        RESET_I    : in  STD_LOGIC := '0';
        -- QLink <-> RAM
        ADDR_BA_I  : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
        DATA_BA_I  : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        DATA_BA_O  : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        WR_A_I     : in  STD_LOGIC := '0';
        -- SPI <-> RAM 
        -- SPI Tx
        ADDR1_BB_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
        DATA_BB_O  : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        -- SPI RX
        ADDR2_BB_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
        DATA_BB_I  : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        WR_B_I     : in  STD_LOGIC := '0'
       );
end component;

--component memory_copy_module is
--Port ( CLK_I    : in  STD_LOGIC := '0';
--       RESET_I  : in  STD_LOGIC := '0';
--       ADDR1_B_O : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
--       ADDR2_B_O : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
--       DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
--       DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
--       WR_O     : out STD_LOGIC := '0');
--end component;

component spi_clk_gen_wrapper is
  port (
    clk_in1_0 : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC
  );
end component;


component SPI_RX is
Port ( RESET_I   : in  STD_LOGIC := '0';
       -- Data bus signals
       ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_O    : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       WR_O      : out STD_LOGIC := '0';
       -- External Signals
       SCLK_I    : in  STD_LOGIC := '0';
       MOSI_I    : in std_logic  := '0'
       );
end component;

component SPI_TX is
Port ( CLK_I     : in  STD_LOGIC := '0';
       RESET_I   : in  STD_LOGIC := '0';
       -- Data bus signals
       ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_I    : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       -- External Signals
       SCLK_O   : out STD_LOGIC := '0';
       MOSI_O   : out STD_LOGIC := '0'
       );
end component;

---------------------- SIGNALS -------------------------
    signal leds : std_logic_vector(7 downto 0):= (others => '0');


    -- QLink signals
    signal sys_reset : std_logic := '0';
    signal clk48     : std_logic := '0';
    signal rd        : std_logic := '0';
    
    -- Port A
    -- QLink <-> RAM
    signal adr_A        : std_logic_vector(7 downto 0)  := (others => '0');
    signal wr_A         : std_logic := '0';
    signal data_A_O     : std_logic_vector(31 downto 0) := (others => '0');
    signal data_A_I     : std_logic_vector(31 downto 0) := (others => '0');
  
  
    -- Port B
    -- SPI <-> RAM
    signal wr_B           : std_logic := '0';
    signal adr1_B, adr2_B : std_logic_vector(7 downto 0)  := (others => '0');
    signal data_B_I       : std_logic_vector(31 downto 0) := (others => '0');
    signal data_B_O       : std_logic_vector(31 downto 0) := (others => '0');
  
    -- SPI
    signal clk_spi        : std_logic := '0';
    --signal spi_reset      : std_logic := '0';
  
    --signal q              : std_logic_vector(22 downto 0) := (others => '0');
  
begin

LEDS_O <= leds;

QLINK1: QLinkMaster
  generic map (CLK_I_PERIOD => 10.0) -- Instantiate the QLinkMaster for 100MHz input clock   
  port map (   RESET_I      => '0',
               RESET_O      => sys_reset,
               CLK_I        => CLK100_I,
               RX_I         => RX_I,
               TX_O         => TX_O,
               CLK48_O      => clk48,
               ADDR_B_O     => adr_A,
               DATA_B_O     => data_A_I,
               DATA_B_I     => data_A_O, 
               WR_O         => wr_A, 
               RD_O         => rd,
               LED_O        => STATUSLED_O);


RAM0: block_RAM_module
port map(   CLKA_I     => clk48,
            CLKB_I     => clk_spi,
            RESET_I    => sys_reset,
            -- Port A. Qlink <-> RAM
            ADDR_BA_I  => adr_A,
            DATA_BA_I  => data_A_I,
            DATA_BA_O  => data_A_O,
            WR_A_I     => wr_A,
            
            -- Port B. SPI <-> RAM
            -- SPI TX
            ADDR1_BB_I => adr1_B,
            DATA_BB_O  => data_B_O,
            -- SPI RX
            ADDR2_BB_I => adr2_B,
            DATA_BB_I  => data_B_I,
            WR_B_I     => wr_B
            );


SpiClk: spi_clk_gen_wrapper 
port map(
    clk_in1_0   => clk100_I,
    clk_out1_0  => clk_spi
  );
--clk_spi <= CLK48;

 SpiTx:  SPI_TX 
port map ( CLK_I    => clk_spi,
           RESET_I  => sys_reset,
           -- RAM
           ADDR_O   => adr1_B,
           DATA_I   => data_B_O,
           -- SPI
           SCLK_O   => SPI_SCLK_O,
           MOSI_O   => SPI_MOSI_O
);
           
SpiRx:  SPI_RX 
port map (RESET_I   => sys_reset,
          -- RAM
          ADDR_O    => adr2_B,
          DATA_O    => data_B_I,
          WR_O      => wr_B,
          -- SPI
          SCLK_I    => SPI_SCLK_I,
          MOSI_I    => SPI_MOSI_I
);

end rtl;
