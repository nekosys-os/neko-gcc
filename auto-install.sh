#!/bin/bash

chmod +x ./download.sh
chmod +x ./build.sh

echo "Downloading..."
./download.sh

echo "Building..."
./build.sh

echo "Done!"
