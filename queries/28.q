PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>
SELECT DISTINCT ?wellbore ?wc ?well 
		   WHERE { 
		      	   ?wellbore npdv:wellboreForDiscovery ?discovery;
		      	             npdv:belongsToWell ?well.  
		      	   ?wc npdv:coreForWellbore ?wellbore.
		   }