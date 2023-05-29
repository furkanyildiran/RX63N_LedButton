################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

-include makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include generate/subdir.mk
-include BSS/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(JMP_DEPS)),)
-include $(JMP_DEPS)
endif
ifneq ($(strip $(FSY_DEPS)),)
-include $(FSY_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(SRC_UPPER_DEPS)),)
-include $(SRC_UPPER_DEPS)
endif
ifneq ($(strip $(P_UPPER_DEPS)),)
-include $(P_UPPER_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(PP_UPPER_DEPS)),)
-include $(PP_UPPER_DEPS)
endif
ifneq ($(strip $(P_DEPS)),)
-include $(P_DEPS)
endif
ifneq ($(strip $(FSY_UPPER_DEPS)),)
-include $(FSY_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(SRC_DEPS)),)
-include $(SRC_DEPS)
endif
ifneq ($(strip $(JMP_UPPER_DEPS)),)
-include $(JMP_UPPER_DEPS)
endif
ifneq ($(strip $(PP_DEPS)),)
-include $(PP_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(SX_DEPS)),)
-include $(SX_DEPS)
endif
ifneq ($(strip $(SX_UPPER_DEPS)),)
-include $(SX_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS += \

OBJCOPY += \
RX63N_LedButton.bin \

PRINT_SIZE += \
RX63N_LedButton.siz \


# All Target
all: RX63N_LedButton.elf secondary-outputs

# Tool invocations
RX63N_LedButton.elf: $(OBJS) $(USER_OBJS) $(LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS) $(LINKER_SCRIPT)
	$(file > RX63N_LedButton.elf.in,-Og -ffunction-sections -fdata-sections -fdiagnostics-parseable-fixits -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wpointer-arith -Wshadow -Waggregate-return -Wstack-usage=100 -g2 -misa=v1 -mlittle-endian-data -o "RX63N_LedButton.elf" $(OBJS) $(USER_OBJS) $(LIBS) -T "C:/Users/MONSTER/e2_studio/workspace/RX63N_LedButton/generate/linker_script.ld" -Wl,--start-group -lm -lc -lgcc -Wl,--end-group -nostartfiles -Wl,-e_PowerON_Reset -Wl,--gc-sections -Wl,-M=RX63N_LedButton.map)
	@echo Building target: $@ && rx-elf-gcc @"RX63N_LedButton.elf.in"
: 
	rx-elf-libgen  --select-lib=newlib --compiler-options=-Og,-ffunction-sections,-fdata-sections,-misa=v1,-mlittle-endian-data --assembler-options=-mlittle-endian-data -o
RX63N_LedButton.bin: RX63N_LedButton.elf
	rx-elf-objcopy "RX63N_LedButton.elf" -O binary -I elf32-rx-be-ns  "RX63N_LedButton.bin"
RX63N_LedButton.siz: RX63N_LedButton.elf
	rx-elf-size --format=berkeley "RX63N_LedButton.elf"
# Other Targets
clean:
	-$(file > clean_file.tmp,  $(PRINT_SIZE)  $(JMP_DEPS)  $(FSY_DEPS)  $(C_UPPER_DEPS)  $(SRC_UPPER_DEPS)  $(P_UPPER_DEPS)  $(LST)  $(S_DEPS)  $(PP_UPPER_DEPS)  $(P_DEPS)  $(FSY_UPPER_DEPS)  $(C_DEPS)  $(SRC_DEPS)  $(OBJCOPY)  $(JMP_UPPER_DEPS)  $(PP_DEPS)  $(ASM_UPPER_DEPS)  $(SX_DEPS)  $(OBJS)  $(SX_UPPER_DEPS)  $(ASM_DEPS)  $(LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS)  $(MAP)  $(S_UPPER_DEPS) )
	-@ xargs -P 2 -s 32000 -t -a clean_file.tmp $(RM)
	-@$(RM) clean_file.tmp
	-$(RM)  RX63N_LedButton.elf
	-@echo ' '

secondary-outputs: $(OBJCOPY) $(PRINT_SIZE)

.PHONY: all clean dependents 

-include ../makefile.targets
