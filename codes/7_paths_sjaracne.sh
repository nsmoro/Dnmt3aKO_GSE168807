#!/bin/bash

# Traverse all subdirectories of Dnmt3aKO and find runSJARACNe.sh files
find /home/scMINER/SJARACNe -type f -name "runSJARACNe2.sh" | while read -r file; do
    echo "Updating: $file"
    # Replace Windows-style path with Linux-style path
    sed -i 's|Z:/ResearchHome/ClusterHome/|/home/|g' "$file"
done

