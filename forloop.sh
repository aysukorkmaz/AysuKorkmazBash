#!/bin/bash
#Print files listed in a directory
target="/home/Documents/AysuKorkmazBash/txtfiles/" #Where the files are located
for f in "$target"/*  #For each file in the variable target, 
do
    echo $(basename $f)	#Output all the visible files 
done
