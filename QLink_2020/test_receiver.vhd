library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity my_test is
    Port (A_O : out std_logic);
end my_test;

architecture Behavioral of my_test is

  component  receiver_top is
    Port ( CLK25_I : in STD_LOGIC;
           CLK64_O : out STD_LOGIC;
           CLK8_O : out STD_LOGIC;
           D_O : out STD_LOGIC;
           DBUS_O : out STD_LOGIC_VECTOR(0 to 7));
  end component;

  signal clk : std_logic := '0';
  signal d,clk64,clk8 : std_logic;
  signal dbus : std_logic_vector(0 to 7);
  
begin
  A_O <= '0'; -- we do not use the testbench output
  clk <= not clk after 20ns; -- 25MHz clock
  
  U1:receiver_top port map(  -- Instantiate our DDR component
     CLK25_I => clk,
     CLK64_O => clk64,
     CLK8_O => clk8,
     D_O => d,
     DBUS_O => dbus
     );

end Behavioral;
