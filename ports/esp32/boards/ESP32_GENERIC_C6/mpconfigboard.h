// Both of these can be set by mpconfigboard.cmake if a BOARD_VARIANT is
// specified.

#define MICROPY_HW_BOARD_NAME "ESP32C6 module"
#define MICROPY_HW_MCU_NAME "ESP32C6"
#define MICROPY_PY_NETWORK_HOSTNAME_DEFAULT "esp32c6"
#define MICROPY_HW_ENABLE_SDCARD (0)
#define MICROPY_GCREGS_SETJMP (1)
#define MICROPY_PY_MACHINE_DAC (0)
