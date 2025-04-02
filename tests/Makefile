SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES = ../hdl/xor_gate.v
TOPLEVEL = xor_gate
MODULE = test_xor

EXTRA_ARGS = --vcd=waveforms.vcd  # Explicitly enable VCD

include $(shell cocotb-config --makefiles)/Makefile.sim

wave:
	gtkwave waveforms.vcd &
