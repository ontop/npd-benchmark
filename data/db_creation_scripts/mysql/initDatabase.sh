dbName=$1

mysql --user="fish" --host="localhost" --password="fish" $dbName < ../../mysql/original_npd/npd.mysql
