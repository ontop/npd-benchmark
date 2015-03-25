--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.15
-- Dumped by pg_dump version 9.3.6
-- Started on 2015-03-19 10:09:48 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--DROP DATABASE npd_vig1_scale1;
--
-- TOC entry 2366 (class 1262 OID 1099332)
-- Name: npd_vig1_scale1; Type: DATABASE; Schema: -; Owner: -
--

--CREATE DATABASE npd_vig1_scale1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


--\connect npd_vig1_scale1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 243 (class 3079 OID 11677)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 243
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 161 (class 1259 OID 1099333)
-- Name: apaareagross_apaareagross_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE apaareagross_apaareagross_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_with_oids = false;

--
-- TOC entry 162 (class 1259 OID 1099335)
-- Name: apaAreaGross; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "apaAreaGross" (
    "apaMap_no" integer NOT NULL,
    "apaAreaGeometry_KML_WGS84" text NOT NULL,
    "apaAreaGross_id" integer DEFAULT nextval('apaareagross_apaareagross_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 163 (class 1259 OID 1099342)
-- Name: apaareanet_apaareanet_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE apaareanet_apaareanet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 164 (class 1259 OID 1099344)
-- Name: apaAreaNet; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "apaAreaNet" (
    "blkId" integer NOT NULL,
    "blkLabel" character varying(40) NOT NULL,
    "qdrName" character varying(40) NOT NULL,
    "blkName" character varying(40) NOT NULL,
    "prvName" character varying(2) NOT NULL,
    "apaAreaType" character varying(40),
    "urlNPD" character varying(200) NOT NULL,
    "apaAreaNet_id" integer DEFAULT nextval('apaareanet_apaareanet_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 165 (class 1259 OID 1099348)
-- Name: baaArea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "baaArea" (
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "baaNpdidBsnsArrAreaPoly" integer NOT NULL,
    "baaName" character varying(40) NOT NULL,
    "baaKind" character varying(40) NOT NULL,
    "baaAreaPolyDateValidFrom" date NOT NULL,
    "baaAreaPolyDateValidTo" date,
    "baaAreaPolyActive" character varying(40) NOT NULL,
    "baaDateApproved" date NOT NULL,
    "baaDateValidFrom" date NOT NULL,
    "baaDateValidTo" date,
    "baaActive" character varying(20) NOT NULL,
    "baaFactPageUrl" character varying(200) NOT NULL,
    "baaFactMapUrl" character varying(200)
);


--
-- TOC entry 166 (class 1259 OID 1099354)
-- Name: bsns_arr_area; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE bsns_arr_area (
    "baaName" character varying(40) NOT NULL,
    "baaKind" character varying(40) NOT NULL,
    "baaDateApproved" date NOT NULL,
    "baaDateValidFrom" date NOT NULL,
    "baaDateValidTo" date,
    "baaFactPageUrl" character varying(200) NOT NULL,
    "baaFactMapUrl" character varying(200),
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "baaDateUpdated" date,
    "baaDateUpdatedMax" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 167 (class 1259 OID 1099357)
-- Name: bsns_arr_area_area_poly_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE bsns_arr_area_area_poly_hst (
    "baaName" character varying(40) NOT NULL,
    "baaAreaPolyDateValidFrom" date NOT NULL,
    "baaAreaPolyDateValidTo" date NOT NULL,
    "baaAreaPolyNationCode2" character varying(2) NOT NULL,
    "baaAreaPolyBlockName" character varying(40) DEFAULT ''::character varying NOT NULL,
    "baaAreaPolyNo" integer NOT NULL,
    "baaAreaPolyArea" numeric(13,6) NOT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "baaAreaPolyDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 168 (class 1259 OID 1099361)
-- Name: bsns_arr_area_licensee_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE bsns_arr_area_licensee_hst (
    "baaName" character varying(40) NOT NULL,
    "baaLicenseeDateValidFrom" date NOT NULL,
    "baaLicenseeDateValidTo" date NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "baaLicenseeInterest" numeric(13,6) NOT NULL,
    "baaLicenseeSdfi" numeric(13,6),
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "baaLicenseeDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 169 (class 1259 OID 1099364)
-- Name: bsns_arr_area_operator; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE bsns_arr_area_operator (
    "baaName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "baaOperatorDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 170 (class 1259 OID 1099367)
-- Name: bsns_arr_area_transfer_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE bsns_arr_area_transfer_hst (
    "baaName" character varying(40) NOT NULL,
    "baaTransferDateValidFrom" date NOT NULL,
    "baaTransferDirection" character varying(4) NOT NULL,
    "baaTransferKind" character varying(40),
    "cmpLongName" character varying(200) NOT NULL,
    "baaTransferredInterest" numeric(13,6) NOT NULL,
    "baaTransferSdfi" numeric(13,6),
    "baaNpdidBsnsArrArea" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "baaTransferDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 171 (class 1259 OID 1099370)
-- Name: company; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE company (
    "cmpLongName" character varying(200) NOT NULL,
    "cmpOrgNumberBrReg" character varying(100),
    "cmpGroup" character varying(100),
    "cmpShortName" character varying(40) NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "cmpLicenceOperCurrent" character varying(1) NOT NULL,
    "cmpLicenceOperFormer" character varying(1) NOT NULL,
    "cmpLicenceLicenseeCurrent" character varying(1) NOT NULL,
    "cmpLicenceLicenseeFormer" character varying(1) NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 172 (class 1259 OID 1099373)
-- Name: company_reserves; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE company_reserves (
    "cmpLongName" character varying(200) NOT NULL,
    "fldName" character varying(40) NOT NULL,
    "cmpRecoverableOil" numeric(13,6) NOT NULL,
    "cmpRecoverableGas" numeric(13,6) NOT NULL,
    "cmpRecoverableNGL" numeric(13,6) NOT NULL,
    "cmpRecoverableCondensate" numeric(13,6) NOT NULL,
    "cmpRecoverableOE" numeric(13,6) NOT NULL,
    "cmpRemainingOil" numeric(13,6) NOT NULL,
    "cmpRemainingGas" numeric(13,6) NOT NULL,
    "cmpRemainingNGL" numeric(13,6) NOT NULL,
    "cmpRemainingCondensate" numeric(13,6) NOT NULL,
    "cmpRemainingOE" numeric(13,6) NOT NULL,
    "cmpDateOffResEstDisplay" date NOT NULL,
    "cmpShare" numeric(13,6) NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 173 (class 1259 OID 1099376)
-- Name: discovery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE discovery (
    "dscName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200),
    "dscCurrentActivityStatus" character varying(40) NOT NULL,
    "dscHcType" character varying(40),
    "wlbName" character varying(60),
    "nmaName" character varying(40),
    "fldName" character varying(40),
    "dscDateFromInclInField" date,
    "dscDiscoveryYear" integer NOT NULL,
    "dscResInclInDiscoveryName" character varying(40),
    "dscOwnerKind" character varying(40),
    "dscOwnerName" character varying(40),
    "dscNpdidDiscovery" integer NOT NULL,
    "fldNpdidField" integer,
    "wlbNpdidWellbore" integer NOT NULL,
    "dscFactPageUrl" character varying(200) NOT NULL,
    "dscFactMapUrl" character varying(200) NOT NULL,
    "dscDateUpdated" date,
    "dscDateUpdatedMax" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 174 (class 1259 OID 1099382)
-- Name: discovery_reserves; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE discovery_reserves (
    "dscName" character varying(40) NOT NULL,
    "dscReservesRC" character varying(40) NOT NULL,
    "dscRecoverableOil" numeric(13,6) NOT NULL,
    "dscRecoverableGas" numeric(13,6) NOT NULL,
    "dscRecoverableNGL" numeric(13,6) NOT NULL,
    "dscRecoverableCondensate" numeric(13,6) NOT NULL,
    "dscDateOffResEstDisplay" date NOT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "dscReservesDateUpdated" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 175 (class 1259 OID 1099385)
-- Name: dscArea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "dscArea" (
    "fldNpdidField" integer,
    "fldName" character varying(40),
    "dscNpdidDiscovery" integer NOT NULL,
    "dscName" character varying(40) NOT NULL,
    "dscResInclInDiscoveryName" character varying(40),
    "dscNpdidResInclInDiscovery" integer,
    "dscIncludedInFld" character varying(3) NOT NULL,
    "dscHcType" character varying(40) NOT NULL,
    "fldHcType" character varying(40),
    "dscCurrentActivityStatus" character varying(40) NOT NULL,
    "fldCurrentActivityStatus" character varying(40),
    "flddscLabel" character varying(40) NOT NULL,
    "dscFactUrl" character varying(200) NOT NULL,
    "fldFactUrl" character varying(200)
);


--
-- TOC entry 176 (class 1259 OID 1099391)
-- Name: facility_fixed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE facility_fixed (
    "fclName" character varying(40) NOT NULL,
    "fclPhase" character varying(40) NOT NULL,
    "fclSurface" character varying(1) NOT NULL,
    "fclCurrentOperatorName" character varying(100),
    "fclKind" character varying(40) NOT NULL,
    "fclBelongsToName" character varying(41),
    "fclBelongsToKind" character varying(40),
    "fclBelongsToS" integer,
    "fclStartupDate" date,
    "fclGeodeticDatum" character varying(10),
    "fclNsDeg" integer,
    "fclNsMin" integer,
    "fclNsSec" numeric(13,6),
    "fclNsCode" character varying(1) NOT NULL,
    "fclEwDeg" integer,
    "fclEwMin" integer,
    "fclEwSec" numeric(13,6),
    "fclEwCode" character varying(1) NOT NULL,
    "fclWaterDepth" numeric(13,6) NOT NULL,
    "fclFunctions" character varying(400),
    "fclDesignLifetime" integer,
    "fclFactPageUrl" character varying(200) NOT NULL,
    "fclFactMapUrl" character varying(200) NOT NULL,
    "fclNpdidFacility" integer NOT NULL,
    "fclDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 177 (class 1259 OID 1099397)
-- Name: facility_moveable; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE facility_moveable (
    "fclName" character varying(40) NOT NULL,
    "fclCurrentRespCompanyName" character varying(100),
    "fclKind" character varying(40) NOT NULL,
    "fclFunctions" character varying(400),
    "fclNationName" character varying(40) NOT NULL,
    "fclFactPageUrl" character varying(200) NOT NULL,
    "fclNpdidFacility" integer NOT NULL,
    "fclNpdidCurrentRespCompany" integer,
    "fclDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 178 (class 1259 OID 1099403)
-- Name: fclPoint; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "fclPoint" (
    "fclNpdidFacility" integer NOT NULL,
    "fclSurface" character varying(1) NOT NULL,
    "fclCurrentOperatorName" character varying(100),
    "fclName" character varying(40) NOT NULL,
    "fclKind" character varying(40) NOT NULL,
    "fclBelongsToName" character varying(41),
    "fclBelongsToKind" character varying(40),
    "fclBelongsToS" integer,
    "fclStartupDate" date NOT NULL,
    "fclWaterDepth" numeric(13,6) NOT NULL,
    "fclFunctions" character varying(400),
    "fclDesignLifetime" integer NOT NULL,
    "fclFactPageUrl" character varying(200) NOT NULL,
    "fclFactMapUrl" character varying(200) NOT NULL
);


--
-- TOC entry 179 (class 1259 OID 1099409)
-- Name: field; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field (
    "fldName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200),
    "fldCurrentActivitySatus" character varying(40) NOT NULL,
    "wlbName" character varying(60),
    "wlbCompletionDate" date,
    "fldOwnerKind" character varying(40),
    "fldOwnerName" character varying(40),
    "fldNpdidOwner" integer,
    "fldNpdidField" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "cmpNpdidCompany" integer,
    "fldFactPageUrl" character varying(200) NOT NULL,
    "fldFactMapUrl" character varying(200) NOT NULL,
    "fldDateUpdated" date,
    "fldDateUpdatedMax" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 180 (class 1259 OID 1099415)
-- Name: field_activity_status_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_activity_status_hst (
    "fldName" character varying(40) NOT NULL,
    "fldStatusFromDate" date NOT NULL,
    "fldStatusToDate" date NOT NULL,
    "fldStatus" character varying(40) NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "fldStatusDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 181 (class 1259 OID 1099418)
-- Name: field_description; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_description (
    "fldName" character varying(40) NOT NULL,
    "fldDescriptionHeading" character varying(255) NOT NULL,
    "fldDescriptionText" text NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "fldDescriptionDateUpdated" date NOT NULL
);


--
-- TOC entry 182 (class 1259 OID 1099424)
-- Name: field_investment_yearly; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_investment_yearly (
    "prfInformationCarrier" character varying(40) NOT NULL,
    "prfYear" integer NOT NULL,
    "prfInvestmentsMillNOK" numeric(13,6) NOT NULL,
    "prfNpdidInformationCarrier" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 183 (class 1259 OID 1099427)
-- Name: field_licensee_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_licensee_hst (
    "fldName" character varying(40) NOT NULL,
    "fldOwnerName" character varying(40) NOT NULL,
    "fldOwnerKind" character varying(40) NOT NULL,
    "fldOwnerFrom" date NOT NULL,
    "fldOwnerTo" date,
    "fldLicenseeFrom" date NOT NULL,
    "fldLicenseeTo" date NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "fldCompanyShare" numeric(13,6) NOT NULL,
    "fldSdfiShare" numeric(13,6),
    "fldNpdidField" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "fldLicenseeDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 184 (class 1259 OID 1099430)
-- Name: field_operator_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_operator_hst (
    "fldName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "fldOperatorFrom" date NOT NULL,
    "fldOperatorTo" date NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "fldOperatorDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 185 (class 1259 OID 1099433)
-- Name: field_owner_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_owner_hst (
    "fldName" character varying(40) NOT NULL,
    "fldOwnerKind" character varying(40) NOT NULL,
    "fldOwnerName" character varying(40) NOT NULL,
    "fldOwnershipFromDate" date NOT NULL,
    "fldOwnershipToDate" date NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "fldNpdidOwner" integer NOT NULL,
    "fldOwnerDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 186 (class 1259 OID 1099436)
-- Name: field_production_monthly; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_production_monthly (
    "prfInformationCarrier" character varying(40) NOT NULL,
    "prfYear" integer NOT NULL,
    "prfMonth" integer NOT NULL,
    "prfPrdOilNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdGasNetBillSm3" numeric(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdProducedWaterInFieldMillSm3" numeric(13,6) NOT NULL,
    "prfNpdidInformationCarrier" integer NOT NULL
);


--
-- TOC entry 187 (class 1259 OID 1099439)
-- Name: field_production_totalt_NCS_month; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "field_production_totalt_NCS_month" (
    "prfYear" integer NOT NULL,
    "prfMonth" integer NOT NULL,
    "prfPrdOilNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdGasNetBillSm3" numeric(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdProducedWaterInFieldMillSm3" numeric(13,6) NOT NULL
);


--
-- TOC entry 188 (class 1259 OID 1099442)
-- Name: field_production_totalt_NCS_year; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "field_production_totalt_NCS_year" (
    "prfYear" integer NOT NULL,
    "prfPrdOilNetMillSm" numeric(13,6) NOT NULL,
    "prfPrdGasNetBillSm" numeric(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdProducedWaterInFieldMillSm3" numeric(13,6) NOT NULL
);


--
-- TOC entry 189 (class 1259 OID 1099445)
-- Name: field_production_yearly; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_production_yearly (
    "prfInformationCarrier" character varying(40) NOT NULL,
    "prfYear" integer NOT NULL,
    "prfPrdOilNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdGasNetBillSm3" numeric(13,6) NOT NULL,
    "prfPrdNGLNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdCondensateNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdOeNetMillSm3" numeric(13,6) NOT NULL,
    "prfPrdProducedWaterInFieldMillSm3" numeric(13,6) NOT NULL,
    "prfNpdidInformationCarrier" integer NOT NULL
);


--
-- TOC entry 190 (class 1259 OID 1099448)
-- Name: field_reserves; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE field_reserves (
    "fldName" character varying(40) NOT NULL,
    "fldRecoverableOil" numeric(13,6) NOT NULL,
    "fldRecoverableGas" numeric(13,6) NOT NULL,
    "fldRecoverableNGL" numeric(13,6) NOT NULL,
    "fldRecoverableCondensate" numeric(13,6) NOT NULL,
    "fldRecoverableOE" numeric(13,6) NOT NULL,
    "fldRemainingOil" numeric(13,6) NOT NULL,
    "fldRemainingGas" numeric(13,6) NOT NULL,
    "fldRemainingNGL" numeric(13,6) NOT NULL,
    "fldRemainingCondensate" numeric(13,6) NOT NULL,
    "fldRemainingOE" numeric(13,6) NOT NULL,
    "fldDateOffResEstDisplay" date NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 191 (class 1259 OID 1099451)
-- Name: fldArea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "fldArea" (
    "fldNpdidField" integer NOT NULL,
    "fldName" character varying(40) NOT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "dscName" character varying(40) NOT NULL,
    "dscResInclInDiscoveryName" character varying(40),
    "dscNpdidResInclInDiscovery" integer,
    "dscIncludedInFld" character varying(3) NOT NULL,
    "dscHcType" character varying(40) NOT NULL,
    "fldHcType" character varying(40) NOT NULL,
    "dscCurrentActivityStatus" character varying(40) NOT NULL,
    "fldCurrentActivityStatus" character varying(40) NOT NULL,
    "flddscLabel" character varying(40) NOT NULL,
    "dscFactUrl" character varying(200) NOT NULL,
    "fldFactUrl" character varying(200) NOT NULL
);


--
-- TOC entry 192 (class 1259 OID 1099457)
-- Name: licence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence (
    "prlName" character varying(50) NOT NULL,
    "prlLicensingActivityName" character varying(40) NOT NULL,
    "prlMainArea" character varying(40),
    "prlStatus" character varying(40) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlOriginalArea" numeric(13,6) NOT NULL,
    "prlCurrentArea" character varying(20) NOT NULL,
    "prlPhaseCurrent" character varying(40),
    "prlNpdidLicence" integer NOT NULL,
    "prlFactPageUrl" character varying(200) NOT NULL,
    "prlFactMapUrl" character varying(200),
    "prlDateUpdated" date,
    "prlDateUpdatedMax" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 193 (class 1259 OID 1099463)
-- Name: licence_area_poly_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_area_poly_hst (
    "prlName" character varying(50) NOT NULL,
    "prlAreaPolyDateValidFrom" date NOT NULL,
    "prlAreaPolyDateValidTo" date NOT NULL,
    "prlAreaPolyNationCode" character varying(2) NOT NULL,
    "prlAreaPolyBlockName" character varying(40) NOT NULL,
    "prlAreaPolyStratigraphical" character varying(4) NOT NULL,
    "prlAreaPolyPolyNo" integer NOT NULL,
    "prlAreaPolyPolyArea" numeric(13,6) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlAreaDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 194 (class 1259 OID 1099466)
-- Name: licence_licensee_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_licensee_hst (
    "prlName" character varying(50) NOT NULL,
    "prlLicenseeDateValidFrom" date NOT NULL,
    "prlLicenseeDateValidTo" date NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "prlLicenseeInterest" numeric(13,6) NOT NULL,
    "prlLicenseeSdfi" numeric(13,6),
    "prlOperDateValidFrom" date,
    "prlOperDateValidTo" date,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "prlLicenseeDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 195 (class 1259 OID 1099469)
-- Name: licence_oper_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_oper_hst (
    "prlName" character varying(50) NOT NULL,
    "prlOperDateValidFrom" date NOT NULL,
    "prlOperDateValidTo" date NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "prlOperDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 196 (class 1259 OID 1099472)
-- Name: licence_petreg_licence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_petreg_licence (
    "ptlName" character varying(40) NOT NULL,
    "ptlDateAwarded" date NOT NULL,
    "ptlDateValidFrom" date NOT NULL,
    "ptlDateValidTo" date NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "ptlDateUpdated" date,
    "ptlDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 1099475)
-- Name: licence_petreg_licence_licencee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_petreg_licence_licencee (
    "ptlName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "ptlLicenseeInterest" numeric(13,6) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlLicenseeDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 1099478)
-- Name: licence_petreg_licence_oper; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_petreg_licence_oper (
    "ptlName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlOperDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 1099481)
-- Name: licence_petreg_message; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_petreg_message (
    "prlName" character varying(50) NOT NULL,
    "ptlMessageDocumentNo" integer NOT NULL,
    "ptlMessage" text NOT NULL,
    "ptlMessageRegisteredDate" date NOT NULL,
    "ptlMessageKindDesc" character varying(100) NOT NULL,
    "ptlMessageDateUpdated" date,
    "prlNpdidLicence" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 1099487)
-- Name: licence_phase_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_phase_hst (
    "prlName" character varying(50) NOT NULL,
    "prlDatePhaseValidFrom" date NOT NULL,
    "prlDatePhaseValidTo" date NOT NULL,
    "prlPhase" character varying(40) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlDateInitialPeriodExpires" date NOT NULL,
    "prlActiveStatusIndicator" character varying(40) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlPhaseDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 201 (class 1259 OID 1099490)
-- Name: licence_task; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_task (
    "prlName" character varying(50) NOT NULL,
    "prlTaskName" character varying(40) NOT NULL,
    "prlTaskTypeNo" character varying(100) NOT NULL,
    "prlTaskTypeEn" character varying(200) NOT NULL,
    "prlTaskStatusNo" character varying(100) NOT NULL,
    "prlTaskStatusEn" character varying(40) NOT NULL,
    "prlTaskExpiryDate" date NOT NULL,
    "wlbName" character varying(60),
    "prlDateValidTo" date NOT NULL,
    "prlLicensingActivityName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200),
    "cmpNpdidCompany" integer,
    "prlNpdidLicence" integer NOT NULL,
    "prlTaskID" integer NOT NULL,
    "prlTaskRefID" integer,
    "prlTaskDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 1099496)
-- Name: licence_transfer_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE licence_transfer_hst (
    "prlName" character varying(50) NOT NULL,
    "prlTransferDateValidFrom" date NOT NULL,
    "prlTransferDirection" character varying(4) NOT NULL,
    "prlTransferKind" character varying(40),
    "cmpLongName" character varying(200) NOT NULL,
    "prlTransferredInterest" numeric(13,6) NOT NULL,
    "prlTransferSdfi" numeric(13,6),
    "prlNpdidLicence" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "prlTransferDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 1099499)
-- Name: pipLine; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "pipLine" (
    "pipNpdidPipe" integer NOT NULL,
    "pipNpdidFromFacility" integer NOT NULL,
    "pipNpdidToFacility" integer NOT NULL,
    "pipNpdidOperator" integer,
    "pipName" character varying(50) NOT NULL,
    "pipNameFromFacility" character varying(50) NOT NULL,
    "pipNameToFacility" character varying(50) NOT NULL,
    "pipNameCurrentOperator" character varying(100),
    "pipCurrentPhase" character varying(40) NOT NULL,
    "pipMedium" character varying(20) NOT NULL,
    "pipMainGrouping" character varying(20) NOT NULL,
    "pipDimension" numeric(13,6) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 1099502)
-- Name: prlarea_prlarea_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prlarea_prlarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 205 (class 1259 OID 1099504)
-- Name: prlArea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "prlArea" (
    "prlName" character varying(50) NOT NULL,
    "prlActive" character varying(20) NOT NULL,
    "prlCurrentArea" character varying(20) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlAreaPolyDateValidFrom" date NOT NULL,
    "prlAreaPolyDateValidTo" date NOT NULL,
    "prlAreaPolyFromZvalue" integer NOT NULL,
    "prlAreaPolyToZvalue" integer NOT NULL,
    "prlAreaPolyVertLimEn" text,
    "prlAreaPolyVertLimNo" text,
    "prlStratigraphical" character varying(3) NOT NULL,
    "prlAreaPolyStratigraphical" character varying(4) NOT NULL,
    "prlNpdidLicence" integer NOT NULL,
    "prlLastOperatorNameShort" character varying(40) NOT NULL,
    "prlLastOperatorNameLong" character varying(200) NOT NULL,
    "prlLicensingActivityName" character varying(40) NOT NULL,
    "prlLastOperatorNpdidCompany" integer NOT NULL,
    "prlFactUrl" character varying(200) NOT NULL,
    "prlArea_id" integer DEFAULT nextval('prlarea_prlarea_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 1099511)
-- Name: prlAreaSplitByBlock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "prlAreaSplitByBlock" (
    "prlName" character varying(50) NOT NULL,
    "prlActive" character varying(20) NOT NULL,
    "prlCurrentArea" character varying(20) NOT NULL,
    "prlDateGranted" date NOT NULL,
    "prlDateValidTo" date NOT NULL,
    "prlAreaPolyDateValidFrom" date NOT NULL,
    "prlAreaPolyDateValidTo" date NOT NULL,
    "prlAreaPolyPolyNo" integer NOT NULL,
    "prlAreaPolyPolyArea" numeric(13,6) NOT NULL,
    "blcName" character varying(40) NOT NULL,
    "prlAreaPolyFromZvalue" integer NOT NULL,
    "prlAreaPolyToZvalue" integer NOT NULL,
    "prlAreaPolyVertLimEn" text,
    "prlAreaPolyVertLimNo" text,
    "prlStratigraphical" character varying(3) NOT NULL,
    "prlLastOperatorNpdidCompany" integer NOT NULL,
    "prlLastOperatorNameShort" character varying(40) NOT NULL,
    "prlLastOperatorNameLong" character varying(200) NOT NULL,
    "prlLicensingActivityName" character varying(40) NOT NULL,
    "prlFactUrl" character varying(200) NOT NULL,
    "prlAreaPolyStratigraphical" character varying(4) NOT NULL,
    "prlNpdidLicence" integer NOT NULL
);


--
-- TOC entry 207 (class 1259 OID 1099517)
-- Name: seaarea_seaarea_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seaarea_seaarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 208 (class 1259 OID 1099519)
-- Name: seaArea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "seaArea" (
    "seaSurveyName" character varying(100) NOT NULL,
    "seaNpdidSurvey" integer NOT NULL,
    "seaFactMapUrl" character varying(260),
    "seaFactPageUrl" character varying(200),
    "seaStatus" character varying(100) NOT NULL,
    "seaGeographicalArea" character varying(100) NOT NULL,
    "seaMarketAvailable" character varying(20) NOT NULL,
    "seaSurveyTypeMain" character varying(100) NOT NULL,
    "seaSurveyTypePart" character varying(100),
    "seaCompanyReported" character varying(100) NOT NULL,
    "seaSourceType" character varying(100),
    "seaSourceNumber" character varying(100),
    "seaSourceSize" character varying(100),
    "seaSourcePressure" character varying(100),
    "seaSensorType" character varying(100),
    "seaSensorNumbers" character varying(40),
    "seaSensorLength" character varying(100),
    "seaPlanFromDate" date NOT NULL,
    "seaDateStarting" date,
    "seaPlanToDate" date NOT NULL,
    "seaDateFinalized" date,
    "seaPlanCdpKm" integer,
    "seaCdpTotalKm" integer,
    "seaPlanBoatKm" integer,
    "seaBoatTotalKm" integer,
    "sea3DKm2" numeric(13,6),
    "seaPolygonKind" character varying(100) NOT NULL,
    "seaArea_id" integer DEFAULT nextval('seaarea_seaarea_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 1099526)
-- Name: seaMultiline; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "seaMultiline" (
    "seaSurveyName" character varying(100) NOT NULL,
    "seaFactMapUrl" character varying(260),
    "seaFactPageUrl" character varying(200),
    "seaStatus" character varying(100) NOT NULL,
    "seaMarketAvailable" character varying(20) NOT NULL,
    "seaSurveyTypeMain" character varying(100) NOT NULL,
    "seaSurveyTypePart" character varying(100) NOT NULL,
    "seaCompanyReported" character varying(100) NOT NULL,
    "seaSourceType" character varying(100) NOT NULL,
    "seaSourceNumber" character varying(100),
    "seaSourceSize" character varying(100),
    "seaSourcePressure" character varying(100),
    "seaSensorType" character varying(100) NOT NULL,
    "seaSensorNumbers" character varying(40) NOT NULL,
    "seaSensorLength" character varying(100) NOT NULL,
    "seaPlanFromDate" date NOT NULL,
    "seaDateStarting" date,
    "seaPlanToDate" date NOT NULL,
    "seaDateFinalized" date,
    "seaPlanCdpKm" integer NOT NULL,
    "seaCdpTotalKm" integer,
    "seaPlanBoatKm" integer NOT NULL,
    "seaBoatTotalKm" integer
);


--
-- TOC entry 210 (class 1259 OID 1099532)
-- Name: seis_acquisition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE seis_acquisition (
    "seaName" character varying(100) NOT NULL,
    "seaPlanFromDate" date NOT NULL,
    "seaNpdidSurvey" integer NOT NULL,
    "seaStatus" character varying(100) NOT NULL,
    "seaGeographicalArea" character varying(100) NOT NULL,
    "seaSurveyTypeMain" character varying(100) NOT NULL,
    "seaSurveyTypePart" character varying(100),
    "seaCompanyReported" character varying(100) NOT NULL,
    "seaPlanToDate" date NOT NULL,
    "seaDateStarting" date,
    "seaDateFinalized" date,
    "seaCdpTotalKm" integer,
    "seaBoatTotalKm" integer,
    "sea3DKm2" numeric(13,6),
    "seaSampling" character varying(20),
    "seaShallowDrilling" character varying(20),
    "seaGeotechnical" character varying(20),
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 1099538)
-- Name: seis_acquisition_coordinates_inc_turnarea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE seis_acquisition_coordinates_inc_turnarea (
    "seaSurveyName" character varying(100) NOT NULL,
    "seaNpdidSurvey" integer NOT NULL,
    "seaPolygonPointNumber" integer NOT NULL,
    "seaPolygonNSDeg" integer NOT NULL,
    "seaPolygonNSMin" integer NOT NULL,
    "seaPolygonNSSec" numeric(13,6) NOT NULL,
    "seaPolygonEWDeg" integer NOT NULL,
    "seaPolygonEWMin" integer NOT NULL,
    "seaPolygonEWSec" numeric(13,6) NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 1099541)
-- Name: seis_acquisition_progress_seis_acquisition_progress_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seis_acquisition_progress_seis_acquisition_progress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 213 (class 1259 OID 1099543)
-- Name: seis_acquisition_progress; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE seis_acquisition_progress (
    "seaProgressDate" date NOT NULL,
    "seaProgressText2" character varying(40) NOT NULL,
    "seaProgressText" text NOT NULL,
    "seaProgressDescription" text,
    "seaNpdidSurvey" integer NOT NULL,
    seis_acquisition_progress_id integer DEFAULT nextval('seis_acquisition_progress_seis_acquisition_progress_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 1099550)
-- Name: strat_litho_wellbore; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE strat_litho_wellbore (
    "wlbName" character varying(60) NOT NULL,
    "lsuTopDepth" numeric(13,6) NOT NULL,
    "lsuBottomDepth" numeric(13,6) NOT NULL,
    "lsuName" character varying(20) NOT NULL,
    "lsuLevel" character varying(9) NOT NULL,
    "lsuNpdidLithoStrat" integer NOT NULL,
    "wlbCompletionDate" date NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "lsuWellboreUpdatedDate" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 1099553)
-- Name: strat_litho_wellbore_core; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE strat_litho_wellbore_core (
    "wlbName" character varying(60) NOT NULL,
    "lsuCoreLenght" numeric(13,6) NOT NULL,
    "lsuName" character varying(20) NOT NULL,
    "lsuLevel" character varying(9) NOT NULL,
    "wlbCompletionDate" date NOT NULL,
    "lsuNpdidLithoStrat" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 1099556)
-- Name: tuf_operator_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuf_operator_hst (
    "tufName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "tufOperDateValidFrom" date NOT NULL,
    "tufOperDateValidTo" date NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 1099559)
-- Name: tuf_owner_hst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuf_owner_hst (
    "tufName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "tufOwnerDateValidFrom" date NOT NULL,
    "tufOwnerDateValidTo" date NOT NULL,
    "tufOwnerShare" numeric(13,6) NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 1099562)
-- Name: tuf_petreg_licence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuf_petreg_licence (
    "ptlName" character varying(40) NOT NULL,
    "tufName" character varying(40) NOT NULL,
    "ptlDateValidFrom" date NOT NULL,
    "ptlDateValidTo" date NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "ptlDateUpdated" date,
    "ptlDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 1099565)
-- Name: tuf_petreg_licence_licencee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuf_petreg_licence_licencee (
    "ptlName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "ptlLicenseeInterest" numeric(13,6) NOT NULL,
    "tufName" character varying(40) NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlLicenseeDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 1099568)
-- Name: tuf_petreg_licence_oper; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuf_petreg_licence_oper (
    "Textbox42" character varying(20) NOT NULL,
    "Textbox2" character varying(20) NOT NULL,
    "ptlName" character varying(40) NOT NULL,
    "cmpLongName" character varying(200) NOT NULL,
    "tufName" character varying(40) NOT NULL,
    "tufNpdidTuf" integer NOT NULL,
    "cmpNpdidCompany" integer NOT NULL,
    "ptlOperDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 1099571)
-- Name: tuf_petreg_message; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuf_petreg_message (
    "ptlName" character varying(40) NOT NULL,
    "ptlMessageDocumentNo" integer NOT NULL,
    "ptlMessage" text NOT NULL,
    "ptlMessageRegisteredDate" date NOT NULL,
    "ptlMessageKindDesc" character varying(100) NOT NULL,
    "tufName" character varying(40) NOT NULL,
    "ptlMessageDateUpdated" date,
    "tufNpdidTuf" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 1122270)
-- Name: wellbore; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore (
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbWell" character varying(40) NOT NULL,
    "wlbDrillingOperator" character varying(60) NOT NULL,
    "wlbDrillingOperatorGroup" character varying(20) NOT NULL,
    "wlbProductionLicence" character varying(40) NOT NULL,
    "wlbPurpose" character varying(40) NOT NULL,
    "wlbStatus" character varying(40),
    "wlbContent" character varying(40),
    "wlbWellType" character varying(20) NOT NULL,
    "wlbEntryDate" date,
    "wlbCompletionDate" date,
    "wlbField" character varying(40),
    "wlbDrillPermit" character varying(10) NOT NULL,
    "wlbDiscovery" character varying(40),
    "wlbDiscoveryWellbore" character varying(3) NOT NULL,
    "wlbBottomHoleTemperature" integer,
    "wlbSeismicLocation" character varying(200),
    "wlbMaxInclation" numeric(13,2),
    "wlbKellyBushElevation" numeric(13,6) NOT NULL,
    "wlbFinalVerticalDepth" numeric(13,2),
    "wlbTotalDepth" numeric(13,6) NOT NULL,
    "wlbWaterDepth" numeric(13,6) NOT NULL,
    "wlbAgeAtTd" character varying(40),
    "wlbFormationAtTd" character varying(40),
    "wlbMainArea" character varying(40) NOT NULL,
    "wlbDrillingFacility" character varying(50) NOT NULL,
    "wlbFacilityTypeDrilling" character varying(40) NOT NULL,
    "wlbLicensingActivity" character varying(40) NOT NULL,
    "wlbMultilateral" character varying(3) NOT NULL,
    "wlbPurposePlanned" character varying(40) NOT NULL,
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbReclassFromWellbore" character varying(40),
    "wlbReentryExplorationActivity" character varying(40),
    "wlbPlotSymbol" integer NOT NULL,
    "wlbFormationWithHc1" character varying(20),
    "wlbAgeWithHc1" character varying(20),
    "wlbFormationWithHc2" character varying(20),
    "wlbAgeWithHc2" character varying(20),
    "wlbFormationWithHc3" character varying(20),
    "wlbAgeWithHc3" character(20),
    "wlbDrillingDays" integer NOT NULL,
    "wlbReentry" character varying(3) NOT NULL,
    "wlbGeodeticDatum" character varying(6),
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" numeric(13,2) NOT NULL,
    "wlbNsCode" character varying(1) NOT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" numeric(13,2) NOT NULL,
    "wlbEwCode" character varying(1) NOT NULL,
    "wlbNsDecDeg" numeric(13,6) NOT NULL,
    "wlbEwDesDeg" numeric(13,6) NOT NULL,
    "wlbNsUtm" numeric(13,6) NOT NULL,
    "wlbEwUtm" numeric(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" character varying(1),
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" character varying(2),
    "wlbNamePart6" character varying(2),
    "wlbPressReleaseUrl" character varying(200),
    "wlbFactPageUrl" character varying(200) NOT NULL,
    "wlbFactMapUrl" character varying(200) NOT NULL,
    "wlbDiskosWellboreType" character varying(20) NOT NULL,
    "wlbDiskosWellboreParent" character varying(40),
    "wlbWdssQcDate" date,
    "wlbNpdidWellbore" integer NOT NULL,
    "dscNpdidDiscovery" integer,
    "fldNpdidField" integer,
    "fclNpdidFacilityDrilling" integer NOT NULL,
    "wlbNpdidWellboreReclass" integer NOT NULL,
    "prlNpdidProductionLicence" integer NOT NULL,
    "wlbDiskosWellOperator" character varying(40) NOT NULL,
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 1099577)
-- Name: wellbore_casing_and_lot_wellbore_casing_and_lot_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wellbore_casing_and_lot_wellbore_casing_and_lot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 223 (class 1259 OID 1099579)
-- Name: wellbore_casing_and_lot; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_casing_and_lot (
    "wlbName" character varying(60) NOT NULL,
    "wlbCasingType" character varying(10),
    "wlbCasingDiameter" character varying(6),
    "wlbCasingDepth" numeric(13,6) NOT NULL,
    "wlbHoleDiameter" character varying(6),
    "wlbHoleDepth" numeric(13,6) NOT NULL,
    "wlbLotMudDencity" numeric(13,6) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbCasingDateUpdated" date,
    "dateSyncNPD" date NOT NULL,
    wellbore_casing_and_lot_id integer DEFAULT nextval('wellbore_casing_and_lot_wellbore_casing_and_lot_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 1099583)
-- Name: wellbore_coordinates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_coordinates (
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbDrillingOperator" character varying(60) NOT NULL,
    "wlbProductionLicence" character varying(40),
    "wlbWellType" character varying(20),
    "wlbPurposePlanned" character varying(40),
    "wlbContent" character varying(40),
    "wlbEntryDate" date,
    "wlbCompletionDate" date,
    "wlbField" character varying(40),
    "wlbMainArea" character varying(40) NOT NULL,
    "wlbGeodeticDatum" character varying(6),
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" numeric(13,2) NOT NULL,
    "wlbNsCode" character varying(1),
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" numeric(13,2) NOT NULL,
    "wlbEwCode" character varying(1),
    "wlbNsDecDeg" numeric(13,6) NOT NULL,
    "wlbEwDesDeg" numeric(13,6) NOT NULL,
    "wlbNsUtm" numeric(13,6) NOT NULL,
    "wlbEwUtm" numeric(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 1099586)
-- Name: wellbore_core_wellbore_core_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wellbore_core_wellbore_core_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 226 (class 1259 OID 1099588)
-- Name: wellbore_core; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_core (
    "wlbName" character varying(60) NOT NULL,
    "wlbCoreNumber" integer NOT NULL,
    "wlbCoreIntervalTop" numeric(13,6),
    "wlbCoreIntervalBottom" numeric(13,6),
    "wlbCoreIntervalUom" character varying(6),
    "wlbTotalCoreLength" numeric(13,6) NOT NULL,
    "wlbNumberOfCores" integer NOT NULL,
    "wlbCoreSampleAvailable" character varying(3) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbCoreDateUpdated" date,
    "dateSyncNPD" date NOT NULL,
    wellbore_core_id integer DEFAULT nextval('wellbore_core_wellbore_core_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 1099592)
-- Name: wellbore_core_photo_wellbore_core_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wellbore_core_photo_wellbore_core_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 228 (class 1259 OID 1099594)
-- Name: wellbore_core_photo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_core_photo (
    "wlbName" character varying(60) NOT NULL,
    "wlbCoreNumber" integer NOT NULL,
    "wlbCorePhotoTitle" character varying(200) NOT NULL,
    "wlbCorePhotoImgUrl" character varying(200) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbCorePhotoDateUpdated" date,
    wellbore_core_photo_id integer DEFAULT nextval('wellbore_core_photo_wellbore_core_photo_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 1099598)
-- Name: wellbore_development_all; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_development_all (
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbWell" character varying(40) NOT NULL,
    "wlbDrillingOperator" character varying(60) NOT NULL,
    "wlbDrillingOperatorGroup" character varying(20) NOT NULL,
    "wlbProductionLicence" character varying(40) NOT NULL,
    "wlbPurposePlanned" character varying(40),
    "wlbContent" character varying(40),
    "wlbWellType" character varying(20) NOT NULL,
    "wlbEntryDate" date,
    "wlbCompletionDate" date,
    "wlbField" character varying(40) NOT NULL,
    "wlbDrillPermit" character varying(10) NOT NULL,
    "wlbDiscovery" character varying(40) NOT NULL,
    "wlbDiscoveryWellbore" character varying(3) NOT NULL,
    "wlbKellyBushElevation" numeric(13,6) NOT NULL,
    "wlbFinalVerticalDepth" numeric(13,2),
    "wlbTotalDepth" numeric(13,6) NOT NULL,
    "wlbWaterDepth" numeric(13,6) NOT NULL,
    "wlbMainArea" character varying(40) NOT NULL,
    "wlbDrillingFacility" character varying(50),
    "wlbFacilityTypeDrilling" character varying(40),
    "wlbProductionFacility" character varying(50),
    "wlbLicensingActivity" character varying(40) NOT NULL,
    "wlbMultilateral" character varying(3) NOT NULL,
    "wlbContentPlanned" character varying(40),
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbReclassFromWellbore" character varying(40),
    "wlbPlotSymbol" integer NOT NULL,
    "wlbGeodeticDatum" character varying(6),
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" numeric(13,2) NOT NULL,
    "wlbNsCode" character varying(1) NOT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" numeric(13,2) NOT NULL,
    "wlbEwCode" character varying(1),
    "wlbNsDecDeg" numeric(13,6) NOT NULL,
    "wlbEwDesDeg" numeric(13,6) NOT NULL,
    "wlbNsUtm" numeric(13,6) NOT NULL,
    "wlbEwUtm" numeric(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" character varying(1) NOT NULL,
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" character varying(2),
    "wlbNamePart6" character varying(2),
    "wlbFactPageUrl" character varying(200) NOT NULL,
    "wlbFactMapUrl" character varying(200) NOT NULL,
    "wlbDiskosWellboreType" character varying(20) NOT NULL,
    "wlbDiskosWellboreParent" character varying(40),
    "wlbNpdidWellbore" integer NOT NULL,
    "dscNpdidDiscovery" integer NOT NULL,
    "fldNpdidField" integer NOT NULL,
    "wlbWdssQcdate" date,
    "prlNpdidProductionLicence" integer NOT NULL,
    "fclNpdidFacilityDrilling" integer,
    "fclNpdidFacilityProducing" integer,
    "wlbNpdidWellboreReclass" integer NOT NULL,
    "wlbDiskosWellOperator" character varying(40) NOT NULL,
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 1099604)
-- Name: wellbore_document_wellbore_document_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wellbore_document_wellbore_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 231 (class 1259 OID 1099606)
-- Name: wellbore_document; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_document (
    "wlbName" character varying(60) NOT NULL,
    "wlbDocumentType" character varying(40) NOT NULL,
    "wlbDocumentName" character varying(200) NOT NULL,
    "wlbDocumentUrl" character varying(200) NOT NULL,
    "wlbDocumentFormat" character varying(40) NOT NULL,
    "wlbDocumentSize" numeric(13,6) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbDocumentDateUpdated" date,
    "dateSyncNPD" date NOT NULL,
    wellbore_document_id integer DEFAULT nextval('wellbore_document_wellbore_document_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 1099613)
-- Name: wellbore_dst; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_dst (
    "wlbName" character varying(60) NOT NULL,
    "wlbDstTestNumber" numeric(13,6) NOT NULL,
    "wlbDstFromDepth" numeric(13,6) NOT NULL,
    "wlbDstToDepth" numeric(13,6) NOT NULL,
    "wlbDstChokeSize" numeric(13,6) NOT NULL,
    "wlbDstFinShutInPress" numeric(13,6) NOT NULL,
    "wlbDstFinFlowPress" numeric(13,6) NOT NULL,
    "wlbDstBottomHolePress" numeric(13,6) NOT NULL,
    "wlbDstOilProd" integer NOT NULL,
    "wlbDstGasProd" integer NOT NULL,
    "wlbDstOilDensity" numeric(13,6) NOT NULL,
    "wlbDstGasDensity" numeric(13,6) NOT NULL,
    "wlbDstGasOilRelation" integer NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbDstDateUpdated" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 1099616)
-- Name: wellbore_exploration_all; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_exploration_all (
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbWell" character varying(40) NOT NULL,
    "wlbDrillingOperator" character varying(60) NOT NULL,
    "wlbDrillingOperatorGroup" character varying(20) NOT NULL,
    "wlbProductionLicence" character varying(40) NOT NULL,
    "wlbPurpose" character varying(40) NOT NULL,
    "wlbStatus" character varying(40),
    "wlbContent" character varying(40),
    "wlbWellType" character varying(20) NOT NULL,
    "wlbEntryDate" date,
    "wlbCompletionDate" date,
    "wlbField" character varying(40),
    "wlbDrillPermit" character varying(10) NOT NULL,
    "wlbDiscovery" character varying(40),
    "wlbDiscoveryWellbore" character varying(3) NOT NULL,
    "wlbBottomHoleTemperature" integer,
    "wlbSeismicLocation" character varying(200),
    "wlbMaxInclation" numeric(13,2),
    "wlbKellyBushElevation" numeric(13,6) NOT NULL,
    "wlbFinalVerticalDepth" numeric(13,2),
    "wlbTotalDepth" numeric(13,6) NOT NULL,
    "wlbWaterDepth" numeric(13,6) NOT NULL,
    "wlbAgeAtTd" character varying(40),
    "wlbFormationAtTd" character varying(40),
    "wlbMainArea" character varying(40) NOT NULL,
    "wlbDrillingFacility" character varying(50) NOT NULL,
    "wlbFacilityTypeDrilling" character varying(40) NOT NULL,
    "wlbLicensingActivity" character varying(40) NOT NULL,
    "wlbMultilateral" character varying(3) NOT NULL,
    "wlbPurposePlanned" character varying(40) NOT NULL,
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbReclassFromWellbore" character varying(40),
    "wlbReentryExplorationActivity" character varying(40),
    "wlbPlotSymbol" integer NOT NULL,
    "wlbFormationWithHc1" character varying(20),
    "wlbAgeWithHc1" character varying(20),
    "wlbFormationWithHc2" character varying(20),
    "wlbAgeWithHc2" character varying(20),
    "wlbFormationWithHc3" character varying(20),
    "wlbAgeWithHc3" character(20),
    "wlbDrillingDays" integer NOT NULL,
    "wlbReentry" character varying(3) NOT NULL,
    "wlbGeodeticDatum" character varying(6),
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" numeric(13,2) NOT NULL,
    "wlbNsCode" character varying(1) NOT NULL,
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" numeric(13,2) NOT NULL,
    "wlbEwCode" character varying(1) NOT NULL,
    "wlbNsDecDeg" numeric(13,6) NOT NULL,
    "wlbEwDesDeg" numeric(13,6) NOT NULL,
    "wlbNsUtm" numeric(13,6) NOT NULL,
    "wlbEwUtm" numeric(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" character varying(1),
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" character varying(2),
    "wlbNamePart6" character varying(2),
    "wlbPressReleaseUrl" character varying(200),
    "wlbFactPageUrl" character varying(200) NOT NULL,
    "wlbFactMapUrl" character varying(200) NOT NULL,
    "wlbDiskosWellboreType" character varying(20) NOT NULL,
    "wlbDiskosWellboreParent" character varying(40),
    "wlbWdssQcDate" date,
    "wlbNpdidWellbore" integer NOT NULL,
    "dscNpdidDiscovery" integer,
    "fldNpdidField" integer,
    "fclNpdidFacilityDrilling" integer NOT NULL,
    "wlbNpdidWellboreReclass" integer NOT NULL,
    "prlNpdidProductionLicence" integer NOT NULL,
    "wlbDiskosWellOperator" character varying(40) NOT NULL,
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 1099622)
-- Name: wellbore_formation_top; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_formation_top (
    "wlbName" character varying(60) NOT NULL,
    "lsuTopDepth" numeric(13,6) NOT NULL,
    "lsuBottomDepth" numeric(13,6) NOT NULL,
    "lsuName" character varying(20) NOT NULL,
    "lsuLevel" character varying(9) NOT NULL,
    "lsuNameParent" character varying(20),
    "wlbNpdidWellbore" integer NOT NULL,
    "lsuNpdidLithoStrat" integer NOT NULL,
    "lsuNpdidLithoStratParent" integer,
    "lsuWellboreUpdatedDate" date,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 1099625)
-- Name: wellbore_mud_wellbore_mud_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wellbore_mud_wellbore_mud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 236 (class 1259 OID 1099627)
-- Name: wellbore_mud; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_mud (
    "wlbName" character varying(60) NOT NULL,
    "wlbMD" numeric(13,6) NOT NULL,
    "wlbMudWeightAtMD" numeric(13,6) NOT NULL,
    "wlbMudViscosityAtMD" numeric(13,6) NOT NULL,
    "wlbYieldPointAtMD" numeric(13,6) NOT NULL,
    "wlbMudType" character varying(40),
    "wlbMudDateMeasured" date,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbMudDateUpdated" date,
    "dateSyncNPD" date NOT NULL,
    wellbore_mud_id integer DEFAULT nextval('wellbore_mud_wellbore_mud_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 1099631)
-- Name: wellbore_npdid_overview; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_npdid_overview (
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbWell" character varying(40) NOT NULL,
    "wlbWellType" character varying(20),
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 1099634)
-- Name: wellbore_oil_sample_wellbore_oil_sample_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wellbore_oil_sample_wellbore_oil_sample_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 239 (class 1259 OID 1099636)
-- Name: wellbore_oil_sample; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_oil_sample (
    "wlbName" character varying(60) NOT NULL,
    "wlbOilSampleTestType" character varying(4),
    "wlbOilSampleTestNumber" character varying(10),
    "wlbOilSampleTopDepth" numeric(13,6) NOT NULL,
    "wlbOilSampleBottomDepth" numeric(13,6) NOT NULL,
    "wlbOilSampleFluidType" character varying(20),
    "wlbOilSampleTestDate" date,
    "wlbOilSampledateReceivedDate" date,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbOilSampleDateUpdated" date,
    "dateSyncNPD" date NOT NULL,
    wellbore_oil_sample_id integer DEFAULT nextval('wellbore_oil_sample_wellbore_oil_sample_id_seq'::regclass) NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 1099640)
-- Name: wellbore_shallow_all; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wellbore_shallow_all (
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbWell" character varying(40) NOT NULL,
    "wlbDrillingOperator" character varying(60) NOT NULL,
    "wlbProductionLicence" character varying(40),
    "wlbDrillingFacility" character varying(50),
    "wlbEntryDate" date,
    "wlbCompletionDate" date,
    "wlbDrillPermit" character varying(10) NOT NULL,
    "wlbTotalDepth" numeric(13,6) NOT NULL,
    "wlbWaterDepth" numeric(13,6) NOT NULL,
    "wlbMainArea" character varying(40) NOT NULL,
    "wlbEntryYear" integer NOT NULL,
    "wlbCompletionYear" integer NOT NULL,
    "wlbSeismicLocation" character varying(200),
    "wlbGeodeticDatum" character varying(6),
    "wlbNsDeg" integer NOT NULL,
    "wlbNsMin" integer NOT NULL,
    "wlbNsSec" numeric(13,2) NOT NULL,
    "wlbNsCode" character varying(1),
    "wlbEwDeg" integer NOT NULL,
    "wlbEwMin" integer NOT NULL,
    "wlbEwSec" numeric(13,2) NOT NULL,
    "wlbEwCode" character varying(1),
    "wlbNsDecDeg" numeric(13,6) NOT NULL,
    "wlbEwDesDeg" numeric(13,6) NOT NULL,
    "wlbNsUtm" numeric(13,6) NOT NULL,
    "wlbEwUtm" numeric(13,6) NOT NULL,
    "wlbUtmZone" integer NOT NULL,
    "wlbNamePart1" integer NOT NULL,
    "wlbNamePart2" integer NOT NULL,
    "wlbNamePart3" character varying(1) NOT NULL,
    "wlbNamePart4" integer NOT NULL,
    "wlbNamePart5" character varying(2),
    "wlbNamePart6" character varying(2),
    "wlbDateUpdated" date NOT NULL,
    "wlbDateUpdatedMax" date NOT NULL,
    "dateSyncNPD" date NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 1099646)
-- Name: wlbPoint; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "wlbPoint" (
    "wlbNpdidWellbore" integer NOT NULL,
    "wlbWellName" character varying(40) NOT NULL,
    "wlbWellboreName" character varying(40) NOT NULL,
    "wlbField" character varying(40),
    "wlbProductionLicence" character varying(40),
    "wlbWellType" character varying(20),
    "wlbDrillingOperator" character varying(60) NOT NULL,
    "wlbMultilateral" character varying(3) NOT NULL,
    "wlbDrillingFacility" character varying(50),
    "wlbProductionFacility" character varying(50),
    "wlbEntryDate" date,
    "wlbCompletionDate" date,
    "wlbContent" character varying(40),
    "wlbStatus" character varying(40),
    "wlbSymbol" integer NOT NULL,
    "wlbPurpose" character varying(40),
    "wlbWaterDepth" numeric(13,6) NOT NULL,
    "wlbFactPageUrl" character varying(200),
    "wlbFactMapUrl" character varying(200),
    "wlbDiscoveryWellbore" character varying(3) NOT NULL
);


--
-- TOC entry 2122 (class 2606 OID 1099664)
-- Name: apaAreaGross_apaAreaGross_id_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "apaAreaGross"
    ADD CONSTRAINT "apaAreaGross_apaAreaGross_id_pkey" PRIMARY KEY ("apaAreaGross_id");


--
-- TOC entry 2124 (class 2606 OID 1099666)
-- Name: apaAreaNet_apaAreaNet_id_qdrName_blkName_prvName_blkId_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "apaAreaNet"
    ADD CONSTRAINT "apaAreaNet_apaAreaNet_id_qdrName_blkName_prvName_blkId_pkey" PRIMARY KEY ("apaAreaNet_id", "qdrName", "blkName", "prvName", "blkId");


--
-- TOC entry 2126 (class 2606 OID 1099668)
-- Name: baaArea_baaNpdidBsnsArrArea_baaNpdidBsnsArrAreaPoly_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "baaArea"
    ADD CONSTRAINT "baaArea_baaNpdidBsnsArrArea_baaNpdidBsnsArrAreaPoly_pkey" PRIMARY KEY ("baaNpdidBsnsArrArea", "baaNpdidBsnsArrAreaPoly");


--
-- TOC entry 2130 (class 2606 OID 1099672)
-- Name: bsns_arr_area_area_poly_hst_baaNpdidBsnsArrArea_baaAreaPolyBloc; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bsns_arr_area_area_poly_hst
    ADD CONSTRAINT "bsns_arr_area_area_poly_hst_baaNpdidBsnsArrArea_baaAreaPolyBloc" PRIMARY KEY ("baaNpdidBsnsArrArea", "baaAreaPolyBlockName", "baaAreaPolyNo", "baaAreaPolyDateValidFrom", "baaAreaPolyDateValidTo");


--
-- TOC entry 2128 (class 2606 OID 1099670)
-- Name: bsns_arr_area_baaNpdidBsnsArrArea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bsns_arr_area
    ADD CONSTRAINT "bsns_arr_area_baaNpdidBsnsArrArea_pkey" PRIMARY KEY ("baaNpdidBsnsArrArea");


--
-- TOC entry 2132 (class 2606 OID 1099674)
-- Name: bsns_arr_area_licensee_hst_baaNpdidBsnsArrArea_cmpNpdidCompany_; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bsns_arr_area_licensee_hst
    ADD CONSTRAINT "bsns_arr_area_licensee_hst_baaNpdidBsnsArrArea_cmpNpdidCompany_" PRIMARY KEY ("baaNpdidBsnsArrArea", "cmpNpdidCompany", "baaLicenseeDateValidFrom", "baaLicenseeDateValidTo");


--
-- TOC entry 2134 (class 2606 OID 1099676)
-- Name: bsns_arr_area_operator_baaNpdidBsnsArrArea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bsns_arr_area_operator
    ADD CONSTRAINT "bsns_arr_area_operator_baaNpdidBsnsArrArea_pkey" PRIMARY KEY ("baaNpdidBsnsArrArea");


--
-- TOC entry 2136 (class 2606 OID 1099678)
-- Name: bsns_arr_area_transfer_hst_baaNpdidBsnsArrArea_baaTransferDirec; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bsns_arr_area_transfer_hst
    ADD CONSTRAINT "bsns_arr_area_transfer_hst_baaNpdidBsnsArrArea_baaTransferDirec" PRIMARY KEY ("baaNpdidBsnsArrArea", "baaTransferDirection", "cmpNpdidCompany", "baaTransferDateValidFrom");


--
-- TOC entry 2138 (class 2606 OID 1099680)
-- Name: company_cmpNpdidCompany_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY company
    ADD CONSTRAINT "company_cmpNpdidCompany_pkey" PRIMARY KEY ("cmpNpdidCompany");


--
-- TOC entry 2140 (class 2606 OID 1099682)
-- Name: company_reserves_cmpNpdidCompany_fldNpdidField_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY company_reserves
    ADD CONSTRAINT "company_reserves_cmpNpdidCompany_fldNpdidField_pkey" PRIMARY KEY ("cmpNpdidCompany", "fldNpdidField");


--
-- TOC entry 2142 (class 2606 OID 1099684)
-- Name: discovery_dscNpdidDiscovery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY discovery
    ADD CONSTRAINT "discovery_dscNpdidDiscovery_pkey" PRIMARY KEY ("dscNpdidDiscovery");


--
-- TOC entry 2144 (class 2606 OID 1099686)
-- Name: discovery_reserves_dscNpdidDiscovery_dscReservesRC_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY discovery_reserves
    ADD CONSTRAINT "discovery_reserves_dscNpdidDiscovery_dscReservesRC_pkey" PRIMARY KEY ("dscNpdidDiscovery", "dscReservesRC");


--
-- TOC entry 2146 (class 2606 OID 1099688)
-- Name: dscArea_dscNpdidDiscovery_dscHcType_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "dscArea"
    ADD CONSTRAINT "dscArea_dscNpdidDiscovery_dscHcType_pkey" PRIMARY KEY ("dscNpdidDiscovery", "dscHcType");


--
-- TOC entry 2148 (class 2606 OID 1099690)
-- Name: facility_fixed_fclNpdidFacility_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_fixed
    ADD CONSTRAINT "facility_fixed_fclNpdidFacility_pkey" PRIMARY KEY ("fclNpdidFacility");


--
-- TOC entry 2150 (class 2606 OID 1099692)
-- Name: facility_moveable_fclNpdidFacility_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_moveable
    ADD CONSTRAINT "facility_moveable_fclNpdidFacility_pkey" PRIMARY KEY ("fclNpdidFacility");


--
-- TOC entry 2152 (class 2606 OID 1099694)
-- Name: fclPoint_fclNpdidFacility_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "fclPoint"
    ADD CONSTRAINT "fclPoint_fclNpdidFacility_pkey" PRIMARY KEY ("fclNpdidFacility");


--
-- TOC entry 2156 (class 2606 OID 1099698)
-- Name: field_activity_status_hst_fldNpdidField_fldStatus_fldStatusFrom; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_activity_status_hst
    ADD CONSTRAINT "field_activity_status_hst_fldNpdidField_fldStatus_fldStatusFrom" PRIMARY KEY ("fldNpdidField", "fldStatus", "fldStatusFromDate", "fldStatusToDate");


--
-- TOC entry 2158 (class 2606 OID 1099700)
-- Name: field_description_fldNpdidField_fldDescriptionHeading_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_description
    ADD CONSTRAINT "field_description_fldNpdidField_fldDescriptionHeading_pkey" PRIMARY KEY ("fldNpdidField", "fldDescriptionHeading");


--
-- TOC entry 2154 (class 2606 OID 1099696)
-- Name: field_fldNpdidField_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field
    ADD CONSTRAINT "field_fldNpdidField_pkey" PRIMARY KEY ("fldNpdidField");


--
-- TOC entry 2160 (class 2606 OID 1099702)
-- Name: field_investment_yearly_prfNpdidInformationCarrier_prfYear_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_investment_yearly
    ADD CONSTRAINT "field_investment_yearly_prfNpdidInformationCarrier_prfYear_pkey" PRIMARY KEY ("prfNpdidInformationCarrier", "prfYear");


--
-- TOC entry 2162 (class 2606 OID 1099704)
-- Name: field_licensee_hst_fldNpdidField_cmpNpdidCompany_fldLicenseeFro; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_licensee_hst
    ADD CONSTRAINT "field_licensee_hst_fldNpdidField_cmpNpdidCompany_fldLicenseeFro" PRIMARY KEY ("fldNpdidField", "cmpNpdidCompany", "fldLicenseeFrom", "fldLicenseeTo");


--
-- TOC entry 2164 (class 2606 OID 1099706)
-- Name: field_operator_hst_fldNpdidField_cmpNpdidCompany_fldOperatorFro; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_operator_hst
    ADD CONSTRAINT "field_operator_hst_fldNpdidField_cmpNpdidCompany_fldOperatorFro" PRIMARY KEY ("fldNpdidField", "cmpNpdidCompany", "fldOperatorFrom", "fldOperatorTo");


--
-- TOC entry 2166 (class 2606 OID 1099708)
-- Name: field_owner_hst_fldNpdidField_fldNpdidOwner_fldOwnershipFromDat; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_owner_hst
    ADD CONSTRAINT "field_owner_hst_fldNpdidField_fldNpdidOwner_fldOwnershipFromDat" PRIMARY KEY ("fldNpdidField", "fldNpdidOwner", "fldOwnershipFromDate", "fldOwnershipToDate");


--
-- TOC entry 2168 (class 2606 OID 1099710)
-- Name: field_production_monthly_prfNpdidInformationCarrier_prfYear_prf; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_production_monthly
    ADD CONSTRAINT "field_production_monthly_prfNpdidInformationCarrier_prfYear_prf" PRIMARY KEY ("prfNpdidInformationCarrier", "prfYear", "prfMonth");


--
-- TOC entry 2170 (class 2606 OID 1099712)
-- Name: field_production_totalt_NCS_month_prfYear_prfMonth_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "field_production_totalt_NCS_month"
    ADD CONSTRAINT "field_production_totalt_NCS_month_prfYear_prfMonth_pkey" PRIMARY KEY ("prfYear", "prfMonth");


--
-- TOC entry 2172 (class 2606 OID 1099714)
-- Name: field_production_totalt_NCS_year_prfYear_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "field_production_totalt_NCS_year"
    ADD CONSTRAINT "field_production_totalt_NCS_year_prfYear_pkey" PRIMARY KEY ("prfYear");


--
-- TOC entry 2174 (class 2606 OID 1099716)
-- Name: field_production_yearly_prfNpdidInformationCarrier_prfYear_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_production_yearly
    ADD CONSTRAINT "field_production_yearly_prfNpdidInformationCarrier_prfYear_pkey" PRIMARY KEY ("prfNpdidInformationCarrier", "prfYear");


--
-- TOC entry 2176 (class 2606 OID 1099718)
-- Name: field_reserves_fldNpdidField_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY field_reserves
    ADD CONSTRAINT "field_reserves_fldNpdidField_pkey" PRIMARY KEY ("fldNpdidField");


--
-- TOC entry 2178 (class 2606 OID 1099720)
-- Name: fldArea_dscNpdidDiscovery_dscHcType_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "fldArea"
    ADD CONSTRAINT "fldArea_dscNpdidDiscovery_dscHcType_pkey" PRIMARY KEY ("dscNpdidDiscovery", "dscHcType");


--
-- TOC entry 2182 (class 2606 OID 1099724)
-- Name: licence_area_poly_hst_prlNpdidLicence_prlAreaPolyBlockName_prlA; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_area_poly_hst
    ADD CONSTRAINT "licence_area_poly_hst_prlNpdidLicence_prlAreaPolyBlockName_prlA" PRIMARY KEY ("prlNpdidLicence", "prlAreaPolyBlockName", "prlAreaPolyPolyNo", "prlAreaPolyDateValidFrom", "prlAreaPolyDateValidTo");


--
-- TOC entry 2184 (class 2606 OID 1099726)
-- Name: licence_licensee_hst_prlNpdidLicence_cmpNpdidCompany_prlLicense; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_licensee_hst
    ADD CONSTRAINT "licence_licensee_hst_prlNpdidLicence_cmpNpdidCompany_prlLicense" PRIMARY KEY ("prlNpdidLicence", "cmpNpdidCompany", "prlLicenseeDateValidFrom", "prlLicenseeDateValidTo");


--
-- TOC entry 2186 (class 2606 OID 1099728)
-- Name: licence_oper_hst_prlNpdidLicence_cmpNpdidCompany_prlOperDateVal; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_oper_hst
    ADD CONSTRAINT "licence_oper_hst_prlNpdidLicence_cmpNpdidCompany_prlOperDateVal" PRIMARY KEY ("prlNpdidLicence", "cmpNpdidCompany", "prlOperDateValidFrom", "prlOperDateValidTo");


--
-- TOC entry 2190 (class 2606 OID 1099732)
-- Name: licence_petreg_licence_licencee_prlNpdidLicence_cmpNpdidCompany; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_petreg_licence_licencee
    ADD CONSTRAINT "licence_petreg_licence_licencee_prlNpdidLicence_cmpNpdidCompany" PRIMARY KEY ("prlNpdidLicence", "cmpNpdidCompany");


--
-- TOC entry 2192 (class 2606 OID 1099734)
-- Name: licence_petreg_licence_oper_prlNpdidLicence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_petreg_licence_oper
    ADD CONSTRAINT "licence_petreg_licence_oper_prlNpdidLicence_pkey" PRIMARY KEY ("prlNpdidLicence");


--
-- TOC entry 2188 (class 2606 OID 1099730)
-- Name: licence_petreg_licence_prlNpdidLicence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_petreg_licence
    ADD CONSTRAINT "licence_petreg_licence_prlNpdidLicence_pkey" PRIMARY KEY ("prlNpdidLicence");


--
-- TOC entry 2194 (class 2606 OID 1099736)
-- Name: licence_petreg_message_prlNpdidLicence_ptlMessageDocumentNo_pke; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_petreg_message
    ADD CONSTRAINT "licence_petreg_message_prlNpdidLicence_ptlMessageDocumentNo_pke" PRIMARY KEY ("prlNpdidLicence", "ptlMessageDocumentNo");


--
-- TOC entry 2196 (class 2606 OID 1099738)
-- Name: licence_phase_hst_prlNpdidLicence_prlPhase_prlDatePhaseValidFro; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_phase_hst
    ADD CONSTRAINT "licence_phase_hst_prlNpdidLicence_prlPhase_prlDatePhaseValidFro" PRIMARY KEY ("prlNpdidLicence", "prlPhase", "prlDatePhaseValidFrom", "prlDatePhaseValidTo");


--
-- TOC entry 2180 (class 2606 OID 1099722)
-- Name: licence_prlNpdidLicence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence
    ADD CONSTRAINT "licence_prlNpdidLicence_pkey" PRIMARY KEY ("prlNpdidLicence");


--
-- TOC entry 2198 (class 2606 OID 1099740)
-- Name: licence_task_prlNpdidLicence_prlTaskID_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_task
    ADD CONSTRAINT "licence_task_prlNpdidLicence_prlTaskID_pkey" PRIMARY KEY ("prlNpdidLicence", "prlTaskID");


--
-- TOC entry 2200 (class 2606 OID 1099742)
-- Name: licence_transfer_hst_prlNpdidLicence_prlTransferDirection_cmpNp; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_transfer_hst
    ADD CONSTRAINT "licence_transfer_hst_prlNpdidLicence_prlTransferDirection_cmpNp" PRIMARY KEY ("prlNpdidLicence", "prlTransferDirection", "cmpNpdidCompany", "prlTransferDateValidFrom");


--
-- TOC entry 2202 (class 2606 OID 1099744)
-- Name: pipLine_pipNpdidPipe_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "pipLine"
    ADD CONSTRAINT "pipLine_pipNpdidPipe_pkey" PRIMARY KEY ("pipNpdidPipe");


--
-- TOC entry 2206 (class 2606 OID 1099748)
-- Name: prlAreaSplitByBlock_prlNpdidLicence_blcName_prlAreaPolyPolyNo_p; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "prlAreaSplitByBlock"
    ADD CONSTRAINT "prlAreaSplitByBlock_prlNpdidLicence_blcName_prlAreaPolyPolyNo_p" PRIMARY KEY ("prlNpdidLicence", "blcName", "prlAreaPolyPolyNo", "prlAreaPolyDateValidFrom", "prlAreaPolyDateValidTo");


--
-- TOC entry 2204 (class 2606 OID 1099746)
-- Name: prlArea_prlArea_id_prlNpdidLicence_prlAreaPolyDateValidFrom_prl; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "prlArea"
    ADD CONSTRAINT "prlArea_prlArea_id_prlNpdidLicence_prlAreaPolyDateValidFrom_prl" PRIMARY KEY ("prlArea_id", "prlNpdidLicence", "prlAreaPolyDateValidFrom", "prlAreaPolyDateValidTo");


--
-- TOC entry 2208 (class 2606 OID 1099750)
-- Name: seaArea_seaArea_id_seaSurveyName_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "seaArea"
    ADD CONSTRAINT "seaArea_seaArea_id_seaSurveyName_pkey" PRIMARY KEY ("seaArea_id", "seaSurveyName");


--
-- TOC entry 2210 (class 2606 OID 1099752)
-- Name: seaMultiline_seaSurveyName_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "seaMultiline"
    ADD CONSTRAINT "seaMultiline_seaSurveyName_pkey" PRIMARY KEY ("seaSurveyName");


--
-- TOC entry 2214 (class 2606 OID 1099756)
-- Name: seis_acquisition_coordinates_inc_turnarea_seaSurveyName_seaPoly; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY seis_acquisition_coordinates_inc_turnarea
    ADD CONSTRAINT "seis_acquisition_coordinates_inc_turnarea_seaSurveyName_seaPoly" PRIMARY KEY ("seaSurveyName", "seaPolygonPointNumber");


--
-- TOC entry 2216 (class 2606 OID 1099758)
-- Name: seis_acquisition_progress_seis_acquisition_progress_id_seaProgr; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY seis_acquisition_progress
    ADD CONSTRAINT "seis_acquisition_progress_seis_acquisition_progress_id_seaProgr" PRIMARY KEY (seis_acquisition_progress_id, "seaProgressText2");


--
-- TOC entry 2212 (class 2606 OID 1099754)
-- Name: seis_acquisition_seaNpdidSurvey_seaName_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY seis_acquisition
    ADD CONSTRAINT "seis_acquisition_seaNpdidSurvey_seaName_pkey" PRIMARY KEY ("seaNpdidSurvey", "seaName");


--
-- TOC entry 2220 (class 2606 OID 1099762)
-- Name: strat_litho_wellbore_core_wlbNpdidWellbore_lsuNpdidLithoStrat_p; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY strat_litho_wellbore_core
    ADD CONSTRAINT "strat_litho_wellbore_core_wlbNpdidWellbore_lsuNpdidLithoStrat_p" PRIMARY KEY ("wlbNpdidWellbore", "lsuNpdidLithoStrat");


--
-- TOC entry 2218 (class 2606 OID 1099760)
-- Name: strat_litho_wellbore_wlbNpdidWellbore_lsuNpdidLithoStrat_lsuTop; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY strat_litho_wellbore
    ADD CONSTRAINT "strat_litho_wellbore_wlbNpdidWellbore_lsuNpdidLithoStrat_lsuTop" PRIMARY KEY ("wlbNpdidWellbore", "lsuNpdidLithoStrat", "lsuTopDepth", "lsuBottomDepth");


--
-- TOC entry 2222 (class 2606 OID 1099764)
-- Name: tuf_operator_hst_tufNpdidTuf_cmpNpdidCompany_tufOperDateValidFr; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuf_operator_hst
    ADD CONSTRAINT "tuf_operator_hst_tufNpdidTuf_cmpNpdidCompany_tufOperDateValidFr" PRIMARY KEY ("tufNpdidTuf", "cmpNpdidCompany", "tufOperDateValidFrom", "tufOperDateValidTo");


--
-- TOC entry 2224 (class 2606 OID 1099766)
-- Name: tuf_owner_hst_tufNpdidTuf_cmpNpdidCompany_tufOwnerDateValidFrom; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuf_owner_hst
    ADD CONSTRAINT "tuf_owner_hst_tufNpdidTuf_cmpNpdidCompany_tufOwnerDateValidFrom" PRIMARY KEY ("tufNpdidTuf", "cmpNpdidCompany", "tufOwnerDateValidFrom", "tufOwnerDateValidTo");


--
-- TOC entry 2228 (class 2606 OID 1099770)
-- Name: tuf_petreg_licence_licencee_tufNpdidTuf_cmpNpdidCompany_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuf_petreg_licence_licencee
    ADD CONSTRAINT "tuf_petreg_licence_licencee_tufNpdidTuf_cmpNpdidCompany_pkey" PRIMARY KEY ("tufNpdidTuf", "cmpNpdidCompany");


--
-- TOC entry 2230 (class 2606 OID 1099772)
-- Name: tuf_petreg_licence_oper_tufNpdidTuf_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuf_petreg_licence_oper
    ADD CONSTRAINT "tuf_petreg_licence_oper_tufNpdidTuf_pkey" PRIMARY KEY ("tufNpdidTuf");


--
-- TOC entry 2226 (class 2606 OID 1099768)
-- Name: tuf_petreg_licence_tufNpdidTuf_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuf_petreg_licence
    ADD CONSTRAINT "tuf_petreg_licence_tufNpdidTuf_pkey" PRIMARY KEY ("tufNpdidTuf");


--
-- TOC entry 2232 (class 2606 OID 1099774)
-- Name: tuf_petreg_message_tufNpdidTuf_ptlMessageDocumentNo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuf_petreg_message
    ADD CONSTRAINT "tuf_petreg_message_tufNpdidTuf_ptlMessageDocumentNo_pkey" PRIMARY KEY ("tufNpdidTuf", "ptlMessageDocumentNo");


--
-- TOC entry 2234 (class 2606 OID 1099776)
-- Name: wellbore_casing_and_lot_wellbore_casing_and_lot_id_wlbNpdidWell; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_casing_and_lot
    ADD CONSTRAINT "wellbore_casing_and_lot_wellbore_casing_and_lot_id_wlbNpdidWell" PRIMARY KEY (wellbore_casing_and_lot_id, "wlbNpdidWellbore");


--
-- TOC entry 2236 (class 2606 OID 1099778)
-- Name: wellbore_coordinates_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_coordinates
    ADD CONSTRAINT "wellbore_coordinates_wlbNpdidWellbore_pkey" PRIMARY KEY ("wlbNpdidWellbore");


--
-- TOC entry 2240 (class 2606 OID 1099782)
-- Name: wellbore_core_photo_wellbore_core_photo_id_wlbNpdidWellbore_wlb; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_core_photo
    ADD CONSTRAINT "wellbore_core_photo_wellbore_core_photo_id_wlbNpdidWellbore_wlb" PRIMARY KEY (wellbore_core_photo_id, "wlbNpdidWellbore", "wlbCoreNumber", "wlbCorePhotoTitle");


--
-- TOC entry 2238 (class 2606 OID 1099780)
-- Name: wellbore_core_wellbore_core_id_wlbNpdidWellbore_wlbCoreNumber_p; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_core
    ADD CONSTRAINT "wellbore_core_wellbore_core_id_wlbNpdidWellbore_wlbCoreNumber_p" PRIMARY KEY (wellbore_core_id, "wlbNpdidWellbore", "wlbCoreNumber");


--
-- TOC entry 2242 (class 2606 OID 1099784)
-- Name: wellbore_development_all_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_development_all
    ADD CONSTRAINT "wellbore_development_all_wlbNpdidWellbore_pkey" PRIMARY KEY ("wlbNpdidWellbore");


--
-- TOC entry 2244 (class 2606 OID 1099786)
-- Name: wellbore_document_wellbore_document_id_wlbNpdidWellbore_wlbDocu; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_document
    ADD CONSTRAINT "wellbore_document_wellbore_document_id_wlbNpdidWellbore_wlbDocu" PRIMARY KEY (wellbore_document_id, "wlbNpdidWellbore", "wlbDocumentName");


--
-- TOC entry 2246 (class 2606 OID 1099788)
-- Name: wellbore_dst_wlbNpdidWellbore_wlbDstTestNumber_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_dst
    ADD CONSTRAINT "wellbore_dst_wlbNpdidWellbore_wlbDstTestNumber_pkey" PRIMARY KEY ("wlbNpdidWellbore", "wlbDstTestNumber");


--
-- TOC entry 2248 (class 2606 OID 1099790)
-- Name: wellbore_exploration_all_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_exploration_all
    ADD CONSTRAINT "wellbore_exploration_all_wlbNpdidWellbore_pkey" PRIMARY KEY ("wlbNpdidWellbore");


--
-- TOC entry 2250 (class 2606 OID 1099792)
-- Name: wellbore_formation_top_wlbNpdidWellbore_lsuNpdidLithoStrat_lsuT; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_formation_top
    ADD CONSTRAINT "wellbore_formation_top_wlbNpdidWellbore_lsuNpdidLithoStrat_lsuT" PRIMARY KEY ("wlbNpdidWellbore", "lsuNpdidLithoStrat", "lsuTopDepth", "lsuBottomDepth");


--
-- TOC entry 2252 (class 2606 OID 1099794)
-- Name: wellbore_mud_wellbore_mud_id_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_mud
    ADD CONSTRAINT "wellbore_mud_wellbore_mud_id_wlbNpdidWellbore_pkey" PRIMARY KEY (wellbore_mud_id, "wlbNpdidWellbore");


--
-- TOC entry 2254 (class 2606 OID 1099796)
-- Name: wellbore_npdid_overview_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_npdid_overview
    ADD CONSTRAINT "wellbore_npdid_overview_wlbNpdidWellbore_pkey" PRIMARY KEY ("wlbNpdidWellbore");


--
-- TOC entry 2256 (class 2606 OID 1099798)
-- Name: wellbore_oil_sample_wellbore_oil_sample_id_wlbNpdidWellbore_pke; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_oil_sample
    ADD CONSTRAINT "wellbore_oil_sample_wellbore_oil_sample_id_wlbNpdidWellbore_pke" PRIMARY KEY (wellbore_oil_sample_id, "wlbNpdidWellbore");


--
-- TOC entry 2258 (class 2606 OID 1099800)
-- Name: wellbore_shallow_all_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wellbore_shallow_all
    ADD CONSTRAINT "wellbore_shallow_all_wlbNpdidWellbore_pkey" PRIMARY KEY ("wlbNpdidWellbore");


--
-- TOC entry 2260 (class 2606 OID 1099802)
-- Name: wlbPoint_wlbNpdidWellbore_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "wlbPoint"
    ADD CONSTRAINT "wlbPoint_wlbNpdidWellbore_pkey" PRIMARY KEY ("wlbNpdidWellbore");


-- Completed on 2015-03-19 10:09:50 CET

--
-- PostgreSQL database dump complete
--

