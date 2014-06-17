The source code can be found at 

https://github.com/ontop/vig

and it is released under Apache Licence v2.5.

-------------------------------------------------------------------------------------------

Change the connection parameters in configuration file and resources/npd-v2-ql_a.obda file.

Usage: java -jar Generator.jar -f size

Size - Number of times to increase original data (float number, 2 means double the data)

%%% Guide to configuration file %%%%

The configuration file looks like the following:

JdbcConnector jdbc:mysql
DbUrlOriginal url:port/dbName
DbUsernameOriginal user
DbPasswordOriginal pwd
DbUrlToPump url:port/dbToBePumpedName
DbUsernameToPump user
DbPasswordToPump pwd
randomGen false
obdaFile resources/npd-v2-ql_a.obda
pumperType DB

Description of important fields:

- DbUrlOriginal: it contains the url of the initial database.
- DbUrlToPump: it contains the url of a copy of the initial database. This copy is the one that will be "pumped" by the generator.
