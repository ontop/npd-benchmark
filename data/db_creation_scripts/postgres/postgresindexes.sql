CREATE INDEX "IX396_facility_moveable" ON "facility_moveable"
(
"fclNpdidCurrentRespCompany"  
)

;

CREATE INDEX "IX196_dscArea" ON "dscArea"
(
"dscNpdidResInclInDiscovery"  
)

;

CREATE INDEX "IX368_discovery" ON "discovery"
(
"wlbNpdidWellbore"  
)

;

CREATE UNIQUE INDEX "UQ84_apaAreaGross" ON "apaAreaGross"
(
"apaAreaGross_id"  
)

;

CREATE INDEX "IX195_dscArea" ON "dscArea"
(
"fldNpdidField"  
)

;

CREATE UNIQUE INDEX "UQ1746_wellbore_core" ON "wellbore_core"
(
"wellbore_core_id"  
)

;

CREATE INDEX "IX847_prlArea" ON "prlArea"
(
"prlNpdidLicence"  
)

;

CREATE UNIQUE INDEX "UQ1015_seis_acquisition" ON "seis_acquisition"
(
"seaName"  
)

;

CREATE INDEX "IX1008_licence_task" ON "licence_task"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX764_pipLine" ON "pipLine"
(
"pipNpdidOperator"  
)

;

CREATE INDEX "IX1608_wellbore_development_all" ON "wellbore_development_all"
(
"prlNpdidProductionLicence"  
)

;

CREATE UNIQUE INDEX "UQ1127_seaArea" ON "seaArea"
(
"seaArea_id"  
)

;

CREATE INDEX "IX1044_licence_oper_hst" ON "licence_oper_hst"
(
"cmpNpdidCompany"  
)

;

CREATE UNIQUE INDEX "UQ1667_wellbore_core_photo" ON "wellbore_core_photo"
(
"wellbore_core_photo_id"  
)

;

CREATE INDEX "IX1408_wellbore_document" ON "wellbore_document"
(
"wlbNpdidWellbore"  
)

;

CREATE UNIQUE INDEX "UQ1351_seis_acquisition_progress" ON "seis_acquisition_progress"
(
"seis_acquisition_progress_id"  
)

;

CREATE INDEX "IX1009_licence_task" ON "licence_task"
(
"prlTaskRefID"  
)

;

CREATE INDEX "IX367_discovery" ON "discovery"
(
"fldNpdidField"  
)

;

CREATE INDEX "IX510_field" ON "field"
(
"wlbNpdidWellbore"  
)

;

CREATE INDEX "IX1016_seis_acquisition" ON "seis_acquisition"
(
"seaCompanyReported"  
)

;

CREATE INDEX "IX1184_tuf_owner_hst" ON "tuf_owner_hst"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX1268_wellbore_casing_and_lot" ON "wellbore_casing_and_lot"
(
"wlbNpdidWellbore"  
)

;

CREATE INDEX "IX1668_wellbore_core_photo" ON "wellbore_core_photo"
(
"wlbNpdidWellbore"  
)

;

CREATE INDEX "IX1954_wellbore_exploration_all" ON "wellbore_exploration_all"
(
"wlbNpdidWellboreReclass"  
)

;

CREATE INDEX "IX85_bsns_arr_area_transfer_hst" ON "bsns_arr_area_transfer_hst"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX237_bsns_arr_area_operator" ON "bsns_arr_area_operator"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX1122_tuf_operator_hst" ON "tuf_operator_hst"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX876_licence_transfer_hst" ON "licence_transfer_hst"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX680_licence_licensee_hst" ON "licence_licensee_hst"
(
"cmpNpdidCompany"  
)

;

CREATE UNIQUE INDEX "UQ2010_wellbore_oil_sample" ON "wellbore_oil_sample"
(
"wellbore_oil_sample_id"  
)

;

CREATE INDEX "IX1296_tuf_petreg_licence_oper" ON "tuf_petreg_licence_oper"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX310_company" ON "company"
(
"cmpShortName"  
)

;

CREATE INDEX "IX424_fclPoint" ON "fclPoint"
(
"fclBelongsToS"  
)

;

CREATE INDEX "IX309_company" ON "company"
(
"cmpLongName"  
)

;

CREATE INDEX "IX1607_wellbore_development_all" ON "wellbore_development_all"
(
"fldNpdidField"  
)

;

CREATE INDEX "IX1610_wellbore_development_all" ON "wellbore_development_all"
(
"wlbDiskosWellOperator"  
)

;

CREATE INDEX "IX511_field" ON "field"
(
"cmpNpdidCompany"  
)

;

