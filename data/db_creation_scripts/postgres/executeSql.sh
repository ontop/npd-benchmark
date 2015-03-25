#!/bin/bash

#Usage ./executeSql.sh file.sql DB_NAME USER DB_TYPE [where DB_TYPE=mysql, db2, or postgres]

FILE=$1
DB_NAME=$2
USER=$3
PWD=$4
DB_TYPE=$5


if [ $# -eq 5 ] 
then    
    case "$DB_TYPE" in 
	'postgres')
	    PGPASSWORD=${PWD} psql --user=$USER --dbname=$DB_NAME -f $FILE
	    ;;
	'mysql')
	    mysql $DB_NAME --user=$USER --password=${PWD} < $FILE 
	    ;;
	#'db2')
	#    db2 -tvsf $FILE # Maybe it still lacks some "db2 connect to db; db2 connect reset
	#    ;;
    esac
else
    echo Usage "./executeSql.sh file.sql DB_NAME USER PASSWORD DB_TYPE [where DB_TYPE=mysql, db2, or postgres]"
fi
