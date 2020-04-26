----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 11:23:09 AM
-- Design Name: 
-- Module Name: SPI_TX - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

entity SPI_TX is
Port ( CLK_I     : in  STD_LOGIC := '0';
       RESET_I   : in  STD_LOGIC := '0';
       -- Data bus signals
       ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_I    : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       -- External Signals
       SCLK_O   : out STD_LOGIC := '0';
       MOSI_O   : out STD_LOGIC := '0'
       );
end SPI_TX;

architecture Behavioral of SPI_TX is

    signal bitcnt       : integer range 0 to 31 := 0;
    signal data         : std_logic_vector(31 downto 0);
    -- Signal that describes if the module has been started
    signal sclk_active  : std_logic := '0';
    -- Clock that is started when sclk_active has been set to 1 
    signal sclk         : std_logic := '0';
    
    signal D1, D2       : std_logic := '0';
begin



ADDR_O  <= x"10";
sclk    <= CLK_I and sclk_active;


--SCLK_O  <= not CLK_I and sclk_active;

--process(CLK_I)
--  variable nxt_bitcnt   : integer range 0 to 31;
--  variable nxt_tx       : std_logic;
--  variable nxt_data     : std_logic_vector(31 downto 0) := data;
--begin
--  if rising_edge(CLK_I) then
----    data        <= data;
--    sclk_active <= sclk_active;
--    if RESET_I = '1' then
--      nxt_bitcnt  := 0;
--      nxt_tx      := '1';
--    else
--      -- Handle bit counter
--      if bitcnt < 31 then
--        nxt_bitcnt := bitcnt + 1;
--      else
--        nxt_bitcnt := 0;
--        -- Sample data from RAM
----        data <= DATA_I;
--        nxt_data := DATA_I;
--      end if;
--      -- Transmit current bit
--      nxt_tx      := data(bitcnt);
--      sclk_active <= '1';
--     end if;
   
--   data     <= nxt_data;
--   bitcnt   <= nxt_bitcnt;
--   MOSI_O   <= nxt_tx;
--  end if;
--end process;

process(CLK_I)
  variable nxt_bitcnt    : integer range 0 to 31;
  variable nxt_d1,nxt_d2 : std_logic;
  variable nxt_data      : std_logic_vector(31 downto 0) := data;
begin
  if rising_edge(CLK_I) then
    sclk_active <= sclk_active;
   -- nxt_data := data;
    if RESET_I = '1' then
      nxt_bitcnt  := 0;
      nxt_d1      := '0';
      nxt_d2      := '0';
    else
      if bitcnt < 30 then
        nxt_bitcnt := bitcnt + 2;
      else
        nxt_bitcnt := 0;
        nxt_data   := DATA_I;
      end if;
      nxt_d1 := data(bitcnt);
      nxt_d2 := data(bitcnt + 1);  
      sclk_active <= '1';
     end if;
   D1       <= nxt_d1;
   D2       <= nxt_d2;
   data     <= nxt_data;
   bitcnt   <= nxt_bitcnt;
  end if;
end process;

ODDR_MOSI : ODDR
generic map(
  DDR_CLK_EDGE  => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
  INIT          => '0',         -- Initial value for Q port ('1' or '0')
  SRTYPE        => "SYNC")      -- Reset Type ("ASYNC" or "SYNC")
port map (
  Q     => MOSI_O,  -- 1-bit DDR output
  C     => sclk,    -- 1-bit clock input
  CE    => '1',     -- 1-bit clock enable input
  D1    => D1,      -- 1-bit data input (positive edge)
  D2    => D2,      -- 1-bit data input (negative edge)
  R     => '0',     -- 1-bit reset input
  S     => '0'      -- 1-bit set input
);

ODDR_SCLK : ODDR
generic map(
  DDR_CLK_EDGE  => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
  INIT          => '0',         -- Initial value for Q port ('1' or '0')
  SRTYPE        => "SYNC")      -- Reset Type ("ASYNC" or "SYNC")
port map (
  Q     => SCLK_O,  -- 1-bit DDR output
  C     => sclk,   -- 1-bit clock input
  CE    => '1',     -- 1-bit clock enable input
  D1    => '1',     -- 1-bit data input (positive edge)
  D2    => '0',     -- 1-bit data input (negative edge)
  R     => '0',     -- 1-bit reset input
  S     => '0'      -- 1-bit set input
);

end Behavioral;


