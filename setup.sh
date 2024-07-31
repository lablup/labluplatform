#!/bin/bash

# Function to install pre-specified fonts
install_fonts() {
    FONT_DIR="$HOME/Library/Fonts"
    mkdir -p "$FONT_DIR"

    # Install Inter font
    INTER_URL="https://github.com/rsms/inter/releases/download/v4.0/Inter-4.0.zip"
    curl -L "$INTER_URL" -o "/tmp/Inter.zip"
    unzip -j "/tmp/Inter.zip" "Inter.ttc" -d "$FONT_DIR"

    # Install Pretendard font
    PRETENDARD_URL="https://github.com/orioncactus/pretendard/release/download/v1.3.9/Pretendard-1.3.9.zip"
    curl -L "$PRETENDARD_URL" -o "/tmp/Pretendard.zip"
    unzip -j "/tmp/Pretendard.zip" "public/static/alternative/*.ttf" -d "$FONT_DIR"

    echo "Font installation completed!"
}

# Execute all tasks
install_fonts