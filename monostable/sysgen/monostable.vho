  sysgen_dut : entity xil_defaultlib.monostable 
  port map (
    nd => nd,
    sig_in => sig_in,
    clk => clk,
    sig_out => sig_out
  );
