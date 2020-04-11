----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 11:23:09 AM
-- Design Name: 
-- Module Name: SPI_RX - Behavioral
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



entity SPI_RX is
Port ( RESET_I   : in  STD_LOGIC := '0';
       -- Data bus signals
       ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_O    : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       WR_O      : out STD_LOGIC := '0';
       -- External Signals
       SCLK_I    : in  STD_LOGIC := '0';
       MOSI_I    : in std_logic  := '0'
       );
end SPI_RX;

architecture Behavioral of SPI_RX is
    signal bitcnt        : integer range 0 to 31 := 0;
    signal data          : std_logic_vector(31 downto 0);
    signal data_o_signal : std_logic_vector(31 downto 0);
begin

DATA_O <= data_o_signal;
ADDR_O <= x"10";
--WR_O <= '1';


process(SCLK_I)
variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
variable nxt_data   : std_logic_vector(31 downto 0)  := data;
begin 
  if rising_edge(SCLK_I) then 
      data_o_signal <= data_o_signal;      
      WR_O <= '0';
      if RESET_I = '1' then
        nxt_bitcnt  := 0;              -- reset bit counter
        nxt_data    := x"00000000";
      else  --- IF NOT RESET
        nxt_bitcnt := bitcnt + 1;
      
        nxt_data(bitcnt) := MOSI_I;
        if (bitcnt = 31) then   -- terminate mid stop-bit
          WR_O          <= '1';
          data_o_signal <= data;
          nxt_bitcnt := 0;
        end if;
        
      end if; -- RESET      
        data   <= nxt_data;
        bitcnt <= nxt_bitcnt;
         
    end if;
end process;


end Behavioral;