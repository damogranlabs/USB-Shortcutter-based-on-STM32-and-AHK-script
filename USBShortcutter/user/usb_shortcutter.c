#include "usb_shortcutter.h"
#include "usbd_customhid.h"
#include "usb_device.h"

#include "uart_print.h"
#include "ring_buffer.h"

#include "usb_hid_keys.h"

#define USB_REPORT_DATA_SIZE 8

#define BASE_KEY_NUM KEY_F18

extern USBD_HandleTypeDef hUsbDeviceFS;

extern rb_att_t key_press_buff;

uint32_t next_send_timestamp = 0;
uint8_t data[USB_REPORT_DATA_SIZE] = { 0 }; // Modifier keys, reserved, 6x keycode

/*
 * Periodically send USB report frames.
 * If any keys are pressed == ring buffer length > 1, send key code. Otherwise, send 0x0.
 */
void handle_usb(void) {
  uint8_t buff_data[1];
  if (HAL_GetTick() < next_send_timestamp) {
    return;
  }

  rb_status_t rb_status = ring_buffer_get(&key_press_buff, buff_data, 1);
  if (rb_status == RB_OK) {
    // avoid using hotkeys if possible since there can be a collision if multiple devices
    // are toggling modifier keys at once
    data[2] = buff_data[0]; // keycode 1
    USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, data, USB_REPORT_DATA_SIZE);
  }
  else {
    data[2] = KEY_NONE; // keycode 1
    USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, data, USB_REPORT_DATA_SIZE);

    if (rb_status == RB_ERROR) {
      Error_Handler();
    }
  }

  next_send_timestamp = HAL_GetTick() + CUSTOM_HID_FS_BINTERVAL;

}

/*
 * Add button action to USB buffer, which is handled by handle_usb().
 */
void usb_send_button_press(uint8_t btn_num) {
  btn_num = btn_num + BASE_KEY_NUM;

  ring_buffer_put(&key_press_buff, (uint8_t*) &btn_num, 1);
}
