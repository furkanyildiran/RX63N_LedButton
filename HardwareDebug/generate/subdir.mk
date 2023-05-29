################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LINKER_SCRIPT += \
../generate/linker_script.ld 

S_UPPER_SRCS += \
../generate/start.S 

C_SRCS += \
../generate/hwinit.c \
../generate/inthandler.c \
../generate/vects.c 

LST += \
hwinit.lst \
inthandler.lst \
start.lst \
vects.lst 

C_DEPS += \
./generate/hwinit.d \
./generate/inthandler.d \
./generate/vects.d 

OBJS += \
./generate/hwinit.o \
./generate/inthandler.o \
./generate/start.o \
./generate/vects.o 

MAP += \
RX63N_LedButton.map 

S_UPPER_DEPS += \
./generate/start.d 


# Each subdirectory must supply rules for building sources it contributes
generate/%.o: ../generate/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-Og -ffunction-sections -fdata-sections -fdiagnostics-parseable-fixits -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wpointer-arith -Wshadow -Waggregate-return -Wstack-usage=100 -g2 -misa=v1 -mlittle-endian-data -I"C:/Users/MONSTER/e2_studio/workspace/RX63N_LedButton/generate" -I"C:\\Users\\MONSTER\\e2_studio\\workspace\\RX63N_LedButton\\BSS\\Inc" -Wa,-adlnh="$(basename $(notdir $<)).lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" "$<" -c -o "$@")
	@echo $< && rx-elf-gcc @"$@.in"
generate/%.o: ../generate/%.S
	@echo 'Building file: $<'
	$(file > $@.in,-Og -ffunction-sections -fdata-sections -fdiagnostics-parseable-fixits -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wpointer-arith -Wshadow -Waggregate-return -Wstack-usage=100 -g2 -misa=v1 -mlittle-endian-data -x assembler-with-cpp -Wa,--gdwarf2 -I"C:/Users/MONSTER/e2_studio/workspace/RX63N_LedButton/src" -Wa,-adlhn="$(basename $(notdir $<)).lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c "$<" -o "$@")
	@echo $< && rx-elf-gcc @"$@.in"

