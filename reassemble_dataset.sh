#!/usr/bin/env bash

CHUNK_DIR="compressed/"
REASSEMBLE_DIR="."

# Create a directory for the reassembled dataset
mkdir -p $REASSEMBLE_DIR

# Combine the chunks and extract the original directory
cat "$CHUNK_DIR/processed_csv.part.tar.gz."* | tar -xzf - -C $REASSEMBLE_DIR

echo "The processed_csv directory has been reassembled into '$REASSEMBLE_DIR'."
