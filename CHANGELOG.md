NPD Benchmark v1.10.0
-----

- Updated queries, plus one additional query
  - Rewritten queries: 12.rq, and from 22.rq to 30.rq
  - New query: 31.rq (join of 09.rq and 06.rq)
- Mappings and ontology fixes:
  - Remove xsd^^dateTime in favor of xsd^^date
  - New .obda mappings for Ontop v3.0
- Alignment of schema constraints between the PostgreSQL and MySQL versions
- VIG version 1.8.1 (https://github.com/ontop/vig)
- OBDA-Mixer version 1.2.0 (https://github.com/ontop/obda-mixer)
  - New template syntax
  - New access methods to OBDA systems
  	- HTTP SPARQL endpoint interface
	- Shell interface

NPD Benchmark v1.9.0
---

- Updated ontology
- Various fixes in the mappings files
- Updated queries
- VIG version 1.8.0 (https://github.com/ontop/vig)
- OBDA-Mixer version 1.1.0 (https://github.com/ontop/obda-mixer)

NPD Benchmark v1.8.0
---

- Support for Fixed-domain columns. That is, literals used in the mappings are re-used if already present in the original data instance.

NPD Benchmark v1.7.1
---

- Mappings adapted to ontop versions >= 1.17

NPD Benchmark v1.7
---

- 21 -> 30 Queries
- 8 Queries with Tree-witnesses
- New data generator with initial support to ontology-based statistics
- Fixed inconsistencies in database dependencies (foreign keys) and ontology
- SQL Scripts for adding-removing indexes/keys (PostgreSQL and MySQL)
- Generated data adaptable to any RDBMS (CSV files)

NPD Benchmark v1.1
---

- 14 -> 21 Queries
- Queries with Aggregates
- Datatypes Fix
- PostgreSQL Support

NPD Benchmark v1.0
---

- 14 queries
- MySQL support
