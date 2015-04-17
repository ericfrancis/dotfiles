#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT_DIR=$( cd "$DIR" && cd .. && pwd )
LINK_DIR=$( cd "$ROOT_DIR"/link && pwd )
COPY_DIR=$( cd "$ROOT_DIR"/copy && pwd )
SOURCE_DIR=$( cd "$ROOT_DIR"/source && pwd )

echo "Linking files in $LINK_DIR"
for file in "$LINK_DIR"/*; do
	base=$(basename "$file")
	rm -rf ~/."$base"
	ln -sv "$file" ~/."$base" 
done

echo "Copying files in $COPY_DIR"
for file in "$COPY_DIR"/*; do
	base=$(basename "$file")
	[ -e ~/."$base" ] && echo skipping "$base" && break
	cp "$file" ~/."$base" && echo copying "$base"
done

