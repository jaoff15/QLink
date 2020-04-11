----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2020 12:54:14 PM
-- Design Name: 
-- Module Name: qlink_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity qlink_tb is
--  Port ( );
end qlink_tb;

architecture Behavioral of qlink_tb is

component receiver_top is
    Port ( CLK100_I     : in STD_LOGIC;
           -- UART
           TX_O        : out STD_LOGIC;
           RX_I        : in  STD_LOGIC;
           
           -- SPI
           -- TX
           SPI_MOSI_O  : out std_logic;
           SPI_SCLK_O  : out std_logic;
           -- RX
           SPI_MOSI_I  : in  std_logic;
           SPI_SCLK_I  : in  std_logic
           );
end component;


   constant ASCII_HASHTAG   : std_logic_vector(7 downto 0) := "00100011"; -- 0x23 - #
   constant ASCII_COLON     : std_logic_vector(7 downto 0) := "00111010"; -- 0x3A - :
   constant ASCII_CR        : std_logic_vector(7 downto 0) := "00001101"; -- 0x0D - \r
   constant ASCII_excl      : std_logic_vector(7 downto 0) := "00100001"; -- 0x21 - !
   constant ASCII_dot       : std_logic_vector(7 downto 0) := "00101110"; -- 0x2E - .
   
   constant ASCII_0         : std_logic_vector(7 downto 0) := "00110000"; -- 0x30 - 0
   constant ASCII_1         : std_logic_vector(7 downto 0) := "00110001"; -- 0x31 - 1
   constant ASCII_2         : std_logic_vector(7 downto 0) := "00110010"; -- 0x32 - 2
   constant ASCII_3         : std_logic_vector(7 downto 0) := "00110011"; -- 0x33 - 3
   constant ASCII_4         : std_logic_vector(7 downto 0) := "00110100"; -- 0x34 - 4
   constant ASCII_5         : std_logic_vector(7 downto 0) := "00110101"; -- 0x35 - 5
   constant ASCII_6         : std_logic_vector(7 downto 0) := "00110110"; -- 0x36 - 6
   constant ASCII_7         : std_logic_vector(7 downto 0) := "00110111"; -- 0x37 - 7
   constant ASCII_8         : std_logic_vector(7 downto 0) := "00111000"; -- 0x38 - 8
   constant ASCII_9         : std_logic_vector(7 downto 0) := "00111001"; -- 0x39 - 9
   constant ASCII_A         : std_logic_vector(7 downto 0) := "01000001"; -- 0x41 - A
   constant ASCII_B         : std_logic_vector(7 downto 0) := "01000010"; -- 0x42 - B
   constant ASCII_C         : std_logic_vector(7 downto 0) := "01000011"; -- 0x43 - C
   constant ASCII_D         : std_logic_vector(7 downto 0) := "01000100"; -- 0x44 - D
   constant ASCII_E         : std_logic_vector(7 downto 0) := "01000101"; -- 0x45 - E
   constant ASCII_F         : std_logic_vector(7 downto 0) := "01000110"; -- 0x46 - F
   constant ASCII_aa        : std_logic_vector(7 downto 0) := "01100001"; -- 0x61 - a
   constant ASCII_bb        : std_logic_vector(7 downto 0) := "01100010"; -- 0x62 - b 
   constant ASCII_cc        : std_logic_vector(7 downto 0) := "01100011"; -- 0x63 - c 
   constant ASCII_dd        : std_logic_vector(7 downto 0) := "01100100"; -- 0x64 - d
   constant ASCII_ee        : std_logic_vector(7 downto 0) := "01100101"; -- 0x65 - e
   constant ASCII_ff        : std_logic_vector(7 downto 0) := "01100110"; -- 0x66 - f
   
   constant ASCII_W         : std_logic_vector(7 downto 0) := "01010111"; -- 0x57 - W
   constant ASCII_R         : std_logic_vector(7 downto 0) := "01010010"; -- 0x52 - R
   constant ASCII_ww        : std_logic_vector(7 downto 0) := "01110111"; -- 0x77 - w
   constant ASCII_rr        : std_logic_vector(7 downto 0) := "01110010"; -- 0x72 - r


   signal clk      : std_logic := '0';
 --  signal tx_start : std_logic := '0';  
   signal tx_out   : std_logic := '0';
   signal rx_in    : std_logic := '1';
   
   signal spi_mosi   : std_logic := '0';
   signal spi_sclk   : std_logic := '0';
   
   
   --signal rx_data  : std_logic_vector(7 downto 0);

  --  signal bus_master_clk : std_logic := '0';
    
    
    --signal tx_index         : integer range 0 to 22 := 0;
   -- signal tx_done          : std_logic := '0';
   -- signal tx_busy          : std_logic := '0';
    --signal tx_start_signal  : std_logic := '1';
    --signal tx_data          : std_logic_vector(7 downto 0) := (others => '0');
    --signal tx_out_tb        : std_logic := '0';
    
    signal first : boolean := true;
    

