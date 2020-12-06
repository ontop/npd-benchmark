npd-benchmark (v1.10.1)
====================

Official Documentation: 

* http://ontop.github.io/npd-benchmark/ (All versions)

Components of the NPD Benchmark (v1.10.1)

* **NPD Dataset** (mysql dump of the original dataset, postgres and mysql schemas)

* **Vig v1.8.1**: Generates custom datasets starting from the NPD Dataset (https://github.com/ontop/vig)

* **OWL 2 QL NPD ontology** (containing information about petroleum activities on the Norwegian continental shelf)

* **R2RML and OBDA mappings** for PostgreSQL and MySQL

* **31 between Real World and Technical Queries**:

  * 13 BGP Queries
  * 2 Queries with OPTIONAL
  * 7 Queries with Aggregate Functions
  * 9 Queries with Tree-witnesses (currently formulated as BGPs)

* **OBDA-Mixer v1.2.0**: Automatized Test Platform (https://github.com/ontop/obda-mixer) for OBDA Systems

Credits & Disclaimer
--------

This benchmark is based on the NPD FactPages <a
href="https://sws.ifi.uio.no/project/npd-v2/">Semantic Web Data</a>
(March 2014) described in:

Publishing the Norwegian Petroleum Directorate's FactPages as Semantic
Web Data. Skjæveland, M. G.; Lian, E. H.; Horrocks I. In Proc. of the
2013 Int. Conf. on the Semantic Web (ISWC 2013), volume 8219 of LNCS,
pages 162-177. Springer, 2013.
(http://www.cs.ox.ac.uk/ian.horrocks/Publications/download/2013/SkLH13a.pdf)

The Norwegian Petroleum Directorate (NPD) does not provide any
warranty nor takes any responsibility on this work nor on any of the
provided files.

The mappings, ontology, and query files have been adapted for OBDA benchmarking purposes.

Publications 
---------

* **The NPD benchmark: Reality check for OBDA systems**. Davide Lanti, Martin Rezk, Guohui Xiao, and Diego Calvanese. In Proc. of the 18th Int. Conf. on Extending Database Technology (EDBT 2015). ACM Press, 2015. (http://openproceedings.org/2015/conf/edbt/paper-350.pdf)

* **A Scalable Benchmark for OBDA Systems**. Preliminary Report. Calvanese, D.; Lanti, D.
; Rezk, M.; Slusnys, M.; and Xiao, G. In Proc. of the 3rd Int. Workshop on OWL Re
asoner Evaluation (ORE 2014), 2014. (http://www.ghxiao.org/publications/2014-ore-npd.pdf)

* **The NPD Benchmark for OBDA Systems**. Lanti, D.; Rezk, M.; Slusnys, M.; Xiao, G.; and
 Calvanese, D. In Proc. of the 10th International Workshop on Scalable Semantic Web 
Knowledge Base Systems (SSWS 2014), 2014. (http://www.ghxiao.org/publications/2014-ssws-npd.pdf) 

Presentations and Results
----------

[(Outdated) Talk at EDBT 2015](https://github.com/ontop/npd-benchmark/tree/master/evaluations/edbt2015Talk)

Contacts
----------

* [Davide Lanti](http://www.inf.unibz.it/~dlanti/)
* [Guohui Xiao](http://www.ghxiao.org)
* [Diego Calvanese](http://www.inf.unibz.it/~calvanese/)
