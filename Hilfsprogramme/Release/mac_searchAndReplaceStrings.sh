#!/bin/bash

# ------------------------------------------------------------------
# [Author] Jan Erik Zassenhaus, Stefan Wendhausen
#          Search and replace for a given string in a directory.
#          e.g. to search for a version number.
#          Searching in .ini, .xml, .sql files.
#          This is the MAC OS version.
# ------------------------------------------------------------------

read -p "Please enter the path to search in: " -e SEARCH_PATH

echo -n "Please provide the string to SEARCH for: "
read SEARCH_TERM

echo -n "Please provide the string to be REPLACED: "
read REPLACE_TERM

find "${SEARCH_PATH}" -type f -name '*.ini' -o -name '*.xml' -o -name '*.sql' | xargs sed -i '' 's/'"${SEARCH_TERM}"'/'"${REPLACE_TERM}"'/g'
