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
Library UNISIM;
use UNISIM.vcomponents.all;


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
    -- When the IDDR is in SAME_EDGE_PIPELINED mode data is delays 2 clock cycles 
    -- (0 = 0 clk cycles back, 30 = 1 clk cycle and 28 = 2 clock cycles)
    -- Therefore the bit counter is initialized 2 cycles behind in order for the bits so align properly.
    signal bitcnt        : integer range 0 to 31 := 26;
    
    signal data          : std_logic_vector(31 downto 0) := (others => '0');

   signal Q1, Q2         : std_logic := '0';
begin

--DATA_O <= data_o_signal;
DATA_O <= data;
ADDR_O <= x"10";



--process(SCLK_I)
--variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
--variable nxt_data   : std_logic_vector(31 downto 0)  := data;
--variable nxt_wr     : std_logic := '0';
--begin
--    if rising_edge(SCLK_I) then
----      data_o_signal <= data_o_signal;      
----      WR_O          <= '0';
--      if RESET_I='1' then
--        nxt_bitcnt  := 0; 
--        nxt_data    := (others => '0');
--      else 
--        -- Handle bit counter
--        if bitcnt < 31 then
--            nxt_bitcnt := bitcnt + 1;
--        else
--            nxt_bitcnt := 0;
--            -- Everything has been received. 
--            -- Write data to output and set WE high
----            WR_O          <= '1';
--            nxt_wr := '1';
--           -- data_o_signal <= data;
--        end if;

--        -- Read in bit
--        nxt_data(bitcnt) := MOSI_I;

--      end if;
--      WR_O   <= nxt_wr;
--      data   <= nxt_data;
--      bitcnt <= nxt_bitcnt;
--    end if;
--end process;



DDRI_handler: process(SCLK_I)
variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
variable nxt_data   : std_logic_vector(31 downto 0)  := data;
variable nxt_wr     : std_logic := '0';
begin
     -- nxt_data := data;
    if rising_edge(SCLK_I) then
      nxt_wr     := '0';
      if RESET_I='1' then
        nxt_bitcnt  := 26;                  -- Should be reset back but maintain the offset 
        nxt_data    := (others => '0');
      else 
        if bitcnt < 30 then
            nxt_bitcnt := bitcnt + 2;
        else
            nxt_bitcnt := 0;
            nxt_wr     := '1';
        end if;
        nxt_data(bitcnt)    := Q1;
        nxt_data(bitcnt+1)  := Q2;
      end if;
      WR_O      <= nxt_wr;
      data      <= nxt_data;
      bitcnt    <= nxt_bitcnt;
    end if;
end process;

IDDR_MOSI : IDDR 
generic map (
  DDR_CLK_EDGE => "SAME_EDGE_PIPELINED", -- "OPPOSITE_EDGE", "SAME_EDGE" 
                                         -- or "SAME_EDGE_PIPELINED" 
  INIT_Q1 => '0',    -- Initial value of Q1: '0' or '1'
  INIT_Q2 => '0',    -- Initial value of Q2: '0' or '1'
  SRTYPE  => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
port map (
  Q1    => Q1,      -- 1-bit output for positive edge of clock 
  Q2    => Q2,      -- 1-bit output for negative edge of clock
  C     => SCLK_I,  -- 1-bit clock input
  CE    => '1',     -- 1-bit clock enable input
  D     => MOSI_I,  -- 1-bit DDR data input
  R     => '0',     -- 1-bit reset
  S     => '0'      -- 1-bit set
  );
  
  
  

end Behavioral;
