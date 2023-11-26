#!/bin/bash

export BUILD_DIR="../build"
export BUILD_VERBOSE=1
export BOARD=ESP32_GENERIC
mkdir -p $BUILD_DIR

#rm -rf $BUILD_DIR
rm -rf $BUILD_DIR/logs

idf.py \
--no-warnings \
--verbose \
-D MICROPY_BOARD=$BOARD \
-D MICROPY_BOARD_DIR=$PWD/ports/esp32/boards/$BOARD \
-B $BUILD_DIR \
-C ports/esp32 \
build
