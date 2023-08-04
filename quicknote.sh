#!/bin/bash

note_dir=$HOME/.local/share/quicknote

if [ -d $note_dir ]
then
  echo "Quicknote directory exists"
else
  echo "Quicknote directory not exists, creating..."
  mkdir -p $note_dir
fi

fn_timestamp=$(date --iso-8601=s | tr -d ':' | tr -d '+')
full_filename=$note_dir/note_$fn_timestamp.txt

echo $full_filename

yad --title=Quicknote --width=600 --height=800 --text-info --editable >> $full_filename
notify-send "Quicknote saved" "Note saved in $full_filename"
