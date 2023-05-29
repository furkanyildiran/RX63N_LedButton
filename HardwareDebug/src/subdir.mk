################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/RX63N_LedButton.c 

LST += \
RX63N_LedButton.lst 

C_DEPS += \
./src/RX63N_LedButton.d 

OBJS += \
./src/RX63N_LedButton.o 

MAP += \
RX63N_LedButton.map 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-Og -ffunction-sections -fdata-sections -fdiagnostics-parseable-fixits -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wpointer-arith -Wshadow -Waggregate-return -Wstack-usage=100 -g2 -misa=v1 -mlittle-endian-data -I"C:/Users/MONSTER/e2_studio/workspace/RX63N_LedButton/generate" -I"C:\\Users\\MONSTER\\e2_studio\\workspace\\RX63N_LedButton\\BSS\\Inc" -Wa,-adlnh="$(basename $(notdir $<)).lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" "$<" -c -o "$@")
	@echo $< && rx-elf-gcc @"$@.in"

