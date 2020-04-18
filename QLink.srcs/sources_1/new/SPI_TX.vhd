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

    --signal bitcnt  : integer range 0 to 33 := 0;
    signal bitcnt  : integer range 0 to 31 := 0;
    signal data    : std_logic_vector(31 downto 0);
    --signal data_in   : std_logic_vector(31 downto 0);
    signal running : std_logic := '0';
    signal active  : std_logic := '0';
    
--    signal subbitcnt : integer range 0 to 36 := 0;
--    signal run_tx : std_logic := '0';
begin

ADDR_O <= x"10";


data <= DATA_I;

process(CLK_I)

--  variable nxt_bitcnt   : integer range 0 to 33;
  variable nxt_bitcnt   : integer range 0 to 31;
--  variable nxt_tx_done  : std_logic;
  variable nxt_tx       : std_logic;
--  variable nxt_subbitcnt : integer range 0 to 36 := bitcnt;
begin
  SCLK_O <= '0';
  if rising_edge(CLK_I) then
    if RESET_I = '1' then
      nxt_bitcnt  := 0;
      nxt_tx      := '1';
--      run_tx      <= '0';
    else
--      if run_tx = '0' then
        
--        if subbitcnt < 36 then
--          nxt_subbitcnt := subbitcnt + 1;
--          run_tx        <= '0';
--        else
--          nxt_subbitcnt := 0;
--          run_tx        <= '1';
--        end if;
--      else 
--          if bitcnt < 33 then
          if bitcnt < 31 then
            nxt_bitcnt := bitcnt + 1;
          else
            nxt_bitcnt := 0;
          end if;
          
--          if bitcnt = 0 then
--            nxt_tx := '0'; -- start bit
--          elsif bitcnt < 33 then
--          elsif bitcnt < 31 then
--            nxt_tx := data(bitcnt-1);
            nxt_tx := data(bitcnt);
--          else 
--            nxt_tx := '1'; -- stop bit
--            run_tx        <= '0';
--          end if; -- bitcnt=0

         SCLK_O <= '1';
       end if; -- RESET
--   end if; 
   bitcnt   <= nxt_bitcnt;
   MOSI_O   <= nxt_tx;
 
  end if; -- CLK
  
end process;



--process(CLK_I)
--variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
----variable nxt_data   : std_logic_vector(31 downto 0)  := data;
--begin 
--  if rising_edge(CLK_I) then 
--      running   <= '0';
--      data      <= data;
--      if RESET_I = '1' then
--        nxt_bitcnt  := 0;              -- reset bit counter
--      else  --- IF NOT RESET        
        
--        nxt_bitcnt := bitcnt + 1;
--        data   <= DATA_I;
--        MOSI_O <= data(bitcnt);
--        if (nxt_bitcnt = 31) then   -- terminate mid stop-bit
--          nxt_bitcnt := 0;
--        else
--          running     <= '1';
--        end if;
        
----        MOSI_O <= data(nxt_bitcnt);
----        MOSI_O <= data(bitcnt);
        
--      end if; -- RESET      
--        --data   <= nxt_data;
--        bitcnt <= nxt_bitcnt; 
--    end if; -- clk_uart'event
--end process;

--SCLK_O <= not CLK_I;

--process(CLK_I)
--variable nxt_active : std_logic          := active;
--begin 
--    SCLK_O <= '0';
--    if falling_edge(CLK_I) then
--        if running = '1' then
--            nxt_active := '1';
--        elsif running ='0' and active = '1' then
--            nxt_active := '0';
--        else
--            nxt_active := '0';
--        end if;
    
    
--        if active = '1' then
--            SCLK_O <= '1';
--        end if;
--        active <= nxt_active;
--    end if;
--end process;


end Behavioral;


