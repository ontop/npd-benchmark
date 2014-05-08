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
SELECT *
WHERE { 
  [ ] a npdv:Facility ;
      npdv:name ?facility ;
      npdv:registeredInCountry ?country;
      npdv:idNPD ?id . 
FILTER (?id > 400000)
}
ORDER BY ?facility


21:18:13.033 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Executing query: 
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
SELECT *
WHERE { 
  [ ] a npdv:Facility ;
      npdv:name ?facility ;
      npdv:registeredInCountry ?country;
      npdv:idNPD ?id . 
FILTER (?id > 400000)
}
ORDER BY ?facility


21:18:13.036 [Thread-10] DEBUG i.u.k.o.o.c.t.SparqlAlgebraToDatalogTranslator - SPARQL algebra: 
Projection
   ProjectionElemList
      ProjectionElem "facility"
      ProjectionElem "country"
      ProjectionElem "id"
   Order
      OrderElem (ASC)
         Var (name=facility)
      Filter
         Compare (>)
            Var (name=id)
            ValueConstant (value="400000"^^<http://www.w3.org/2001/XMLSchema#integer>)
         Join
            Join
               Join
                  StatementPattern
                     Var (name=-anon-1, anonymous)
                     Var (name=-const-http://www.w3.org/1999/02/22-rdf-syntax-ns#type-uri, value=http://www.w3.org/1999/02/22-rdf-syntax-ns#type, anonymous)
                     Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#Facility-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#Facility, anonymous)
                  StatementPattern
                     Var (name=-anon-1, anonymous)
                     Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#name-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#name, anonymous)
                     Var (name=facility)
               StatementPattern
                  Var (name=-anon-1, anonymous)
                  Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry, anonymous)
                  Var (name=country)
            StatementPattern
               Var (name=-anon-1, anonymous)
               Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#idNPD-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#idNPD, anonymous)
               Var (name=id)

21:18:13.036 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Translated query: 
ans1(facility,country,id) :- ans2(-anon-1,country,facility,id)
ans2(-anon-1,country,facility,id) :- ans4(-anon-1,country,facility,id), GT(id,http://www.w3.org/2001/XMLSchema#integer(400000))
ans4(-anon-1,country,facility,id) :- ans8(-anon-1,country,facility), ans9(-anon-1,id)
ans8(-anon-1,country,facility) :- ans16(-anon-1,facility), ans17(-anon-1,country)
ans16(-anon-1,facility) :- ans32(-anon-1), ans33(-anon-1,facility)
ans32(-anon-1) :- http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)
ans33(-anon-1,facility) :- http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility)
ans17(-anon-1,country) :- http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country)
ans9(-anon-1,id) :- http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id)

