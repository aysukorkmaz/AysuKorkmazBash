#!/bin/bash

target=/home/Documents/AysuKorkmazBash/  #The directory we would like to check for the files

echo "Please enter a file name to check if it exists" #Ask user to input a file name
read target	  #User inputs file name

if [ -d $target ] #If the file is in the directory 'target' (if statement true),
then 
    echo "This file exists"		#Output
else					#If not
    echo "This file does not exist"	#Output this
fi
