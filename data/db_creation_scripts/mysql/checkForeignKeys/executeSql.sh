#!/bin/bash

#Usage ./executeSql.sh file.sql DB_NAME USER DB_TYPE [where DB_TYPE=mysql, db2, or postgres]

FILE=$1
DB_NAME=$2
USER=$3
DB_TYPE=$4


if [ $# -eq 4 ] 
then    
    case "$DB_TYPE" in 
	'postgres')
	    psql --user=$USER --dbname=$DB_NAME --password -f $FILE
	    ;;
	'mysql')
	    mysql $DB_NAME --user=$USER --password < $FILE 
	    ;;
	'db2')
	    db2 -tvsf $FILE 
	    ;;
    esac
else
    echo Usage "./executeSql.sh file.sql DB_NAME USER DB_TYPE [where DB_TYPE=mysql, db2, or postgres]"
fi
