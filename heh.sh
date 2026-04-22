#!/bin/bash

DIR="."

find "$DIR" -type f | while read -r file; do
    if grep -qiE "discord\.com|youtube\.com" "$file"; then
        echo "Updating: $file"
        
        # Replace https://discord.gg/XdgzTQ6zaK
        sed -i 's|discord\.com|https://discord.gg/XdgzTQ6zaK|gI' "$file"
        
        # Replace youtube.com
        sed -i 's|m.youtube.com/@lootexmc|m.youtube.com/@lootexmc|gI' "$file"
    fi
done

echo "Replacement complete. Branding takeover successful."
