--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Aug  2 22:26:50 2023
--Host        : DESKTOP-JEI2OF3 running 64-bit major release  (build 9200)
--Command     : generate_target monostable_bd.bd
--Design      : monostable_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity monostable_bd is
  port (
    clk : in STD_LOGIC;
    nd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of monostable_bd : entity is "monostable_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=monostable_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of monostable_bd : entity is "monostable_bd.hwdef";
end monostable_bd;

architecture STRUCTURE of monostable_bd is
  component monostable_bd_monostable_1_0 is
  port (
    nd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sig_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component monostable_bd_monostable_1_0;
  signal clk_1 : STD_LOGIC;
  signal monostable_1_sig_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal nd_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_in_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN monostable_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of nd : signal is "xilinx.com:signal:data:1.0 DATA.ND DATA";
  attribute X_INTERFACE_PARAMETER of nd : signal is "XIL_INTERFACENAME DATA.ND, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sig_in : signal is "xilinx.com:signal:data:1.0 DATA.SIG_IN DATA";
  attribute X_INTERFACE_PARAMETER of sig_in : signal is "XIL_INTERFACENAME DATA.SIG_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sig_out : signal is "xilinx.com:signal:data:1.0 DATA.SIG_OUT DATA";
  attribute X_INTERFACE_PARAMETER of sig_out : signal is "XIL_INTERFACENAME DATA.SIG_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  clk_1 <= clk;
  nd_1(15 downto 0) <= nd(15 downto 0);
  sig_in_1(0) <= sig_in(0);
  sig_out(0) <= monostable_1_sig_out(0);
monostable_1: component monostable_bd_monostable_1_0
     port map (
      clk => clk_1,
      nd(15 downto 0) => nd_1(15 downto 0),
      sig_in(0) => sig_in_1(0),
      sig_out(0) => monostable_1_sig_out(0)
    );
end STRUCTURE;
