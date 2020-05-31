/*
 * Template library for handling button events.
 * @date    30-May-2020
 * @author  Domen Jurkovic
 * @source  http://damogranlabs.com/
 *          https://github.com/damogranlabs
 */
#ifndef __BUTTONS_USER_H
#define __BUTTONS_USER_H

#include "stdint.h"

#include "stm32l1xx.h"
#include "stm32l1xx_ll_gpio.h"

#define NUM_OF_BUTTONS 9

#define BTN_GPIO_PORT_TYPE GPIO_TypeDef
#define BTN_GPIO_PIN_TYPE uint32_t

#define BTN_PRESS_TIME_MS 30 // usual debounce time
#define BTN_AFTER_PRESS_TIME_MS 15 // time after which new press-es are allowed to happen
// NOTE: BTN_AFTER_PRESS_TIME_MS does not affect REPETITIVE mode timing settings

#define BTN_LONGPRESS_TIME_MS 2000 // in case button mode is BTN_MODE_LONGPRESS

#define BTN_REPETITIVE_PRESS_TIME_MS 500 // in case button mode is BTN_MODE_REPETITIVE

#endif

