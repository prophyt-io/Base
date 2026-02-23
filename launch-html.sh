#!/bin/bash
# Launch all HTML files in the Prophyt directory in default browser

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Find all HTML files and open them
for file in "$DIR"/*.html; do
    if [ -f "$file" ]; then
        echo "Opening: $(basename "$file")"
        xdg-open "$file" 2>/dev/null || open "$file" 2>/dev/null || start "$file" 2>/dev/null
    fi
done

echo "Done!"