21:18:13.037 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Flattened query: 
ans1(facility,country,id) :- http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility), http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country), http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id), GT(id,http://www.w3.org/2001/XMLSchema#integer(400000))

21:18:13.038 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Replacing equivalences...
21:18:13.038 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Normalized program: 
ans1(facility,country,id) :- http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility), http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country), http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id), GT(id,http://www.w3.org/2001/XMLSchema#integer(400000))

21:18:13.038 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Start the rewriting process...
21:18:13.038 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - CONNECTED COMPONENT ([country, facility, id]) EXISTS [loop: {-anon-1}[http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)]]
21:18:13.038 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter -      WITH EDGES [edge: {-anon-1, country}[http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][], edge: {-anon-1, facility}[http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][], edge: {-anon-1, id}[http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][]] AND LOOP null
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter -      NON-DL ATOMS [GT(id,http://www.w3.org/2001/XMLSchema#integer(400000))]
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - QUANTIFIED VARIABLE -anon-1
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - EDGE edge: {-anon-1, country}[http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][] HAS PROPERTY http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country)
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - EDGE edge: {-anon-1, facility}[http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][] HAS PROPERTY http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility)
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - TREE WITNESSES FOUND: 0
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {-anon-1, country}[http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][]
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessReasonerLite - http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country) IS MORE SPECIFIC (2-1) THAN 
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {-anon-1, facility}[http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][]
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessReasonerLite - http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country) IS MORE SPECIFIC (2-1) THAN 
21:18:13.039 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {-anon-1, id}[http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id)][http://sws.ifi.uio.no/vocab/npd-v2#Facility(-anon-1)][]
21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessReasonerLite - http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country) IS MORE SPECIFIC (2-1) THAN 
21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry_EXT IS []
21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#idNPD_EXT IS []
21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - REWRITTEN PROGRAM
ans1(facility,country,id) :- GT(id,http://www.w3.org/2001/XMLSchema#integer(400000)), http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility), http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id)
CC DEFS
null
21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - Rewriting time: 0.002 s (total 3.475 s)
21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - Final rewriting:
ans1(facility,country,id) :- GT(id,http://www.w3.org/2001/XMLSchema#integer(400000)), http://sws.ifi.uio.no/vocab/npd-v2#registeredInCountry(-anon-1,country), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,facility), http://sws.ifi.uio.no/vocab/npd-v2#idNPD(-anon-1,id)

21:18:13.040 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Start the partial evaluation process...
21:18:13.060 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Partial evaluation: 
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), tuf_operator_hst(t1_44,t2_44,t3_44,t4_44,t7_10,t6_44,t7_44), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), tuf_owner_hst(t1_41,t2_41,t3_41,t4_41,t5_41,t7_10,t7_41,t8_41), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), facility_fixed(t1_39,t2_39,t3_39,t4_39,t5_39,t6_39,t7_39,t8_39,t9_39,t10_39,t11_39,t12_39,t13_39,t14_39,t15_39,t16_39,t17_39,t18_39,t19_39,t20_39,t21_39,t22_39,t23_39,t7_10,t25_39,t26_39), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), tuf_operator_hst(t1_63,t2_63,t3_63,t4_63,t7_10,t6_63,t7_63), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), tuf_owner_hst(t1_60,t2_60,t3_60,t4_60,t5_60,t7_10,t7_60,t8_60), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), facility_fixed(t1_58,t2_58,t3_58,t4_58,t5_58,t6_58,t7_58,t8_58,t9_58,t10_58,t11_58,t12_58,t13_58,t14_58,t15_58,t16_58,t17_58,t18_58,t19_58,t20_58,t21_58,t22_58,t23_58,t7_10,t25_58,t26_58), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), tuf_operator_hst(t1_82,t2_82,t3_82,t4_82,t7_10,t6_82,t7_82), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), tuf_owner_hst(t1_79,t2_79,t3_79,t4_79,t5_79,t7_10,t7_79,t8_79), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), tuf_operator_hst(t1_101,t2_101,t3_101,t4_101,t7_10,t6_101,t7_101), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), tuf_owner_hst(t1_98,t2_98,t3_98,t4_98,t5_98,t7_10,t7_98,t8_98), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), facility_fixed(t1_96,t2_96,t3_96,t4_96,t5_96,t6_96,t7_96,t8_96,t9_96,t10_96,t11_96,t12_96,t13_96,t14_96,t15_96,t16_96,t17_96,t18_96,t19_96,t20_96,t21_96,t22_96,t23_96,t7_10,t25_96,t26_96), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), tuf_operator_hst(t1_145,t2_145,t3_145,t4_145,t7_9,t6_145,t7_145), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), tuf_owner_hst(t1_142,t2_142,t3_142,t4_142,t5_142,t7_9,t7_142,t8_142), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), facility_fixed(t1_140,t2_140,t3_140,t4_140,t5_140,t6_140,t7_140,t8_140,t9_140,t10_140,t11_140,t12_140,t13_140,t14_140,t15_140,t16_140,t17_140,t18_140,t19_140,t20_140,t21_140,t22_140,t23_140,t7_9,t25_140,t26_140), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), tuf_operator_hst(t1_164,t2_164,t3_164,t4_164,t7_9,t6_164,t7_164), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), tuf_owner_hst(t1_161,t2_161,t3_161,t4_161,t5_161,t7_9,t7_161,t8_161), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), facility_fixed(t1_159,t2_159,t3_159,t4_159,t5_159,t6_159,t7_159,t8_159,t9_159,t10_159,t11_159,t12_159,t13_159,t14_159,t15_159,t16_159,t17_159,t18_159,t19_159,t20_159,t21_159,t22_159,t23_159,t7_9,t25_159,t26_159), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), tuf_operator_hst(t1_183,t2_183,t3_183,t4_183,t7_9,t6_183,t7_183), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), tuf_owner_hst(t1_180,t2_180,t3_180,t4_180,t5_180,t7_9,t7_180,t8_180), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), tuf_operator_hst(t1_202,t2_202,t3_202,t4_202,t7_9,t6_202,t7_202), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), tuf_owner_hst(t1_199,t2_199,t3_199,t4_199,t5_199,t7_9,t7_199,t8_199), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), facility_fixed(t1_197,t2_197,t3_197,t4_197,t5_197,t6_197,t7_197,t8_197,t9_197,t10_197,t11_197,t12_197,t13_197,t14_197,t15_197,t16_197,t17_197,t18_197,t19_197,t20_197,t21_197,t22_197,t23_197,t7_9,t25_197,t26_197), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), tuf_operator_hst(t1_246,t2_246,t3_246,t4_246,t7_8,t6_246,t7_246), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), tuf_owner_hst(t1_243,t2_243,t3_243,t4_243,t5_243,t7_8,t7_243,t8_243), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), facility_fixed(t1_241,t2_241,t3_241,t4_241,t5_241,t6_241,t7_241,t8_241,t9_241,t10_241,t11_241,t12_241,t13_241,t14_241,t15_241,t16_241,t17_241,t18_241,t19_241,t20_241,t21_241,t22_241,t23_241,t7_8,t25_241,t26_241), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), tuf_operator_hst(t1_265,t2_265,t3_265,t4_265,t7_8,t6_265,t7_265), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), tuf_owner_hst(t1_262,t2_262,t3_262,t4_262,t5_262,t7_8,t7_262,t8_262), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), facility_fixed(t1_260,t2_260,t3_260,t4_260,t5_260,t6_260,t7_260,t8_260,t9_260,t10_260,t11_260,t12_260,t13_260,t14_260,t15_260,t16_260,t17_260,t18_260,t19_260,t20_260,t21_260,t22_260,t23_260,t7_8,t25_260,t26_260), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), tuf_operator_hst(t1_284,t2_284,t3_284,t4_284,t7_8,t6_284,t7_284), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), tuf_owner_hst(t1_281,t2_281,t3_281,t4_281,t5_281,t7_8,t7_281,t8_281), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), tuf_operator_hst(t1_303,t2_303,t3_303,t4_303,t7_8,t6_303,t7_303), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), tuf_owner_hst(t1_300,t2_300,t3_300,t4_300,t5_300,t7_8,t7_300,t8_300), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), facility_fixed(t1_298,t2_298,t3_298,t4_298,t5_298,t6_298,t7_298,t8_298,t9_298,t10_298,t11_298,t12_298,t13_298,t14_298,t15_298,t16_298,t17_298,t18_298,t19_298,t20_298,t21_298,t22_298,t23_298,t7_8,t25_298,t26_298), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), tuf_operator_hst(t1_347,t2_347,t3_347,t4_347,t7_7,t6_347,t7_347), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), tuf_owner_hst(t1_344,t2_344,t3_344,t4_344,t5_344,t7_7,t7_344,t8_344), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), facility_fixed(t1_342,t2_342,t3_342,t4_342,t5_342,t6_342,t7_342,t8_342,t9_342,t10_342,t11_342,t12_342,t13_342,t14_342,t15_342,t16_342,t17_342,t18_342,t19_342,t20_342,t21_342,t22_342,t23_342,t7_7,t25_342,t26_342), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), tuf_operator_hst(t1_366,t2_366,t3_366,t4_366,t7_7,t6_366,t7_366), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), tuf_owner_hst(t1_363,t2_363,t3_363,t4_363,t5_363,t7_7,t7_363,t8_363), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), facility_fixed(t1_361,t2_361,t3_361,t4_361,t5_361,t6_361,t7_361,t8_361,t9_361,t10_361,t11_361,t12_361,t13_361,t14_361,t15_361,t16_361,t17_361,t18_361,t19_361,t20_361,t21_361,t22_361,t23_361,t7_7,t25_361,t26_361), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), tuf_operator_hst(t1_385,t2_385,t3_385,t4_385,t7_7,t6_385,t7_385), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), tuf_owner_hst(t1_382,t2_382,t3_382,t4_382,t5_382,t7_7,t7_382,t8_382), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), tuf_operator_hst(t1_404,t2_404,t3_404,t4_404,t7_7,t6_404,t7_404), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), tuf_owner_hst(t1_401,t2_401,t3_401,t4_401,t5_401,t7_7,t7_401,t8_401), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), facility_fixed(t1_399,t2_399,t3_399,t4_399,t5_399,t6_399,t7_399,t8_399,t9_399,t10_399,t11_399,t12_399,t13_399,t14_399,t15_399,t16_399,t17_399,t18_399,t19_399,t20_399,t21_399,t22_399,t23_399,t7_7,t25_399,t26_399), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), tuf_operator_hst(t1_448,t2_448,t3_448,t4_448,t7_6,t6_448,t7_448), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), tuf_owner_hst(t1_445,t2_445,t3_445,t4_445,t5_445,t7_6,t7_445,t8_445), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), facility_fixed(t1_443,t2_443,t3_443,t4_443,t5_443,t6_443,t7_443,t8_443,t9_443,t10_443,t11_443,t12_443,t13_443,t14_443,t15_443,t16_443,t17_443,t18_443,t19_443,t20_443,t21_443,t22_443,t23_443,t7_6,t25_443,t26_443), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), tuf_operator_hst(t1_467,t2_467,t3_467,t4_467,t7_6,t6_467,t7_467), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), tuf_owner_hst(t1_464,t2_464,t3_464,t4_464,t5_464,t7_6,t7_464,t8_464), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), facility_fixed(t1_462,t2_462,t3_462,t4_462,t5_462,t6_462,t7_462,t8_462,t9_462,t10_462,t11_462,t12_462,t13_462,t14_462,t15_462,t16_462,t17_462,t18_462,t19_462,t20_462,t21_462,t22_462,t23_462,t7_6,t25_462,t26_462), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), tuf_operator_hst(t1_486,t2_486,t3_486,t4_486,t7_6,t6_486,t7_486), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), tuf_owner_hst(t1_483,t2_483,t3_483,t4_483,t5_483,t7_6,t7_483,t8_483), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), tuf_operator_hst(t1_505,t2_505,t3_505,t4_505,t7_6,t6_505,t7_505), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), tuf_owner_hst(t1_502,t2_502,t3_502,t4_502,t5_502,t7_6,t7_502,t8_502), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), facility_fixed(t1_500,t2_500,t3_500,t4_500,t5_500,t6_500,t7_500,t8_500,t9_500,t10_500,t11_500,t12_500,t13_500,t14_500,t15_500,t16_500,t17_500,t18_500,t19_500,t20_500,t21_500,t22_500,t23_500,t7_6,t25_500,t26_500), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), tuf_operator_hst(t1_549,t2_549,t3_549,t4_549,t7_5,t6_549,t7_549), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), tuf_owner_hst(t1_546,t2_546,t3_546,t4_546,t5_546,t7_5,t7_546,t8_546), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), facility_fixed(t1_544,t2_544,t3_544,t4_544,t5_544,t6_544,t7_544,t8_544,t9_544,t10_544,t11_544,t12_544,t13_544,t14_544,t15_544,t16_544,t17_544,t18_544,t19_544,t20_544,t21_544,t22_544,t23_544,t7_5,t25_544,t26_544), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), tuf_operator_hst(t1_568,t2_568,t3_568,t4_568,t7_5,t6_568,t7_568), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), tuf_owner_hst(t1_565,t2_565,t3_565,t4_565,t5_565,t7_5,t7_565,t8_565), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), facility_fixed(t1_563,t2_563,t3_563,t4_563,t5_563,t6_563,t7_563,t8_563,t9_563,t10_563,t11_563,t12_563,t13_563,t14_563,t15_563,t16_563,t17_563,t18_563,t19_563,t20_563,t21_563,t22_563,t23_563,t7_5,t25_563,t26_563), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), tuf_operator_hst(t1_587,t2_587,t3_587,t4_587,t7_5,t6_587,t7_587), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), tuf_owner_hst(t1_584,t2_584,t3_584,t4_584,t5_584,t7_5,t7_584,t8_584), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), tuf_operator_hst(t1_606,t2_606,t3_606,t4_606,t7_5,t6_606,t7_606), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), tuf_owner_hst(t1_603,t2_603,t3_603,t4_603,t5_603,t7_5,t7_603,t8_603), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), facility_fixed(t1_601,t2_601,t3_601,t4_601,t5_601,t6_601,t7_601,t8_601,t9_601,t10_601,t11_601,t12_601,t13_601,t14_601,t15_601,t16_601,t17_601,t18_601,t19_601,t20_601,t21_601,t22_601,t23_601,t7_5,t25_601,t26_601), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), tuf_operator_hst(t1_650,t2_650,t3_650,t4_650,t7_4,t6_650,t7_650), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), tuf_owner_hst(t1_647,t2_647,t3_647,t4_647,t5_647,t7_4,t7_647,t8_647), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), facility_fixed(t1_645,t2_645,t3_645,t4_645,t5_645,t6_645,t7_645,t8_645,t9_645,t10_645,t11_645,t12_645,t13_645,t14_645,t15_645,t16_645,t17_645,t18_645,t19_645,t20_645,t21_645,t22_645,t23_645,t7_4,t25_645,t26_645), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), tuf_operator_hst(t1_669,t2_669,t3_669,t4_669,t7_4,t6_669,t7_669), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), tuf_owner_hst(t1_666,t2_666,t3_666,t4_666,t5_666,t7_4,t7_666,t8_666), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), facility_fixed(t1_664,t2_664,t3_664,t4_664,t5_664,t6_664,t7_664,t8_664,t9_664,t10_664,t11_664,t12_664,t13_664,t14_664,t15_664,t16_664,t17_664,t18_664,t19_664,t20_664,t21_664,t22_664,t23_664,t7_4,t25_664,t26_664), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), tuf_operator_hst(t1_688,t2_688,t3_688,t4_688,t7_4,t6_688,t7_688), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), tuf_owner_hst(t1_685,t2_685,t3_685,t4_685,t5_685,t7_4,t7_685,t8_685), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), tuf_operator_hst(t1_707,t2_707,t3_707,t4_707,t7_4,t6_707,t7_707), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), tuf_owner_hst(t1_704,t2_704,t3_704,t4_704,t5_704,t7_4,t7_704,t8_704), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), facility_fixed(t1_702,t2_702,t3_702,t4_702,t5_702,t6_702,t7_702,t8_702,t9_702,t10_702,t11_702,t12_702,t13_702,t14_702,t15_702,t16_702,t17_702,t18_702,t19_702,t20_702,t21_702,t22_702,t23_702,t7_4,t25_702,t26_702), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), tuf_operator_hst(t1_751,t2_751,t3_751,t4_751,t7_3,t6_751,t7_751), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), tuf_owner_hst(t1_748,t2_748,t3_748,t4_748,t5_748,t7_3,t7_748,t8_748), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), facility_fixed(t1_746,t2_746,t3_746,t4_746,t5_746,t6_746,t7_746,t8_746,t9_746,t10_746,t11_746,t12_746,t13_746,t14_746,t15_746,t16_746,t17_746,t18_746,t19_746,t20_746,t21_746,t22_746,t23_746,t7_3,t25_746,t26_746), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), tuf_operator_hst(t1_770,t2_770,t3_770,t4_770,t7_3,t6_770,t7_770), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), tuf_owner_hst(t1_767,t2_767,t3_767,t4_767,t5_767,t7_3,t7_767,t8_767), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), facility_fixed(t1_765,t2_765,t3_765,t4_765,t5_765,t6_765,t7_765,t8_765,t9_765,t10_765,t11_765,t12_765,t13_765,t14_765,t15_765,t16_765,t17_765,t18_765,t19_765,t20_765,t21_765,t22_765,t23_765,t7_3,t25_765,t26_765), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), tuf_operator_hst(t1_789,t2_789,t3_789,t4_789,t7_3,t6_789,t7_789), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), tuf_owner_hst(t1_786,t2_786,t3_786,t4_786,t5_786,t7_3,t7_786,t8_786), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), tuf_operator_hst(t1_808,t2_808,t3_808,t4_808,t7_3,t6_808,t7_808), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), tuf_owner_hst(t1_805,t2_805,t3_805,t4_805,t5_805,t7_3,t7_805,t8_805), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), facility_fixed(t1_803,t2_803,t3_803,t4_803,t5_803,t6_803,t7_803,t8_803,t9_803,t10_803,t11_803,t12_803,t13_803,t14_803,t15_803,t16_803,t17_803,t18_803,t19_803,t20_803,t21_803,t22_803,t23_803,t7_3,t25_803,t26_803), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), tuf_operator_hst(t1_852,t2_852,t3_852,t4_852,t7_2,t6_852,t7_852), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), tuf_owner_hst(t1_849,t2_849,t3_849,t4_849,t5_849,t7_2,t7_849,t8_849), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), facility_fixed(t1_847,t2_847,t3_847,t4_847,t5_847,t6_847,t7_847,t8_847,t9_847,t10_847,t11_847,t12_847,t13_847,t14_847,t15_847,t16_847,t17_847,t18_847,t19_847,t20_847,t21_847,t22_847,t23_847,t7_2,t25_847,t26_847), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), tuf_operator_hst(t1_871,t2_871,t3_871,t4_871,t7_2,t6_871,t7_871), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), tuf_owner_hst(t1_868,t2_868,t3_868,t4_868,t5_868,t7_2,t7_868,t8_868), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), facility_fixed(t1_866,t2_866,t3_866,t4_866,t5_866,t6_866,t7_866,t8_866,t9_866,t10_866,t11_866,t12_866,t13_866,t14_866,t15_866,t16_866,t17_866,t18_866,t19_866,t20_866,t21_866,t22_866,t23_866,t7_2,t25_866,t26_866), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), tuf_operator_hst(t1_890,t2_890,t3_890,t4_890,t7_2,t6_890,t7_890), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), tuf_owner_hst(t1_887,t2_887,t3_887,t4_887,t5_887,t7_2,t7_887,t8_887), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), tuf_operator_hst(t1_909,t2_909,t3_909,t4_909,t7_2,t6_909,t7_909), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), tuf_owner_hst(t1_906,t2_906,t3_906,t4_906,t5_906,t7_2,t7_906,t8_906), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), facility_fixed(t1_904,t2_904,t3_904,t4_904,t5_904,t6_904,t7_904,t8_904,t9_904,t10_904,t11_904,t12_904,t13_904,t14_904,t15_904,t16_904,t17_904,t18_904,t19_904,t20_904,t21_904,t22_904,t23_904,t7_2,t25_904,t26_904), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), tuf_operator_hst(t1_953,t2_953,t3_953,t4_953,t7_1,t6_953,t7_953), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), tuf_owner_hst(t1_950,t2_950,t3_950,t4_950,t5_950,t7_1,t7_950,t8_950), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), facility_fixed(t1_948,t2_948,t3_948,t4_948,t5_948,t6_948,t7_948,t8_948,t9_948,t10_948,t11_948,t12_948,t13_948,t14_948,t15_948,t16_948,t17_948,t18_948,t19_948,t20_948,t21_948,t22_948,t23_948,t7_1,t25_948,t26_948), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), tuf_operator_hst(t1_972,t2_972,t3_972,t4_972,t7_1,t6_972,t7_972), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), tuf_owner_hst(t1_969,t2_969,t3_969,t4_969,t5_969,t7_1,t7_969,t8_969), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), facility_fixed(t1_967,t2_967,t3_967,t4_967,t5_967,t6_967,t7_967,t8_967,t9_967,t10_967,t11_967,t12_967,t13_967,t14_967,t15_967,t16_967,t17_967,t18_967,t19_967,t20_967,t21_967,t22_967,t23_967,t7_1,t25_967,t26_967), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), tuf_operator_hst(t1_991,t2_991,t3_991,t4_991,t7_1,t6_991,t7_991), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), tuf_owner_hst(t1_988,t2_988,t3_988,t4_988,t5_988,t7_1,t7_988,t8_988), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), tuf_operator_hst(t1_1010,t2_1010,t3_1010,t4_1010,t7_1,t6_1010,t7_1010), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), tuf_owner_hst(t1_1007,t2_1007,t3_1007,t4_1007,t5_1007,t7_1,t7_1007,t8_1007), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), facility_fixed(t1_1005,t2_1005,t3_1005,t4_1005,t5_1005,t6_1005,t7_1005,t8_1005,t9_1005,t10_1005,t11_1005,t12_1005,t13_1005,t14_1005,t15_1005,t16_1005,t17_1005,t18_1005,t19_1005,t20_1005,t21_1005,t22_1005,t23_1005,t7_1,t25_1005,t26_1005), IS_NOT_NULL(t7_1)

