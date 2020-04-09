----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2020 01:35:35 PM
-- Design Name: 
-- Module Name: memory_copy_module - Behavioral
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


entity memory_copy_module is
Port ( CLK_I     : in  STD_LOGIC := '0';
       RESET_I   : in  STD_LOGIC := '0';
       ADDR1_B_O : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       ADDR2_B_O : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_B_I  : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       DATA_B_O  : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       WR_O      : out STD_LOGIC := '0');
end memory_copy_module;

architecture Behavioral of memory_copy_module is

    signal addr_counter : STD_LOGIC_VECTOR (6  downto 0) := (others => '0');
    signal data_snapshot: STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
begin


ADDR1_B_O(6 downto 0) <= addr_counter;
ADDR2_B_O(6 downto 0) <= (addr_counter-1);



process(CLK_I,RESET_I)
begin 
  if rising_edge(CLK_I) then
    if RESET_I = '1' then
        addr_counter <= (others => '0');
    else
        addr_counter <= addr_counter + 1;
    end if;
  end if; 
end process;

process(CLK_I)
begin 
  WR_O       <= '0';
  if falling_edge(CLK_I) then
    DATA_B_O <= DATA_B_I;
    WR_O     <= '1';
  end if; 
end process;



end Behavioral;

