#!/bin/bash
set -Eeuo pipefail

# Archive existing config directory with timestamp

CONFIG_DIR="${1:?Config directory required}"
ARCHIVE_DIR="$HOME/.config/__archives__"

# Skip if directory doesn't exist
if [ ! -d "$CONFIG_DIR" ]; then
    echo "Warning: $CONFIG_DIR does not exist, skipping archive"
    exit 0
fi

# Create archive directory and archive with timestamp
mkdir -p "$ARCHIVE_DIR"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
mv "$CONFIG_DIR" "$ARCHIVE_DIR/$(basename "$CONFIG_DIR")--$TIMESTAMP.bk"
