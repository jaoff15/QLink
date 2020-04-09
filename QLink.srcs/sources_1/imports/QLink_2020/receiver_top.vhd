library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- USE ieee.numeric_std.ALL; 

Library UNISIM;                    -- For Xilinx primitives
use UNISIM.vcomponents.all;        --   allow all "components"

entity receiver_top is
    Port ( CLK100_I     : in STD_LOGIC;
           TX_O        : out STD_LOGIC;
           RX_I        : in STD_LOGIC;
           LEDS_O      : out STD_LOGIC_VECTOR(7 downto 0);
           STATUSLED_O : out STD_LOGIC );
end receiver_top;

architecture rtl of receiver_top is


-- Define linkmaster component
component QLinkMaster is
  Generic ( CLK_I_PERIOD : real range 2.0 to 64.0);
  Port    ( RESET_I  : in STD_LOGIC;
            CLK_I  : in STD_LOGIC;
            RX_I     : in STD_LOGIC;
            TX_O     : out STD_LOGIC;
            CLK48_O  : out STD_LOGIC;
            ADDR_B_O : out STD_LOGIC_VECTOR(7 downto 0);
            DATA_B_O : out STD_LOGIC_VECTOR(31 downto 0);
            DATA_B_I : in  STD_LOGIC_VECTOR(31 downto 0);
            WR_O     : out STD_LOGIC;
            RD_O     : out STD_LOGIC;
            RESET_O  : out STD_LOGIC;
            LED_O    : out STD_LOGIC );
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
 Port ( CLK_I    : in  STD_LOGIC := '0';
        RESET_I  : in  STD_LOGIC := '0';
        -- QLink <-> RAM
        ADDR_BA_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
        DATA_BA_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        DATA_BA_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        WR_A_I     : in  STD_LOGIC := '0';
        -- MemCpy <-> RAM 
        ADDR1_BB_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
        ADDR2_BB_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
        DATA_BB_I  : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        DATA_BB_O  : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
        WR_B_I     : in  STD_LOGIC := '0'
       );
end component;

component memory_copy_module is
Port ( CLK_I    : in  STD_LOGIC := '0';
       RESET_I  : in  STD_LOGIC := '0';
       ADDR1_B_O : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       ADDR2_B_O : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       WR_O     : out STD_LOGIC := '0');
end component;

---------------------- SIGNALS -------------------------
    signal leds : std_logic_vector(7 downto 0);


    -- QLink signals
    signal sys_reset : std_logic;
    signal clk48     : std_logic;
    signal rd     : std_logic;
    
    -- Port A
    -- QLink <-> RAM
    signal adr_A       : std_logic_vector(7 downto 0);
    signal wr_A     : std_logic;
    signal data_A_O    : std_logic_vector(31 downto 0);
    signal data_A_I  : std_logic_vector(31 downto 0);
  
  
    -- Port B
    -- MemCpy <-> RAM
    signal wr_B           : std_logic;
    signal adr1_B, adr2_B : std_logic_vector(7 downto 0);
    signal data_B_I       : std_logic_vector(31 downto 0);
    signal data_B_O       : std_logic_vector(31 downto 0);
  
  
  
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
port map(   CLK_I      => clk48,
            RESET_I    => sys_reset,
            -- Port A
            ADDR_BA_I  => adr_A,
            DATA_BA_I  => data_A_I,
            DATA_BA_O  => data_A_O,
            WR_A_I     => wr_A,
            -- Port B
            ADDR1_BB_I  => adr1_B,
            ADDR2_BB_I  => adr2_B,
            DATA_BB_I  => data_B_I,
            DATA_BB_O  => data_B_O,
            WR_B_I     => wr_B
            );


MemCpy:  memory_copy_module 
port map ( CLK_I    => clk48,
           RESET_I  => sys_reset,
           ADDR1_B_O => adr1_B,
           ADDR2_B_O => adr2_B,
           DATA_B_I => data_B_O,
           DATA_B_O => data_B_I,
           WR_O     => wr_B);


end rtl;
