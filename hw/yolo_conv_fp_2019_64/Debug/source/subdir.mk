################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/yolo_conv.cpp 

OBJS += \
./source/yolo_conv.o 

CPP_DEPS += \
./source/yolo_conv.d 


# Each subdirectory must supply rules for building sources it contributes
source/yolo_conv.o: /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_conv_fp_2019_64/src/yolo_conv.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/xavier/MSc_Project/hls/yolo_conv_hls_2019 -I/opt/Xilinx_2019_1/Vivado/2019.1/include/etc -I/opt/Xilinx_2019_1/Vivado/2019.1/include -I/opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/auto_cc/include -I/opt/Xilinx_2019_1/Vivado/2019.1/include/ap_sysc -I/opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


