#AUTOPILOT_ROOT :=/tools/xilinx/latest/Vitis_HLS/2020.2
# AUTOPILOT_ROOT :=/tools/software/xilinx/Vitis_HLS/2021.1
AUTOPILOT_ROOT :=/tools/reconfig/xilinx/Vitis_HLS/2020.2/

ASSEMBLE_SRC_ROOT := .
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/etc"
IFLAG += -I "${AUTOPILOT_ROOT}/include/utils"
IFLAG += -D__SIM_FPO__ -D__SIM_OPENCV__ -D__SIM_FFT__ -D__SIM_FIR__ -D__SIM_DDS__ -D__DSP48E1__


IFLAG += -DDEBUG_FILE_PRINT=1
IFLAG += -g 
CFLAG += -fPIC # -O3 #-fsanitize=address
CFLAG += -lm
CFLAG += -std=c++11 -Wno-unused-result
# CFLAG += -L"${AUTOPILOT_ROOT}/lnx64/lib/csim"
# CFLAG += -L"${AUTOPILOT_ROOT}/lnx64/tools/fpo_v7_0"
CFLAG += -L"${AUTOPILOT_ROOT}/lnx64/lib/csim" -lhlsmc++-GCC46 -Wl,-rpath,"${AUTOPILOT_ROOT}/lnx64/lib/csim" -Wl,-rpath,"${AUTOPILOT_ROOT}/lnx64/tools/fpo_v7_0"

CC := g++

all:
	$(CC) *.cc -o result $(CFLAG) $(IFLAG)

clean:
	rm -f *.o result