21:18:13.061 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - After target rules removed: 
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), tuf_operator_hst(t1_44,t2_44,t3_44,t4_44,t7_10,t6_44,t7_44), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), tuf_owner_hst(t1_41,t2_41,t3_41,t4_41,t5_41,t7_10,t7_41,t8_41), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), facility_fixed(t1_39,t2_39,t3_39,t4_39,t5_39,t6_39,t7_39,t8_39,t9_39,t10_39,t11_39,t12_39,t13_39,t14_39,t15_39,t16_39,t17_39,t18_39,t19_39,t20_39,t21_39,t22_39,t23_39,t7_10,t25_39,t26_39), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), tuf_operator_hst(t1_63,t2_63,t3_63,t4_63,t7_10,t6_63,t7_63), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), tuf_owner_hst(t1_60,t2_60,t3_60,t4_60,t5_60,t7_10,t7_60,t8_60), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), facility_fixed(t1_58,t2_58,t3_58,t4_58,t5_58,t6_58,t7_58,t8_58,t9_58,t10_58,t11_58,t12_58,t13_58,t14_58,t15_58,t16_58,t17_58,t18_58,t19_58,t20_58,t21_58,t22_58,t23_58,t7_10,t25_58,t26_58), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), tuf_operator_hst(t1_82,t2_82,t3_82,t4_82,t7_10,t6_82,t7_82), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), tuf_owner_hst(t1_79,t2_79,t3_79,t4_79,t5_79,t7_10,t7_79,t8_79), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), tuf_operator_hst(t1_101,t2_101,t3_101,t4_101,t7_10,t6_101,t7_101), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), tuf_owner_hst(t1_98,t2_98,t3_98,t4_98,t5_98,t7_10,t7_98,t8_98), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), facility_fixed(t1_96,t2_96,t3_96,t4_96,t5_96,t6_96,t7_96,t8_96,t9_96,t10_96,t11_96,t12_96,t13_96,t14_96,t15_96,t16_96,t17_96,t18_96,t19_96,t20_96,t21_96,t22_96,t23_96,t7_10,t25_96,t26_96), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), tuf_operator_hst(t1_145,t2_145,t3_145,t4_145,t7_9,t6_145,t7_145), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), tuf_owner_hst(t1_142,t2_142,t3_142,t4_142,t5_142,t7_9,t7_142,t8_142), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), facility_fixed(t1_140,t2_140,t3_140,t4_140,t5_140,t6_140,t7_140,t8_140,t9_140,t10_140,t11_140,t12_140,t13_140,t14_140,t15_140,t16_140,t17_140,t18_140,t19_140,t20_140,t21_140,t22_140,t23_140,t7_9,t25_140,t26_140), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), tuf_operator_hst(t1_164,t2_164,t3_164,t4_164,t7_9,t6_164,t7_164), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), tuf_owner_hst(t1_161,t2_161,t3_161,t4_161,t5_161,t7_9,t7_161,t8_161), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), facility_fixed(t1_159,t2_159,t3_159,t4_159,t5_159,t6_159,t7_159,t8_159,t9_159,t10_159,t11_159,t12_159,t13_159,t14_159,t15_159,t16_159,t17_159,t18_159,t19_159,t20_159,t21_159,t22_159,t23_159,t7_9,t25_159,t26_159), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), tuf_operator_hst(t1_183,t2_183,t3_183,t4_183,t7_9,t6_183,t7_183), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), tuf_owner_hst(t1_180,t2_180,t3_180,t4_180,t5_180,t7_9,t7_180,t8_180), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), tuf_operator_hst(t1_202,t2_202,t3_202,t4_202,t7_9,t6_202,t7_202), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), tuf_owner_hst(t1_199,t2_199,t3_199,t4_199,t5_199,t7_9,t7_199,t8_199), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), facility_fixed(t1_197,t2_197,t3_197,t4_197,t5_197,t6_197,t7_197,t8_197,t9_197,t10_197,t11_197,t12_197,t13_197,t14_197,t15_197,t16_197,t17_197,t18_197,t19_197,t20_197,t21_197,t22_197,t23_197,t7_9,t25_197,t26_197), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), tuf_operator_hst(t1_246,t2_246,t3_246,t4_246,t7_8,t6_246,t7_246), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), tuf_owner_hst(t1_243,t2_243,t3_243,t4_243,t5_243,t7_8,t7_243,t8_243), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), facility_fixed(t1_241,t2_241,t3_241,t4_241,t5_241,t6_241,t7_241,t8_241,t9_241,t10_241,t11_241,t12_241,t13_241,t14_241,t15_241,t16_241,t17_241,t18_241,t19_241,t20_241,t21_241,t22_241,t23_241,t7_8,t25_241,t26_241), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), tuf_operator_hst(t1_265,t2_265,t3_265,t4_265,t7_8,t6_265,t7_265), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), tuf_owner_hst(t1_262,t2_262,t3_262,t4_262,t5_262,t7_8,t7_262,t8_262), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), facility_fixed(t1_260,t2_260,t3_260,t4_260,t5_260,t6_260,t7_260,t8_260,t9_260,t10_260,t11_260,t12_260,t13_260,t14_260,t15_260,t16_260,t17_260,t18_260,t19_260,t20_260,t21_260,t22_260,t23_260,t7_8,t25_260,t26_260), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), tuf_operator_hst(t1_284,t2_284,t3_284,t4_284,t7_8,t6_284,t7_284), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), tuf_owner_hst(t1_281,t2_281,t3_281,t4_281,t5_281,t7_8,t7_281,t8_281), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), tuf_operator_hst(t1_303,t2_303,t3_303,t4_303,t7_8,t6_303,t7_303), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), tuf_owner_hst(t1_300,t2_300,t3_300,t4_300,t5_300,t7_8,t7_300,t8_300), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), facility_fixed(t1_298,t2_298,t3_298,t4_298,t5_298,t6_298,t7_298,t8_298,t9_298,t10_298,t11_298,t12_298,t13_298,t14_298,t15_298,t16_298,t17_298,t18_298,t19_298,t20_298,t21_298,t22_298,t23_298,t7_8,t25_298,t26_298), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), tuf_operator_hst(t1_347,t2_347,t3_347,t4_347,t7_7,t6_347,t7_347), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), tuf_owner_hst(t1_344,t2_344,t3_344,t4_344,t5_344,t7_7,t7_344,t8_344), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), facility_fixed(t1_342,t2_342,t3_342,t4_342,t5_342,t6_342,t7_342,t8_342,t9_342,t10_342,t11_342,t12_342,t13_342,t14_342,t15_342,t16_342,t17_342,t18_342,t19_342,t20_342,t21_342,t22_342,t23_342,t7_7,t25_342,t26_342), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), tuf_operator_hst(t1_366,t2_366,t3_366,t4_366,t7_7,t6_366,t7_366), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), tuf_owner_hst(t1_363,t2_363,t3_363,t4_363,t5_363,t7_7,t7_363,t8_363), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), facility_fixed(t1_361,t2_361,t3_361,t4_361,t5_361,t6_361,t7_361,t8_361,t9_361,t10_361,t11_361,t12_361,t13_361,t14_361,t15_361,t16_361,t17_361,t18_361,t19_361,t20_361,t21_361,t22_361,t23_361,t7_7,t25_361,t26_361), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), tuf_operator_hst(t1_385,t2_385,t3_385,t4_385,t7_7,t6_385,t7_385), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), tuf_owner_hst(t1_382,t2_382,t3_382,t4_382,t5_382,t7_7,t7_382,t8_382), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), tuf_operator_hst(t1_404,t2_404,t3_404,t4_404,t7_7,t6_404,t7_404), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), tuf_owner_hst(t1_401,t2_401,t3_401,t4_401,t5_401,t7_7,t7_401,t8_401), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), facility_fixed(t1_399,t2_399,t3_399,t4_399,t5_399,t6_399,t7_399,t8_399,t9_399,t10_399,t11_399,t12_399,t13_399,t14_399,t15_399,t16_399,t17_399,t18_399,t19_399,t20_399,t21_399,t22_399,t23_399,t7_7,t25_399,t26_399), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), tuf_operator_hst(t1_448,t2_448,t3_448,t4_448,t7_6,t6_448,t7_448), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), tuf_owner_hst(t1_445,t2_445,t3_445,t4_445,t5_445,t7_6,t7_445,t8_445), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), facility_fixed(t1_443,t2_443,t3_443,t4_443,t5_443,t6_443,t7_443,t8_443,t9_443,t10_443,t11_443,t12_443,t13_443,t14_443,t15_443,t16_443,t17_443,t18_443,t19_443,t20_443,t21_443,t22_443,t23_443,t7_6,t25_443,t26_443), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), tuf_operator_hst(t1_467,t2_467,t3_467,t4_467,t7_6,t6_467,t7_467), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), tuf_owner_hst(t1_464,t2_464,t3_464,t4_464,t5_464,t7_6,t7_464,t8_464), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), facility_fixed(t1_462,t2_462,t3_462,t4_462,t5_462,t6_462,t7_462,t8_462,t9_462,t10_462,t11_462,t12_462,t13_462,t14_462,t15_462,t16_462,t17_462,t18_462,t19_462,t20_462,t21_462,t22_462,t23_462,t7_6,t25_462,t26_462), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), tuf_operator_hst(t1_486,t2_486,t3_486,t4_486,t7_6,t6_486,t7_486), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), tuf_owner_hst(t1_483,t2_483,t3_483,t4_483,t5_483,t7_6,t7_483,t8_483), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), tuf_operator_hst(t1_505,t2_505,t3_505,t4_505,t7_6,t6_505,t7_505), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), tuf_owner_hst(t1_502,t2_502,t3_502,t4_502,t5_502,t7_6,t7_502,t8_502), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), facility_fixed(t1_500,t2_500,t3_500,t4_500,t5_500,t6_500,t7_500,t8_500,t9_500,t10_500,t11_500,t12_500,t13_500,t14_500,t15_500,t16_500,t17_500,t18_500,t19_500,t20_500,t21_500,t22_500,t23_500,t7_6,t25_500,t26_500), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), tuf_operator_hst(t1_549,t2_549,t3_549,t4_549,t7_5,t6_549,t7_549), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), tuf_owner_hst(t1_546,t2_546,t3_546,t4_546,t5_546,t7_5,t7_546,t8_546), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), facility_fixed(t1_544,t2_544,t3_544,t4_544,t5_544,t6_544,t7_544,t8_544,t9_544,t10_544,t11_544,t12_544,t13_544,t14_544,t15_544,t16_544,t17_544,t18_544,t19_544,t20_544,t21_544,t22_544,t23_544,t7_5,t25_544,t26_544), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), tuf_operator_hst(t1_568,t2_568,t3_568,t4_568,t7_5,t6_568,t7_568), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), tuf_owner_hst(t1_565,t2_565,t3_565,t4_565,t5_565,t7_5,t7_565,t8_565), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), facility_fixed(t1_563,t2_563,t3_563,t4_563,t5_563,t6_563,t7_563,t8_563,t9_563,t10_563,t11_563,t12_563,t13_563,t14_563,t15_563,t16_563,t17_563,t18_563,t19_563,t20_563,t21_563,t22_563,t23_563,t7_5,t25_563,t26_563), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), tuf_operator_hst(t1_587,t2_587,t3_587,t4_587,t7_5,t6_587,t7_587), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), tuf_owner_hst(t1_584,t2_584,t3_584,t4_584,t5_584,t7_5,t7_584,t8_584), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), tuf_operator_hst(t1_606,t2_606,t3_606,t4_606,t7_5,t6_606,t7_606), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), tuf_owner_hst(t1_603,t2_603,t3_603,t4_603,t5_603,t7_5,t7_603,t8_603), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), facility_fixed(t1_601,t2_601,t3_601,t4_601,t5_601,t6_601,t7_601,t8_601,t9_601,t10_601,t11_601,t12_601,t13_601,t14_601,t15_601,t16_601,t17_601,t18_601,t19_601,t20_601,t21_601,t22_601,t23_601,t7_5,t25_601,t26_601), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), tuf_operator_hst(t1_650,t2_650,t3_650,t4_650,t7_4,t6_650,t7_650), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), tuf_owner_hst(t1_647,t2_647,t3_647,t4_647,t5_647,t7_4,t7_647,t8_647), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), facility_fixed(t1_645,t2_645,t3_645,t4_645,t5_645,t6_645,t7_645,t8_645,t9_645,t10_645,t11_645,t12_645,t13_645,t14_645,t15_645,t16_645,t17_645,t18_645,t19_645,t20_645,t21_645,t22_645,t23_645,t7_4,t25_645,t26_645), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), tuf_operator_hst(t1_669,t2_669,t3_669,t4_669,t7_4,t6_669,t7_669), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), tuf_owner_hst(t1_666,t2_666,t3_666,t4_666,t5_666,t7_4,t7_666,t8_666), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), facility_fixed(t1_664,t2_664,t3_664,t4_664,t5_664,t6_664,t7_664,t8_664,t9_664,t10_664,t11_664,t12_664,t13_664,t14_664,t15_664,t16_664,t17_664,t18_664,t19_664,t20_664,t21_664,t22_664,t23_664,t7_4,t25_664,t26_664), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), tuf_operator_hst(t1_688,t2_688,t3_688,t4_688,t7_4,t6_688,t7_688), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), tuf_owner_hst(t1_685,t2_685,t3_685,t4_685,t5_685,t7_4,t7_685,t8_685), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), tuf_operator_hst(t1_707,t2_707,t3_707,t4_707,t7_4,t6_707,t7_707), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), tuf_owner_hst(t1_704,t2_704,t3_704,t4_704,t5_704,t7_4,t7_704,t8_704), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), facility_fixed(t1_702,t2_702,t3_702,t4_702,t5_702,t6_702,t7_702,t8_702,t9_702,t10_702,t11_702,t12_702,t13_702,t14_702,t15_702,t16_702,t17_702,t18_702,t19_702,t20_702,t21_702,t22_702,t23_702,t7_4,t25_702,t26_702), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), tuf_operator_hst(t1_751,t2_751,t3_751,t4_751,t7_3,t6_751,t7_751), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), tuf_owner_hst(t1_748,t2_748,t3_748,t4_748,t5_748,t7_3,t7_748,t8_748), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), facility_fixed(t1_746,t2_746,t3_746,t4_746,t5_746,t6_746,t7_746,t8_746,t9_746,t10_746,t11_746,t12_746,t13_746,t14_746,t15_746,t16_746,t17_746,t18_746,t19_746,t20_746,t21_746,t22_746,t23_746,t7_3,t25_746,t26_746), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), tuf_operator_hst(t1_770,t2_770,t3_770,t4_770,t7_3,t6_770,t7_770), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), tuf_owner_hst(t1_767,t2_767,t3_767,t4_767,t5_767,t7_3,t7_767,t8_767), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), facility_fixed(t1_765,t2_765,t3_765,t4_765,t5_765,t6_765,t7_765,t8_765,t9_765,t10_765,t11_765,t12_765,t13_765,t14_765,t15_765,t16_765,t17_765,t18_765,t19_765,t20_765,t21_765,t22_765,t23_765,t7_3,t25_765,t26_765), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), tuf_operator_hst(t1_789,t2_789,t3_789,t4_789,t7_3,t6_789,t7_789), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), tuf_owner_hst(t1_786,t2_786,t3_786,t4_786,t5_786,t7_3,t7_786,t8_786), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), tuf_operator_hst(t1_808,t2_808,t3_808,t4_808,t7_3,t6_808,t7_808), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), tuf_owner_hst(t1_805,t2_805,t3_805,t4_805,t5_805,t7_3,t7_805,t8_805), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), facility_fixed(t1_803,t2_803,t3_803,t4_803,t5_803,t6_803,t7_803,t8_803,t9_803,t10_803,t11_803,t12_803,t13_803,t14_803,t15_803,t16_803,t17_803,t18_803,t19_803,t20_803,t21_803,t22_803,t23_803,t7_3,t25_803,t26_803), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), tuf_operator_hst(t1_852,t2_852,t3_852,t4_852,t7_2,t6_852,t7_852), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), tuf_owner_hst(t1_849,t2_849,t3_849,t4_849,t5_849,t7_2,t7_849,t8_849), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), facility_fixed(t1_847,t2_847,t3_847,t4_847,t5_847,t6_847,t7_847,t8_847,t9_847,t10_847,t11_847,t12_847,t13_847,t14_847,t15_847,t16_847,t17_847,t18_847,t19_847,t20_847,t21_847,t22_847,t23_847,t7_2,t25_847,t26_847), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), tuf_operator_hst(t1_871,t2_871,t3_871,t4_871,t7_2,t6_871,t7_871), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), tuf_owner_hst(t1_868,t2_868,t3_868,t4_868,t5_868,t7_2,t7_868,t8_868), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), facility_fixed(t1_866,t2_866,t3_866,t4_866,t5_866,t6_866,t7_866,t8_866,t9_866,t10_866,t11_866,t12_866,t13_866,t14_866,t15_866,t16_866,t17_866,t18_866,t19_866,t20_866,t21_866,t22_866,t23_866,t7_2,t25_866,t26_866), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), tuf_operator_hst(t1_890,t2_890,t3_890,t4_890,t7_2,t6_890,t7_890), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), tuf_owner_hst(t1_887,t2_887,t3_887,t4_887,t5_887,t7_2,t7_887,t8_887), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), tuf_operator_hst(t1_909,t2_909,t3_909,t4_909,t7_2,t6_909,t7_909), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), tuf_owner_hst(t1_906,t2_906,t3_906,t4_906,t5_906,t7_2,t7_906,t8_906), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), facility_fixed(t1_904,t2_904,t3_904,t4_904,t5_904,t6_904,t7_904,t8_904,t9_904,t10_904,t11_904,t12_904,t13_904,t14_904,t15_904,t16_904,t17_904,t18_904,t19_904,t20_904,t21_904,t22_904,t23_904,t7_2,t25_904,t26_904), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), tuf_operator_hst(t1_953,t2_953,t3_953,t4_953,t7_1,t6_953,t7_953), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), tuf_owner_hst(t1_950,t2_950,t3_950,t4_950,t5_950,t7_1,t7_950,t8_950), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), facility_fixed(t1_948,t2_948,t3_948,t4_948,t5_948,t6_948,t7_948,t8_948,t9_948,t10_948,t11_948,t12_948,t13_948,t14_948,t15_948,t16_948,t17_948,t18_948,t19_948,t20_948,t21_948,t22_948,t23_948,t7_1,t25_948,t26_948), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), tuf_operator_hst(t1_972,t2_972,t3_972,t4_972,t7_1,t6_972,t7_972), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), tuf_owner_hst(t1_969,t2_969,t3_969,t4_969,t5_969,t7_1,t7_969,t8_969), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), facility_fixed(t1_967,t2_967,t3_967,t4_967,t5_967,t6_967,t7_967,t8_967,t9_967,t10_967,t11_967,t12_967,t13_967,t14_967,t15_967,t16_967,t17_967,t18_967,t19_967,t20_967,t21_967,t22_967,t23_967,t7_1,t25_967,t26_967), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), tuf_operator_hst(t1_991,t2_991,t3_991,t4_991,t7_1,t6_991,t7_991), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), tuf_owner_hst(t1_988,t2_988,t3_988,t4_988,t5_988,t7_1,t7_988,t8_988), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), tuf_operator_hst(t1_1010,t2_1010,t3_1010,t4_1010,t7_1,t6_1010,t7_1010), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), tuf_owner_hst(t1_1007,t2_1007,t3_1007,t4_1007,t5_1007,t7_1,t7_1007,t8_1007), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), facility_fixed(t1_1005,t2_1005,t3_1005,t4_1005,t5_1005,t6_1005,t7_1005,t8_1005,t9_1005,t10_1005,t11_1005,t12_1005,t13_1005,t14_1005,t15_1005,t16_1005,t17_1005,t18_1005,t19_1005,t20_1005,t21_1005,t22_1005,t23_1005,t7_1,t25_1005,t26_1005), IS_NOT_NULL(t7_1)

