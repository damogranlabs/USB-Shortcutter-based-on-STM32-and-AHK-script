################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32l100rctx.s 

OBJS += \
./Core/Startup/startup_stm32l100rctx.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -c -I"D:/Stromarija/STM32/STM32L1xx/Projects/USBShortcutter/user" -I"D:/Stromarija/STM32CubeIDEWorkspace/../Libs" -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/STM32L1xx/Libs" -x assembler-with-cpp --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

