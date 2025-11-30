#!/bin/bash
# =====================================================
# SidBox Build Script
# - Increments build number
# - Writes build info header
# - Cleans bin directory
# =====================================================

set -euo pipefail
IFS=$'\n\t'

# --- Configuration ---
PROJECT_DIR="/media/kbox/LinuxWrkDrv/work/electronics/SidBox5.6"
BIN_DIR="../bin"
BUILD_FILE="build_number.txt"
HEADER_FILE="build_number.h"
MAJOR=5
MINOR=4

# --- Navigate to project directory ---
cd "$PROJECT_DIR" || {
    echo "❌ Error: Failed to change to project directory: $PROJECT_DIR"
    exit 1
}

# --- Clean bin directory safely ---
#if [ -d "$BIN_DIR" ]; then
#    rm -f "$BIN_DIR"/* || {
#        echo "❌ Error: Failed to remove files in $BIN_DIR"
#        exit 1
#    }
#else
#    echo "⚠️ Warning: $BIN_DIR not found (skipping cleanup)"
#fi

# --- Read and sanitize build number ---
if [ -f "$BUILD_FILE" ]; then
    raw_buildnum=$(<"$BUILD_FILE")
    buildnum=$(echo "$raw_buildnum" | tr -d ';\r\n[:space:]')
    echo "🔧 DEBUG: Raw build_number.txt content: '$raw_buildnum'"
    echo "🔧 DEBUG: Cleaned buildnum: '$buildnum'"
else
    echo "❌ Error: $BUILD_FILE not found"
    exit 1
fi

# --- Validate numeric value ---
if ! [[ "$buildnum" =~ ^[0-9]+$ ]]; then
    echo "❌ Error: Invalid build number in $BUILD_FILE: '$buildnum'"
    exit 1
fi

# --- Increment build number ---
buildnum=$((buildnum + 1))

# --- Get date/time components ---
year=$(date +%y)
mon=$(date +%m)
day=$(date +%d)
hour=$(date +%H)
min=$(date +%M)
sec=$(date +%S)
datecode="${day}/${mon}/${year} ${hour}:${min}:${sec}"

# --- Debug info ---
echo "🕒 Build timestamp: $datecode"
echo "🔢 Version: ${MAJOR}.${MINOR}.${buildnum}"

# --- Write back new build number ---
echo "${buildnum};" > "$BUILD_FILE" || {
    echo "❌ Error: Failed to write to $BUILD_FILE"
    exit 1
}

# --- Generate build_number.h header file ---
if ! cat << EOF > "$HEADER_FILE"
//  Auto-generated build info
//  Format: ARYEMNHRMNSS
#define build "${MAJOR}.${MINOR}.${buildnum} - ${datecode}"
#define CPT_DAY ${day}
#define CPT_MON ${mon}
#define CPT_YEAR 20${year}
EOF
then
    echo "❌ Error: Failed to write to $HEADER_FILE"
    exit 1
fi

echo "✅ Build header generated successfully: $HEADER_FILE"
echo "✅ Build number updated to $buildnum"
