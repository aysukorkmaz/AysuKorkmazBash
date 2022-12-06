#!/bin/bash

echo "Which software would you like to download?" #Asks admin what package they'd like to install 

echo "1 - Apache"      #Deliver four options 
echo "2 - Nginx"
echo "3 - MariaDB"
echo "4 - phpMyAdmin"

read choice;       #User picks whichever one they'd like to install

case $choice in    #Depending on which number user chooses, automatic installation of that software occurs. 
	1) 
	sudo apt update
   	sudo apt install apache2
   	echo "apache"
   	;;
	2) 
	sudo apt update 
   	sudo apt install nginx
   	echo "nginx"
   	;;
	3) 
	sudo apt update
   	sudo apt install mariadb-server
   	echo "mariadb"
   	;;
	4) 
	sudo apt update
   	sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl
   	echo "php myadmin"
   	;;
esac
