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
SELECT  ?fr ?OE ?oil ?gas ?NGL ?con  
WHERE {
   ?fr a npdv:FieldReserve ;
       #npdv:name ?field ;
       npdv:remainingCondensate     ?con ;
       npdv:remainingGas            ?gas ;
       npdv:remainingNGL            ?NGL ;
       npdv:remainingOil            ?oil ;
       npdv:remainingOilEquivalents ?OE  .
	
	FILTER(?gas < 100)

} ORDER BY DESC(?OE)

21:17:58.573 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Executing query: 
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
SELECT  ?fr ?OE ?oil ?gas ?NGL ?con  
WHERE {
   ?fr a npdv:FieldReserve ;
       #npdv:name ?field ;
       npdv:remainingCondensate     ?con ;
       npdv:remainingGas            ?gas ;
       npdv:remainingNGL            ?NGL ;
       npdv:remainingOil            ?oil ;
       npdv:remainingOilEquivalents ?OE  .
	
	FILTER(?gas < 100)

} ORDER BY DESC(?OE)

21:17:58.577 [Thread-2] DEBUG i.u.k.o.o.c.t.SparqlAlgebraToDatalogTranslator - SPARQL algebra: 
Projection
   ProjectionElemList
      ProjectionElem "fr"
      ProjectionElem "OE"
      ProjectionElem "oil"
      ProjectionElem "gas"
      ProjectionElem "NGL"
      ProjectionElem "con"
   Order
      OrderElem (DESC)
         Var (name=OE)
      Filter
         Compare (<)
            Var (name=gas)
            ValueConstant (value="100"^^<http://www.w3.org/2001/XMLSchema#integer>)
         Join
            Join
               Join
                  Join
                     Join
                        StatementPattern
                           Var (name=fr)
                           Var (name=-const-http://www.w3.org/1999/02/22-rdf-syntax-ns#type-uri, value=http://www.w3.org/1999/02/22-rdf-syntax-ns#type, anonymous)
                           Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve, anonymous)
                        StatementPattern
                           Var (name=fr)
                           Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate, anonymous)
                           Var (name=con)
                     StatementPattern
                        Var (name=fr)
                        Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#remainingGas-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#remainingGas, anonymous)
                        Var (name=gas)
                  StatementPattern
                     Var (name=fr)
                     Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL, anonymous)
                     Var (name=NGL)
               StatementPattern
                  Var (name=fr)
                  Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#remainingOil-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#remainingOil, anonymous)
                  Var (name=oil)
            StatementPattern
               Var (name=fr)
               Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents, anonymous)
               Var (name=OE)

21:17:58.577 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Translated query: 
ans1(fr,OE,oil,gas,NGL,con) :- ans2(NGL,OE,con,fr,gas,oil)
ans2(NGL,OE,con,fr,gas,oil) :- ans4(NGL,OE,con,fr,gas,oil), LT(gas,http://www.w3.org/2001/XMLSchema#integer(100))
ans4(NGL,OE,con,fr,gas,oil) :- ans8(NGL,con,fr,gas,oil), ans9(OE,fr)
ans8(NGL,con,fr,gas,oil) :- ans16(NGL,con,fr,gas), ans17(fr,oil)
ans16(NGL,con,fr,gas) :- ans32(con,fr,gas), ans33(NGL,fr)
ans32(con,fr,gas) :- ans64(con,fr), ans65(fr,gas)
ans64(con,fr) :- ans128(fr), ans129(con,fr)
ans128(fr) :- http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)
ans129(con,fr) :- http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con)
ans65(fr,gas) :- http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas)
ans33(NGL,fr) :- http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL)
ans17(fr,oil) :- http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil)
ans9(OE,fr) :- http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE)

