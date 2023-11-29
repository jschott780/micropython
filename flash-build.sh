#!/bin/bash

export BUILD_DIR="../build"
export BUILD_VERBOSE=1
<<<<<<< HEAD
export BOARD=ESP32_GENERIC_C6
mkdir -p $BUILD_DIR

=======
export BOARD=ESP32_GENERIC
mkdir -p $BUILD_DIR

#rm -rf $BUILD_DIR
rm -rf $BUILD_DIR/logs
>>>>>>> 0f6afd1cbdae2df9d3cdf02890697097d619a98c

idf.py \
--no-warnings \
--verbose \
<<<<<<< HEAD
-D IDF_TARGET=esp32c6 \
=======
>>>>>>> 0f6afd1cbdae2df9d3cdf02890697097d619a98c
-D MICROPY_BOARD=$BOARD \
-D MICROPY_BOARD_DIR=$PWD/ports/esp32/boards/$BOARD \
-B $BUILD_DIR \
-C ports/esp32 \
build
