#!/bin/bash

# Author: Jan Erik Zassenhaus

read -p "Please enter the path to search in: " -i "${HOME}/" -e SEARCH_PATH

echo -n "Please provide the string to SEARCH for: "
read SEARCH_TERM

echo -n "Please provide the string to be REPLACED: "
read REPLACE_TERM

find "${SEARCH_PATH}" -type f -name '*.ini' -o -name '*.xml' -o -name '*.sql' | xargs sed -i 's/'"${SEARCH_TERM}"'/'"${REPLACE_TERM}"'/g'
