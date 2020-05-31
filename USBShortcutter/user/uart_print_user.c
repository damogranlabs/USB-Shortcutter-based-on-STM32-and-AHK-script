/*
 * Template library for creating an Arduino-like UART print API.
 * @date    26-Apr-2020
 * @author  Domen Jurkovic
 * @source  http://damogranlabs.com/
 *          https://github.com/damogranlabs
 */
#include "uart_print_user.h"

// add hardware-specific inlcudes and defines
#include "stm32l1xx_ll_usart.h"

/**
 * @brief Send data over UART peripheral
 * @param pointer to a data
 * @param size of the data (number of bytes to send)
 * @retval None
 * TODO: implement hardware specific UART handling.
 */
void send_data(uint8_t *data, uint16_t size) {
  uint16_t byte;

  for (byte = 0; byte < size; byte++) {
    // wait while TX data register is not empty
    while (!LL_USART_IsActiveFlag_TXE(USART1)) {
    }

    LL_USART_TransmitData8(USART1, *(data + byte));

    // wait while TX data register is not empty
    while (!LL_USART_IsActiveFlag_TXE(USART1)) {
    }
  }
}
