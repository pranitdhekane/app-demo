#!/bin/bash
echo "Fixing line endings and permissions..."
cd ./scripts || exit 1
sudo dos2unix *.sh
sudo chmod +x *.sh
