#ifndef __USB_SHORTCUTTER_H
#define __USB_SHORTCUTTER_H

#include "stdint.h"

void handle_usb(void);
void usb_send_button_press(uint8_t btn_num);

#endif
