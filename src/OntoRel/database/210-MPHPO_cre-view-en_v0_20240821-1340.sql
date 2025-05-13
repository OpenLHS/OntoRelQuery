/*
-- =========================================================================== A
Schema : MPHPO_en
Creation Date : 20240821-1340
Encoding : UTF-8, sans BOM, fin de ligne Unix (LF)
Plateforme : PostgreSQL 9.6
Responsable : OntoRelA
Version : v0
Status : dev
Objet :
  Create views in en of MPHPO
-- =========================================================================== A
*/

CREATE SCHEMA IF NOT EXISTS "MPHPO_en";

COMMENT ON SCHEMA "MPHPO_en" IS 'Create views in en of MPHPO 20240821-1340';

CREATE VIEW "MPHPO_en"."hospitalization starting with ICU stay" AS
  SELECT "HOSO_0000085_uid" AS "uid hospitalization starting with ICU stay"
  FROM "MPHPO"."HOSO_0000085";

CREATE VIEW "MPHPO_en"."hospitalization" AS
  SELECT "HOSO_0000031_uid" AS "uid hospitalization"
  FROM "MPHPO"."HOSO_0000031";

CREATE VIEW "MPHPO_en"."human identifier" AS
  SELECT "IOIO_0000014_uid" AS "uid human identifier"
  FROM "MPHPO"."IOIO_0000014";

CREATE VIEW "MPHPO_en"."MPHPO human biological sex information content entity" AS
  SELECT "MPHPO_0000010_uid" AS "uid MPHPO human biological sex information content entity"
  FROM "MPHPO"."MPHPO_0000010";

COMMENT ON VIEW "MPHPO_en"."MPHPO human biological sex information content entity" IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."HOSO_0000124" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid"
  FROM "MPHPO"."HOSO_0000124";

CREATE VIEW "MPHPO_en"."healthcare service organism specification" AS
  SELECT "HOSO_0000003_uid" AS "uid healthcare service organism specification"
  FROM "MPHPO"."HOSO_0000003";

CREATE VIEW "MPHPO_en"."healthcare provider identifier" AS
  SELECT "HOSO_0000138_uid" AS "uid healthcare provider identifier"
  FROM "MPHPO"."HOSO_0000138";

CREATE VIEW "MPHPO_en"."human death temporal information" AS
  SELECT "IOIO_0000006_uid" AS "uid human death temporal information"
  FROM "MPHPO"."IOIO_0000006";

CREATE VIEW "MPHPO_en"."pathological condition impact type on clinical visit" AS
  SELECT "HOSO_0000126_uid" AS "uid pathological condition impact type on clinical visit"
  FROM "MPHPO"."HOSO_0000126";

CREATE VIEW "MPHPO_en"."MPHPO pathological condition sub-group name " AS
  SELECT "MPHPO_0000002_uid" AS "uid MPHPO pathological condition sub-group name "
  FROM "MPHPO"."MPHPO_0000002";

COMMENT ON VIEW "MPHPO_en"."MPHPO pathological condition sub-group name " IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."healthcare physician service" AS
  SELECT "HOSO_0000079_uid" AS "uid healthcare physician service"
  FROM "MPHPO"."HOSO_0000079";

COMMENT ON VIEW "MPHPO_en"."healthcare physician service" IS 'It is often based on the specialty of its members (e.g. respirology), but not always (e.g. vascular service, which may include general internal medicine physician as well as vascular surgeon).';

CREATE VIEW "MPHPO_en"."MPHPO HOSD ending temporal information " AS
  SELECT "MPHPO_0000004_uid" AS "uid MPHPO HOSD ending temporal information "
  FROM "MPHPO"."MPHPO_0000004";

COMMENT ON VIEW "MPHPO_en"."MPHPO HOSD ending temporal information " IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."healthcare organization service delivery identifier" AS
  SELECT "HOSO_0000100_uid" AS "uid healthcare organization service delivery identifier"
  FROM "MPHPO"."HOSO_0000100";

CREATE VIEW "MPHPO_en"."healthcare organization service delivery" AS
  SELECT "HOSO_0000011_uid" AS "uid healthcare organization service delivery"
  FROM "MPHPO"."HOSO_0000011";

CREATE VIEW "MPHPO_en"."healthcare organization service delivery beginning statement" AS
  SELECT "HOSO_0000055_uid" AS "HOSO_0000055_uid"
  FROM "MPHPO"."HOSO_0000055";

CREATE VIEW "MPHPO_en"."MPHPO hospitalization admission urgency level specification " AS
  SELECT "MPHPO_0000007_uid" AS "MPHPO_0000007_uid"
  FROM "MPHPO"."MPHPO_0000007";

