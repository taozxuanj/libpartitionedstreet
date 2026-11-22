#!/usr/bin/env bash
set -e
REPO="taozxuanj/libpartitionedstreet"
TAG="hidden-harbor-bright-ember"
LIB="measure-port.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
