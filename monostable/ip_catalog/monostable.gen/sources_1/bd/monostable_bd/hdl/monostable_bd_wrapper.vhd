--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Aug  2 22:26:50 2023
--Host        : DESKTOP-JEI2OF3 running 64-bit major release  (build 9200)
--Command     : generate_target monostable_bd_wrapper.bd
--Design      : monostable_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity monostable_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    nd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end monostable_bd_wrapper;

architecture STRUCTURE of monostable_bd_wrapper is
  component monostable_bd is
  port (
    clk : in STD_LOGIC;
    nd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component monostable_bd;
begin
monostable_bd_i: component monostable_bd
     port map (
      clk => clk,
      nd(15 downto 0) => nd(15 downto 0),
      sig_in(0) => sig_in(0),
      sig_out(0) => sig_out(0)
    );
end STRUCTURE;
