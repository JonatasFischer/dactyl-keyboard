#!/bin/bash

# Exit on error
set -e

echo "Syncing parts from Windows to local src/parts..."
mkdir -p ./src/parts
cp -r /mnt/d/dactyl-python/dactyl-keyboard/src/parts/* ./src/parts/

echo "Changing ownership to jonatas..."
chown -R jonatas:jonatas ./src/parts/

echo "Running generation (requires sudo for Docker)..."
sudo ./run.sh generate

echo "Syncing all files back to Windows..."
cp -r ./* /mnt/d/dactyl-python/dactyl-keyboard/

echo "Synchronization complete."