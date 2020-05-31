################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/usb_shortcutter.c 

OBJS += \
./user/usb_shortcutter.o 

C_DEPS += \
./user/usb_shortcutter.d 


# Each subdirectory must supply rules for building sources it contributes
user/usb_shortcutter.o: ../user/usb_shortcutter.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L100xC -DUSE_FULL_LL_DRIVER -DDEBUG -c -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/Libs" -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc -I"D:/Stromarija/STM32CubeIDEWorkspace/../Libs" -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I"D:/Stromarija/STM32/STM32L1xx/Projects/USBShortcutter/user" -I../Drivers/CMSIS/Include -I../Core/Inc -I../USB_DEVICE/App -I"D:/Stromarija/STM32CubeIDEWorkspace/../STM32/STM32L1xx/Libs" -I../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"user/usb_shortcutter.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

