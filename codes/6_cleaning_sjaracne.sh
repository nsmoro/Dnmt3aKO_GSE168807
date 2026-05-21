#!/bin/bash

find /home/scMINER/SJARACNe -name runSJARACNe.sh | while read file; do
  # Keep only lines starting with 'sjaracne lsf'
  grep '^sjaracne lsf' "$file" > "$file.tmp"
  mv "$file.tmp" "$file"
done