COMMENT ON VIEW "MPHPO_en"."MPHPO hospitalization admission urgency level specification " IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."MPHPO human birth date" AS
  SELECT "MPHPO_0000009_uid" AS "uid MPHPO human birth date"
  FROM "MPHPO"."MPHPO_0000009";

COMMENT ON VIEW "MPHPO_en"."MPHPO human birth date" IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."Homo sapiens" AS
  SELECT "NCBITaxon_9606_uid" AS "uid Homo sapiens"
  FROM "MPHPO"."NCBITaxon_9606";

CREATE VIEW "MPHPO_en"."healthcare organization" AS
  SELECT "HOSO_0000008_uid" AS "uid healthcare organization"
  FROM "MPHPO"."HOSO_0000008";

CREATE VIEW "MPHPO_en"."pathological condition sub-group name" AS
  SELECT "HEPRO_0000017_uid" AS "uid pathological condition sub-group name"
  FROM "MPHPO"."HEPRO_0000017";

COMMENT ON VIEW "MPHPO_en"."pathological condition sub-group name" IS 'We suppose that if an ICE is about a group of particular entities, it is also about each of these entities.';

CREATE VIEW "MPHPO_en"."clinical visit agreement specification" AS
  SELECT "HOSO_0000074_uid" AS "uid clinical visit agreement specification"
  FROM "MPHPO"."HOSO_0000074";

CREATE VIEW "MPHPO_en"."human biological sex information content entity" AS
  SELECT "IOIO_0000011_uid" AS "uid human biological sex information content entity"
  FROM "MPHPO"."IOIO_0000011";

CREATE VIEW "MPHPO_en"."human birth statement" AS
  SELECT "IOIO_0000001_uid" AS "uid human birth statement"
  FROM "MPHPO"."IOIO_0000001";

CREATE VIEW "MPHPO_en"."living environment type" AS
  SELECT "IOIO_0000023_uid" AS "uid living environment type"
  FROM "MPHPO"."IOIO_0000023";

CREATE VIEW "MPHPO_en"."ED by ambulance initiated hospitalization" AS
  SELECT "HOSO_0000072_uid" AS "uid ED by ambulance initiated hospitalization"
  FROM "MPHPO"."HOSO_0000072";

CREATE VIEW "MPHPO_en"."healthcare physician service identifier" AS
  SELECT "HOSO_0000084_uid" AS "uid healthcare physician service identifier"
  FROM "MPHPO"."HOSO_0000084";

CREATE VIEW "MPHPO_en"."human biological sex statement" AS
  SELECT "IOIO_0000015_uid" AS "uid human biological sex statement"
  FROM "MPHPO"."IOIO_0000015";

CREATE VIEW "MPHPO_en"."human birth temporal information" AS
  SELECT "IOIO_0000005_uid" AS "uid human birth temporal information"
  FROM "MPHPO"."IOIO_0000005";

CREATE VIEW "MPHPO_en"."living environment type prior to clinical visit statement" AS
  SELECT "HOSO_0000080_uid" AS "uid living environment type prior to clinical visit statement"
  FROM "MPHPO"."HOSO_0000080";

CREATE VIEW "MPHPO_en"."human death statement" AS
  SELECT "IOIO_0000003_uid" AS "uid human death statement"
  FROM "MPHPO"."IOIO_0000003";

CREATE VIEW "MPHPO_en"."MPHPO pathological condition impact type on clinical visit " AS
  SELECT "MPHPO_0000001_uid" AS "MPHPO_0000001_uid"
  FROM "MPHPO"."MPHPO_0000001";

COMMENT ON VIEW "MPHPO_en"."MPHPO pathological condition impact type on clinical visit " IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."human clinical visit specified patient" AS
  SELECT "HOSO_0000137_uid" AS "uid human clinical visit specified patient"
  FROM "MPHPO"."HOSO_0000137";

CREATE VIEW "MPHPO_en"."MPHPO human death date" AS
  SELECT "MPHPO_0000011_uid" AS "uid MPHPO human death date"
  FROM "MPHPO"."MPHPO_0000011";

COMMENT ON VIEW "MPHPO_en"."MPHPO human death date" IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."MPHPO HOSD beginning temporal information" AS
  SELECT "MPHPO_0000003_uid" AS "uid MPHPO HOSD beginning temporal information"
  FROM "MPHPO"."MPHPO_0000003";

