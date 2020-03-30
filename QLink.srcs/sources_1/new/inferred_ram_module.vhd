

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 



entity inferred_RAM_module is
generic  ( BASE_ADDR : std_logic_vector(3 downto 0) := (others => '0'));
    Port ( CLK_I    : in  STD_LOGIC := '0';
           RESET_I  : in  STD_LOGIC := '0';
           ADDR_B_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
           DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           WR_I     : in  STD_LOGIC := '0';
           RD_I     : in  STD_LOGIC := '0');
end inferred_RAM_module;

architecture Behavioral of inferred_RAM_module is

    signal addr_signal : std_logic_vector(7 downto 0) := (others => '0');    
    
    signal data_ram_i : std_logic_vector(31 downto 0) := (others => '0');
    signal data_ram_o : std_logic_vector(31 downto 0) := (others => '0');

    
    type t_RAM is array (0 to 15) of std_logic_vector(31 downto 0);
    signal RAM : t_RAM := (others => (others => '0'));
    
begin

addr_signal <= ADDR_B_I;
DATA_B_O    <= data_ram_o;


-- Write data from RAM
data_in_process:process(CLK_I) 
begin
  if rising_edge(CLK_I) then
    RAM <= RAM;
    if RESET_I = '1' then 
        RAM <= (others => (others => '0'));
    elsif WR_I = '1' and BASE_ADDR = addr_signal(7 downto 4) then
        RAM(to_integer(unsigned(addr_signal(3 downto 0)))) <= DATA_B_I;
    end if;
  end if;
end process;


-- Read data to RAM
data_out_process:process(CLK_I)
begin
  if rising_edge(CLK_I) then
    if BASE_ADDR = addr_signal(7 downto 4) then
        data_ram_o <= RAM(to_integer(unsigned(addr_signal(3 downto 0)))); 
    elsif BASE_ADDR /= addr_signal(7 downto 4) then 
        data_ram_o <= (others => '0');
    end if;
  end if;
end process;

end Behavioral;

