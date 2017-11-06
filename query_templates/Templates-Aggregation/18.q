PREFIX : <http://sws.ifi.uio.no/vocab/npd-v2#>
PREFIX isc: <http://resource.geosciml.org/classifier/ics/ischart/>
PREFIX nlxv: <http://sws.ifi.uio.no/vocab/norlex#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX npd: <http://sws.ifi.uio.no/data/npd-v2/>
PREFIX void: <http://rdfs.org/ns/void#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX ex: <http://example.org/ex#>
PREFIX quest: <http://obda.org/quest#>
PREFIX diskos: <http://sws.ifi.uio.no/data/diskos/>
PREFIX nlx: <http://sws.ifi.uio.no/data/norlex/>
PREFIX ptl: <http://sws.ifi.uio.no/vocab/npd-v2-ptl#>
PREFIX npdv: <http://sws.ifi.uio.no/vocab/npd-v2#>
PREFIX geos: <http://www.opengis.net/ont/geosparql#>
PREFIX sql: <http://sws.ifi.uio.no/vocab/sql#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX diskosv: <http://sws.ifi.uio.no/vocab/diskos#>

SELECT ?field  (AVG(?oil) AS ?avgOil)  
WHERE {
   [ ] a npdv:FieldYearlyProduction ;
       npdv:productionForField [ npdv:name ?field ] ;
       npdv:producedOil            ?oil ;
       npdv:productionYear         ?year .
   FILTER (?year < ${1:field_production_totalt_NCS_year.prfYear:none}) 
} 
GROUP BY ?field
ORDER BY DESC(?avgOil)
