################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./testbench/yolo_conv_tb.o 

CPP_DEPS += \
./testbench/yolo_conv_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/yolo_conv_tb.o: /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_conv_fp_2019_64/tb/yolo_conv_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/xavier/MSc_Project/hls/yolo_conv_hls_2019 -I/opt/Xilinx_2019_1/Vivado/2019.1/include/etc -I/opt/Xilinx_2019_1/Vivado/2019.1/include -I/opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/auto_cc/include -I/opt/Xilinx_2019_1/Vivado/2019.1/include/ap_sysc -I/opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/systemc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/yolo_conv_tb.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


