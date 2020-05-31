/*
 * Template library for handling button events.
 * @date    30-May-2020
 * @author  Domen Jurkovic
 * @source  http://damogranlabs.com/
 *          https://github.com/damogranlabs
 */
#include "stdint.h"

#include "buttons.h"
#include "buttons_user.h"

// add custom includes here to access required defines, cpu-specific LL functions, ...
#include "main.h"
#include "uart_print.h"
#include <usb_shortcutter.h>

/**
 * @brief Low level call to get actual pin state.
 * @param Registered button configuration structure.
 * @retval BTN_PHY_ACTIVE on button press, BTN_PHY_IDLE otherwise.
 * TODO: user must implement this function to return button state.
 */
btn_phy_state_t get_button_pin_state(btn_cfg_t *btn_cfg) {
  uint32_t port_state = LL_GPIO_ReadInputPort(btn_cfg->gpio_port);
  uint32_t pin_state = READ_BIT(port_state, btn_cfg->gpio_pin);

  if (pin_state == 0) {
    return BTN_PHY_ACTIVE;
  }
  else {
    return BTN_PHY_IDLE;
  }
}

/**
 * @brief On press (short, repetitive) button callback
 * @param Registered button GPIO port that event is triggered.
 * @param Registered button GPIO pin that event is triggered.
 * @retval None.
 * TODO: user can add actions on button events here.
 */
void on_button_press(BTN_GPIO_PORT_TYPE *port, BTN_GPIO_PIN_TYPE pin) {
  if ((port == B1_GPIO_Port) && (pin == B1_Pin)) {
    printString("B1");
    usb_send_button_press(0);
  }
  if ((port == B2_GPIO_Port) && (pin == B2_Pin)) {
    printString("B2");
    usb_send_button_press(1);
  }
  if ((port == B3_GPIO_Port) && (pin == B3_Pin)) {
    printString("B3");
    usb_send_button_press(2);
  }

  if ((port == B4_GPIO_Port) && (pin == B4_Pin)) {
    printString("B4");
    usb_send_button_press(3);
  }

  if ((port == B5_GPIO_Port) && (pin == B5_Pin)) {
    printString("B5");
    usb_send_button_press(4);
  }

  if ((port == B6_GPIO_Port) && (pin == B6_Pin)) {
    printString("B6");
    usb_send_button_press(5);
  }

  if ((port == B7_GPIO_Port) && (pin == B7_Pin)) {
    printString("B7");
    usb_send_button_press(6);
  }

  if ((port == S3_GPIO_Port) && (pin == S3_Pin)) printString("S3");
  if ((port == S4_GPIO_Port) && (pin == S4_Pin)) printString("S4");
}

/**
 * @brief On press (long) button callback
 * @param Registered button GPIO port that event is triggered.
 * @param Registered button GPIO pin that event is triggered.
 * @retval None.
 * TODO: user can add actions on button events here.
 */
void on_button_longpress(BTN_GPIO_PORT_TYPE *port, BTN_GPIO_PIN_TYPE pin) {
  if ((port == B1_GPIO_Port) && (pin == B1_Pin)) printString("B1 L");
  if ((port == B2_GPIO_Port) && (pin == B2_Pin)) printString("B2 L");
  if ((port == B3_GPIO_Port) && (pin == B3_Pin)) printString("B3 L");
  if ((port == B4_GPIO_Port) && (pin == B4_Pin)) printString("B4 L");
  if ((port == B5_GPIO_Port) && (pin == B5_Pin)) printString("B5 L");
  if ((port == B6_GPIO_Port) && (pin == B6_Pin)) printString("B6 L");
  if ((port == B7_GPIO_Port) && (pin == B7_Pin)) printString("B7 L");
}
