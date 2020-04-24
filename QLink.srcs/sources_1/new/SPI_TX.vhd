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

    signal bitcnt  : integer range 0 to 31 := 0;
    signal data    : std_logic_vector(31 downto 0);
    --signal running : std_logic := '0';
    signal sclk_active  : std_logic := '0';

begin

ADDR_O  <= x"10";

SCLK_O  <= not CLK_I and sclk_active;

process(CLK_I)
  variable nxt_bitcnt   : integer range 0 to 31;
  variable nxt_tx       : std_logic;
  variable nxt_data     : std_logic_vector(31 downto 0) := data;
begin
  if rising_edge(CLK_I) then
--    data        <= data;
    sclk_active <= sclk_active;
    if RESET_I = '1' then
      nxt_bitcnt  := 0;
      nxt_tx      := '1';
    else
      -- Handle bit counter
      if bitcnt < 31 then
        nxt_bitcnt := bitcnt + 1;
      else
        nxt_bitcnt := 0;
        -- Sample data from RAM
--        data <= DATA_I;
        nxt_data := DATA_I;
      end if;
      -- Transmit current bit
      nxt_tx      := data(bitcnt);
      sclk_active <= '1';
     end if;
   
   data     <= nxt_data;
   bitcnt   <= nxt_bitcnt;
   MOSI_O   <= nxt_tx;
  end if;
end process;



end Behavioral;


