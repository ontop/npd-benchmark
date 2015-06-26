#!/bin/bash

#usage: ./loadCsvToTable.sh csv db_addr username table_name db_type

postgres () {
    CSV=$1
    DB_ADDR=$2
    USERNAME=$3
    PWD=$4
    TABLE_NAME=$5

    echo $DB_ADDR $USERNAME $TABLE_NAME

    #PGPASSWORD=postgres psql --user=${USERNAME} --dbname=$DB_ADDR -c "COPY "'"'$TABLE_NAME'"'" FROM '$CSV' DELIMITER '"'`'"' CSV;"

    PGPASSWORD= psql --user=${USERNAME} --dbname=$DB_ADDR -c "COPY "'"'$TABLE_NAME'"'" FROM '$CSV' DELIMITER '"'`'"';"
}

db2 () {
    CSV=$1
    DB_ADDR=$2
    USERNAME=$3
    PWD=$4
    TABLE_NAME=$5

    echo $DB_ADDR $USERNAME $TABLE_NAME
    
    db2 import from $CSV of del insert into '"'${TABLE_NAME}'"'         ####### MODIFY

   # db2 CONNECT RESET
    
}


if [ $# -eq  6 ]
then
    CSV=$1
    DB_ADDR=$2
    TABLE_NAME=$3
    USER=$4
    PWD=$5
    DB_TYPE=$6
    if [ $DB_TYPE == postgres ]
    then
	postgres $CSV $DB_ADDR $USER $PWD $TABLE_NAME
    else 
	if [ $DB_TYPE == db2 ]
	then
	    db2 $CSV $DB_ADDR $USER $PWD $TABLE_NAME
	else
	    if [ $DB_TYPE == mysql ]
	    then
		echo 'SET foreign_key_checks = 0;' > sql.tmp
		echo LOAD DATA INFILE "'"${CSV}"'" INTO TABLE $TABLE_NAME FIELDS TERMINATED BY "'"'`'"'" >> sql.tmp
		cat sql.tmp 
		mysql $DB_ADDR --user=$USER --password=$PWD < sql.tmp
		rm sql.tmp
	    else
		echo "usage: ./loadCsvToTable.sh csv db_addr table_name username password db_type (db_type = postgres, mysql, db2)"
	    fi
	fi
    fi
else 
    		echo "usage: ./loadCsvToTable.sh csv db_addr table_name username password db_type (db_type = postgres, mysql, db2)"
fi



