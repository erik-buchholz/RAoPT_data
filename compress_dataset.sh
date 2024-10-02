#!/usr/bin/env bash

DIRECTORY="./RAoPT/processed_csv"
OUTPUT_DIR="./Code/RAoPT_data"
CHUNK_SIZE=99M

# Create an output directory
mkdir -p $OUTPUT_DIR

# Compress and split the entire directory into chunks smaller than the specified size
tar -czf - -C "$(dirname "$DIRECTORY")" "$(basename "$DIRECTORY")" | split -b $CHUNK_SIZE - "$OUTPUT_DIR/processed_csv.part.tar.gz."

echo "The directory has been split and compressed into $OUTPUT_DIR."
