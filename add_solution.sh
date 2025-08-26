
#!/bin/bash

# Usage: ./add_solution.sh difficulty number "Problem Title"

DIFFICULTY=$1
NUMBER=$2
TITLE=$3

# Format filename: number_title.sql
FILENAME="${NUMBER}_$(echo "$TITLE" | tr ' ' '_' | tr '[:upper:]' '[:lower:]').sql"

# Navigate to repo
cd ~/Documents/leetcode-sql

# Check if difficulty folder exists
if [ ! -d "$DIFFICULTY" ]; then
    echo "❌ Difficulty folder '$DIFFICULTY' does not exist."
    exit 1
fi

# Create file with boilerplate
cat <<EOL > "$DIFFICULTY/$FILENAME"
-- Problem $NUMBER: $TITLE
-- Difficulty: $DIFFICULTY
-- Date: $(date '+%Y-%m-%d')

/* Write your SQL solution below */

EOL

echo "✅ Created $DIFFICULTY/$FILENAME"

# Git add, commit, and push
git add "$DIFFICULTY/$FILENAME"
git commit -m "Added [$DIFFICULTY] $NUMBER - $TITLE"
git push origin main

