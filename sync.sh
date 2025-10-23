#!/bin/bash

# Sync CLAUDE.md from this repository to home folder
# One-way sync: repo -> ~/CLAUDE.md

SOURCE="$(dirname "$0")/CLAUDE.md"
DEST="$HOME/CLAUDE.md"

if [ ! -f "$SOURCE" ]; then
    echo "Error: Source file $SOURCE does not exist"
    exit 1
fi

cp "$SOURCE" "$DEST"
echo "✓ Synced $SOURCE to $DEST"
