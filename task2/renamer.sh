#!/bin/bash

if [ -z $1 ] ; then
  echo "Please provide path to directory to rename files" && exit 1;
fi

DIR=$1

for f in "$DIR"/*; do
	base="$(basename -- $f)"
	dir="$(dirname -- $f)"
	mv $f "$dir/old_$base"
done



