################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/activations.c \
../src/batchnorm_layer.c \
../src/blas.c \
../src/box.c \
../src/convolutional_layer.c \
../src/gemm.c \
../src/helloworld.c \
../src/im2col.c \
../src/image.c \
../src/maxpool_layer.c \
../src/network.c \
../src/parser.c \
../src/platform.c \
../src/route_layer.c \
../src/upsample_layer.c \
../src/utils.c \
../src/yolo_layer.c 

OBJS += \
./src/activations.o \
./src/batchnorm_layer.o \
./src/blas.o \
./src/box.o \
./src/convolutional_layer.o \
./src/gemm.o \
./src/helloworld.o \
./src/im2col.o \
./src/image.o \
./src/maxpool_layer.o \
./src/network.o \
./src/parser.o \
./src/platform.o \
./src/route_layer.o \
./src/upsample_layer.o \
./src/utils.o \
./src/yolo_layer.o 

C_DEPS += \
./src/activations.d \
./src/batchnorm_layer.d \
./src/blas.d \
./src/box.d \
./src/convolutional_layer.d \
./src/gemm.d \
./src/helloworld.d \
./src/im2col.d \
./src/image.d \
./src/maxpool_layer.d \
./src/network.d \
./src/parser.d \
./src/platform.d \
./src/route_layer.d \
./src/upsample_layer.d \
./src/utils.d \
./src/yolo_layer.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I/home/xavier/MSc_Project/git_v/Tiny_YOLO_v3_ZYNQ/sw/Tiny_Yolo_v3/Tiny_Yolo_v3.sdk/include -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../yolo_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


