dbName=$1

: ${1?"Usage: $0 DB_NAME"}

mysql --user="fish" --host="localhost" --password="fish" $dbName < ../../mysql/schema_only/npd-schema.mysql
