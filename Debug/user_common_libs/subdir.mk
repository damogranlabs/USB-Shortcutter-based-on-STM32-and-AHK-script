################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Stromarija/Libs/buttons.c \
D:/Stromarija/Libs/ring_buffer.c \
D:/Stromarija/Libs/uart_print.c 

OBJS += \
./user_common_libs/buttons.o \
./user_common_libs/ring_buffer.o \
./user_common_libs/uart_print.o 

C_DEPS += \
./user_common_libs/buttons.d \
./user_common_libs/ring_buffer.d \
./user_common_libs/uart_print.d 


# Each subdirectory must supply rules for building sources it contributes
user_common_libs/buttons.o: D:/Stromarija/Libs/buttons.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L100xC -DUSE_FULL_LL_DRIVER -DDEBUG -c -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/Libs" -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc -I"D:/Stromarija/STM32CubeIDEWorkspace/../Libs" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I"D:/Stromarija/STM32/STM32L1xx/Projects/USBShortcutter/user" -I../Drivers/CMSIS/Include -I../Core/Inc -I../USB_DEVICE/App -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/STM32L1xx/Libs" -I../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"user_common_libs/buttons.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
user_common_libs/ring_buffer.o: D:/Stromarija/Libs/ring_buffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L100xC -DUSE_FULL_LL_DRIVER -DDEBUG -c -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/Libs" -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc -I"D:/Stromarija/STM32CubeIDEWorkspace/../Libs" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I"D:/Stromarija/STM32/STM32L1xx/Projects/USBShortcutter/user" -I../Drivers/CMSIS/Include -I../Core/Inc -I../USB_DEVICE/App -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/STM32L1xx/Libs" -I../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"user_common_libs/ring_buffer.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
user_common_libs/uart_print.o: D:/Stromarija/Libs/uart_print.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L100xC -DUSE_FULL_LL_DRIVER -DDEBUG -c -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/Libs" -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc -I"D:/Stromarija/STM32CubeIDEWorkspace/../Libs" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I"D:/Stromarija/STM32/STM32L1xx/Projects/USBShortcutter/user" -I../Drivers/CMSIS/Include -I../Core/Inc -I../USB_DEVICE/App -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/STM32L1xx/Libs" -I../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"user_common_libs/uart_print.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

