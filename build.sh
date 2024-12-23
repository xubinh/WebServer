#!/usr/bin/env bash

set -x

SOURCE_DIR="$(pwd)"
BUILD_DIR=${BUILD_DIR:-./build} # e.g. `./build`
BUILD_TYPE=${BUILD_TYPE:-Debug} # e.g. `Debug`

mkdir -p "$BUILD_DIR/$BUILD_TYPE" # e.g. `./build/Debug`
    
cd "$BUILD_DIR/$BUILD_TYPE" || exit 1
    
cmake -DCMAKE_BUILD_TYPE="$BUILD_TYPE"  "$SOURCE_DIR"
    
make