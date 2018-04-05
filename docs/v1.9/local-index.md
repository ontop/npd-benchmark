The NPD benchmark is a benchmark specifically designed for OBDA systems. An OBDA system is a system that separates the user from the physical data source(s) by means of a conceptual view of the data which provides the user with a convenient vocabulary.

The benchmark is made of the following components:

1. MySQL and PostegreSQL dumps for the original NPD dataset
2. [30 Real World and Technical Queries]([Queries])
3. [Ontology](Ontology)
4. [Mappings](Mappings) files, for PostgreSQL and MySQL
5. [VIG v.1.8.0](https://github.com/ontop/vig), a data-scaler for OBDA Benchmarks
6. [OBDA-Mixer v.1.1.0](https://github.com/ontop/obda-mixer), an extensible automatized testing platform that can be adapted in order to work with any OBDA system providing a Java OWL API

### Experimental

* [SWRL-NPD](SWRL-NPD) An enriched version of the NPD ontology with SWRL axioms. 

### Benchmark Rules

For information on how to use the benchmark for testing systems, please refer to the [rules](Benchmark Rules) page.

### Development and Future Directions

Check the [Development](Development) page.