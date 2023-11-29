#!/bin/bash

export BUILD_DIR="../build"
export BUILD_VERBOSE=1
export BOARD=ESP32_GENERIC_C6
mkdir -p $BUILD_DIR


idf.py \
--no-warnings \
--verbose \
-D IDF_TARGET=esp32c6 \
-D MICROPY_BOARD=$BOARD \
-D MICROPY_BOARD_DIR=$PWD/ports/esp32/boards/$BOARD \
-B $BUILD_DIR \
-C ports/esp32 \
build
