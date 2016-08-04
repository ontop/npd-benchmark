		   ## All wellbores related to discovery and relative wells and the names of the companies operating there ( Circa 6300 risultati risultati )
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>
SELECT DISTINCT ?wellbore ?wc ?well ?length
		   WHERE { 
		      	   ?wellbore npdv:wellboreForDiscovery ?discovery;
		      	    		 npdv:belongsToWell ?well.  
		      	    ?wc npdv:coreForWellbore ?wellbore;
		      	        npdv:coresTotalLength ?length;
		      	        npdv:coreIntervalUOM "[ft   ]"^^xsd:string . # feets
		      	        	      	        
	FILTER (?length < ${1:wellbore_core.wlbTotalCoreLength})		   
}
