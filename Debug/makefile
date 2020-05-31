################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include user_stm32l1xx_libs/subdir.mk
-include user_common_libs/subdir.mk
-include user/subdir.mk
-include USB_DEVICE/Target/subdir.mk
-include USB_DEVICE/App/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Src/subdir.mk
-include Drivers/STM32L1xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
USBShortcutter.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
USBShortcutter.list \

OBJCOPY_BIN += \
USBShortcutter.bin \


# All Target
all: USBShortcutter.elf secondary-outputs

# Tool invocations
USBShortcutter.elf: $(OBJS) $(USER_OBJS) D:\Stromarija\STM32\STM32L1xx\Projects\USBShortcutter\STM32L100RCTX_FLASH.ld
	arm-none-eabi-gcc -o "USBShortcutter.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"D:\Stromarija\STM32\STM32L1xx\Projects\USBShortcutter\STM32L100RCTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="USBShortcutter.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -u _printf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

USBShortcutter.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "USBShortcutter.list"
	@echo 'Finished building: $@'
	@echo ' '

USBShortcutter.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "USBShortcutter.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
