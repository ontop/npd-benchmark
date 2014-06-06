#!/bin/sh


# Specify here the tests that need to be performed as a number in the for cycle.
# 
#
#

do_test () {
    for i in 1 2 3 4 5 6 7 8 # Test with parameters in folders 1 ... 8
    do
	DBNAME=`cat $i/dbName` # Read the database name
	echo $DBNAME
	java -jar Mixer.jar $DBNAME 10 "$i/npd-v2-ql_a.owl" "$i/npd-v2-ql_a.obda" true > "$i/stdout.txt" # Run the mix 10 times, and put the results in $i/stdout.txt
													 # True stands for "Rewriting ON" (Tree-witness Rewriting)

	# Put the executiion statistics in the $i folder.
	cp src/main/resources/davide/stats.txt "$i/" 
	cp src/main/resources/davide/statsMixer.txt "$i"
    done
}

do_test