begin

clk      <= not clk after 5ns;


test_tx : process
  variable D : std_logic_vector(7 downto 0) := "00000000";
  variable x :integer   := 0;
  variable done: boolean := false;
begin
   -- tx_start <= '0';
    wait for 10us;
  --  tx_start <= '1';
    rx_in <= '1';
    loop
--        case x is
--            when 0      => D := ASCII_HASHTAG;
--            when 1      => D := ASCII_w;
--            when 2      => D := ASCII_COLON;
--            when 3      => D := ASCII_a;
--            when 4      => D := ASCII_B;
--            when 5      => D := ASCII_COLON;
--            when 6      => D := ASCII_0;
--            when 7      => D := ASCII_0;
--            when 8      => D := ASCII_0;
--            when 9      => D := ASCII_0;
--            when 10     => D := ASCII_0;
--            when 11     => D := ASCII_0;
--            when 12     => D := ASCII_0;
--            when 13     => D := ASCII_5;
--            when 14     => D := ascii_cr;
--            when others => D := (others => '0');
--                        done := true;
--        end case;
        
--        case x is
--            when 0      => D := ASCII_HASHTAG;
--            when 1      => D := ASCII_rr;
--            when 2      => D := ASCII_COLON;
--            when 3      => D := ASCII_9;
--            when 4      => D := ASCII_8;
--            when 5      => D := ascii_cr;
--            when others => D := (others => '0');
--                           done := true;
--        end case;
        case x is
            when 0      => D := ASCII_HASHTAG;
            when 1      => D := ASCII_w;
            when 2      => D := ASCII_COLON;
            when 3      => D := ASCII_1;
            when 4      => D := ASCII_0;
 --           when 5      => D := ASCII_COLON;
            when 5      => D := ASCII_1;
            when 6      => D := ASCII_2;
            when 7      => D := ASCII_3;
            when 8      => D := ASCII_4;
            when 9      => D := ASCII_5;
            when 10     => D := ASCII_6;
            when 11     => D := ASCII_7;
            when 12     => D := ASCII_8;
            when 13     => D := ASCII_dot;
            when 14     => D := ASCII_dot;
--            when 14     => D := ascii_cr;
            when 15     => D := ASCII_HASHTAG;
            when 16     => D := ASCII_rr;
            when 17     => D := ASCII_COLON;
            when 18     => D := ASCII_9;
            when 19     => D := ASCII_0;
--            when 19     => D := ascii_cr;
            when others => D := (others => '0');
                        done := true;
        end case;

        
        if done = false then
            wait for 1us;
            rx_in<='0';         -- Start bit
            
            for i in 0 to 7 loop
                wait for 1us;  
                rx_in<=D(i);
            END LOOP;
            
            wait for 1us;
        end if;
        rx_in<='1';             -- stop bit
            
        
        wait for 1us;
        x:=x+1;
         
    end loop;
end process;





receiver_top0: receiver_top
port map(  CLK100_I     => clk,
           -- UART
           TX_O         => tx_out,
           RX_I         => rx_in,
           -- SPI
           -- TX
           SPI_MOSI_O   => spi_mosi,
           SPI_SCLK_O   => spi_sclk,
           -- RX
           SPI_MOSI_I   => spi_mosi,
           SPI_SCLK_I   => spi_sclk
           );



end Behavioral;
