The original NPD SPARQL query set contains __25__ queries obtained by interviewing users
of the NPD dataset. Starting from the original NPD query set, we devised __30__
queries having different degrees of complexity. The query set contains all the __21__ queries from the version 1.1 of the benchmark, plus __8__ queries with tree-witnesses in order to test the rewriting triggered by the existential in the RHS of OWL 2 QL ontologies when using conjunctive queries.

We partition the query set as follows:

* **14 BGP Queries**
* **7 Queries with Aggregate Functions**
* **9 Queries with Tree-witnesses**

The following table reports statistics for each query in the benchmark.

## Queries Statistics

    query |  #join  | #tw | #BGPs | # opts |  Agg |  Filt. |  Mod. |  
    ------|--------|-------|--------|-----|------------------|-------|-----|
    **q1**  | 4  | 0 | 5 | 0 | N | Y | N | 
    **q2**  | 5  | 0 | 6 | 0| N| Y | N| 
    **q3**  | 3  | 0 | 4 | 0| N| Y| Y |
    **q4**  | 5  | 0 | 6 | 0| N| Y| Y |
    **q5**  | 5  | 0 | 6 | 0| N| Y| Y  |  
    **q6**  | 6  | 0 | 7 | 0| N| Y| Y |
    **q7**  | 7  | 0 | 8 | 0| N| Y| N |
    **q8**  | 3  | 0 | 4 | 0| N| Y| N |
    **q9**  | 3  | 0 | 4 | 0| N| Y| Y |
    **q10** | 2  | 0 | 3 | 0| N| Y| Y |
    **q11** | 7  | 0 | 8 | 0| N | Y| Y|
    **q12** | 8  | 0 | 10 | 0| N | Y| Y|
    **q13** | 2  | 0 | 3 | 2| N| Y| N |
    **q14** | 2  | 0 | 5 | 2| N| Y| N  |
    **q15**  | 4  | - | 5 | 0| Y| Y| N |
    **q16**  | 3  | - | 3 | 0| Y| Y | N |
    **q17**  | 8  | - | 8 | 0| Y | N | Y |
    **q18**  | 4  | - | 5 | 0| Y | N| N |
    **q19**  | 8  | - | 8 | 0| Y| N| N |
    **q20**  | 3  | - | 3 | 0 | Y| N| N |
    **q21**  | 3  | - | 3 | 0| Y| N| N|
    **q22**  | 1  | 1 | 2 | 0| N| N| N|
    **q23**  | 2  | 1 | 3 | 0| N| N| N|
    **q24**  | 2  | 1 | 3 | 0| N| N| N|
    **q25**  | 1  | 1 | 1 | 0| N| N| N|
    **q26**  | 2  | 1 | 1 | 0| N| N| N|
    **q27**  | 1  | 1 | 2 | 0| N| N| N|
    **q28**  | 2  | 1 | 3 | 0| N| N| N|
    **q29**  | 4  | 1 | 5 | 0| N| N| N|
    **q30**  | 6  | 1 | 7 | 0| N| N| N|

### Legenda
* **#join**: Total number of JOIN operators
* **#tw**: Number of tree-witnesses
* **max(#subcls)**: Maximum number of subclasses (resp., subrole) for a concept (resp., role) in the query
* **opt**: Number of optionals
* **Agg**: Aggregates **Y** es or **N** o
* **Filt**: Filters **Y** es or **N** o
* **Mod**: Modifiers **Y** es or **N** o

### Query q1

What are the licences, what is the interest applied to the respective licensees, and from when are them valid?

```
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>

SELECT DISTINCT ?licenceURI ?interest ?date
WHERE {
    ?licenceURI a npdv:ProductionLicence .   		
    [ ] a npdv:ProductionLicenceLicensee ;
      	npdv:dateLicenseeValidFrom ?date ;
      	npdv:licenseeInterest ?interest ;
      	npdv:licenseeForLicence ?licenceURI .   
   FILTER(?date > "1979-12-31T00:00:00"^^xsd:dateTime)	
}
```

### Query q2

Who are the operators for licences whose contracts were started after 1980?

```
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>

SELECT ?licenceURI ?company ?date
WHERE {
   ?licenceURI a npdv:ProductionLicence .
      [ ] a npdv:ProductionLicenceOperator ;
      npdv:dateOperatorValidFrom ?date ;
      npdv:licenceOperatorCompany [ npdv:name ?company ] ; 
      npdv:operatorForLicence ?licenceURI .
    FILTER(?date > "1979-12-31T00:00:00"^^xsd:dateTime)
} ORDER BY ?licenceURI
```

### Query q3

What are the licences whose expiration dates were after 1980? 

```
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>

SELECT ?licence ?dateGranted ?dateValidTo
WHERE {
   [ ] a npdv:ProductionLicence ;
      npdv:name ?licence ;
      npdv:dateLicenceGranted ?dateGranted ;
      npdv:dateLicenceValidTo ?dateValidTo .
      FILTER(?dateValidTo > "1979-12-31T00:00:00"^^xsd:dateTime)
} ORDER BY ?licence
```

### Query q6

This is a query that asks for the wellbores, their length, and the companies that completed the drilling of the wellbore after 2008, and sampled more than 50m of cores. 

```
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>

SELECT ?licence ?dateGranted ?dateValidTo
WHERE {
   [ ] a npdv:ProductionLicence ;
      npdv:name ?licence ;
      npdv:dateLicenceGranted ?dateGranted ;
      npdv:dateLicenceValidTo ?dateValidTo .
      FILTER(?dateValidTo > "1979-12-31T00:00:00"^^xsd:dateTime)
} ORDER BY ?licence
```