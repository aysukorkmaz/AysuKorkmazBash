#!/bin/bash


echo "Please enter your first name"     #Taking information from user 
read first_name

echo "Please enter your second name"
read second_name			#User input 

echo "Please enter your email"
read email

echo "Please enter your phone number"
read number

FULL_NAME="$first_name $second_name"    #String combined, Variable = FULL_NAME and is made up of first and second name
echo "Welcome to Furnitas $FULL_NAME";  #User's full name will be included in the message 
echo "Thank you for signing up with us"
