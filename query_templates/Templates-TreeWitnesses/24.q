PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#> 
SELECT DISTINCT ?member ?wc ?length ?coresTotalNo   
WHERE {
      {
	?member npdv:member ?awc.
      	?wc npdv:coreForWellbore [ rdf:type npdv:Wellbore ];   
     	npdv:coresTotalLength ?length;
      	npdv:coresTotalNo ?coresTotalNo;
      	npdv:coreIntervalUOM "[m   ]"^^xsd:string . # Meters		      
      }
      UNION 
      { 
      	?wc npdv:coresTotalLength ?l ;
      	npdv:coreIntervalUOM "[ft   ]"^^xsd:string . # Feets
      	BIND((?l * 0.3048) AS ?length)		      
      }   
FILTER(?length > ${1:wellbore_core.wlbTotalCoreLength:none})
}