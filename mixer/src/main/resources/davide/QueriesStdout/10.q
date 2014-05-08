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
SELECT DISTINCT *
WHERE {
      [] a npdv:DiscoveryWellbore ;
         npdv:name ?wellbore; 
        npdv:dateUpdated ?date .
FILTER (?date > "2013-01-01T00:00:00.0")
}
ORDER BY ?wellbore


21:18:12.441 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Executing query: 
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
SELECT DISTINCT *
WHERE {
      [] a npdv:DiscoveryWellbore ;
         npdv:name ?wellbore; 
        npdv:dateUpdated ?date .
FILTER (?date > "2013-01-01T00:00:00.0")
}
ORDER BY ?wellbore


21:18:12.449 [Thread-8] DEBUG i.u.k.o.o.c.t.SparqlAlgebraToDatalogTranslator - SPARQL algebra: 
Distinct
   Projection
      ProjectionElemList
         ProjectionElem "wellbore"
         ProjectionElem "date"
      Order
         OrderElem (ASC)
            Var (name=wellbore)
         Filter
            Compare (>)
               Var (name=date)
               ValueConstant (value="2013-01-01T00:00:00.0")
            Join
               Join
                  StatementPattern
                     Var (name=-anon-1, anonymous)
                     Var (name=-const-http://www.w3.org/1999/02/22-rdf-syntax-ns#type-uri, value=http://www.w3.org/1999/02/22-rdf-syntax-ns#type, anonymous)
                     Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore, anonymous)
                  StatementPattern
                     Var (name=-anon-1, anonymous)
                     Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#name-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#name, anonymous)
                     Var (name=wellbore)
               StatementPattern
                  Var (name=-anon-1, anonymous)
                  Var (name=-const-http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated-uri, value=http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated, anonymous)
                  Var (name=date)

21:18:12.449 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Translated query: 
ans1(wellbore,date) :- ans2(-anon-1,date,wellbore)
ans2(-anon-1,date,wellbore) :- ans4(-anon-1,date,wellbore), GT(date,http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0"))
ans4(-anon-1,date,wellbore) :- ans8(-anon-1,wellbore), ans9(-anon-1,date)
ans8(-anon-1,wellbore) :- ans16(-anon-1), ans17(-anon-1,wellbore)
ans16(-anon-1) :- http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)
ans17(-anon-1,wellbore) :- http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)
ans9(-anon-1,date) :- http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date)

21:18:12.449 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Flattened query: 
ans1(wellbore,date) :- http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore), http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date), GT(date,http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0"))

21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Replacing equivalences...
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Normalized program: 
ans1(wellbore,date) :- http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore), http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date), GT(date,http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0"))

21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Start the rewriting process...
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - CONNECTED COMPONENT ([date, wellbore]) EXISTS [loop: {-anon-1}[http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)]]
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter -      WITH EDGES [edge: {-anon-1, date}[http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date)][http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)][], edge: {-anon-1, wellbore}[http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)][http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)][]] AND LOOP null
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter -      NON-DL ATOMS [GT(date,http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0"))]
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - QUANTIFIED VARIABLE -anon-1
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - EDGE edge: {-anon-1, date}[http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date)][http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)][] HAS PROPERTY http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date)
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - EDGE edge: {-anon-1, wellbore}[http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)][http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)][] HAS PROPERTY http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessSet - TREE WITNESSES FOUND: 0
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {-anon-1, date}[http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date)][http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)][]
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - EDGE edge: {-anon-1, wellbore}[http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)][http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1)][]
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated_EXT IS []
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram -     CQC CONTAINMENT: http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore_EXT(x) :- ER.A-AUXROLE48(_,x) IN http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore_EXT(x) :- http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(x)
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram -     CQC CONTAINMENT: http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore_EXT(x) :- http://sws.ifi.uio.no/vocab/npd-v2#discoveryWellbore(_,x) IN http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore_EXT(x) :- http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(x)
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.ExtDatalogProgram - DP FOR http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore_EXT IS []
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - REWRITTEN PROGRAM
ans1(wellbore,date) :- GT(date,http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date), http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)
CC DEFS
null
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - Rewriting time: 0.000 s (total 3.472 s)
21:18:12.450 [Thread-8] DEBUG i.u.k.o.o.c.r.TreeWitnessRewriter - Final rewriting:
ans1(wellbore,date) :- GT(date,http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), http://sws.ifi.uio.no/vocab/npd-v2#dateUpdated(-anon-1,date), http://sws.ifi.uio.no/vocab/npd-v2#DiscoveryWellbore(-anon-1), http://sws.ifi.uio.no/vocab/npd-v2#name(-anon-1,wellbore)

