#!/bin/bash
# Install script for omarchy-vibez-sync

set -e

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

echo "Installing omarchy-vibez-sync to $INSTALL_DIR..."
cp omarchy-vibez-sync "$INSTALL_DIR/omarchy-vibez-sync"
chmod +x "$INSTALL_DIR/omarchy-vibez-sync"

echo "Running initial setup..."
"$INSTALL_DIR/omarchy-vibez-sync" install

echo "Done! You can now use the 'omarchy-vibez-sync' command."
