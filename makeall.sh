#!/bin/bash

MODE=$1
[ -z "$MODE" ] && MODE="all"

echo "Scanning directories for Makefiles..."

ROOTDIR=$(pwd)

find "$ROOTDIR" -type f -name "Makefile" | while read -r makefile; do
    DIR=$(dirname "$makefile")
    echo
    echo "Found Makefile in: $DIR"

    if [[ "$MODE" == "clean" || "$MODE" == "all" ]]; then
        echo "Cleaning..."
        (cd "$DIR" && make clean)
    fi

    if [[ "$MODE" == "build" || "$MODE" == "all" ]]; then
        echo "Building..."
        (cd "$DIR" && make)
    fi
done

echo
echo "Done!"
read -p "Press enter to continue..."
