PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>  
SELECT DISTINCT ?member ?wc ?length   
WHERE {
      ?member npdv:member ?wc.
      ?wc npdv:coreForWellbore [ rdf:type npdv:Wellbore ];   
      	  npdv:coresTotalLength ?length;
      	  npdv:coreIntervalUOM "[m   ]"^^xsd:string . # Meters
      FILTER(?length > ${1:wellbore_core.wlbTotalCoreLength:none})
}
