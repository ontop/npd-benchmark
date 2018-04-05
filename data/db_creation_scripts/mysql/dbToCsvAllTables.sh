#!/bin/bash

method () {
local USERNAME="$1"
local PASSWORD="$2"
local DATABASE="$3"
local TABLE="$4"
local OUT_DIR="$5"
    
    ./dbToCsv.sh "$USERNAME" "$PASSWORD" "$DATABASE" "$TABLE" "$OUT_DIR"
}

main () {
local USERNAME="$1"
local PASSWORD="$2"
local DATABASE="$3"
local OUT_DIR="$4"
    
    rm -rf *.tmp

    mysql --silent -N --user=$USERNAME --password=$PASSWORD -e "use ${DATABASE}; show tables;" > allTables.tmp

    cat allTables.tmp | while read line
			do
			    method "$USERNAME" "$PASSWORD" "$DATABASE" "$line" "$OUT_DIR"
			done
}

if [ $# -eq 4 ]
then
    USERNAME="$1"
    PASSWORD="$2"
    DATABASE="$3"
    OUT_DIR="$4"
    
    main "$USERNAME" "$PASSWORD" "$DATABASE" "$OUT_DIR"
else
    echo Usage: ./dbToCsvAllTables.sh username password database out_dir
fi
