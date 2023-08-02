-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity monostable_stub is
  port (
    nd : in std_logic_vector( 16-1 downto 0 );
    sig_in : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    sig_out : out std_logic_vector( 1-1 downto 0 )
  );
end monostable_stub;
architecture structural of monostable_stub is 
begin
  sysgen_dut : entity xil_defaultlib.monostable 
  port map (
    nd => nd,
    sig_in => sig_in,
    clk => clk,
    sig_out => sig_out
  );
end structural;
