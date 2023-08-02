-- Generated from Simulink block monostable/monostable/L2H
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity monostable_l2h is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end monostable_l2h;
architecture structural of monostable_l2h is 
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal sig_in_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical1_y_net;
  sig_in_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter2 : entity xil_defaultlib.sysgen_inverter_295bf3d0e3 
  port map (
    clr => '0',
    ip => sig_in_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_de57cb6c99 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => sig_in_net,
    d1 => inverter2_op_net,
    y => logical1_y_net
  );
end structural;
-- Generated from Simulink block monostable/monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity monostable_monostable is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    n : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end monostable_monostable;
architecture structural of monostable_monostable is 
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal sig_in_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal nd_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  out_x0 <= logical_y_net;
  sig_in_net <= in_x0;
  nd_net <= n;
  clk_net <= clk_1;
  ce_net <= ce_1;
  l2h : entity xil_defaultlib.monostable_l2h 
  port map (
    in_x0 => sig_in_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical1_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_085c56cd6d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  counter : entity xil_defaultlib.monostable_xlcounter_free 
  generic map (
    core_name0 => "monostable_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => relational_op_net,
    en => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_9b9fc24472 
  port map (
    clr => '0',
    ip => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_da456b9cdf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register2_q_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
  register2 : entity xil_defaultlib.monostable_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant1_op_net,
    rst => relational_op_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_6163ad06d1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => nd_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block monostable_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity monostable_struct is
  port (
    nd : in std_logic_vector( 16-1 downto 0 );
    sig_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sig_out : out std_logic_vector( 1-1 downto 0 )
  );
end monostable_struct;
architecture structural of monostable_struct is 
  signal nd_net : std_logic_vector( 16-1 downto 0 );
  signal sig_in_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
begin
  nd_net <= nd;
  sig_in_net <= sig_in;
  sig_out <= logical_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable_x0 : entity xil_defaultlib.monostable_monostable 
  port map (
    in_x0 => sig_in_net,
    n => nd_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity monostable_default_clock_driver is
  port (
    monostable_sysclk : in std_logic;
    monostable_sysce : in std_logic;
    monostable_sysclr : in std_logic;
    monostable_clk1 : out std_logic;
    monostable_ce1 : out std_logic
  );
end monostable_default_clock_driver;
architecture structural of monostable_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => monostable_sysclk,
    sysce => monostable_sysce,
    sysclr => monostable_sysclr,
    clk => monostable_clk1,
    ce => monostable_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity monostable is
  port (
    nd : in std_logic_vector( 16-1 downto 0 );
    sig_in : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    sig_out : out std_logic_vector( 1-1 downto 0 )
  );
end monostable;
architecture structural of monostable is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "monostable,sysgen_core_2021_2,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k160t,speed=-2,package=fbg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0001,constant=1,counter=1,inv=2,logical=2,register=1,relational=1,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  monostable_default_clock_driver : entity xil_defaultlib.monostable_default_clock_driver 
  port map (
    monostable_sysclk => clk,
    monostable_sysce => '1',
    monostable_sysclr => '0',
    monostable_clk1 => clk_1_net,
    monostable_ce1 => ce_1_net
  );
  monostable_struct : entity xil_defaultlib.monostable_struct 
  port map (
    nd => nd,
    sig_in => sig_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    sig_out => sig_out
  );
end structural;
