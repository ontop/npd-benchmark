PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#> 
SELECT DISTINCT ?licensee   
		   WHERE {
		         ?licensee npdv:licenseeForLicence ?licence.
		   }