21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Flattened query: 
ans1(fr,OE,oil,gas,NGL,con) :- http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr), http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con), http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas), http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL), http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil), http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE), LT(gas,http://www.w3.org/2001/XMLSchema#integer(100))

21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Replacing equivalences...
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Normalized program: 
ans1(fr,OE,oil,gas,NGL,con) :- http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr), http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con), http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas), http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL), http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil), http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE), LT(gas,http://www.w3.org/2001/XMLSchema#integer(100))

21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Start the rewriting process...
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - CONNECTED COMPONENT ([fr, OE, oil, NGL, gas, con]) EXISTS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter -      WITH EDGES [edge: {fr, OE}[http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][], edge: {fr, oil}[http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][], edge: {fr, NGL}[http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][], edge: {fr, gas}[http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][], edge: {fr, con}[http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][]] AND LOOP null
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter -      NON-DL ATOMS [LT(gas,http://www.w3.org/2001/XMLSchema#integer(100))]
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - TREE WITNESSES FOUND: 0
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {fr, OE}[http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][]
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {fr, oil}[http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][]
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {fr, NGL}[http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][]
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {fr, gas}[http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][]
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {fr, con}[http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con)][http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr)][]
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents_EXT IS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve_EXT IS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#remainingOil_EXT IS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL_EXT IS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#remainingGas_EXT IS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate_EXT IS []
21:17:58.579 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - REWRITTEN PROGRAM
ans1(fr,OE,oil,gas,NGL,con) :- LT(gas,http://www.w3.org/2001/XMLSchema#integer(100)), http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE), http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr), http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil), http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL), http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas), http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con)
CC DEFS
null
21:17:58.580 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - Rewriting time: 0.001 s (total 3.433 s)
21:17:58.580 [Thread-2] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - Final rewriting:
ans1(fr,OE,oil,gas,NGL,con) :- LT(gas,http://www.w3.org/2001/XMLSchema#integer(100)), http://sws.ifi.uio.no/vocab/npd-v2#remainingOilEquivalents(fr,OE), http://sws.ifi.uio.no/vocab/npd-v2#FieldReserve(fr), http://sws.ifi.uio.no/vocab/npd-v2#remainingOil(fr,oil), http://sws.ifi.uio.no/vocab/npd-v2#remainingNGL(fr,NGL), http://sws.ifi.uio.no/vocab/npd-v2#remainingGas(fr,gas), http://sws.ifi.uio.no/vocab/npd-v2#remainingCondensate(fr,con)

21:17:58.580 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Start the partial evaluation process...
21:17:58.580 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Partial evaluation: 
ans1(URI("http://sws.ifi.uio.no/data/npd-v2/field/{}/reserve",t13_2),http://www.w3.org/2001/XMLSchema#decimal(t11_2),http://www.w3.org/2001/XMLSchema#decimal(t7_2),http://www.w3.org/2001/XMLSchema#decimal(t8_2),http://www.w3.org/2001/XMLSchema#decimal(t9_2),http://www.w3.org/2001/XMLSchema#decimal(t10_2)) :- LT(http://www.w3.org/2001/XMLSchema#decimal(t8_2),http://www.w3.org/2001/XMLSchema#integer(100)), field_reserves(t1_2,t2_2,t3_2,t4_2,t5_2,t6_2,t7_2,t8_2,t9_2,t10_2,t11_2,t12_2,t13_2,t14_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t11_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t9_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t8_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t10_2)

21:17:58.580 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - After target rules removed: 
ans1(URI("http://sws.ifi.uio.no/data/npd-v2/field/{}/reserve",t13_2),http://www.w3.org/2001/XMLSchema#decimal(t11_2),http://www.w3.org/2001/XMLSchema#decimal(t7_2),http://www.w3.org/2001/XMLSchema#decimal(t8_2),http://www.w3.org/2001/XMLSchema#decimal(t9_2),http://www.w3.org/2001/XMLSchema#decimal(t10_2)) :- LT(http://www.w3.org/2001/XMLSchema#decimal(t8_2),http://www.w3.org/2001/XMLSchema#integer(100)), field_reserves(t1_2,t2_2,t3_2,t4_2,t5_2,t6_2,t7_2,t8_2,t9_2,t10_2,t11_2,t12_2,t13_2,t14_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t11_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t9_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t8_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t10_2)

21:17:58.581 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Boolean expression evaluated: 
ans1(URI("http://sws.ifi.uio.no/data/npd-v2/field/{}/reserve",t13_2),http://www.w3.org/2001/XMLSchema#decimal(t11_2),http://www.w3.org/2001/XMLSchema#decimal(t7_2),http://www.w3.org/2001/XMLSchema#decimal(t8_2),http://www.w3.org/2001/XMLSchema#decimal(t9_2),http://www.w3.org/2001/XMLSchema#decimal(t10_2)) :- LT(http://www.w3.org/2001/XMLSchema#decimal(t8_2),http://www.w3.org/2001/XMLSchema#integer(100)), field_reserves(t1_2,t2_2,t3_2,t4_2,t5_2,t6_2,t7_2,t8_2,t9_2,t10_2,t11_2,t12_2,t13_2,t14_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t11_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t9_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t8_2), IS_NOT_NULL(t13_2), IS_NOT_NULL(t10_2)

21:17:58.581 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Partial evaluation ended.
21:17:58.581 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Producing the SQL string...
21:17:58.583 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Resulting sql: 
SELECT *
FROM (
SELECT 
   1 AS "frQuestType", NULL AS "frLang", CONCAT('http://sws.ifi.uio.no/data/npd-v2/field/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`fldNpdidField` AS CHAR(8000) CHARACTER SET utf8),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F'), '/reserve') AS `fr`, 
   5 AS "OEQuestType", NULL AS "OELang", CAST(QVIEW1.`fldRemainingOE` AS CHAR(8000) CHARACTER SET utf8) AS `OE`, 
   5 AS "oilQuestType", NULL AS "oilLang", CAST(QVIEW1.`fldRemainingOil` AS CHAR(8000) CHARACTER SET utf8) AS `oil`, 
   5 AS "gasQuestType", NULL AS "gasLang", CAST(QVIEW1.`fldRemainingGas` AS CHAR(8000) CHARACTER SET utf8) AS `gas`, 
   5 AS "NGLQuestType", NULL AS "NGLLang", CAST(QVIEW1.`fldRemainingNGL` AS CHAR(8000) CHARACTER SET utf8) AS `NGL`, 
   5 AS "conQuestType", NULL AS "conLang", CAST(QVIEW1.`fldRemainingCondensate` AS CHAR(8000) CHARACTER SET utf8) AS `con`
 FROM 
field_reserves QVIEW1
WHERE 
(QVIEW1.`fldRemainingGas` < 100) AND
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldRemainingOE` IS NOT NULL AND
QVIEW1.`fldRemainingOil` IS NOT NULL AND
QVIEW1.`fldRemainingNGL` IS NOT NULL AND
QVIEW1.`fldRemainingGas` IS NOT NULL AND
QVIEW1.`fldRemainingCondensate` IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW.`OE`

21:17:58.584 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Executing the query and get the result...
21:17:58.592 [Thread-2] DEBUG i.u.k.o.o.core.QuestStatement - Execution finished.

<http://sws.ifi.uio.no/data/npd-v2/field/43437/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43444/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43513/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43541/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43555/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43568/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43576/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43583/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43597/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43610/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43665/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43785/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43792/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/853376/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1272071/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4467554/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4999528/reserve>, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/3437659/reserve>, "0.100000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21105675/reserve>, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/3437650/reserve>, "0.300000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/18161341/reserve>, "0.400000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43520/reserve>, "0.500000"^^xsd:decimal, "0.400000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/97002/reserve>, "0.700000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.700000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43604/reserve>, "0.900000"^^xsd:decimal, "0.700000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1028599/reserve>, "0.980000"^^xsd:decimal, "0.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/104718/reserve>, "1.100000"^^xsd:decimal, "1.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/3420717/reserve>, "1.100000"^^xsd:decimal, "1.000000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43485/reserve>, "1.290000"^^xsd:decimal, "0.900000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4973114/reserve>, "1.380000"^^xsd:decimal, "0.000000"^^xsd:decimal, "1.000000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43492/reserve>, "1.590000"^^xsd:decimal, "0.900000"^^xsd:decimal, "0.500000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21106284/reserve>, "1.600000"^^xsd:decimal, "0.300000"^^xsd:decimal, "1.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21613906/reserve>, "1.600000"^^xsd:decimal, "1.500000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1630100/reserve>, "1.680000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.700000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.600000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4005142/reserve>, "1.780000"^^xsd:decimal, "0.400000"^^xsd:decimal, "1.000000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/2138816/reserve>, "1.800000"^^xsd:decimal, "0.500000"^^xsd:decimal, "1.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/18212090/reserve>, "10.110000"^^xsd:decimal, "0.600000"^^xsd:decimal, "7.800000"^^xsd:decimal, "0.900000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43778/reserve>, "10.720000"^^xsd:decimal, "3.800000"^^xsd:decimal, "5.400000"^^xsd:decimal, "0.800000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43686/reserve>, "11.600000"^^xsd:decimal, "11.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/20461008/reserve>, "11.710000"^^xsd:decimal, "2.700000"^^xsd:decimal, "7.300000"^^xsd:decimal, "0.900000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/22507971/reserve>, "12.100000"^^xsd:decimal, "12.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4966234/reserve>, "12.190000"^^xsd:decimal, "5.600000"^^xsd:decimal, "4.500000"^^xsd:decimal, "1.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1578840/reserve>, "12.960000"^^xsd:decimal, "5.900000"^^xsd:decimal, "6.300000"^^xsd:decimal, "0.400000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/20460988/reserve>, "13.720000"^^xsd:decimal, "11.900000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.800000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43765/reserve>, "134.620000"^^xsd:decimal, "18.600000"^^xsd:decimal, "84.100000"^^xsd:decimal, "16.800000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43807/reserve>, "14.100000"^^xsd:decimal, "14.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21350124/reserve>, "14.190000"^^xsd:decimal, "13.400000"^^xsd:decimal, "0.600000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43758/reserve>, "15.760000"^^xsd:decimal, "14.900000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.400000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43732/reserve>, "15.770000"^^xsd:decimal, "15.000000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43506/reserve>, "156.780000"^^xsd:decimal, "129.800000"^^xsd:decimal, "22.800000"^^xsd:decimal, "2.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43751/reserve>, "16.390000"^^xsd:decimal, "3.000000"^^xsd:decimal, "9.400000"^^xsd:decimal, "2.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43562/reserve>, "16.800000"^^xsd:decimal, "16.200000"^^xsd:decimal, "0.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43800/reserve>, "18.360000"^^xsd:decimal, "15.700000"^^xsd:decimal, "0.000000"^^xsd:decimal, "1.400000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/2834734/reserve>, "2.000000"^^xsd:decimal, "2.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43464/reserve>, "2.270000"^^xsd:decimal, "0.000000"^^xsd:decimal, "1.300000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.400000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43672/reserve>, "2.320000"^^xsd:decimal, "0.700000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.800000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1578893/reserve>, "2.400000"^^xsd:decimal, "1.100000"^^xsd:decimal, "1.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43478/reserve>, "2.460000"^^xsd:decimal, "0.000000"^^xsd:decimal, "1.500000"^^xsd:decimal, "0.400000"^^xsd:decimal, "0.200000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1854729/reserve>, "20.070000"^^xsd:decimal, "6.000000"^^xsd:decimal, "9.700000"^^xsd:decimal, "2.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/18116481/reserve>, "20.570000"^^xsd:decimal, "11.700000"^^xsd:decimal, "6.400000"^^xsd:decimal, "1.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4467595/reserve>, "21.100000"^^xsd:decimal, "5.100000"^^xsd:decimal, "12.200000"^^xsd:decimal, "2.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/2845712/reserve>, "22.200000"^^xsd:decimal, "17.500000"^^xsd:decimal, "4.700000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43457/reserve>, "27.150000"^^xsd:decimal, "0.000000"^^xsd:decimal, "19.800000"^^xsd:decimal, "1.500000"^^xsd:decimal, "4.500000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1630514/reserve>, "27.460000"^^xsd:decimal, "3.300000"^^xsd:decimal, "15.800000"^^xsd:decimal, "4.400000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43658/reserve>, "27.890000"^^xsd:decimal, "4.300000"^^xsd:decimal, "11.400000"^^xsd:decimal, "6.100000"^^xsd:decimal, "0.600000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43645/reserve>, "28.240000"^^xsd:decimal, "17.200000"^^xsd:decimal, "8.000000"^^xsd:decimal, "1.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21675433/reserve>, "29.140000"^^xsd:decimal, "26.200000"^^xsd:decimal, "1.800000"^^xsd:decimal, "0.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43590/reserve>, "3.300000"^^xsd:decimal, "1.600000"^^xsd:decimal, "1.700000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43679/reserve>, "3.570000"^^xsd:decimal, "3.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21123063/reserve>, "3.600000"^^xsd:decimal, "3.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/22492497/reserve>, "3.700000"^^xsd:decimal, "3.400000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/21675447/reserve>, "30.030000"^^xsd:decimal, "6.000000"^^xsd:decimal, "19.700000"^^xsd:decimal, "0.700000"^^xsd:decimal, "3.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/20460969/reserve>, "33.470000"^^xsd:decimal, "4.900000"^^xsd:decimal, "26.100000"^^xsd:decimal, "1.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/1035937/reserve>, "36.100000"^^xsd:decimal, "36.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/5774394/reserve>, "38.070000"^^xsd:decimal, "30.200000"^^xsd:decimal, "7.300000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/18081500/reserve>, "4.000000"^^xsd:decimal, "0.800000"^^xsd:decimal, "3.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/20474183/reserve>, "4.080000"^^xsd:decimal, "3.200000"^^xsd:decimal, "0.500000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43451/reserve>, "4.400000"^^xsd:decimal, "1.400000"^^xsd:decimal, "1.100000"^^xsd:decimal, "1.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4380167/reserve>, "4.500000"^^xsd:decimal, "4.000000"^^xsd:decimal, "0.500000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4444332/reserve>, "4.640000"^^xsd:decimal, "0.800000"^^xsd:decimal, "2.700000"^^xsd:decimal, "0.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43527/reserve>, "43.080000"^^xsd:decimal, "37.300000"^^xsd:decimal, "5.400000"^^xsd:decimal, "0.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/4467574/reserve>, "48.640000"^^xsd:decimal, "6.400000"^^xsd:decimal, "27.800000"^^xsd:decimal, "7.600000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43534/reserve>, "5.670000"^^xsd:decimal, "1.500000"^^xsd:decimal, "3.600000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43651/reserve>, "5.770000"^^xsd:decimal, "4.000000"^^xsd:decimal, "1.200000"^^xsd:decimal, "0.300000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43548/reserve>, "52.580000"^^xsd:decimal, "41.500000"^^xsd:decimal, "6.900000"^^xsd:decimal, "2.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43699/reserve>, "58.200000"^^xsd:decimal, "16.600000"^^xsd:decimal, "32.100000"^^xsd:decimal, "5.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/3392471/reserve>, "6.200000"^^xsd:decimal, "6.200000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/3505505/reserve>, "6.400000"^^xsd:decimal, "6.300000"^^xsd:decimal, "0.100000"^^xsd:decimal, "0.000000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43618/reserve>, "6.430000"^^xsd:decimal, "1.800000"^^xsd:decimal, "3.300000"^^xsd:decimal, "0.700000"^^xsd:decimal, "0.000000"^^xsd:decimal, 
<http://sws.ifi.uio.no/data/npd-v2/field/43725/reserve>, "6.780000"^^xsd:decimal, 