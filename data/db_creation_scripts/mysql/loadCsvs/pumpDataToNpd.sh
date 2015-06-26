#!/bin/bash

pump () {
    DATA_FILE=$1
    DB_NAME=$2
    USER=$3
    TABLE_NAME_EXT=`basename $DATA_FILE`
    TABLE_NAME=${TABLE_NAME_EXT%.csv}                                                              
    echo [script] Pumping table '"'$TABLE_NAME'"'                              

    ./loadCsvToTable.sh $DATA_FILE $DB_NAME $TABLE_NAME $USER $PWD mysql 
}

: ${4?"Usage: $0 DB_NAME DB_USER DB_PWD CSVS_DIR"}

DB_NAME=$1
USER=$2
PWD=$3
CSVS_DIR=$4


FILES=${CSVS_DIR}/*                 

for F in $FILES 
do
    #echo $F
    pump $F $DB_NAME $USER $PWD
done