21:18:12.451 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Start the partial evaluation process...
21:18:12.456 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Partial evaluation: 
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_65),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), wellbore_exploration_all(t1_65,t2_65,t3_65,t4_65,t5_65,t6_65,t7_65,t8_65,t9_65,t10_65,t11_65,t12_65,t13_65,t14_65,t15_65,t16_65,t17_65,t18_65,t19_65,t20_65,t21_65,t22_65,t23_65,t24_65,t25_65,t26_65,t27_65,t28_65,t29_65,t30_65,t31_65,t32_65,t33_65,t34_65,t35_65,t36_65,t37_65,t38_65,t39_65,t40_65,t41_65,t42_65,t43_65,t44_65,t45_65,t46_65,t47_65,t48_65,t49_65,t50_65,t51_65,t52_65,t53_65,t54_65,t55_65,t56_65,t57_65,t58_65,t59_65,t60_65,t61_65,t62_65,t63_65,t64_65,t65_65,t66_65,t67_65,t68_65,t69_65,t54_28,t71_65,t72_65,t73_65,t74_65,t75_65,t76_65,t77_65,t78_65,t79_65), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_65)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_42),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t21_42)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_28),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_28)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_53),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), wellbore_shallow_all(t1_53,t54_28,t3_53,t4_53,t5_53,t6_53,t7_53,t8_53,t9_53,t10_53,t11_53,t12_53,t13_53,t14_53,t15_53,t16_53,t17_53,t18_53,t19_53,t20_53,t21_53,t22_53,t23_53,t24_53,t25_53,t26_53,t27_53,t28_53,t29_53,t30_53,t31_53,t32_53,t33_53,t34_53,t35_53,t36_53,t37_53,t38_53), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_53)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_90),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), wellbore_exploration_all(t1_90,t2_90,t3_90,t4_90,t5_90,t6_90,t7_90,t8_90,t9_90,t10_90,t11_90,t12_90,t13_90,t14_90,t15_90,t16_90,t17_90,t18_90,t19_90,t20_90,t21_90,t22_90,t23_90,t24_90,t25_90,t26_90,t27_90,t28_90,t29_90,t30_90,t31_90,t32_90,t33_90,t34_90,t35_90,t36_90,t37_90,t38_90,t39_90,t40_90,t41_90,t42_90,t43_90,t44_90,t45_90,t46_90,t47_90,t48_90,t49_90,t50_90,t51_90,t52_90,t53_90,t54_90,t55_90,t56_90,t57_90,t58_90,t59_90,t60_90,t61_90,t62_90,t63_90,t64_90,t65_90,t66_90,t67_90,t68_90,t69_90,t54_28,t71_90,t72_90,t73_90,t74_90,t75_90,t76_90,t77_90,t78_90,t79_90), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_90)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_41),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t17_41)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_28),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_28)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_78),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), wellbore_shallow_all(t1_78,t54_28,t3_78,t4_78,t5_78,t6_78,t7_78,t8_78,t9_78,t10_78,t11_78,t12_78,t13_78,t14_78,t15_78,t16_78,t17_78,t18_78,t19_78,t20_78,t21_78,t22_78,t23_78,t24_78,t25_78,t26_78,t27_78,t28_78,t29_78,t30_78,t31_78,t32_78,t33_78,t34_78,t35_78,t36_78,t37_78,t38_78), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_78)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_12),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_12)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_124),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t21_124)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_141),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), wellbore_development_all(t1_141,t2_141,t3_141,t4_141,t5_141,t6_141,t7_141,t8_141,t9_141,t10_141,t11_141,t12_141,t13_141,t14_141,t15_141,t16_141,t17_141,t18_141,t19_141,t20_141,t21_141,t22_141,t23_141,t24_141,t25_141,t26_141,t27_141,t28_141,t29_141,t30_141,t31_141,t32_141,t33_141,t34_141,t35_141,t36_141,t37_141,t38_141,t39_141,t40_141,t41_141,t42_141,t43_141,t44_141,t45_141,t46_141,t47_141,t48_141,t49_141,t50_141,t51_141,t52_141,t53_141,t70_12,t55_141,t56_141,t57_141,t58_141,t59_141,t60_141,t61_141,t62_141,t63_141,t64_141,t65_141), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_141)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_135),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), wellbore_shallow_all(t1_135,t70_12,t3_135,t4_135,t5_135,t6_135,t7_135,t8_135,t9_135,t10_135,t11_135,t12_135,t13_135,t14_135,t15_135,t16_135,t17_135,t18_135,t19_135,t20_135,t21_135,t22_135,t23_135,t24_135,t25_135,t26_135,t27_135,t28_135,t29_135,t30_135,t31_135,t32_135,t33_135,t34_135,t35_135,t36_135,t37_135,t38_135), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_135)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_12),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_12)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_123),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t17_123)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_166),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), wellbore_development_all(t1_166,t2_166,t3_166,t4_166,t5_166,t6_166,t7_166,t8_166,t9_166,t10_166,t11_166,t12_166,t13_166,t14_166,t15_166,t16_166,t17_166,t18_166,t19_166,t20_166,t21_166,t22_166,t23_166,t24_166,t25_166,t26_166,t27_166,t28_166,t29_166,t30_166,t31_166,t32_166,t33_166,t34_166,t35_166,t36_166,t37_166,t38_166,t39_166,t40_166,t41_166,t42_166,t43_166,t44_166,t45_166,t46_166,t47_166,t48_166,t49_166,t50_166,t51_166,t52_166,t53_166,t70_12,t55_166,t56_166,t57_166,t58_166,t59_166,t60_166,t61_166,t62_166,t63_166,t64_166,t65_166), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_166)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_160),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), wellbore_shallow_all(t1_160,t70_12,t3_160,t4_160,t5_160,t6_160,t7_160,t8_160,t9_160,t10_160,t11_160,t12_160,t13_160,t14_160,t15_160,t16_160,t17_160,t18_160,t19_160,t20_160,t21_160,t22_160,t23_160,t24_160,t25_160,t26_160,t27_160,t28_160,t29_160,t30_160,t31_160,t32_160,t33_160,t34_160,t35_160,t36_160,t37_160,t38_160), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_160)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_215),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), wellbore_exploration_all(t1_215,t2_215,t3_215,t4_215,t5_215,t6_215,t7_215,t8_215,t9_215,t10_215,t11_215,t12_215,t13_215,t14_215,t15_215,t16_215,t17_215,t18_215,t19_215,t20_215,t21_215,t22_215,t23_215,t24_215,t25_215,t26_215,t27_215,t28_215,t29_215,t30_215,t31_215,t32_215,t33_215,t34_215,t35_215,t36_215,t37_215,t38_215,t39_215,t40_215,t41_215,t42_215,t43_215,t44_215,t45_215,t46_215,t47_215,t48_215,t49_215,t50_215,t51_215,t52_215,t53_215,t54_215,t55_215,t56_215,t57_215,t58_215,t59_215,t60_215,t61_215,t62_215,t63_215,t64_215,t65_215,t66_215,t67_215,t68_215,t69_215,t2_3,t71_215,t72_215,t73_215,t74_215,t75_215,t76_215,t77_215,t78_215,t79_215), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_215)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_192),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t21_192)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_209),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), wellbore_development_all(t1_209,t2_209,t3_209,t4_209,t5_209,t6_209,t7_209,t8_209,t9_209,t10_209,t11_209,t12_209,t13_209,t14_209,t15_209,t16_209,t17_209,t18_209,t19_209,t20_209,t21_209,t22_209,t23_209,t24_209,t25_209,t26_209,t27_209,t28_209,t29_209,t30_209,t31_209,t32_209,t33_209,t34_209,t35_209,t36_209,t37_209,t38_209,t39_209,t40_209,t41_209,t42_209,t43_209,t44_209,t45_209,t46_209,t47_209,t48_209,t49_209,t50_209,t51_209,t52_209,t53_209,t2_3,t55_209,t56_209,t57_209,t58_209,t59_209,t60_209,t61_209,t62_209,t63_209,t64_209,t65_209), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_209)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_240),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), wellbore_exploration_all(t1_240,t2_240,t3_240,t4_240,t5_240,t6_240,t7_240,t8_240,t9_240,t10_240,t11_240,t12_240,t13_240,t14_240,t15_240,t16_240,t17_240,t18_240,t19_240,t20_240,t21_240,t22_240,t23_240,t24_240,t25_240,t26_240,t27_240,t28_240,t29_240,t30_240,t31_240,t32_240,t33_240,t34_240,t35_240,t36_240,t37_240,t38_240,t39_240,t40_240,t41_240,t42_240,t43_240,t44_240,t45_240,t46_240,t47_240,t48_240,t49_240,t50_240,t51_240,t52_240,t53_240,t54_240,t55_240,t56_240,t57_240,t58_240,t59_240,t60_240,t61_240,t62_240,t63_240,t64_240,t65_240,t66_240,t67_240,t68_240,t69_240,t2_3,t71_240,t72_240,t73_240,t74_240,t75_240,t76_240,t77_240,t78_240,t79_240), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_240)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_191),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t17_191)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_234),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), wellbore_development_all(t1_234,t2_234,t3_234,t4_234,t5_234,t6_234,t7_234,t8_234,t9_234,t10_234,t11_234,t12_234,t13_234,t14_234,t15_234,t16_234,t17_234,t18_234,t19_234,t20_234,t21_234,t22_234,t23_234,t24_234,t25_234,t26_234,t27_234,t28_234,t29_234,t30_234,t31_234,t32_234,t33_234,t34_234,t35_234,t36_234,t37_234,t38_234,t39_234,t40_234,t41_234,t42_234,t43_234,t44_234,t45_234,t46_234,t47_234,t48_234,t49_234,t50_234,t51_234,t52_234,t53_234,t2_3,t55_234,t56_234,t57_234,t58_234,t59_234,t60_234,t61_234,t62_234,t63_234,t64_234,t65_234), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_234)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_3)

