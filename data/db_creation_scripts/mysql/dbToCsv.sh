#!/bin/bash

# Note: This thing works only on the same server where the db lies

## IMPORTANT !!! Before using this script, you need to grant a heck of privileges!!! 
#
#  > mysql -u root -p
# 
#  grant all privileges 
#  on provaNpdOriginal.* 
#  to 'tir'@'localhost' 
#  identified by 'password_for_tir';
#
#  GRANT FILE ON *.* TO 'fish'@'localhost';
#
# The files can be loaded from folder 
# root@jerry:/var/lib/mysql-files/csvs
# 
#  For an arbitrary folder, configure Apparmor!!
#
# sudo nano /etc/apparmor.d/usr.sbin.mysqld
#
# To the bottom, add
#
# /home/tir/dumps rw
# /home/tir/dumps/* rw
#
# sudo service apparmor restart

method () {

    USERNAME="$1"
    PASSWORD="$2"
    DBNAME="$3"
    TABLENAME="$4"
    OUT_DIR="$5"
    
    if [ ! -e "$OUT_DIR" ]
    then
	echo "Directory $OUT_DIR does not exist"
	exit -2
    fi
    
    echo mysqldump -u "$USERNAME" --password="${PASSWORD}" -t -T"$OUT_DIR" "$DBNAME" "$TABLENAME" --fields-terminated-by='`' --lock-tables=false
    mysqldump -u "$USERNAME" --password="${PASSWORD}" -t -T"$OUT_DIR" "$DBNAME" "$TABLENAME" --fields-terminated-by='`' --lock-tables=false
}

if [ "$#" -eq 5 ]
then
    method "$1" "$2" "$3" "$4" "$5" 
else
    echo Usage: ./dbToCsv.sh USERNAME PASSWORD DBNAME TABLENAME OUT_DIR
    echo Also, read the header of this script cause y need a heck of privileges for running this ...
    exit -1
fi

exit 0
