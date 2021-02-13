################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32l100rctx.s 

OBJS += \
./Core/Startup/startup_stm32l100rctx.o 

S_DEPS += \
./Core/Startup/startup_stm32l100rctx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/startup_stm32l100rctx.o: ../Core/Startup/startup_stm32l100rctx.s
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -c -I"D:/Stromarija/GIT/USBShortcutterSTM32AHK/USBShortcutter/user" -I"D:/Stromarija/STM32CubeIDEWorkspace/../Libs" -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/STM32L1xx/Libs" -x assembler-with-cpp -MMD -MP -MF"Core/Startup/startup_stm32l100rctx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