21:18:12.456 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - After target rules removed: 
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_65),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), wellbore_exploration_all(t1_65,t2_65,t3_65,t4_65,t5_65,t6_65,t7_65,t8_65,t9_65,t10_65,t11_65,t12_65,t13_65,t14_65,t15_65,t16_65,t17_65,t18_65,t19_65,t20_65,t21_65,t22_65,t23_65,t24_65,t25_65,t26_65,t27_65,t28_65,t29_65,t30_65,t31_65,t32_65,t33_65,t34_65,t35_65,t36_65,t37_65,t38_65,t39_65,t40_65,t41_65,t42_65,t43_65,t44_65,t45_65,t46_65,t47_65,t48_65,t49_65,t50_65,t51_65,t52_65,t53_65,t54_65,t55_65,t56_65,t57_65,t58_65,t59_65,t60_65,t61_65,t62_65,t63_65,t64_65,t65_65,t66_65,t67_65,t68_65,t69_65,t54_28,t71_65,t72_65,t73_65,t74_65,t75_65,t76_65,t77_65,t78_65,t79_65), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_65)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_42),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t21_42)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_28),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_28)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_53),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), wellbore_shallow_all(t1_53,t54_28,t3_53,t4_53,t5_53,t6_53,t7_53,t8_53,t9_53,t10_53,t11_53,t12_53,t13_53,t14_53,t15_53,t16_53,t17_53,t18_53,t19_53,t20_53,t21_53,t22_53,t23_53,t24_53,t25_53,t26_53,t27_53,t28_53,t29_53,t30_53,t31_53,t32_53,t33_53,t34_53,t35_53,t36_53,t37_53,t38_53), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_53)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_90),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), wellbore_exploration_all(t1_90,t2_90,t3_90,t4_90,t5_90,t6_90,t7_90,t8_90,t9_90,t10_90,t11_90,t12_90,t13_90,t14_90,t15_90,t16_90,t17_90,t18_90,t19_90,t20_90,t21_90,t22_90,t23_90,t24_90,t25_90,t26_90,t27_90,t28_90,t29_90,t30_90,t31_90,t32_90,t33_90,t34_90,t35_90,t36_90,t37_90,t38_90,t39_90,t40_90,t41_90,t42_90,t43_90,t44_90,t45_90,t46_90,t47_90,t48_90,t49_90,t50_90,t51_90,t52_90,t53_90,t54_90,t55_90,t56_90,t57_90,t58_90,t59_90,t60_90,t61_90,t62_90,t63_90,t64_90,t65_90,t66_90,t67_90,t68_90,t69_90,t54_28,t71_90,t72_90,t73_90,t74_90,t75_90,t76_90,t77_90,t78_90,t79_90), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_90)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_41),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t17_41)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_28),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_28)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_78),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ(t63_28,"9999-12-31T00:00:00"), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), wellbore_shallow_all(t1_78,t54_28,t3_78,t4_78,t5_78,t6_78,t7_78,t8_78,t9_78,t10_78,t11_78,t12_78,t13_78,t14_78,t15_78,t16_78,t17_78,t18_78,t19_78,t20_78,t21_78,t22_78,t23_78,t24_78,t25_78,t26_78,t27_78,t28_78,t29_78,t30_78,t31_78,t32_78,t33_78,t34_78,t35_78,t36_78,t37_78,t38_78), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_78)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_12),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_12)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_124),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t21_124)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_141),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), wellbore_development_all(t1_141,t2_141,t3_141,t4_141,t5_141,t6_141,t7_141,t8_141,t9_141,t10_141,t11_141,t12_141,t13_141,t14_141,t15_141,t16_141,t17_141,t18_141,t19_141,t20_141,t21_141,t22_141,t23_141,t24_141,t25_141,t26_141,t27_141,t28_141,t29_141,t30_141,t31_141,t32_141,t33_141,t34_141,t35_141,t36_141,t37_141,t38_141,t39_141,t40_141,t41_141,t42_141,t43_141,t44_141,t45_141,t46_141,t47_141,t48_141,t49_141,t50_141,t51_141,t52_141,t53_141,t70_12,t55_141,t56_141,t57_141,t58_141,t59_141,t60_141,t61_141,t62_141,t63_141,t64_141,t65_141), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_141)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_135),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), wellbore_shallow_all(t1_135,t70_12,t3_135,t4_135,t5_135,t6_135,t7_135,t8_135,t9_135,t10_135,t11_135,t12_135,t13_135,t14_135,t15_135,t16_135,t17_135,t18_135,t19_135,t20_135,t21_135,t22_135,t23_135,t24_135,t25_135,t26_135,t27_135,t28_135,t29_135,t30_135,t31_135,t32_135,t33_135,t34_135,t35_135,t36_135,t37_135,t38_135), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_135)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_12),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_12)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_123),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t17_123)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_166),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), wellbore_development_all(t1_166,t2_166,t3_166,t4_166,t5_166,t6_166,t7_166,t8_166,t9_166,t10_166,t11_166,t12_166,t13_166,t14_166,t15_166,t16_166,t17_166,t18_166,t19_166,t20_166,t21_166,t22_166,t23_166,t24_166,t25_166,t26_166,t27_166,t28_166,t29_166,t30_166,t31_166,t32_166,t33_166,t34_166,t35_166,t36_166,t37_166,t38_166,t39_166,t40_166,t41_166,t42_166,t43_166,t44_166,t45_166,t46_166,t47_166,t48_166,t49_166,t50_166,t51_166,t52_166,t53_166,t70_12,t55_166,t56_166,t57_166,t58_166,t59_166,t60_166,t61_166,t62_166,t63_166,t64_166,t65_166), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_166)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_160),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ(t77_12,"9999-12-31T00:00:00"), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), wellbore_shallow_all(t1_160,t70_12,t3_160,t4_160,t5_160,t6_160,t7_160,t8_160,t9_160,t10_160,t11_160,t12_160,t13_160,t14_160,t15_160,t16_160,t17_160,t18_160,t19_160,t20_160,t21_160,t22_160,t23_160,t24_160,t25_160,t26_160,t27_160,t28_160,t29_160,t30_160,t31_160,t32_160,t33_160,t34_160,t35_160,t36_160,t37_160,t38_160), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_160)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_215),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), wellbore_exploration_all(t1_215,t2_215,t3_215,t4_215,t5_215,t6_215,t7_215,t8_215,t9_215,t10_215,t11_215,t12_215,t13_215,t14_215,t15_215,t16_215,t17_215,t18_215,t19_215,t20_215,t21_215,t22_215,t23_215,t24_215,t25_215,t26_215,t27_215,t28_215,t29_215,t30_215,t31_215,t32_215,t33_215,t34_215,t35_215,t36_215,t37_215,t38_215,t39_215,t40_215,t41_215,t42_215,t43_215,t44_215,t45_215,t46_215,t47_215,t48_215,t49_215,t50_215,t51_215,t52_215,t53_215,t54_215,t55_215,t56_215,t57_215,t58_215,t59_215,t60_215,t61_215,t62_215,t63_215,t64_215,t65_215,t66_215,t67_215,t68_215,t69_215,t2_3,t71_215,t72_215,t73_215,t74_215,t75_215,t76_215,t77_215,t78_215,t79_215), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_215)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_192),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t21_192)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_209),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), wellbore_development_all(t1_209,t2_209,t3_209,t4_209,t5_209,t6_209,t7_209,t8_209,t9_209,t10_209,t11_209,t12_209,t13_209,t14_209,t15_209,t16_209,t17_209,t18_209,t19_209,t20_209,t21_209,t22_209,t23_209,t24_209,t25_209,t26_209,t27_209,t28_209,t29_209,t30_209,t31_209,t32_209,t33_209,t34_209,t35_209,t36_209,t37_209,t38_209,t39_209,t40_209,t41_209,t42_209,t43_209,t44_209,t45_209,t46_209,t47_209,t48_209,t49_209,t50_209,t51_209,t52_209,t53_209,t2_3,t55_209,t56_209,t57_209,t58_209,t59_209,t60_209,t61_209,t62_209,t63_209,t64_209,t65_209), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_209)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_240),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), wellbore_exploration_all(t1_240,t2_240,t3_240,t4_240,t5_240,t6_240,t7_240,t8_240,t9_240,t10_240,t11_240,t12_240,t13_240,t14_240,t15_240,t16_240,t17_240,t18_240,t19_240,t20_240,t21_240,t22_240,t23_240,t24_240,t25_240,t26_240,t27_240,t28_240,t29_240,t30_240,t31_240,t32_240,t33_240,t34_240,t35_240,t36_240,t37_240,t38_240,t39_240,t40_240,t41_240,t42_240,t43_240,t44_240,t45_240,t46_240,t47_240,t48_240,t49_240,t50_240,t51_240,t52_240,t53_240,t54_240,t55_240,t56_240,t57_240,t58_240,t59_240,t60_240,t61_240,t62_240,t63_240,t64_240,t65_240,t66_240,t67_240,t68_240,t69_240,t2_3,t71_240,t72_240,t73_240,t74_240,t75_240,t76_240,t77_240,t78_240,t79_240), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_240)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_191),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t17_191)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_234),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), wellbore_development_all(t1_234,t2_234,t3_234,t4_234,t5_234,t6_234,t7_234,t8_234,t9_234,t10_234,t11_234,t12_234,t13_234,t14_234,t15_234,t16_234,t17_234,t18_234,t19_234,t20_234,t21_234,t22_234,t23_234,t24_234,t25_234,t26_234,t27_234,t28_234,t29_234,t30_234,t31_234,t32_234,t33_234,t34_234,t35_234,t36_234,t37_234,t38_234,t39_234,t40_234,t41_234,t42_234,t43_234,t44_234,t45_234,t46_234,t47_234,t48_234,t49_234,t50_234,t51_234,t52_234,t53_234,t2_3,t55_234,t56_234,t57_234,t58_234,t59_234,t60_234,t61_234,t62_234,t63_234,t64_234,t65_234), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_234)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ(t36_3,"9999-12-31T00:00:00"), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_3)