CREATE UNIQUE INDEX "UQ596_licence" ON "licence"
(
"prlName"  
)

;

CREATE INDEX "IX1156_seis_acquisition_coordinates_inc_turnarea" ON "seis_acquisition_coordinates_inc_turnarea"
(
"seaNpdidSurvey"  
)

;

CREATE INDEX "IX1810_wellbore_mud" ON "wellbore_mud"
(
"wlbNpdidWellbore"  
)

;

CREATE INDEX "IX1955_wellbore_exploration_all" ON "wellbore_exploration_all"
(
"prlNpdidProductionLicence"  
)

;

CREATE INDEX "IX1128_seaArea" ON "seaArea"
(
"seaNpdidSurvey"  
)

;

CREATE INDEX "IX1212_prlAreaSplitByBlock" ON "prlAreaSplitByBlock"
(
"prlLastOperatorNpdidCompany"  
)

;

CREATE INDEX "IX567_field_operator_hst" ON "field_operator_hst"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX509_field" ON "field"
(
"fldNpdidOwner"  
)

;

CREATE INDEX "IX723_licence_petreg_licence_oper" ON "licence_petreg_licence_oper"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX1951_wellbore_exploration_all" ON "wellbore_exploration_all"
(
"wlbDrillingOperator"  
)

;

CREATE INDEX "IX1748_wellbore_core" ON "wellbore_core"
(
"wlbNpdidWellbore"  
)

;

CREATE INDEX "IX1605_wellbore_development_all" ON "wellbore_development_all"
(
"wlbDrillingOperator"  
)

;

CREATE INDEX "IX651_fldArea" ON "fldArea"
(
"fldNpdidField"  
)

;

CREATE INDEX "IX1606_wellbore_development_all" ON "wellbore_development_all"
(
"dscNpdidDiscovery"  
)

;

CREATE UNIQUE INDEX "UQ1407_wellbore_document" ON "wellbore_document"
(
"wellbore_document_id"  
)

;

CREATE UNIQUE INDEX "UQ28_apaAreaNet" ON "apaAreaNet"
(
"apaAreaNet_id"  
)

;

CREATE INDEX "IX1609_wellbore_development_all" ON "wellbore_development_all"
(
"wlbNpdidWellboreReclass"  
)

;

CREATE INDEX "IX539_field_licensee_hst" ON "field_licensee_hst"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX736_licence_petreg_licence_licencee" ON "licence_petreg_licence_licencee"
(
"cmpNpdidCompany"  
)

;

CREATE INDEX "IX1754_wellbore_formation_top" ON "wellbore_formation_top"
(
"lsuName"  
)

;

CREATE INDEX "IX2011_wellbore_oil_sample" ON "wellbore_oil_sample"
(
"wlbNpdidWellbore"  
)

;

CREATE INDEX "IX1436_tuf_petreg_licence_licencee" ON "tuf_petreg_licence_licencee"
(
"cmpNpdidCompany"  
)

;

CREATE UNIQUE INDEX "UQ846_prlArea" ON "prlArea"
(
"prlArea_id"  
)

;

CREATE UNIQUE INDEX "UQ1809_wellbore_mud" ON "wellbore_mud"
(
"wellbore_mud_id"  
)

;

CREATE INDEX "IX172_company_reserves" ON "company_reserves"
(
"fldNpdidField"  
)

;

CREATE INDEX "IX1006_licence_task" ON "licence_task"
(
"prlTaskID"  
)

;

CREATE INDEX "IX1952_wellbore_exploration_all" ON "wellbore_exploration_all"
(
"dscNpdidDiscovery"  
)

;

CREATE INDEX "IX652_fldArea" ON "fldArea"
(
"dscNpdidResInclInDiscovery"  
)

;

CREATE INDEX "IX848_prlArea" ON "prlArea"
(
"prlLastOperatorNpdidCompany"  
)

;

CREATE UNIQUE INDEX "UQ56_bsns_arr_area" ON "bsns_arr_area"
(
"baaName"  
)

;

CREATE INDEX "IX1352_seis_acquisition_progress" ON "seis_acquisition_progress"
(
"seaNpdidSurvey"  
)

;

CREATE INDEX "IX252_bsns_arr_area_licensee_hst" ON "bsns_arr_area_licensee_hst"
(
"cmpNpdidCompany"  
)

;

CREATE UNIQUE INDEX "UQ1267_wellbore_casing_and_lot" ON "wellbore_casing_and_lot"
(
"wellbore_casing_and_lot_id"  
)

;

CREATE INDEX "IX1953_wellbore_exploration_all" ON "wellbore_exploration_all"
(
"fldNpdidField"  
)

;
