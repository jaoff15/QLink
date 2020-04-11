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

    signal bitcnt : integer range 0 to 31 := 0;
    signal data   : std_logic_vector(31 downto 0);
    signal data_in   : std_logic_vector(31 downto 0);
    signal running: std_logic := '0';
    
begin

ADDR_O <= x"10";
MOSI_O <= data(bitcnt);
data_in <= DATA_I;

process(CLK_I)
variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
--variable nxt_data   : std_logic_vector(31 downto 0)  := data;
begin 
  if rising_edge(CLK_I) then 
      running   <= '0';
      data      <= data;
      if RESET_I = '1' then
        nxt_bitcnt  := 0;              -- reset bit counter
      else  --- IF NOT RESET        
        
        nxt_bitcnt := bitcnt + 1;
        data   <= data_in;
        if (nxt_bitcnt = 32) then   -- terminate mid stop-bit
          nxt_bitcnt := 0;
        else
          running     <= '1';
        end if;
        
--        MOSI_O <= data(nxt_bitcnt);
--        MOSI_O <= data(bitcnt);
        
      end if; -- RESET      
        --data   <= nxt_data;
        bitcnt <= nxt_bitcnt; 
    end if; -- clk_uart'event
end process;

SCLK_O <= not CLK_I;

--process(CLK_I)
--begin 
--    SCLK_O <= '0';
--    if falling_edge(CLK_I) then
----        if running = '1' then
--            SCLK_O <= '1';
----        end if;
--    end if;
--end process;


end Behavioral;