21:18:12.457 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Boolean expression evaluated: 
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_65),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), wellbore_exploration_all(t1_65,t2_65,t3_65,t4_65,t5_65,t6_65,t7_65,t8_65,t9_65,t10_65,t11_65,t12_65,t13_65,t14_65,t15_65,t16_65,t17_65,t18_65,t19_65,t20_65,t21_65,t22_65,t23_65,t24_65,t25_65,t26_65,t27_65,t28_65,t29_65,t30_65,t31_65,t32_65,t33_65,t34_65,t35_65,t36_65,t37_65,t38_65,t39_65,t40_65,t41_65,t42_65,t43_65,t44_65,t45_65,t46_65,t47_65,t48_65,t49_65,t50_65,t51_65,t52_65,t53_65,t54_65,t55_65,t56_65,t57_65,t58_65,t59_65,t60_65,t61_65,t62_65,t63_65,t64_65,t65_65,t66_65,t67_65,t68_65,t69_65,t54_28,t71_65,t72_65,t73_65,t74_65,t75_65,t76_65,t77_65,t78_65,t79_65), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_65)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_42),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t21_42)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_28),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_28)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_53),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), discovery(t1_42,t2_42,t3_42,t4_42,t5_42,t6_42,t7_42,t8_42,t9_42,t10_42,t11_42,t12_42,t13_42,t14_42,t54_28,t16_42,t17_42,t18_42,t19_42,t20_42), wellbore_npdid_overview(t21_42,t54_28,t23_42,t24_42,t25_42), IS_NOT_NULL(t54_28), wellbore_shallow_all(t1_53,t54_28,t3_53,t4_53,t5_53,t6_53,t7_53,t8_53,t9_53,t10_53,t11_53,t12_53,t13_53,t14_53,t15_53,t16_53,t17_53,t18_53,t19_53,t20_53,t21_53,t22_53,t23_53,t24_53,t25_53,t26_53,t27_53,t28_53,t29_53,t30_53,t31_53,t32_53,t33_53,t34_53,t35_53,t36_53,t37_53,t38_53), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_53)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_90),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), wellbore_exploration_all(t1_90,t2_90,t3_90,t4_90,t5_90,t6_90,t7_90,t8_90,t9_90,t10_90,t11_90,t12_90,t13_90,t14_90,t15_90,t16_90,t17_90,t18_90,t19_90,t20_90,t21_90,t22_90,t23_90,t24_90,t25_90,t26_90,t27_90,t28_90,t29_90,t30_90,t31_90,t32_90,t33_90,t34_90,t35_90,t36_90,t37_90,t38_90,t39_90,t40_90,t41_90,t42_90,t43_90,t44_90,t45_90,t46_90,t47_90,t48_90,t49_90,t50_90,t51_90,t52_90,t53_90,t54_90,t55_90,t56_90,t57_90,t58_90,t59_90,t60_90,t61_90,t62_90,t63_90,t64_90,t65_90,t66_90,t67_90,t68_90,t69_90,t54_28,t71_90,t72_90,t73_90,t74_90,t75_90,t76_90,t77_90,t78_90,t79_90), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_90)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_41),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t17_41)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_28),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_28)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_78),http://www.w3.org/2001/XMLSchema#dateTime(t63_28)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t63_28),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_development_all(t1_28,t2_28,t3_28,t4_28,t5_28,t6_28,t7_28,t8_28,t9_28,t10_28,t11_28,t12_28,t13_28,t14_28,t15_28,t16_28,t17_28,t18_28,t19_28,t20_28,t21_28,t22_28,t23_28,t24_28,t25_28,t26_28,t27_28,t28_28,t29_28,t30_28,t31_28,t32_28,t33_28,t34_28,t35_28,t36_28,t37_28,t38_28,t39_28,t40_28,t41_28,t42_28,t43_28,t44_28,t45_28,t46_28,t47_28,t48_28,t49_28,t50_28,t51_28,t52_28,t53_28,t54_28,t55_28,t56_28,t57_28,t58_28,t59_28,t60_28,t61_28,t62_28,t63_28,t64_28,t65_28), NEQ("9999-12-31T00:00:00",t63_28), IS_NOT_NULL(t54_28), IS_NOT_NULL(t63_28), field(t1_41,t2_41,t3_41,t4_41,t5_41,t6_41,t7_41,t8_41,t9_41,t54_28,t11_41,t12_41,t13_41,t14_41,t15_41,t16_41), wellbore_npdid_overview(t17_41,t54_28,t19_41,t20_41,t21_41), IS_NOT_NULL(t54_28), wellbore_shallow_all(t1_78,t54_28,t3_78,t4_78,t5_78,t6_78,t7_78,t8_78,t9_78,t10_78,t11_78,t12_78,t13_78,t14_78,t15_78,t16_78,t17_78,t18_78,t19_78,t20_78,t21_78,t22_78,t23_78,t24_78,t25_78,t26_78,t27_78,t28_78,t29_78,t30_78,t31_78,t32_78,t33_78,t34_78,t35_78,t36_78,t37_78,t38_78), IS_NOT_NULL(t54_28), IS_NOT_NULL(t1_78)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_12),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_12)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_124),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t21_124)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_141),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), wellbore_development_all(t1_141,t2_141,t3_141,t4_141,t5_141,t6_141,t7_141,t8_141,t9_141,t10_141,t11_141,t12_141,t13_141,t14_141,t15_141,t16_141,t17_141,t18_141,t19_141,t20_141,t21_141,t22_141,t23_141,t24_141,t25_141,t26_141,t27_141,t28_141,t29_141,t30_141,t31_141,t32_141,t33_141,t34_141,t35_141,t36_141,t37_141,t38_141,t39_141,t40_141,t41_141,t42_141,t43_141,t44_141,t45_141,t46_141,t47_141,t48_141,t49_141,t50_141,t51_141,t52_141,t53_141,t70_12,t55_141,t56_141,t57_141,t58_141,t59_141,t60_141,t61_141,t62_141,t63_141,t64_141,t65_141), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_141)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_135),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), discovery(t1_124,t2_124,t3_124,t4_124,t5_124,t6_124,t7_124,t8_124,t9_124,t10_124,t11_124,t12_124,t13_124,t14_124,t70_12,t16_124,t17_124,t18_124,t19_124,t20_124), wellbore_npdid_overview(t21_124,t70_12,t23_124,t24_124,t25_124), IS_NOT_NULL(t70_12), wellbore_shallow_all(t1_135,t70_12,t3_135,t4_135,t5_135,t6_135,t7_135,t8_135,t9_135,t10_135,t11_135,t12_135,t13_135,t14_135,t15_135,t16_135,t17_135,t18_135,t19_135,t20_135,t21_135,t22_135,t23_135,t24_135,t25_135,t26_135,t27_135,t28_135,t29_135,t30_135,t31_135,t32_135,t33_135,t34_135,t35_135,t36_135,t37_135,t38_135), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_135)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_12),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_12)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_123),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t17_123)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_166),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), wellbore_development_all(t1_166,t2_166,t3_166,t4_166,t5_166,t6_166,t7_166,t8_166,t9_166,t10_166,t11_166,t12_166,t13_166,t14_166,t15_166,t16_166,t17_166,t18_166,t19_166,t20_166,t21_166,t22_166,t23_166,t24_166,t25_166,t26_166,t27_166,t28_166,t29_166,t30_166,t31_166,t32_166,t33_166,t34_166,t35_166,t36_166,t37_166,t38_166,t39_166,t40_166,t41_166,t42_166,t43_166,t44_166,t45_166,t46_166,t47_166,t48_166,t49_166,t50_166,t51_166,t52_166,t53_166,t70_12,t55_166,t56_166,t57_166,t58_166,t59_166,t60_166,t61_166,t62_166,t63_166,t64_166,t65_166), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_166)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_160),http://www.w3.org/2001/XMLSchema#dateTime(t77_12)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t77_12),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_exploration_all(t1_12,t2_12,t3_12,t4_12,t5_12,t6_12,t7_12,t8_12,t9_12,t10_12,t11_12,t12_12,t13_12,t14_12,t15_12,t16_12,t17_12,t18_12,t19_12,t20_12,t21_12,t22_12,t23_12,t24_12,t25_12,t26_12,t27_12,t28_12,t29_12,t30_12,t31_12,t32_12,t33_12,t34_12,t35_12,t36_12,t37_12,t38_12,t39_12,t40_12,t41_12,t42_12,t43_12,t44_12,t45_12,t46_12,t47_12,t48_12,t49_12,t50_12,t51_12,t52_12,t53_12,t54_12,t55_12,t56_12,t57_12,t58_12,t59_12,t60_12,t61_12,t62_12,t63_12,t64_12,t65_12,t66_12,t67_12,t68_12,t69_12,t70_12,t71_12,t72_12,t73_12,t74_12,t75_12,t76_12,t77_12,t78_12,t79_12), NEQ("9999-12-31T00:00:00",t77_12), IS_NOT_NULL(t70_12), IS_NOT_NULL(t77_12), field(t1_123,t2_123,t3_123,t4_123,t5_123,t6_123,t7_123,t8_123,t9_123,t70_12,t11_123,t12_123,t13_123,t14_123,t15_123,t16_123), wellbore_npdid_overview(t17_123,t70_12,t19_123,t20_123,t21_123), IS_NOT_NULL(t70_12), wellbore_shallow_all(t1_160,t70_12,t3_160,t4_160,t5_160,t6_160,t7_160,t8_160,t9_160,t10_160,t11_160,t12_160,t13_160,t14_160,t15_160,t16_160,t17_160,t18_160,t19_160,t20_160,t21_160,t22_160,t23_160,t24_160,t25_160,t26_160,t27_160,t28_160,t29_160,t30_160,t31_160,t32_160,t33_160,t34_160,t35_160,t36_160,t37_160,t38_160), IS_NOT_NULL(t70_12), IS_NOT_NULL(t1_160)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_215),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), wellbore_exploration_all(t1_215,t2_215,t3_215,t4_215,t5_215,t6_215,t7_215,t8_215,t9_215,t10_215,t11_215,t12_215,t13_215,t14_215,t15_215,t16_215,t17_215,t18_215,t19_215,t20_215,t21_215,t22_215,t23_215,t24_215,t25_215,t26_215,t27_215,t28_215,t29_215,t30_215,t31_215,t32_215,t33_215,t34_215,t35_215,t36_215,t37_215,t38_215,t39_215,t40_215,t41_215,t42_215,t43_215,t44_215,t45_215,t46_215,t47_215,t48_215,t49_215,t50_215,t51_215,t52_215,t53_215,t54_215,t55_215,t56_215,t57_215,t58_215,t59_215,t60_215,t61_215,t62_215,t63_215,t64_215,t65_215,t66_215,t67_215,t68_215,t69_215,t2_3,t71_215,t72_215,t73_215,t74_215,t75_215,t76_215,t77_215,t78_215,t79_215), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_215)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t21_192),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t21_192)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_209),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), wellbore_development_all(t1_209,t2_209,t3_209,t4_209,t5_209,t6_209,t7_209,t8_209,t9_209,t10_209,t11_209,t12_209,t13_209,t14_209,t15_209,t16_209,t17_209,t18_209,t19_209,t20_209,t21_209,t22_209,t23_209,t24_209,t25_209,t26_209,t27_209,t28_209,t29_209,t30_209,t31_209,t32_209,t33_209,t34_209,t35_209,t36_209,t37_209,t38_209,t39_209,t40_209,t41_209,t42_209,t43_209,t44_209,t45_209,t46_209,t47_209,t48_209,t49_209,t50_209,t51_209,t52_209,t53_209,t2_3,t55_209,t56_209,t57_209,t58_209,t59_209,t60_209,t61_209,t62_209,t63_209,t64_209,t65_209), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_209)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), discovery(t1_192,t2_192,t3_192,t4_192,t5_192,t6_192,t7_192,t8_192,t9_192,t10_192,t11_192,t12_192,t13_192,t14_192,t2_3,t16_192,t17_192,t18_192,t19_192,t20_192), wellbore_npdid_overview(t21_192,t2_3,t23_192,t24_192,t25_192), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_3)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_240),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), wellbore_exploration_all(t1_240,t2_240,t3_240,t4_240,t5_240,t6_240,t7_240,t8_240,t9_240,t10_240,t11_240,t12_240,t13_240,t14_240,t15_240,t16_240,t17_240,t18_240,t19_240,t20_240,t21_240,t22_240,t23_240,t24_240,t25_240,t26_240,t27_240,t28_240,t29_240,t30_240,t31_240,t32_240,t33_240,t34_240,t35_240,t36_240,t37_240,t38_240,t39_240,t40_240,t41_240,t42_240,t43_240,t44_240,t45_240,t46_240,t47_240,t48_240,t49_240,t50_240,t51_240,t52_240,t53_240,t54_240,t55_240,t56_240,t57_240,t58_240,t59_240,t60_240,t61_240,t62_240,t63_240,t64_240,t65_240,t66_240,t67_240,t68_240,t69_240,t2_3,t71_240,t72_240,t73_240,t74_240,t75_240,t76_240,t77_240,t78_240,t79_240), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_240)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t17_191),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t17_191)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_234),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), wellbore_development_all(t1_234,t2_234,t3_234,t4_234,t5_234,t6_234,t7_234,t8_234,t9_234,t10_234,t11_234,t12_234,t13_234,t14_234,t15_234,t16_234,t17_234,t18_234,t19_234,t20_234,t21_234,t22_234,t23_234,t24_234,t25_234,t26_234,t27_234,t28_234,t29_234,t30_234,t31_234,t32_234,t33_234,t34_234,t35_234,t36_234,t37_234,t38_234,t39_234,t40_234,t41_234,t42_234,t43_234,t44_234,t45_234,t46_234,t47_234,t48_234,t49_234,t50_234,t51_234,t52_234,t53_234,t2_3,t55_234,t56_234,t57_234,t58_234,t59_234,t60_234,t61_234,t62_234,t63_234,t64_234,t65_234), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_234)
ans1(http://www.w3.org/2000/01/rdf-schema#Literal(t1_3),http://www.w3.org/2001/XMLSchema#dateTime(t36_3)) :- GT(http://www.w3.org/2001/XMLSchema#dateTime(t36_3),http://www.w3.org/2001/XMLSchema#string("2013-01-01T00:00:00.0")), wellbore_shallow_all(t1_3,t2_3,t3_3,t4_3,t5_3,t6_3,t7_3,t8_3,t9_3,t10_3,t11_3,t12_3,t13_3,t14_3,t15_3,t16_3,t17_3,t18_3,t19_3,t20_3,t21_3,t22_3,t23_3,t24_3,t25_3,t26_3,t27_3,t28_3,t29_3,t30_3,t31_3,t32_3,t33_3,t34_3,t35_3,t36_3,t37_3,t38_3), NEQ("9999-12-31T00:00:00",t36_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t36_3), field(t1_191,t2_191,t3_191,t4_191,t5_191,t6_191,t7_191,t8_191,t9_191,t2_3,t11_191,t12_191,t13_191,t14_191,t15_191,t16_191), wellbore_npdid_overview(t17_191,t2_3,t19_191,t20_191,t21_191), IS_NOT_NULL(t2_3), IS_NOT_NULL(t2_3), IS_NOT_NULL(t1_3)

21:18:12.457 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Partial evaluation ended.
21:18:12.569 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Producing the SQL string...
21:18:12.579 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Resulting sql: 
SELECT *
FROM (
SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

21:18:12.579 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Executing the query and get the result...
21:18:12.617 [Thread-8] DEBUG i.u.k.o.o.core.QuestStatement - Execution finished.

"1/3-K-5", "2013-01-29T00:00:00.0"^^xsd:dateTime, 
"1/5-2", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"1/5-3 S", "2013-05-03T00:00:00.0"^^xsd:dateTime, 
"15/12-21", "2013-03-01T00:00:00.0"^^xsd:dateTime, 
"15/5-1", "2013-03-13T00:00:00.0"^^xsd:dateTime, 
"15/6-12", "2013-02-10T00:00:00.0"^^xsd:dateTime, 
"16/1-12", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"16/1-14", "2013-03-20T00:00:00.0"^^xsd:dateTime, 
"16/1-7", "2013-02-23T00:00:00.0"^^xsd:dateTime, 
"16/1-8", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"16/1-9", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"16/2-3", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"16/2-4", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"16/2-5", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"16/4-4", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"16/4-6 S", "2013-05-07T00:00:00.0"^^xsd:dateTime, 
"16/7-7 S", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"2/1-3", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"2/1-9", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"2/11-10 S", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"2/11-2", "2013-03-24T00:00:00.0"^^xsd:dateTime, 
"2/7-31", "2013-04-21T00:00:00.0"^^xsd:dateTime, 
"24/9-10 S", "2013-03-20T00:00:00.0"^^xsd:dateTime, 
"25/11-15", "2013-02-14T00:00:00.0"^^xsd:dateTime, 
"25/11-24", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"29/6-1", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"3/7-8 S", "2013-03-06T00:00:00.0"^^xsd:dateTime, 
"30/11-8 A", "2013-03-09T00:00:00.0"^^xsd:dateTime, 
"30/11-8 S", "2013-03-09T00:00:00.0"^^xsd:dateTime, 
"30/7-2", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"30/8-1 S", "2013-04-19T00:00:00.0"^^xsd:dateTime, 
"33/12-9 S", "2013-02-13T00:00:00.0"^^xsd:dateTime, 
"34/10-1", "2013-02-14T00:00:00.0"^^xsd:dateTime, 
"34/10-2", "2013-02-14T00:00:00.0"^^xsd:dateTime, 
"34/10-53 A", "2013-03-09T00:00:00.0"^^xsd:dateTime, 
"34/10-53 S", "2013-03-25T00:00:00.0"^^xsd:dateTime, 
"34/11-1", "2013-02-02T00:00:00.0"^^xsd:dateTime, 
"34/11-2 S", "2013-02-02T00:00:00.0"^^xsd:dateTime, 
"34/3-1 S", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"34/3-3 S", "2013-03-06T00:00:00.0"^^xsd:dateTime, 
"34/6-2 S", "2013-02-13T00:00:00.0"^^xsd:dateTime, 
"35/10-1", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"35/11-13", "2013-01-12T00:00:00.0"^^xsd:dateTime, 
"35/11-15 S", "2013-01-19T00:00:00.0"^^xsd:dateTime, 
"35/11-4", "2013-04-19T00:00:00.0"^^xsd:dateTime, 
"6405/10-1", "2013-01-22T00:00:00.0"^^xsd:dateTime, 
"6406/2-1", "2013-04-13T00:00:00.0"^^xsd:dateTime, 
"6406/3-9", "2013-03-16T00:00:00.0"^^xsd:dateTime, 
"6407/1-6 S", "2013-03-07T00:00:00.0"^^xsd:dateTime, 
"6407/6-6", "2013-01-20T00:00:00.0"^^xsd:dateTime, 
"6407/8-5 S", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"6506/11-2", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"6507/5-6 S", "2013-01-10T00:00:00.0"^^xsd:dateTime, 
"6603/12-1", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"6605/8-1", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"6706/12-1", "2013-05-01T00:00:00.0"^^xsd:dateTime, 
"7/11-1", "2013-01-17T00:00:00.0"^^xsd:dateTime, 
"7/11-12 A", "2013-03-16T00:00:00.0"^^xsd:dateTime, 
"7/11-7", "2013-01-12T00:00:00.0"^^xsd:dateTime, 
"7120/6-3 S", "2013-04-10T00:00:00.0"^^xsd:dateTime, 
"7125/4-1", "2013-03-19T00:00:00.0"^^xsd:dateTime, 
"7220/10-1", "2013-02-01T00:00:00.0"^^xsd:dateTime, 
"7220/8-1", "2013-05-03T00:00:00.0"^^xsd:dateTime, 

The input SPARQL query:
=======================
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
SELECT DISTINCT *
WHERE {
      [] a npdv:DiscoveryWellbore ;
         npdv:name ?wellbore; 
        npdv:dateUpdated ?date .
FILTER (?date > "2013-01-01T00:00:00.0")
}
ORDER BY ?wellbore



The output SQL query:
=====================
SELECT *
FROM (
SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_development_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_exploration_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_shallow_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_development_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
discovery QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW4.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3,
wellbore_exploration_all QVIEW4
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL
UNION

SELECT 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW3.`wlbWellboreName` AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`
 FROM 
wellbore_shallow_all QVIEW1,
field QVIEW2,
wellbore_npdid_overview QVIEW3
WHERE 
(QVIEW1.`wlbDateUpdated` > '2013-01-01T00:00:00.0') AND
('9999-12-31T00:00:00' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.