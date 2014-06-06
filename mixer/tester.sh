#!/bin/sh

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
