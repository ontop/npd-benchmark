Content 
==========

This folder contains two folders, namely "mysql" and "postgres", containing the dumps of the npd database. Sub-directories "no-spatial" contain dumps for which geometric fields have been removed, so as to maximize the portability of the benchmark.

The original NPD dataset is **./mysql/spatial/npd-data-dump.sql.7z**. Other dumps have been obtained by using the data generator over the original dataset. For example, **./mysql/spatial/npd_10.sql.7z** contains the dump obtained by increasing the original dataset of 10 times (that is, it is 11 times bigger than the original database). 