COMMENT ON VIEW "MPHPO_en"."MPHPO HOSD beginning temporal information" IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."healthcare organization clinical visit" AS
  SELECT "HOSO_0000012_uid" AS "uid healthcare organization clinical visit"
  FROM "MPHPO"."HOSO_0000012";

CREATE VIEW "MPHPO_en"."healthcare organization service delivery ending statement" AS
  SELECT "HOSO_0000056_uid" AS "uid healthcare organization service delivery ending statement"
  FROM "MPHPO"."HOSO_0000056";

CREATE VIEW "MPHPO_en"."hospitalization admitting physician specification" AS
  SELECT "HOSO_0000078_uid" AS "uid hospitalization admitting physician specification"
  FROM "MPHPO"."HOSO_0000078";

CREATE VIEW "MPHPO_en"."MPHPO living environment type " AS
  SELECT "MPHPO_0000005_uid" AS "uid MPHPO living environment type "
  FROM "MPHPO"."MPHPO_0000005";

COMMENT ON VIEW "MPHPO_en"."MPHPO living environment type " IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."emergency department visit" AS
  SELECT "HOSO_0000032_uid" AS "uid emergency department visit"
  FROM "MPHPO"."HOSO_0000032";

CREATE VIEW "MPHPO_en"."MPHPO healthcare physician service identifier " AS
  SELECT "MPHPO_0000006_uid" AS "uid MPHPO healthcare physician service identifier "
  FROM "MPHPO"."MPHPO_0000006";

COMMENT ON VIEW "MPHPO_en"."MPHPO healthcare physician service identifier " IS 'Parent class with data property.';

CREATE VIEW "MPHPO_en"."healthcare provider" AS
  SELECT "HOSO_0000009_uid" AS "uid healthcare provider"
  FROM "MPHPO"."HOSO_0000009";

CREATE VIEW "MPHPO_en"."MPHPO human death date has temporal value ISO8601DateTime" AS
  SELECT "MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "has temporal value",  
    "MPHPO_0000011_uid" AS "uid MPHPO human death date"
  FROM "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_en"."MPHPO human death date has temporal value ISO8601DateTime" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_en"."MPHPO_0000010_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "has textual value",  
    "MPHPO_0000010_uid" AS "uid MPHPO human biological sex information content entity"
  FROM "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000010_Ontorel-Core_0000002_string" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_en"."MPHPO_0000006_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "has textual value",  
    "MPHPO_0000006_uid" AS "uid MPHPO healthcare physician service identifier "
  FROM "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000006_Ontorel-Core_0000002_string" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_en"."MPHPO_0000001_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "has textual value",  
    "MPHPO_0000001_uid" AS "MPHPO_0000001_uid"
  FROM "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000001_Ontorel-Core_0000002_string" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_en"."MPHPO_0000007_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "has textual value",  
    "MPHPO_0000007_uid" AS "MPHPO_0000007_uid"
  FROM "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000007_Ontorel-Core_0000002_string" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_en"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" AS
  SELECT "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "has temporal value",  
    "MPHPO_0000004_uid" AS "uid MPHPO HOSD ending temporal information "
  FROM "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_en"."MPHPO living environment type  has textual value string" AS
  SELECT "MPHPO_0000005_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "has textual value",  
    "MPHPO_0000005_uid" AS "uid MPHPO living environment type "
  FROM "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_en"."MPHPO living environment type  has textual value string" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_en"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" AS
  SELECT "MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "has temporal value",  
    "MPHPO_0000003_uid" AS "uid MPHPO HOSD beginning temporal information"
  FROM "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_en"."MPHPO human birth date has temporal value ISO8601DateTime" AS
  SELECT "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "has temporal value",  
    "MPHPO_0000009_uid" AS "uid MPHPO human birth date"
  FROM "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_en"."MPHPO human birth date has temporal value ISO8601DateTime" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_en"."MPHPO_0000002_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "has textual value",  
    "MPHPO_0000002_uid" AS "uid MPHPO pathological condition sub-group name "
  FROM "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000002_Ontorel-Core_0000002_string" IS 'DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_en"."human identifier denotes Homo sapiens" AS
  SELECT "IOIO_0000014_uid" AS "uid human identifier",  
    "NCBITaxon_9606_uid" AS "uid Homo sapiens"
  FROM "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606";

COMMENT ON VIEW "MPHPO_en"."human identifier denotes Homo sapiens" IS 'null  null';

CREATE VIEW "MPHPO_en"."HOSO_0000124_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid",  
    "HOSO_0000100_uid" AS "uid healthcare organization service delivery identifier"
  FROM "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000124_RO_0002180_HOSO_0000100" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000124_RO_0002180_HEPRO_0000017" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid",  
    "HEPRO_0000017_uid" AS "uid pathological condition sub-group name"
  FROM "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000124_RO_0002180_HEPRO_0000017" IS 'null null We suppose that if an ICE is about a group of particular entities, it is also about each of these entities.';

