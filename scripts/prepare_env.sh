#!/bin/bash
echo "Fixing line endings and permissions..."
sudo dos2unix *.sh
sudo chmod +x *.sh
