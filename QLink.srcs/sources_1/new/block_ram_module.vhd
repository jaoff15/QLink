

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 



entity block_RAM_module is
generic  ( BASE_ADDR : std_logic_vector(3 downto 0) := (others => '0'));
    Port ( CLK_I    : in  STD_LOGIC := '0';
           RESET_I  : in  STD_LOGIC := '0';
           ADDR_B_I : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
           DATA_B_I : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           DATA_B_O : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           WR_I     : in  STD_LOGIC := '0';
           RD_I     : in  STD_LOGIC := '0');
end block_RAM_module;

architecture Behavioral of block_RAM_module is

    signal addr_block_ram_signal : std_logic_vector(31 downto 0) := (others => '0');
    signal addr_signal : std_logic_vector(7 downto 0) := (others => '0');    
    
    signal data_ram_i  : std_logic_vector(31 downto 0) := (others => '0');
    signal data_ram_o  : std_logic_vector(31 downto 0) := (others => '0');
    signal data_block_ram_o  : std_logic_vector(31 downto 0) := (others => '0');

    signal we_signal   : std_logic_vector(3 downto 0) := (others => '0');
    
    
    
    component design_1_wrapper is
      port (
        BRAM_PORTA_0_clk  : in  STD_LOGIC := '0';
        BRAM_PORTA_0_en   : in  STD_LOGIC := '0';
        BRAM_PORTA_0_rst  : in  STD_LOGIC := '0';
        BRAM_PORTA_0_addr : in  STD_LOGIC_VECTOR ( 31 downto 0 ) := (others => '0');
        BRAM_PORTA_0_din  : in  STD_LOGIC_VECTOR ( 31 downto 0 ) := (others => '0');
        BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 ) := (others => '0');
        BRAM_PORTA_0_we   : in  STD_LOGIC_VECTOR ( 3  downto 0 ) := (others => '0')
      );
    end component;
    
    
    
    
begin

addr_signal <= ADDR_B_I;
DATA_B_O    <= data_ram_o;

--with WR_I select
--    we_signal <= "1111" when '1',
--                 "0000" when others;


-- Write data from RAM
data_in_process:process(CLK_I) 
begin
  if rising_edge(CLK_I) then
--    RAM <= RAM;
    if RESET_I = '1' then 
        we_signal <= "0000";
--        RAM <= (others => (others => '0'));
    elsif WR_I = '1' and BASE_ADDR = addr_signal(7 downto 4) then
        we_signal <= "1111";
--        RAM(to_integer(unsigned(addr_signal(3 downto 0)))) <= DATA_B_I;
    else 
        we_signal <= "0000";
    end if;
  end if;
end process;


-- Read data to RAM
data_out_process:process(CLK_I)
begin
  if rising_edge(CLK_I) then
    data_ram_o <= data_ram_o;
    if BASE_ADDR = addr_signal(7 downto 4) then
--        data_ram_o <= RAM(to_integer(unsigned(addr_signal(3 downto 0))));
        data_ram_o <= data_block_ram_o ;
    elsif BASE_ADDR /= addr_signal(7 downto 4) then 
        data_ram_o <= (others => '0');
    end if;
  end if;
end process;


addr_block_ram_signal(7 downto 0) <= addr_signal;

BLOCK_RAM: design_1_wrapper
port map(   BRAM_PORTA_0_addr   => addr_block_ram_signal,
            BRAM_PORTA_0_clk    => CLK_I,
            BRAM_PORTA_0_din    => DATA_B_I,
            BRAM_PORTA_0_dout   => data_block_ram_o,
            BRAM_PORTA_0_en     => '1',
            BRAM_PORTA_0_rst    => RESET_I,
            BRAM_PORTA_0_we     => we_signal);



end Behavioral;

