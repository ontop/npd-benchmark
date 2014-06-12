WITH RECURSIVE http___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursive AS (
(SELECT 
   "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v0QuestType" AS "v0QuestType", NULL AS "v0Lang", CAST("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v0" AS VARCHAR(10485760)) AS "v0", 
   "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v1QuestType" AS "v1QuestType", NULL AS "v1Lang", CAST("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v1" AS VARCHAR(10485760)) AS "v1"
 FROM 
(SELECT 
   1 AS "v0QuestType", NULL AS "v0Lang", ('http://sws.ifi.uio.no/data/npd-v2/licence/task/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST("Qlicence_taskVIEW0"."prlTaskID" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "v0", 
   1 AS "v1QuestType", NULL AS "v1Lang", ('http://sws.ifi.uio.no/data/npd-v2/licence/task/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST("Qlicence_taskVIEW0"."prlTaskRefID" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "v1"
 FROM 
"licence_task" "Qlicence_taskVIEW0"
WHERE 
("Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL OR ("Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL OR "Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL)) AND
"Qlicence_taskVIEW0"."prlTaskID" IS NOT NULL AND
"Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL) "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView")
    UNION ALL 
(SELECT 
   "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v0QuestType" AS "v0QuestType", NULL AS "v0Lang", CAST("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v0" AS VARCHAR(10485760)) AS "v0", 
   "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v1QuestType" AS "v1QuestType", NULL AS "v1Lang", CAST("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v1" AS VARCHAR(10485760)) AS "v1"
 FROM 
(SELECT 
   1 AS "v0QuestType", NULL AS "v0Lang", ('http://sws.ifi.uio.no/data/npd-v2/licence/task/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST("Qlicence_taskVIEW0"."prlTaskID" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "v0", 
   1 AS "v1QuestType", NULL AS "v1Lang", ('http://sws.ifi.uio.no/data/npd-v2/licence/task/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST("Qlicence_taskVIEW0"."prlTaskRefID" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "v1"
 FROM 
"licence_task" "Qlicence_taskVIEW0"
WHERE 
("Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL OR ("Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL OR "Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL)) AND
"Qlicence_taskVIEW0"."prlTaskID" IS NOT NULL AND
"Qlicence_taskVIEW0"."prlTaskRefID" IS NOT NULL) "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView",
http___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursive "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"
WHERE 
("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTaskView"."v1" = "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v0"))
)SELECT 
   "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v0QuestType" AS "xQuestType", NULL AS "xLang", CAST("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v0" AS VARCHAR(10485760)) AS "x", 
   "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v1QuestType" AS "yQuestType", NULL AS "yLang", CAST("Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"."v1" AS VARCHAR(10485760)) AS "y"
 FROM 
http___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursive "Qhttp___sws_ifi_uio_no_vocab_npd_v2_dependsOnTask_recursiveView"
