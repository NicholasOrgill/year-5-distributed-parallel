################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ImageStuff.c \
../src/imflipPM.c 

OBJS += \
./src/ImageStuff.o \
./src/imflipPM.o 

C_DEPS += \
./src/ImageStuff.d \
./src/imflipPM.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/opt/rh/csbham-cuda10/root/usr/bin/nvcc -G -g -O0   -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/opt/rh/csbham-cuda10/root/usr/bin/nvcc -G -g -O0 --compile  -x c -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


