PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>
SELECT DISTINCT ?wellbore ?wc ?well ?length
 WHERE { 
  ?wellbore npdv:wellboreForDiscovery ?discovery;
            npdv:belongsToWell ?well.  
  ?wc npdv:coreForWellbore ?wellbore.
  {  
     ?wc npdv:coresTotalLength ?lmeters ;
         npdv:coreIntervalUOM "[m   ]"^^xsd:string .
         BIND(?lmeters AS ?length)
  } 
  UNION
  {
    ?wc npdv:coresTotalLength ?lfeets ;
        npdv:coreIntervalUOM "[ft   ]"^^xsd:string .
    BIND((?lfeets * 0.3048) AS ?length) 
  }                
  FILTER (?length < ${1:wellbore_core.wlbTotalCoreLength})
}
