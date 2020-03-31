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
component distributed_RAM_module is
--generic  ( BASE_ADDR : std_logic_vector(3 downto 0) := (others => '0'));
generic  ( BASE_ADDR : integer range 0 to 15);
    Port ( CLK_I    : in  STD_LOGIC := '0';
           RESET_I  : in  STD_LOGIC := '0';
           ADDR_B_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
           DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           WR_I     : in  STD_LOGIC := '0';
           RD_I     : in  STD_LOGIC := '0');
end component;

component block_RAM_module is
generic  ( BASE_ADDR : std_logic_vector(3 downto 0) := (others => '0'));
    Port ( CLK_I    : in  STD_LOGIC := '0';
           RESET_I  : in  STD_LOGIC := '0';
           ADDR_B_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
           DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           WR_I     : in  STD_LOGIC := '0';
           RD_I     : in  STD_LOGIC := '0');
end component;

---------------------- SIGNALS -------------------------
  signal sys_reset : std_logic;
  signal clk48     : std_logic;
  signal adr       : std_logic_vector(7 downto 0);
  signal data_w    : std_logic_vector(31 downto 0);
  signal data_r    : std_logic_vector(31 downto 0);
  
  signal wr,rd     : std_logic;
  
  -- Data signals
  signal data_ram1  : std_logic_vector(31 downto 0);
  signal data_ram2  : std_logic_vector(31 downto 0);
  
  
  signal leds : std_logic_vector(7 downto 0);
begin

LEDS_O<=leds;
data_r <= data_ram1 or data_ram2; -- OR all data signals together

QLINK1: QLinkMaster
  generic map (CLK_I_PERIOD => 10.0) -- Instantiate the QLinkMaster for 100MHz input clock   
  port map (   RESET_I      => '0',
               RESET_O      => sys_reset,
               CLK_I        => CLK100_I,
               RX_I         => RX_I,
               TX_O         => TX_O,
               CLK48_O      => clk48,
               ADDR_B_O     => adr,
               DATA_B_O     => data_w,
               DATA_B_I     => data_r, 
               WR_O         => wr, 
               RD_O         => rd,
               LED_O        => STATUSLED_O);


RAM0: distributed_RAM_module
--generic map(BASE_ADDR => x"a")
generic map(BASE_ADDR => 10)
port map(   CLK_I     => clk48,
            RESET_I   => sys_reset,
            ADDR_B_I  => adr,
            DATA_B_I  => data_w,
            DATA_B_O  => data_ram1,
            WR_I      => wr,
            RD_I      => rd);

RAM1: block_RAM_module
generic map(BASE_ADDR => x"b")
port map(   CLK_I     => clk48,
            RESET_I   => sys_reset,
            ADDR_B_I  => adr,
            DATA_B_I  => data_w,
            DATA_B_O  => data_ram2,
            WR_I      => wr,
            RD_I      => rd);



--process(clk48,sys_reset)
--begin
--  if clk48'event and clk48='1' then
--    if sys_reset='1' then
--      leds<="01010101";
--      data_r<= X"aa55aa55";  
--    else
--      data_r<= X"FF0aa0" & adr;  
--      if wr='1' then
--        leds<=data_w(31 downto 24);
--      elsif rd='1' then  
--        leds<=adr;
--      else
--        leds<=leds;
--      end if;
--    end if; -- sys_reset
--  end if; -- clk100'event
--end process;

end rtl;
