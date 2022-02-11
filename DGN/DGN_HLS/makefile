AUTOPILOT_ROOT :=/tools/software/xilinx/Vitis_HLS/2021.1

CPPFLAGS += -I "${AUTOPILOT_ROOT}/include"
CPPFLAGS += -include /usr/scratch/rsarkar30/pch/hls.hpp
CPPFLAGS += -D__SIM_FPO__ -D__SIM_OPENCV__ -D__SIM_FFT__ -D__SIM_FIR__ -D__SIM_DDS__ -D__DSP48E1__
CPPFLAGS += -g
CXXFLAGS += -lm
CXXFLAGS += -std=c++11 -Wno-unused-result
LDLIBS += -lstdc++ -lm

all: result

result: DGN_compute.o main.o load_weights_graph.o
	$(CC) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f *.o result
