#!/bin/bash

while IFS= read -r line; do printf '%s\n' "$line"; done < txtfiles/results.txt

#Checks directory structure as it searches for only one specific file, in this case results.txt
#Instead of all the text files in the txtfiles folder, only prints out results.txt
