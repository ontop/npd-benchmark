# Benchmark Rules 

## Run Rules

This document describes the rules to evaluate the performance of a set of OBDA systems 
through the OBDA benchmark.
### Rule  1

The mappings, ontology, database schema, and queries that can be used for a specific version of the benchmark are only those shipped with that version of the benchmark.

### Rule 2

The data instances allowed for a specific version of the benchmark are only those provided with that specific version of the benchmark, or those scaled by [VIG](https://github.com/ontop/vig) starting from the NPD data instance specific to that version of the benchmark.

### Rule 3

To ensure replicability of results, tests are to be ran through the [obda-mixer](https://github.com/ontop/obda-mixer) testing platform.

### Rule 4 

When testing over an instance npd_scale_XXX, the obda-mixer should be configured to use values from npd_scale_XXX to instantiate queries out of query templates.

### Rule 5

When comparing different systems, these should all be ran through the use of the same query interface. For instance, results collected while running a system through its shell interface and another through an HTML interface should not be compared.

=== Work in Progress ===