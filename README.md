npd-benchmark (v1.7)
====================

Components of the NPD Benchmark (v1.7)

* **NPD Dataset** (mysql dump of the original dataset, postgres and mysql schemas)

* **Vig**: Generates custom datasets starting from the NPD Dataset (https://github.com/ontop/vig)

* **OWL 2 QL NPD ontology** (containing information about petroleum activities on the Norwegian continental shelf)

* **R2RML and OBDA mappings** for PostgreSQL and MySQL

* **30 between Real World and Technical Queries**:

  * **9 Classically Optimizable Queries**  (that is, queries that can be translated into efficient SQL by using only information in mappings, ontology, and database dependencies)

  * **21 Non-classically Optimizable Queries** (that is, queries that require information from the data [e.g., dependencies not specified in the database schema] in order the be translated into efficient SQL queries)

* **Mixer**: Automatized Test Platform (https://github.com/ontop/obda-mixer) for OBDA Systems with Java OWL API interface

For more info refer to the wiki

https://github.com/ontop/npd-benchmark/wiki

Credits & Disclaimer
--------

This benchmark is based on the [Norwegian Petroleum Directorate](http://sws.ifi.uio.
no/project/npd-v2/)
(March 2014). 
NPD does not provide any warranty nor takes any responsibility on this work nor on a
ny of the provided files.

The mappings, ontology, and query files have been adapted for OBDA benchmarking purposes.

Publications 
---------

* A Scalable Benchmark for OBDA Systems: Preliminary Report Calvanese, D.; Lanti, D.
; Rezk, M.; Slusnys, M.; and Xiao, G. In In Proc. of the 3rd Int. Workshop on OWL Re
asoner Evaluation (ORE 2014), 2014. (http://www.ghxiao.org/publications/2014-ore-npd.pdf)

* The NPD Benchmark for OBDA Systems Lanti, D.; Rezk, M.; Slusnys, M.; Xiao, G.; and
 Calvanese, D. In Proc. of the 10th International Workshop on Scalable Semantic Web 
Knowledge Base Systems (SSWS 2014), 2014. (http://www.ghxiao.org/publications/2014-ssws-npd.pdf) 

Contacts
----------

* [Davide Lanti](http://www.inf.unibz.it/~dlanti/)
* [Martin Rezk](http://www.inf.unibz.it/~mrezk/) 
* [Guohui Xiao](http://www.ghxiao.org)
* [Diego Calvanese](http://www.inf.unibz.it/~calvanese/)
