FOR XNOR GATE
ghdl -a xnorgate.vhdl
ghdl -a xnorgate_tb.vhdl
ghdl -e xnorgate_tb
ghdl -r xnorgate_tb --vcd=xnorgate.vcd
gtkwave xnorgate.vcd
