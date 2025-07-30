#!/bin/bash
# Convert line endings and make scripts executable
echo "Fixing line endings and permissions..."
dos2unix scripts/*.sh
chmod +x scripts/*.sh