CREATE VIEW "MPHPO_en"."HOSO_0000124_RO_0002180_HOSO_0000126" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid",  
    "HOSO_0000126_uid" AS "uid pathological condition impact type on clinical visit"
  FROM "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000124_RO_0002180_HOSO_0000126" IS 'null null null';

CREATE VIEW "MPHPO_en"."healthcare provider identifier denotes healthcare provider" AS
  SELECT "HOSO_0000138_uid" AS "uid healthcare provider identifier",  
    "HOSO_0000009_uid" AS "uid healthcare provider"
  FROM "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009";

COMMENT ON VIEW "MPHPO_en"."healthcare provider identifier denotes healthcare provider" IS 'null  null';

CREATE VIEW "MPHPO_en"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" AS
  SELECT "IOIO_0000006_uid" AS "uid human death temporal information",  
    "IOIO_0000003_uid" AS "uid human death statement"
  FROM "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003";

COMMENT ON VIEW "MPHPO_en"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" IS 'null null null';

CREATE VIEW "MPHPO_en"."healthcare physician service member of healthcare organization" AS
  SELECT "HOSO_0000079_uid" AS "uid healthcare physician service",  
    "HOSO_0000008_uid" AS "uid healthcare organization"
  FROM "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008";

COMMENT ON VIEW "MPHPO_en"."healthcare physician service member of healthcare organization" IS 'It is often based on the specialty of its members (e.g. respirology), but not always (e.g. vascular service, which may include general internal medicine physician as well as vascular surgeon). null null';

CREATE VIEW "MPHPO_en"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" AS
  SELECT "MPHPO_0000004_uid" AS "uid MPHPO HOSD ending temporal information ",  
    "HOSO_0000056_uid" AS "uid healthcare organization service delivery ending statement"
  FROM "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" IS 'Parent class with data property. null null';

CREATE VIEW "MPHPO_en"."HOSO_0000100_IAO_0000219_HOSO_0000011" AS
  SELECT "HOSO_0000100_uid" AS "uid healthcare organization service delivery identifier",  
    "HOSO_0000011_uid" AS "uid healthcare organization service delivery"
  FROM "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000100_IAO_0000219_HOSO_0000011" IS 'null  null';

CREATE VIEW "MPHPO_en"."HOSO_0000055_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000055_uid" AS "HOSO_0000055_uid",  
    "HOSO_0000100_uid" AS "uid healthcare organization service delivery identifier"
  FROM "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000055_RO_0002180_HOSO_0000100" IS 'null null null';

CREATE VIEW "MPHPO_en"."IOIO_0000001_RO_0002180_IOIO_0000005" AS
  SELECT "IOIO_0000001_uid" AS "uid human birth statement",  
    "IOIO_0000005_uid" AS "uid human birth temporal information"
  FROM "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005";

COMMENT ON VIEW "MPHPO_en"."IOIO_0000001_RO_0002180_IOIO_0000005" IS 'null null null';

CREATE VIEW "MPHPO_en"."human birth statement has component human identifier" AS
  SELECT "IOIO_0000001_uid" AS "uid human birth statement",  
    "IOIO_0000014_uid" AS "uid human identifier"
  FROM "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014";

COMMENT ON VIEW "MPHPO_en"."human birth statement has component human identifier" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000084_IAO_0000219_HOSO_0000079" AS
  SELECT "HOSO_0000084_uid" AS "uid healthcare physician service identifier",  
    "HOSO_0000079_uid" AS "uid healthcare physician service"
  FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000084_IAO_0000219_HOSO_0000079" IS 'null  It is often based on the specialty of its members (e.g. respirology), but not always (e.g. vascular service, which may include general internal medicine physician as well as vascular surgeon).';

CREATE VIEW "MPHPO_en"."HOSO_0000084_IAO_0000219_HOSO_0000008" AS
  SELECT "HOSO_0000084_uid" AS "uid healthcare physician service identifier",  
    "HOSO_0000008_uid" AS "uid healthcare organization"
  FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000084_IAO_0000219_HOSO_0000008" IS 'null  null';

CREATE VIEW "MPHPO_en"."human biological sex statement has component human identifier" AS
  SELECT "IOIO_0000015_uid" AS "uid human biological sex statement",  
    "IOIO_0000014_uid" AS "uid human identifier"
  FROM "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014";

