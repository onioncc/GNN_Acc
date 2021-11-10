AUTOPILOT_ROOT :=/tools/reconfig/xilinx/Vitis/2021.1/Vitis_HLS/2021.1

ASSEMBLE_SRC_ROOT := .
IFLAG += -I "${AUTOPILOT_ROOT}/include"
# IFLAG += -I "${ASSEMBLE_SRC_ROOT}"
# IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__SIM_FPO__ -D__SIM_OPENCV__ -D__SIM_FFT__ -D__SIM_FIR__ -D__SIM_DDS__ -D__DSP48E1__
IFLAG += -DCSIM


# IFLAG += -DDEBUG_FILE_PRINT=1
IFLAG += -g 
#CFLAG += -fPIC -O3 #-fsanitize=address
CFLAG += -lm
CFLAG += -std=c++11 -Wno-unused-result


all:
	g++ *.cc -o result $(CFLAG) $(IFLAG)

clean:
	rm -f *.o result
