#!/bin/bash
#######
##
## Linux VM set-up script
##
## Updates all the software and sets the root user and mysql root to 
##    random password
##
#######
if [ $(id -u) -eq 0 ]; then
	sudo apt-get update && time sudo apt-get dist-upgrade
	wait
	sleep 1
	Userpassword=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-10};echo;)
	#echo $Userpassword | passwd --stdin
	#echo "This user's (root) password is now : $Userpassword" 
	sudo passwd -e heather
	echo "This user's (heather) password has been expired." 
	wait
	sleep 1
	SQLPWD=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-10};echo;)
	mysqladmin -u root -p password $SQLPWD 
	echo "The new root MySQL password is : $SQLPWD"
	wait
	sleep 1
	echo "--------------------------------------------------------"
	echo "-THIS IS THE ONLY TIME YOU WILL SEE THE PASSWORDS ABOVE-"
	echo "-                                                      -"
	echo "-If you do not store them somewhere safe you will not  -"
	echo "-be able to access this system!!!                      -"
	echo "-                                                      -"
	echo "--------------------------------------------------------"
	exit 1
else
	echo "Only root may run this script"
	exit 2
fi