COMMENT ON VIEW "MPHPO_en"."human biological sex statement has component human identifier" IS 'null null null';

CREATE VIEW "MPHPO_en"."IOIO_0000015_RO_0002180_IOIO_0000011" AS
  SELECT "IOIO_0000015_uid" AS "uid human biological sex statement",  
    "IOIO_0000011_uid" AS "uid human biological sex information content entity"
  FROM "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011";

COMMENT ON VIEW "MPHPO_en"."IOIO_0000015_RO_0002180_IOIO_0000011" IS 'null null null';

CREATE VIEW "MPHPO_en"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" AS
  SELECT "IOIO_0000005_uid" AS "uid human birth temporal information",  
    "IOIO_0000001_uid" AS "uid human birth statement"
  FROM "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001";

COMMENT ON VIEW "MPHPO_en"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000080_RO_0002180_IOIO_0000023" AS
  SELECT "HOSO_0000080_uid" AS "uid living environment type prior to clinical visit statement",  
    "IOIO_0000023_uid" AS "uid living environment type"
  FROM "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000080_RO_0002180_IOIO_0000023" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000080_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000080_uid" AS "uid living environment type prior to clinical visit statement",  
    "HOSO_0000100_uid" AS "uid healthcare organization service delivery identifier"
  FROM "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000080_RO_0002180_HOSO_0000100" IS 'null null null';

CREATE VIEW "MPHPO_en"."IOIO_0000003_RO_0002180_IOIO_0000006" AS
  SELECT "IOIO_0000003_uid" AS "uid human death statement",  
    "IOIO_0000006_uid" AS "uid human death temporal information"
  FROM "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006";

COMMENT ON VIEW "MPHPO_en"."IOIO_0000003_RO_0002180_IOIO_0000006" IS 'null null null';

CREATE VIEW "MPHPO_en"."human death statement has component human identifier" AS
  SELECT "IOIO_0000003_uid" AS "uid human death statement",  
    "IOIO_0000014_uid" AS "uid human identifier"
  FROM "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014";

COMMENT ON VIEW "MPHPO_en"."human death statement has component human identifier" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000137_IAO_0000235_HOSO_0000003" AS
  SELECT "HOSO_0000137_uid" AS "uid human clinical visit specified patient",  
    "HOSO_0000003_uid" AS "uid healthcare service organism specification"
  FROM "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000137_IAO_0000235_HOSO_0000003" IS 'null null null';

CREATE VIEW "MPHPO_en"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" AS
  SELECT "MPHPO_0000003_uid" AS "uid MPHPO HOSD beginning temporal information",  
    "HOSO_0000055_uid" AS "HOSO_0000055_uid"
  FROM "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055";

COMMENT ON VIEW "MPHPO_en"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" IS 'Parent class with data property. null null';

CREATE VIEW "MPHPO_en"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" AS
  SELECT "HOSO_0000012_uid" AS "uid healthcare organization clinical visit",  
    "HOSO_0000074_uid" AS "uid clinical visit agreement specification"
  FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" AS
  SELECT "HOSO_0000012_uid" AS "uid healthcare organization clinical visit",  
    "HOSO_0000003_uid" AS "uid healthcare service organism specification"
  FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000012_RO_0002180_HOSO_0000012" AS
  SELECT "HOSO_0000012_uid_domain" AS "uid healthcare organization clinical visit_domain",  
    "HOSO_0000012_uid_range" AS "uid healthcare organization clinical visit_range"
  FROM "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000012_RO_0002180_HOSO_0000012" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000056_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000056_uid" AS "uid healthcare organization service delivery ending statement",  
    "HOSO_0000100_uid" AS "uid healthcare organization service delivery identifier"
  FROM "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000056_RO_0002180_HOSO_0000100" IS 'null null null';

CREATE VIEW "MPHPO_en"."HOSO_0000078_BFO_0000051_HOSO_0000138" AS
  SELECT "HOSO_0000078_uid" AS "uid hospitalization admitting physician specification",  
    "HOSO_0000138_uid" AS "uid healthcare provider identifier"
  FROM "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138";

COMMENT ON VIEW "MPHPO_en"."HOSO_0000078_BFO_0000051_HOSO_0000138" IS 'null null null';

CREATE VIEW "MPHPO_en"."healthcare provider member of healthcare organization" AS
  SELECT "HOSO_0000009_uid" AS "uid healthcare provider",  
    "HOSO_0000008_uid" AS "uid healthcare organization"
  FROM "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008";

COMMENT ON VIEW "MPHPO_en"."healthcare provider member of healthcare organization" IS 'null null null';

