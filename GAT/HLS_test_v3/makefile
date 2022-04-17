AUTOPILOT_ROOT :=/tools/software/xilinx/Vitis_HLS/2021.1

CPPFLAGS += -I "${AUTOPILOT_ROOT}/include"
CPPFLAGS += -I .
CPPFLAGS += -include /usr/scratch/rsarkar30/pch/hls.hpp
CPPFLAGS += -D__SIM_FPO__ -D__SIM_OPENCV__ -D__SIM_FFT__ -D__SIM_FIR__ -D__SIM_DDS__ -D__DSP48E1__
CPPFLAGS += -g
CXXFLAGS += -lm
CXXFLAGS += -std=c++14 -Wno-unused-result
LDLIBS += -lstdc++ -lm
LDLIBS += -L"${AUTOPILOT_ROOT}/lnx64/lib/csim" -lhlsmc++-GCC46 -Wl,-rpath,"${AUTOPILOT_ROOT}/lnx64/lib/csim" -Wl,-rpath,"${AUTOPILOT_ROOT}/lnx64/tools/fpo_v7_0"

all: cat result

cat: src/_single_file.cc

src/_single_file.cc: src/GAT_compute.cc src/conv_layer.cc src/finalize.cc src/globals.cc src/linear.cc src/load_inputs.cc src/message_passing.cc src/node_embedding.cc
	cat $^ > $@

result: src/GAT_compute.o src/conv_layer.o src/finalize.o src/globals.o src/linear.o src/load_inputs.o src/message_passing.o src/node_embedding.o testbench/main.o testbench/load.o
	$(CC) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f src/_single_file.cc src/*.o testbench/*.o result
