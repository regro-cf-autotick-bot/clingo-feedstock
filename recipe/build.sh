#!/bin/bash

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
    -DPython_FIND_STRATEGY="LOCATION" \
    -DPython_ROOT_DIR=${PREFIX} \
    -DCLINGO_REQUIRE_PYTHON=ON \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DPYCLINGO_INSTALL_DIR="${SP_DIR}" \
    -DPYCLINGO_USER_INSTALL=OFF \
    -DCLINGO_BUILD_WITH_LUA=OFF \
    -DCLINGO_MANAGE_RPATH=OFF \
    -DCMAKE_INSTALL_LIBDIR="lib" \
    -DCMAKE_BUILD_TYPE=Release

make VERBOSE=1 -j${CPU_COUNT}
make install

