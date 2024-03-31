set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { clk }];

set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { reset }];

set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { count_show[6] }];
set_property -dict {PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { count_show[5] }];
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports { count_show[4] }];
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports { count_show[3] }];
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { count_show[2] }];
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { count_show[1] }];
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports { count_show[0] }];
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports { DP }];

set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports { AN[0] }];
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { AN[1] }];
set_property -dict {PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports { AN[2] }];
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports { AN[3] }];
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { AN[4] }];
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { AN[5] }];
set_property -dict {PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { AN[6] }];
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { AN[7] }];

set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { clk_1hz }];