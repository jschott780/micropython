#!/bin/bash

esptool.py -p /dev/cu.usbserial-1410 \
-b 460800 \
--before default_reset \
--after hard_reset \
write_flash \
--flash_mode dio \
--flash_size 4MB \
--flash_freq 40m \
0x1000 ../build/bootloader/bootloader.bin 0x8000 \
../build/partition_table/partition-table.bin 0x10000 \
../build/micropython.bin
