#!/bin/sh

OWLDIRECTORY=src/main/resources/davide

setup () {
    OBDAFILE=$OWLDIRECTORY/npd-v2-ql_a.obda
    
    LINE=`grep 'jdbc:mysql' $OBDAFILE`

    ## Replace the line in the file
    
    NEW_URL='jdbc:mysql://10.7.39/npd_1'
    
    OLD_URL=`echo $LINE | awk '{print $2}'`
    OLD_URL=`escape_sed $OLD_URL`
    NEW_URL=`escape_sed $NEW_URL`
    echo "s/$OLD_URL/$NEW_URL/g"
    sed "s/$OLD_URL/$NEW_URL/g" $OBDAFILE > ${OBDAFILE}_1
    
}

# escapestr_sed()
# read a stream from stdin and escape characters in text that could be interpreted as
# special characters by sed
escape_sed() {
 echo $1 | sed \
  -e 's/\//\\\//g' \
  -e 's/\&/\\\&/g'
}

do_test () {
    for i in 1 2 3 4 5 6 7 8
    do
	DBNAME=`cat $i/dbName`
	echo $DBNAME
	java -jar Mixer.jar $DBNAME 10 "$i/npd-v2-ql_a.owl" "$i/npd-v2-ql_a.obda" true > "$i/stdout.txt"
	cp src/main/resources/davide/stats.txt "$i/"
	cp src/main/resources/davide/statsMixer.txt "$i"
    done
}

do_test