21:18:13.062 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Boolean expression evaluated: 
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), tuf_operator_hst(t1_44,t2_44,t3_44,t4_44,t7_10,t6_44,t7_44), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), tuf_owner_hst(t1_41,t2_41,t3_41,t4_41,t5_41,t7_10,t7_41,t8_41), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_10),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_10), facility_fixed(t1_39,t2_39,t3_39,t4_39,t5_39,t6_39,t7_39,t8_39,t9_39,t10_39,t11_39,t12_39,t13_39,t14_39,t15_39,t16_39,t17_39,t18_39,t19_39,t20_39,t21_39,t22_39,t23_39,t7_10,t25_39,t26_39), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), tuf_operator_hst(t1_63,t2_63,t3_63,t4_63,t7_10,t6_63,t7_63), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), tuf_owner_hst(t1_60,t2_60,t3_60,t4_60,t5_60,t7_10,t7_60,t8_60), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_18),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_owner_hst(t1_18,t2_18,t3_18,t4_18,t5_18,t7_10,t7_18,t8_18), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_18), facility_fixed(t1_58,t2_58,t3_58,t4_58,t5_58,t6_58,t7_58,t8_58,t9_58,t10_58,t11_58,t12_58,t13_58,t14_58,t15_58,t16_58,t17_58,t18_58,t19_58,t20_58,t21_58,t22_58,t23_58,t7_10,t25_58,t26_58), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), tuf_operator_hst(t1_82,t2_82,t3_82,t4_82,t7_10,t6_82,t7_82), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), tuf_owner_hst(t1_79,t2_79,t3_79,t4_79,t5_79,t7_10,t7_79,t8_79), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_16),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), facility_fixed(t1_16,t2_16,t3_16,t4_16,t5_16,t6_16,t7_16,t8_16,t9_16,t10_16,t11_16,t12_16,t13_16,t14_16,t15_16,t16_16,t17_16,t18_16,t19_16,t20_16,t21_16,t22_16,t23_16,t7_10,t25_16,t26_16), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_16), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), tuf_operator_hst(t1_101,t2_101,t3_101,t4_101,t7_10,t6_101,t7_101), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), tuf_owner_hst(t1_98,t2_98,t3_98,t4_98,t5_98,t7_10,t7_98,t8_98), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_15),URI("http://dbpedia.org/resource/Singapore"),http://www.w3.org/2001/XMLSchema#integer(t7_10)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_10),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_10,t2_10,t3_10,t4_10,"Singapore",t6_10,t7_10,t8_10,t9_10,t10_10), IS_NOT_NULL(t7_10), tuf_operator_hst(t1_15,t2_15,t3_15,t4_15,t7_10,t6_15,t7_15), IS_NOT_NULL(t7_10), IS_NOT_NULL(t1_15), facility_fixed(t1_96,t2_96,t3_96,t4_96,t5_96,t6_96,t7_96,t8_96,t9_96,t10_96,t11_96,t12_96,t13_96,t14_96,t15_96,t16_96,t17_96,t18_96,t19_96,t20_96,t21_96,t22_96,t23_96,t7_10,t25_96,t26_96), IS_NOT_NULL(t7_10)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), tuf_operator_hst(t1_145,t2_145,t3_145,t4_145,t7_9,t6_145,t7_145), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), tuf_owner_hst(t1_142,t2_142,t3_142,t4_142,t5_142,t7_9,t7_142,t8_142), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_9),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_9), facility_fixed(t1_140,t2_140,t3_140,t4_140,t5_140,t6_140,t7_140,t8_140,t9_140,t10_140,t11_140,t12_140,t13_140,t14_140,t15_140,t16_140,t17_140,t18_140,t19_140,t20_140,t21_140,t22_140,t23_140,t7_9,t25_140,t26_140), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), tuf_operator_hst(t1_164,t2_164,t3_164,t4_164,t7_9,t6_164,t7_164), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), tuf_owner_hst(t1_161,t2_161,t3_161,t4_161,t5_161,t7_9,t7_161,t8_161), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_119),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_owner_hst(t1_119,t2_119,t3_119,t4_119,t5_119,t7_9,t7_119,t8_119), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_119), facility_fixed(t1_159,t2_159,t3_159,t4_159,t5_159,t6_159,t7_159,t8_159,t9_159,t10_159,t11_159,t12_159,t13_159,t14_159,t15_159,t16_159,t17_159,t18_159,t19_159,t20_159,t21_159,t22_159,t23_159,t7_9,t25_159,t26_159), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), tuf_operator_hst(t1_183,t2_183,t3_183,t4_183,t7_9,t6_183,t7_183), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), tuf_owner_hst(t1_180,t2_180,t3_180,t4_180,t5_180,t7_9,t7_180,t8_180), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_117),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), facility_fixed(t1_117,t2_117,t3_117,t4_117,t5_117,t6_117,t7_117,t8_117,t9_117,t10_117,t11_117,t12_117,t13_117,t14_117,t15_117,t16_117,t17_117,t18_117,t19_117,t20_117,t21_117,t22_117,t23_117,t7_9,t25_117,t26_117), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_117), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), tuf_operator_hst(t1_202,t2_202,t3_202,t4_202,t7_9,t6_202,t7_202), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), tuf_owner_hst(t1_199,t2_199,t3_199,t4_199,t5_199,t7_9,t7_199,t8_199), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_116),URI("http://dbpedia.org/resource/Norway"),http://www.w3.org/2001/XMLSchema#integer(t7_9)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_9),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_9,t2_9,t3_9,t4_9,"NORWAY",t6_9,t7_9,t8_9,t9_9,t10_9), IS_NOT_NULL(t7_9), tuf_operator_hst(t1_116,t2_116,t3_116,t4_116,t7_9,t6_116,t7_116), IS_NOT_NULL(t7_9), IS_NOT_NULL(t1_116), facility_fixed(t1_197,t2_197,t3_197,t4_197,t5_197,t6_197,t7_197,t8_197,t9_197,t10_197,t11_197,t12_197,t13_197,t14_197,t15_197,t16_197,t17_197,t18_197,t19_197,t20_197,t21_197,t22_197,t23_197,t7_9,t25_197,t26_197), IS_NOT_NULL(t7_9)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), tuf_operator_hst(t1_246,t2_246,t3_246,t4_246,t7_8,t6_246,t7_246), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), tuf_owner_hst(t1_243,t2_243,t3_243,t4_243,t5_243,t7_8,t7_243,t8_243), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_8),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_8), facility_fixed(t1_241,t2_241,t3_241,t4_241,t5_241,t6_241,t7_241,t8_241,t9_241,t10_241,t11_241,t12_241,t13_241,t14_241,t15_241,t16_241,t17_241,t18_241,t19_241,t20_241,t21_241,t22_241,t23_241,t7_8,t25_241,t26_241), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), tuf_operator_hst(t1_265,t2_265,t3_265,t4_265,t7_8,t6_265,t7_265), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), tuf_owner_hst(t1_262,t2_262,t3_262,t4_262,t5_262,t7_8,t7_262,t8_262), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_220),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_owner_hst(t1_220,t2_220,t3_220,t4_220,t5_220,t7_8,t7_220,t8_220), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_220), facility_fixed(t1_260,t2_260,t3_260,t4_260,t5_260,t6_260,t7_260,t8_260,t9_260,t10_260,t11_260,t12_260,t13_260,t14_260,t15_260,t16_260,t17_260,t18_260,t19_260,t20_260,t21_260,t22_260,t23_260,t7_8,t25_260,t26_260), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), tuf_operator_hst(t1_284,t2_284,t3_284,t4_284,t7_8,t6_284,t7_284), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), tuf_owner_hst(t1_281,t2_281,t3_281,t4_281,t5_281,t7_8,t7_281,t8_281), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_218),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), facility_fixed(t1_218,t2_218,t3_218,t4_218,t5_218,t6_218,t7_218,t8_218,t9_218,t10_218,t11_218,t12_218,t13_218,t14_218,t15_218,t16_218,t17_218,t18_218,t19_218,t20_218,t21_218,t22_218,t23_218,t7_8,t25_218,t26_218), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_218), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), tuf_operator_hst(t1_303,t2_303,t3_303,t4_303,t7_8,t6_303,t7_303), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), tuf_owner_hst(t1_300,t2_300,t3_300,t4_300,t5_300,t7_8,t7_300,t8_300), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_217),URI("http://dbpedia.org/resource/Liberia"),http://www.w3.org/2001/XMLSchema#integer(t7_8)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_8),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_8,t2_8,t3_8,t4_8,"Liberia",t6_8,t7_8,t8_8,t9_8,t10_8), IS_NOT_NULL(t7_8), tuf_operator_hst(t1_217,t2_217,t3_217,t4_217,t7_8,t6_217,t7_217), IS_NOT_NULL(t7_8), IS_NOT_NULL(t1_217), facility_fixed(t1_298,t2_298,t3_298,t4_298,t5_298,t6_298,t7_298,t8_298,t9_298,t10_298,t11_298,t12_298,t13_298,t14_298,t15_298,t16_298,t17_298,t18_298,t19_298,t20_298,t21_298,t22_298,t23_298,t7_8,t25_298,t26_298), IS_NOT_NULL(t7_8)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), tuf_operator_hst(t1_347,t2_347,t3_347,t4_347,t7_7,t6_347,t7_347), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), tuf_owner_hst(t1_344,t2_344,t3_344,t4_344,t5_344,t7_7,t7_344,t8_344), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_7),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_7), facility_fixed(t1_342,t2_342,t3_342,t4_342,t5_342,t6_342,t7_342,t8_342,t9_342,t10_342,t11_342,t12_342,t13_342,t14_342,t15_342,t16_342,t17_342,t18_342,t19_342,t20_342,t21_342,t22_342,t23_342,t7_7,t25_342,t26_342), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), tuf_operator_hst(t1_366,t2_366,t3_366,t4_366,t7_7,t6_366,t7_366), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), tuf_owner_hst(t1_363,t2_363,t3_363,t4_363,t5_363,t7_7,t7_363,t8_363), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_321),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_owner_hst(t1_321,t2_321,t3_321,t4_321,t5_321,t7_7,t7_321,t8_321), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_321), facility_fixed(t1_361,t2_361,t3_361,t4_361,t5_361,t6_361,t7_361,t8_361,t9_361,t10_361,t11_361,t12_361,t13_361,t14_361,t15_361,t16_361,t17_361,t18_361,t19_361,t20_361,t21_361,t22_361,t23_361,t7_7,t25_361,t26_361), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), tuf_operator_hst(t1_385,t2_385,t3_385,t4_385,t7_7,t6_385,t7_385), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), tuf_owner_hst(t1_382,t2_382,t3_382,t4_382,t5_382,t7_7,t7_382,t8_382), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_319),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), facility_fixed(t1_319,t2_319,t3_319,t4_319,t5_319,t6_319,t7_319,t8_319,t9_319,t10_319,t11_319,t12_319,t13_319,t14_319,t15_319,t16_319,t17_319,t18_319,t19_319,t20_319,t21_319,t22_319,t23_319,t7_7,t25_319,t26_319), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_319), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), tuf_operator_hst(t1_404,t2_404,t3_404,t4_404,t7_7,t6_404,t7_404), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), tuf_owner_hst(t1_401,t2_401,t3_401,t4_401,t5_401,t7_7,t7_401,t8_401), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_318),URI("http://dbpedia.org/resource/The_Bahamas"),http://www.w3.org/2001/XMLSchema#integer(t7_7)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_7),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_7,t2_7,t3_7,t4_7,"Bahamas",t6_7,t7_7,t8_7,t9_7,t10_7), IS_NOT_NULL(t7_7), tuf_operator_hst(t1_318,t2_318,t3_318,t4_318,t7_7,t6_318,t7_318), IS_NOT_NULL(t7_7), IS_NOT_NULL(t1_318), facility_fixed(t1_399,t2_399,t3_399,t4_399,t5_399,t6_399,t7_399,t8_399,t9_399,t10_399,t11_399,t12_399,t13_399,t14_399,t15_399,t16_399,t17_399,t18_399,t19_399,t20_399,t21_399,t22_399,t23_399,t7_7,t25_399,t26_399), IS_NOT_NULL(t7_7)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), tuf_operator_hst(t1_448,t2_448,t3_448,t4_448,t7_6,t6_448,t7_448), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), tuf_owner_hst(t1_445,t2_445,t3_445,t4_445,t5_445,t7_6,t7_445,t8_445), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_6),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_6), facility_fixed(t1_443,t2_443,t3_443,t4_443,t5_443,t6_443,t7_443,t8_443,t9_443,t10_443,t11_443,t12_443,t13_443,t14_443,t15_443,t16_443,t17_443,t18_443,t19_443,t20_443,t21_443,t22_443,t23_443,t7_6,t25_443,t26_443), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), tuf_operator_hst(t1_467,t2_467,t3_467,t4_467,t7_6,t6_467,t7_467), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), tuf_owner_hst(t1_464,t2_464,t3_464,t4_464,t5_464,t7_6,t7_464,t8_464), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_422),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_owner_hst(t1_422,t2_422,t3_422,t4_422,t5_422,t7_6,t7_422,t8_422), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_422), facility_fixed(t1_462,t2_462,t3_462,t4_462,t5_462,t6_462,t7_462,t8_462,t9_462,t10_462,t11_462,t12_462,t13_462,t14_462,t15_462,t16_462,t17_462,t18_462,t19_462,t20_462,t21_462,t22_462,t23_462,t7_6,t25_462,t26_462), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), tuf_operator_hst(t1_486,t2_486,t3_486,t4_486,t7_6,t6_486,t7_486), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), tuf_owner_hst(t1_483,t2_483,t3_483,t4_483,t5_483,t7_6,t7_483,t8_483), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_420),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), facility_fixed(t1_420,t2_420,t3_420,t4_420,t5_420,t6_420,t7_420,t8_420,t9_420,t10_420,t11_420,t12_420,t13_420,t14_420,t15_420,t16_420,t17_420,t18_420,t19_420,t20_420,t21_420,t22_420,t23_420,t7_6,t25_420,t26_420), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_420), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), tuf_operator_hst(t1_505,t2_505,t3_505,t4_505,t7_6,t6_505,t7_505), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), tuf_owner_hst(t1_502,t2_502,t3_502,t4_502,t5_502,t7_6,t7_502,t8_502), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_419),URI("http://dbpedia.org/resource/Panama"),http://www.w3.org/2001/XMLSchema#integer(t7_6)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_6),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_6,t2_6,t3_6,t4_6,"Panama",t6_6,t7_6,t8_6,t9_6,t10_6), IS_NOT_NULL(t7_6), tuf_operator_hst(t1_419,t2_419,t3_419,t4_419,t7_6,t6_419,t7_419), IS_NOT_NULL(t7_6), IS_NOT_NULL(t1_419), facility_fixed(t1_500,t2_500,t3_500,t4_500,t5_500,t6_500,t7_500,t8_500,t9_500,t10_500,t11_500,t12_500,t13_500,t14_500,t15_500,t16_500,t17_500,t18_500,t19_500,t20_500,t21_500,t22_500,t23_500,t7_6,t25_500,t26_500), IS_NOT_NULL(t7_6)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), tuf_operator_hst(t1_549,t2_549,t3_549,t4_549,t7_5,t6_549,t7_549), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), tuf_owner_hst(t1_546,t2_546,t3_546,t4_546,t5_546,t7_5,t7_546,t8_546), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_5),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_5), facility_fixed(t1_544,t2_544,t3_544,t4_544,t5_544,t6_544,t7_544,t8_544,t9_544,t10_544,t11_544,t12_544,t13_544,t14_544,t15_544,t16_544,t17_544,t18_544,t19_544,t20_544,t21_544,t22_544,t23_544,t7_5,t25_544,t26_544), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), tuf_operator_hst(t1_568,t2_568,t3_568,t4_568,t7_5,t6_568,t7_568), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), tuf_owner_hst(t1_565,t2_565,t3_565,t4_565,t5_565,t7_5,t7_565,t8_565), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_523),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_owner_hst(t1_523,t2_523,t3_523,t4_523,t5_523,t7_5,t7_523,t8_523), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_523), facility_fixed(t1_563,t2_563,t3_563,t4_563,t5_563,t6_563,t7_563,t8_563,t9_563,t10_563,t11_563,t12_563,t13_563,t14_563,t15_563,t16_563,t17_563,t18_563,t19_563,t20_563,t21_563,t22_563,t23_563,t7_5,t25_563,t26_563), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), tuf_operator_hst(t1_587,t2_587,t3_587,t4_587,t7_5,t6_587,t7_587), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), tuf_owner_hst(t1_584,t2_584,t3_584,t4_584,t5_584,t7_5,t7_584,t8_584), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_521),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), facility_fixed(t1_521,t2_521,t3_521,t4_521,t5_521,t6_521,t7_521,t8_521,t9_521,t10_521,t11_521,t12_521,t13_521,t14_521,t15_521,t16_521,t17_521,t18_521,t19_521,t20_521,t21_521,t22_521,t23_521,t7_5,t25_521,t26_521), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_521), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), tuf_operator_hst(t1_606,t2_606,t3_606,t4_606,t7_5,t6_606,t7_606), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), tuf_owner_hst(t1_603,t2_603,t3_603,t4_603,t5_603,t7_5,t7_603,t8_603), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_520),URI("http://dbpedia.org/resource/Great_Britain"),http://www.w3.org/2001/XMLSchema#integer(t7_5)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_5),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_5,t2_5,t3_5,t4_5,"GREAT BRITAIN",t6_5,t7_5,t8_5,t9_5,t10_5), IS_NOT_NULL(t7_5), tuf_operator_hst(t1_520,t2_520,t3_520,t4_520,t7_5,t6_520,t7_520), IS_NOT_NULL(t7_5), IS_NOT_NULL(t1_520), facility_fixed(t1_601,t2_601,t3_601,t4_601,t5_601,t6_601,t7_601,t8_601,t9_601,t10_601,t11_601,t12_601,t13_601,t14_601,t15_601,t16_601,t17_601,t18_601,t19_601,t20_601,t21_601,t22_601,t23_601,t7_5,t25_601,t26_601), IS_NOT_NULL(t7_5)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), tuf_operator_hst(t1_650,t2_650,t3_650,t4_650,t7_4,t6_650,t7_650), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), tuf_owner_hst(t1_647,t2_647,t3_647,t4_647,t5_647,t7_4,t7_647,t8_647), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_4),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_4), facility_fixed(t1_645,t2_645,t3_645,t4_645,t5_645,t6_645,t7_645,t8_645,t9_645,t10_645,t11_645,t12_645,t13_645,t14_645,t15_645,t16_645,t17_645,t18_645,t19_645,t20_645,t21_645,t22_645,t23_645,t7_4,t25_645,t26_645), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), tuf_operator_hst(t1_669,t2_669,t3_669,t4_669,t7_4,t6_669,t7_669), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), tuf_owner_hst(t1_666,t2_666,t3_666,t4_666,t5_666,t7_4,t7_666,t8_666), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_624),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_owner_hst(t1_624,t2_624,t3_624,t4_624,t5_624,t7_4,t7_624,t8_624), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_624), facility_fixed(t1_664,t2_664,t3_664,t4_664,t5_664,t6_664,t7_664,t8_664,t9_664,t10_664,t11_664,t12_664,t13_664,t14_664,t15_664,t16_664,t17_664,t18_664,t19_664,t20_664,t21_664,t22_664,t23_664,t7_4,t25_664,t26_664), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), tuf_operator_hst(t1_688,t2_688,t3_688,t4_688,t7_4,t6_688,t7_688), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), tuf_owner_hst(t1_685,t2_685,t3_685,t4_685,t5_685,t7_4,t7_685,t8_685), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_622),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), facility_fixed(t1_622,t2_622,t3_622,t4_622,t5_622,t6_622,t7_622,t8_622,t9_622,t10_622,t11_622,t12_622,t13_622,t14_622,t15_622,t16_622,t17_622,t18_622,t19_622,t20_622,t21_622,t22_622,t23_622,t7_4,t25_622,t26_622), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_622), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), tuf_operator_hst(t1_707,t2_707,t3_707,t4_707,t7_4,t6_707,t7_707), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), tuf_owner_hst(t1_704,t2_704,t3_704,t4_704,t5_704,t7_4,t7_704,t8_704), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_621),URI("http://dbpedia.org/resource/Russia"),http://www.w3.org/2001/XMLSchema#integer(t7_4)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_4),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_4,t2_4,t3_4,t4_4,"Russian federation",t6_4,t7_4,t8_4,t9_4,t10_4), IS_NOT_NULL(t7_4), tuf_operator_hst(t1_621,t2_621,t3_621,t4_621,t7_4,t6_621,t7_621), IS_NOT_NULL(t7_4), IS_NOT_NULL(t1_621), facility_fixed(t1_702,t2_702,t3_702,t4_702,t5_702,t6_702,t7_702,t8_702,t9_702,t10_702,t11_702,t12_702,t13_702,t14_702,t15_702,t16_702,t17_702,t18_702,t19_702,t20_702,t21_702,t22_702,t23_702,t7_4,t25_702,t26_702), IS_NOT_NULL(t7_4)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), tuf_operator_hst(t1_751,t2_751,t3_751,t4_751,t7_3,t6_751,t7_751), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), tuf_owner_hst(t1_748,t2_748,t3_748,t4_748,t5_748,t7_3,t7_748,t8_748), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_3), facility_fixed(t1_746,t2_746,t3_746,t4_746,t5_746,t6_746,t7_746,t8_746,t9_746,t10_746,t11_746,t12_746,t13_746,t14_746,t15_746,t16_746,t17_746,t18_746,t19_746,t20_746,t21_746,t22_746,t23_746,t7_3,t25_746,t26_746), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), tuf_operator_hst(t1_770,t2_770,t3_770,t4_770,t7_3,t6_770,t7_770), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), tuf_owner_hst(t1_767,t2_767,t3_767,t4_767,t5_767,t7_3,t7_767,t8_767), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_725),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_owner_hst(t1_725,t2_725,t3_725,t4_725,t5_725,t7_3,t7_725,t8_725), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_725), facility_fixed(t1_765,t2_765,t3_765,t4_765,t5_765,t6_765,t7_765,t8_765,t9_765,t10_765,t11_765,t12_765,t13_765,t14_765,t15_765,t16_765,t17_765,t18_765,t19_765,t20_765,t21_765,t22_765,t23_765,t7_3,t25_765,t26_765), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), tuf_operator_hst(t1_789,t2_789,t3_789,t4_789,t7_3,t6_789,t7_789), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), tuf_owner_hst(t1_786,t2_786,t3_786,t4_786,t5_786,t7_3,t7_786,t8_786), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_723),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), facility_fixed(t1_723,t2_723,t3_723,t4_723,t5_723,t6_723,t7_723,t8_723,t9_723,t10_723,t11_723,t12_723,t13_723,t14_723,t15_723,t16_723,t17_723,t18_723,t19_723,t20_723,t21_723,t22_723,t23_723,t7_3,t25_723,t26_723), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_723), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), tuf_operator_hst(t1_808,t2_808,t3_808,t4_808,t7_3,t6_808,t7_808), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), tuf_owner_hst(t1_805,t2_805,t3_805,t4_805,t5_805,t7_3,t7_805,t8_805), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_722),URI("http://dbpedia.org/resource/Marshall_Islands"),http://www.w3.org/2001/XMLSchema#integer(t7_3)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_3),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_3,t2_3,t3_3,t4_3,"Marshall islands",t6_3,t7_3,t8_3,t9_3,t10_3), IS_NOT_NULL(t7_3), tuf_operator_hst(t1_722,t2_722,t3_722,t4_722,t7_3,t6_722,t7_722), IS_NOT_NULL(t7_3), IS_NOT_NULL(t1_722), facility_fixed(t1_803,t2_803,t3_803,t4_803,t5_803,t6_803,t7_803,t8_803,t9_803,t10_803,t11_803,t12_803,t13_803,t14_803,t15_803,t16_803,t17_803,t18_803,t19_803,t20_803,t21_803,t22_803,t23_803,t7_3,t25_803,t26_803), IS_NOT_NULL(t7_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), tuf_operator_hst(t1_852,t2_852,t3_852,t4_852,t7_2,t6_852,t7_852), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), tuf_owner_hst(t1_849,t2_849,t3_849,t4_849,t5_849,t7_2,t7_849,t8_849), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_2),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_2), facility_fixed(t1_847,t2_847,t3_847,t4_847,t5_847,t6_847,t7_847,t8_847,t9_847,t10_847,t11_847,t12_847,t13_847,t14_847,t15_847,t16_847,t17_847,t18_847,t19_847,t20_847,t21_847,t22_847,t23_847,t7_2,t25_847,t26_847), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), tuf_operator_hst(t1_871,t2_871,t3_871,t4_871,t7_2,t6_871,t7_871), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), tuf_owner_hst(t1_868,t2_868,t3_868,t4_868,t5_868,t7_2,t7_868,t8_868), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_826),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_owner_hst(t1_826,t2_826,t3_826,t4_826,t5_826,t7_2,t7_826,t8_826), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_826), facility_fixed(t1_866,t2_866,t3_866,t4_866,t5_866,t6_866,t7_866,t8_866,t9_866,t10_866,t11_866,t12_866,t13_866,t14_866,t15_866,t16_866,t17_866,t18_866,t19_866,t20_866,t21_866,t22_866,t23_866,t7_2,t25_866,t26_866), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), tuf_operator_hst(t1_890,t2_890,t3_890,t4_890,t7_2,t6_890,t7_890), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), tuf_owner_hst(t1_887,t2_887,t3_887,t4_887,t5_887,t7_2,t7_887,t8_887), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_824),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), facility_fixed(t1_824,t2_824,t3_824,t4_824,t5_824,t6_824,t7_824,t8_824,t9_824,t10_824,t11_824,t12_824,t13_824,t14_824,t15_824,t16_824,t17_824,t18_824,t19_824,t20_824,t21_824,t22_824,t23_824,t7_2,t25_824,t26_824), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_824), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), tuf_operator_hst(t1_909,t2_909,t3_909,t4_909,t7_2,t6_909,t7_909), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), tuf_owner_hst(t1_906,t2_906,t3_906,t4_906,t5_906,t7_2,t7_906,t8_906), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_823),URI("http://dbpedia.org/resource/China"),http://www.w3.org/2001/XMLSchema#integer(t7_2)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_2),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_2,t2_2,t3_2,t4_2,"China",t6_2,t7_2,t8_2,t9_2,t10_2), IS_NOT_NULL(t7_2), tuf_operator_hst(t1_823,t2_823,t3_823,t4_823,t7_2,t6_823,t7_823), IS_NOT_NULL(t7_2), IS_NOT_NULL(t1_823), facility_fixed(t1_904,t2_904,t3_904,t4_904,t5_904,t6_904,t7_904,t8_904,t9_904,t10_904,t11_904,t12_904,t13_904,t14_904,t15_904,t16_904,t17_904,t18_904,t19_904,t20_904,t21_904,t22_904,t23_904,t7_2,t25_904,t26_904), IS_NOT_NULL(t7_2)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), tuf_operator_hst(t1_953,t2_953,t3_953,t4_953,t7_1,t6_953,t7_953), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), tuf_owner_hst(t1_950,t2_950,t3_950,t4_950,t5_950,t7_1,t7_950,t8_950), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_1),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_1), facility_fixed(t1_948,t2_948,t3_948,t4_948,t5_948,t6_948,t7_948,t8_948,t9_948,t10_948,t11_948,t12_948,t13_948,t14_948,t15_948,t16_948,t17_948,t18_948,t19_948,t20_948,t21_948,t22_948,t23_948,t7_1,t25_948,t26_948), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), tuf_operator_hst(t1_972,t2_972,t3_972,t4_972,t7_1,t6_972,t7_972), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), tuf_owner_hst(t1_969,t2_969,t3_969,t4_969,t5_969,t7_1,t7_969,t8_969), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_927),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_owner_hst(t1_927,t2_927,t3_927,t4_927,t5_927,t7_1,t7_927,t8_927), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_927), facility_fixed(t1_967,t2_967,t3_967,t4_967,t5_967,t6_967,t7_967,t8_967,t9_967,t10_967,t11_967,t12_967,t13_967,t14_967,t15_967,t16_967,t17_967,t18_967,t19_967,t20_967,t21_967,t22_967,t23_967,t7_1,t25_967,t26_967), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), tuf_operator_hst(t1_991,t2_991,t3_991,t4_991,t7_1,t6_991,t7_991), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), tuf_owner_hst(t1_988,t2_988,t3_988,t4_988,t5_988,t7_1,t7_988,t8_988), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_925),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), facility_fixed(t1_925,t2_925,t3_925,t4_925,t5_925,t6_925,t7_925,t8_925,t9_925,t10_925,t11_925,t12_925,t13_925,t14_925,t15_925,t16_925,t17_925,t18_925,t19_925,t20_925,t21_925,t22_925,t23_925,t7_1,t25_925,t26_925), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_925), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), tuf_operator_hst(t1_1010,t2_1010,t3_1010,t4_1010,t7_1,t6_1010,t7_1010), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), tuf_owner_hst(t1_1007,t2_1007,t3_1007,t4_1007,t5_1007,t7_1,t7_1007,t8_1007), IS_NOT_NULL(t7_1)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_924),URI("http://dbpedia.org/resource/Denmark"),http://www.w3.org/2001/XMLSchema#integer(t7_1)) :- GT(http://www.w3.org/2001/XMLSchema#integer(t7_1),http://www.w3.org/2001/XMLSchema#integer(400000)), facility_moveable(t1_1,t2_1,t3_1,t4_1,"Denmark",t6_1,t7_1,t8_1,t9_1,t10_1), IS_NOT_NULL(t7_1), tuf_operator_hst(t1_924,t2_924,t3_924,t4_924,t7_1,t6_924,t7_924), IS_NOT_NULL(t7_1), IS_NOT_NULL(t1_924), facility_fixed(t1_1005,t2_1005,t3_1005,t4_1005,t5_1005,t6_1005,t7_1005,t8_1005,t9_1005,t10_1005,t11_1005,t12_1005,t13_1005,t14_1005,t15_1005,t16_1005,t17_1005,t18_1005,t19_1005,t20_1005,t21_1005,t22_1005,t23_1005,t7_1,t25_1005,t26_1005), IS_NOT_NULL(t7_1)

