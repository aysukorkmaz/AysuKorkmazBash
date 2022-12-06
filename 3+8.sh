#!/bin/bash

echo "Which software would you like to download?"

echo "1 - Apache"
echo "2 - Nginx"
echo "3 - MariaDB"
echo "4 - phpMyAdmin"

read choice;

case $choice in
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
