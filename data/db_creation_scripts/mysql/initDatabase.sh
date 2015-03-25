dbName=$1

mysql --user="user" --host="localhost" --password="pwd" $dbName < ../../mysql/original_npd/npd_v2.sql