21:18:13.062 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Partial evaluation ended.
21:18:13.117 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Producing the SQL string...
21:18:13.146 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Resulting sql: 
SELECT *
FROM (
SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`cmpNpdidCompany`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`facility`

21:18:13.146 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Executing the query and get the result...
21:18:13.201 [Thread-10] DEBUG i.u.k.o.o.core.QuestStatement - Execution finished.

"ACERGY FALCON", <http://dbpedia.org/resource/Norway>, "402507"^^xsd:integer, 
"ARTEMIS ARCTIC", <http://dbpedia.org/resource/Norway>, "414880"^^xsd:integer, 
"COSLInnovator", <http://dbpedia.org/resource/Norway>, "413825"^^xsd:integer, 
"COSLPioneer", <http://dbpedia.org/resource/The_Bahamas>, "413534"^^xsd:integer, 
"COSLPromoter", <http://dbpedia.org/resource/Norway>, "413883"^^xsd:integer, 
"DEEPSEA ATLANTIC", <http://dbpedia.org/resource/Norway>, "404360"^^xsd:integer, 
"EDDA FAUNA", <http://dbpedia.org/resource/Norway>, "403711"^^xsd:integer, 
"EDDA FJORD", <http://dbpedia.org/resource/Norway>, "415384"^^xsd:integer, 
"EDDA FLORA", <http://dbpedia.org/resource/Norway>, "408756"^^xsd:integer, 
"FAR SAGA", <http://dbpedia.org/resource/Norway>, "424872"^^xsd:integer, 
"FLOATEL SUPERIOR", <http://dbpedia.org/resource/Norway>, "411482"^^xsd:integer, 
"FUGRO DISCOVERY", <http://dbpedia.org/resource/Norway>, "413252"^^xsd:integer, 
"FUGRO MERCATOR", <http://dbpedia.org/resource/Norway>, "404582"^^xsd:integer, 
"FUGRO SALTIRE", <http://dbpedia.org/resource/Norway>, "413414"^^xsd:integer, 
"GEOSUND", <http://dbpedia.org/resource/Norway>, "409724"^^xsd:integer, 
"HAVEN", <http://dbpedia.org/resource/Norway>, "411539"^^xsd:integer, 
"ISLAND COMMANDER", <http://dbpedia.org/resource/Norway>, "413474"^^xsd:integer, 
"ISLAND CONSTRUCTOR", <http://dbpedia.org/resource/Norway>, "405827"^^xsd:integer, 
"ISLAND ENFORCER", <http://dbpedia.org/resource/Norway>, "411773"^^xsd:integer, 
"ISLAND INNOVATOR", <http://dbpedia.org/resource/Norway>, "426940"^^xsd:integer, 
"ISLAND VALIANT", <http://dbpedia.org/resource/Norway>, "408814"^^xsd:integer, 
"ISLAND VANGUARD", <http://dbpedia.org/resource/Norway>, "405770"^^xsd:integer, 
"ISLAND WELLSERVER", <http://dbpedia.org/resource/Norway>, "404470"^^xsd:integer, 
"MÆRSK REACHER", <http://dbpedia.org/resource/Denmark>, "411423"^^xsd:integer, 
"NAVION EUROPA", <http://dbpedia.org/resource/Norway>, "408869"^^xsd:integer, 
"NORMAND CARRIER", <http://dbpedia.org/resource/Norway>, "405450"^^xsd:integer, 
"NORMAND FLOWER", <http://dbpedia.org/resource/Norway>, "405509"^^xsd:integer, 
"NORMAND MERMAID", <http://dbpedia.org/resource/Norway>, "403231"^^xsd:integer, 
"NORMAND SUBSEA", <http://dbpedia.org/resource/Great_Britain>, "429605"^^xsd:integer, 
"NORSHORE ATLANTIC", <http://dbpedia.org/resource/Norway>, "426997"^^xsd:integer, 
"OCEAN CLEVER", <http://dbpedia.org/resource/Norway>, "406001"^^xsd:integer, 
"OCEAN SKY", <http://dbpedia.org/resource/Norway>, "405947"^^xsd:integer, 
"ROWAN NORWAY", <http://dbpedia.org/resource/Marshall_Islands>, "417599"^^xsd:integer, 
"ROWAN STAVANGER", <http://dbpedia.org/resource/Norway>, "413943"^^xsd:integer, 
"SCANDI ACERGY", <http://dbpedia.org/resource/Norway>, "415496"^^xsd:integer, 
"SEVEN SISTERS", <http://dbpedia.org/resource/Norway>, "409783"^^xsd:integer, 
"SIEM PILOT", <http://dbpedia.org/resource/Norway>, "415967"^^xsd:integer, 
"SKANDI AKER", <http://dbpedia.org/resource/Norway>, "411835"^^xsd:integer, 
"SKANDI ARCTIC", <http://dbpedia.org/resource/Norway>, "429269"^^xsd:integer, 
"SKANDI CHIEFTAIN", <http://dbpedia.org/resource/Norway>, "415441"^^xsd:integer, 
"SKANDI SOTRA", <http://dbpedia.org/resource/Norway>, "406180"^^xsd:integer, 
"TRANSOCEAN BARENTS", <http://dbpedia.org/resource/The_Bahamas>, "404303"^^xsd:integer, 
"TRANSOCEAN SPITSBERGEN", <http://dbpedia.org/resource/The_Bahamas>, "404201"^^xsd:integer, 
"WEST ELARA", <http://dbpedia.org/resource/Norway>, "414002"^^xsd:integer, 
"WEST HERCULES", <http://dbpedia.org/resource/Norway>, "415836"^^xsd:integer, 
"WILLNOVATOR", <http://dbpedia.org/resource/Norway>, "404524"^^xsd:integer, 

The input SPARQL query:
=======================
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
SELECT *
WHERE { 
  [ ] a npdv:Facility ;
      npdv:name ?facility ;
      npdv:registeredInCountry ?country;
      npdv:idNPD ?id . 
FILTER (?id > 400000)
}
ORDER BY ?facility



The output SQL query:
=====================
SELECT *
FROM (
SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`cmpNpdidCompany`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_operator_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW1.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`tufName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
tuf_owner_hst QVIEW2,
facility_fixed QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
QVIEW2.`tufName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_operator_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2,
tuf_owner_hst QVIEW3
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
QVIEW2.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`tufNpdidTuf`)
UNION ALL

SELECT 
   3 AS "facilityQuestType", NULL AS "facilityLang", CAST(QVIEW2.`fclName` AS CHAR(8000) CHARACTER SET utf8) AS `facility`, 
   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS "idQuestType", NULL AS "idLang", CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`
 FROM 
facility_moveable QVIEW1,
facility_fixed QVIEW2
WHERE 
(QVIEW1.`fclNpdidFacility` > 400000) AND
(QV