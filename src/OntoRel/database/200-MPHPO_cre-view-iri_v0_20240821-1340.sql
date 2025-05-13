/*
-- =========================================================================== A
Schema : MPHPO_iri
Creation Date : 20240821-1340
Encoding : UTF-8, sans BOM, fin de ligne Unix (LF)
Plateforme : PostgreSQL 9.6
Responsable : OntoRelA
Version : v0
Status : dev
Objet :
  Create views with short IRI of MPHPO_iri
-- =========================================================================== A
*/

CREATE SCHEMA IF NOT EXISTS "MPHPO_iri";

COMMENT ON SCHEMA "MPHPO_iri" IS 'Create views with short IRI of MPHPO_iri 20240821-1340';

CREATE VIEW "MPHPO_iri"."HOSO_0000085" AS
  SELECT "HOSO_0000085_uid" AS "HOSO_0000085_uid"
  FROM "MPHPO"."HOSO_0000085";

CREATE VIEW "MPHPO_iri"."HOSO_0000031" AS
  SELECT "HOSO_0000031_uid" AS "HOSO_0000031_uid"
  FROM "MPHPO"."HOSO_0000031";

CREATE VIEW "MPHPO_iri"."IOIO_0000014" AS
  SELECT "IOIO_0000014_uid" AS "IOIO_0000014_uid"
  FROM "MPHPO"."IOIO_0000014";

CREATE VIEW "MPHPO_iri"."MPHPO_0000010" AS
  SELECT "MPHPO_0000010_uid" AS "MPHPO_0000010_uid"
  FROM "MPHPO"."MPHPO_0000010";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000010" IS 'MPHPO human biological sex information content entity::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000124" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid"
  FROM "MPHPO"."HOSO_0000124";

CREATE VIEW "MPHPO_iri"."HOSO_0000003" AS
  SELECT "HOSO_0000003_uid" AS "HOSO_0000003_uid"
  FROM "MPHPO"."HOSO_0000003";

CREATE VIEW "MPHPO_iri"."HOSO_0000138" AS
  SELECT "HOSO_0000138_uid" AS "HOSO_0000138_uid"
  FROM "MPHPO"."HOSO_0000138";

CREATE VIEW "MPHPO_iri"."IOIO_0000006" AS
  SELECT "IOIO_0000006_uid" AS "IOIO_0000006_uid"
  FROM "MPHPO"."IOIO_0000006";

CREATE VIEW "MPHPO_iri"."HOSO_0000126" AS
  SELECT "HOSO_0000126_uid" AS "HOSO_0000126_uid"
  FROM "MPHPO"."HOSO_0000126";

CREATE VIEW "MPHPO_iri"."MPHPO_0000002" AS
  SELECT "MPHPO_0000002_uid" AS "MPHPO_0000002_uid"
  FROM "MPHPO"."MPHPO_0000002";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000002" IS 'MPHPO pathological condition sub-group name ::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000079" AS
  SELECT "HOSO_0000079_uid" AS "HOSO_0000079_uid"
  FROM "MPHPO"."HOSO_0000079";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000079" IS 'healthcare physician service::It is often based on the specialty of its members (e.g. respirology), but not always (e.g. vascular service, which may include general internal medicine physician as well as vascular surgeon).';

CREATE VIEW "MPHPO_iri"."MPHPO_0000004" AS
  SELECT "MPHPO_0000004_uid" AS "MPHPO_0000004_uid"
  FROM "MPHPO"."MPHPO_0000004";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000004" IS 'MPHPO HOSD ending temporal information ::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000100" AS
  SELECT "HOSO_0000100_uid" AS "HOSO_0000100_uid"
  FROM "MPHPO"."HOSO_0000100";

CREATE VIEW "MPHPO_iri"."HOSO_0000011" AS
  SELECT "HOSO_0000011_uid" AS "HOSO_0000011_uid"
  FROM "MPHPO"."HOSO_0000011";

CREATE VIEW "MPHPO_iri"."HOSO_0000055" AS
  SELECT "HOSO_0000055_uid" AS "HOSO_0000055_uid"
  FROM "MPHPO"."HOSO_0000055";

CREATE VIEW "MPHPO_iri"."MPHPO_0000007" AS
  SELECT "MPHPO_0000007_uid" AS "MPHPO_0000007_uid"
  FROM "MPHPO"."MPHPO_0000007";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000007" IS 'MPHPO hospitalization admission urgency level specification ::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."MPHPO_0000009" AS
  SELECT "MPHPO_0000009_uid" AS "MPHPO_0000009_uid"
  FROM "MPHPO"."MPHPO_0000009";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000009" IS 'MPHPO human birth date::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."NCBITaxon_9606" AS
  SELECT "NCBITaxon_9606_uid" AS "NCBITaxon_9606_uid"
  FROM "MPHPO"."NCBITaxon_9606";

CREATE VIEW "MPHPO_iri"."HOSO_0000008" AS
  SELECT "HOSO_0000008_uid" AS "HOSO_0000008_uid"
  FROM "MPHPO"."HOSO_0000008";

CREATE VIEW "MPHPO_iri"."HEPRO_0000017" AS
  SELECT "HEPRO_0000017_uid" AS "HEPRO_0000017_uid"
  FROM "MPHPO"."HEPRO_0000017";

COMMENT ON VIEW "MPHPO_iri"."HEPRO_0000017" IS 'pathological condition sub-group name::We suppose that if an ICE is about a group of particular entities, it is also about each of these entities.';

CREATE VIEW "MPHPO_iri"."HOSO_0000074" AS
  SELECT "HOSO_0000074_uid" AS "HOSO_0000074_uid"
  FROM "MPHPO"."HOSO_0000074";

CREATE VIEW "MPHPO_iri"."IOIO_0000011" AS
  SELECT "IOIO_0000011_uid" AS "IOIO_0000011_uid"
  FROM "MPHPO"."IOIO_0000011";

CREATE VIEW "MPHPO_iri"."IOIO_0000001" AS
  SELECT "IOIO_0000001_uid" AS "IOIO_0000001_uid"
  FROM "MPHPO"."IOIO_0000001";

CREATE VIEW "MPHPO_iri"."IOIO_0000023" AS
  SELECT "IOIO_0000023_uid" AS "IOIO_0000023_uid"
  FROM "MPHPO"."IOIO_0000023";

CREATE VIEW "MPHPO_iri"."HOSO_0000072" AS
  SELECT "HOSO_0000072_uid" AS "HOSO_0000072_uid"
  FROM "MPHPO"."HOSO_0000072";

CREATE VIEW "MPHPO_iri"."HOSO_0000084" AS
  SELECT "HOSO_0000084_uid" AS "HOSO_0000084_uid"
  FROM "MPHPO"."HOSO_0000084";

CREATE VIEW "MPHPO_iri"."IOIO_0000015" AS
  SELECT "IOIO_0000015_uid" AS "IOIO_0000015_uid"
  FROM "MPHPO"."IOIO_0000015";

CREATE VIEW "MPHPO_iri"."IOIO_0000005" AS
  SELECT "IOIO_0000005_uid" AS "IOIO_0000005_uid"
  FROM "MPHPO"."IOIO_0000005";

CREATE VIEW "MPHPO_iri"."HOSO_0000080" AS
  SELECT "HOSO_0000080_uid" AS "HOSO_0000080_uid"
  FROM "MPHPO"."HOSO_0000080";

CREATE VIEW "MPHPO_iri"."IOIO_0000003" AS
  SELECT "IOIO_0000003_uid" AS "IOIO_0000003_uid"
  FROM "MPHPO"."IOIO_0000003";

CREATE VIEW "MPHPO_iri"."MPHPO_0000001" AS
  SELECT "MPHPO_0000001_uid" AS "MPHPO_0000001_uid"
  FROM "MPHPO"."MPHPO_0000001";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000001" IS 'MPHPO pathological condition impact type on clinical visit ::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000137" AS
  SELECT "HOSO_0000137_uid" AS "HOSO_0000137_uid"
  FROM "MPHPO"."HOSO_0000137";

CREATE VIEW "MPHPO_iri"."MPHPO_0000011" AS
  SELECT "MPHPO_0000011_uid" AS "MPHPO_0000011_uid"
  FROM "MPHPO"."MPHPO_0000011";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000011" IS 'MPHPO human death date::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."MPHPO_0000003" AS
  SELECT "MPHPO_0000003_uid" AS "MPHPO_0000003_uid"
  FROM "MPHPO"."MPHPO_0000003";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000003" IS 'MPHPO HOSD beginning temporal information::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000012" AS
  SELECT "HOSO_0000012_uid" AS "HOSO_0000012_uid"
  FROM "MPHPO"."HOSO_0000012";

CREATE VIEW "MPHPO_iri"."HOSO_0000056" AS
  SELECT "HOSO_0000056_uid" AS "HOSO_0000056_uid"
  FROM "MPHPO"."HOSO_0000056";

CREATE VIEW "MPHPO_iri"."HOSO_0000078" AS
  SELECT "HOSO_0000078_uid" AS "HOSO_0000078_uid"
  FROM "MPHPO"."HOSO_0000078";

CREATE VIEW "MPHPO_iri"."MPHPO_0000005" AS
  SELECT "MPHPO_0000005_uid" AS "MPHPO_0000005_uid"
  FROM "MPHPO"."MPHPO_0000005";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000005" IS 'MPHPO living environment type ::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000032" AS
  SELECT "HOSO_0000032_uid" AS "HOSO_0000032_uid"
  FROM "MPHPO"."HOSO_0000032";

CREATE VIEW "MPHPO_iri"."MPHPO_0000006" AS
  SELECT "MPHPO_0000006_uid" AS "MPHPO_0000006_uid"
  FROM "MPHPO"."MPHPO_0000006";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000006" IS 'MPHPO healthcare physician service identifier ::Parent class with data property.';

CREATE VIEW "MPHPO_iri"."HOSO_0000009" AS
  SELECT "HOSO_0000009_uid" AS "HOSO_0000009_uid"
  FROM "MPHPO"."HOSO_0000009";

CREATE VIEW "MPHPO_iri"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001" AS
  SELECT "MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004",  
    "MPHPO_0000011_uid" AS "MPHPO_0000011_uid"
  FROM "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO human death date has temporal value ISO8601DateTime::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000010_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002",  
    "MPHPO_0000010_uid" AS "MPHPO_0000010_uid"
  FROM "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000010_Ontorel-Core_0000002_string" IS 'MPHPO human biological sex information content entity has textual value string::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000006_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002",  
    "MPHPO_0000006_uid" AS "MPHPO_0000006_uid"
  FROM "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000006_Ontorel-Core_0000002_string" IS 'MPHPO healthcare physician service identifier  has textual value string::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000001_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002",  
    "MPHPO_0000001_uid" AS "MPHPO_0000001_uid"
  FROM "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000001_Ontorel-Core_0000002_string" IS 'MPHPO pathological condition impact type on clinical visit  has textual value string::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000007_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002",  
    "MPHPO_0000007_uid" AS "MPHPO_0000007_uid"
  FROM "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000007_Ontorel-Core_0000002_string" IS 'MPHPO hospitalization admission urgency level specification  has textual value string::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" AS
  SELECT "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004",  
    "MPHPO_0000004_uid" AS "MPHPO_0000004_uid"
  FROM "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO HOSD ending temporal information  has temporal value ISO8601DateTime::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000005_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000005_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "MPHPO_0000005_Ontorel-Core_0000002_string_Ontorel-Core_0000002",  
    "MPHPO_0000005_uid" AS "MPHPO_0000005_uid"
  FROM "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000005_Ontorel-Core_0000002_string" IS 'MPHPO living environment type  has textual value string::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" AS
  SELECT "MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004",  
    "MPHPO_0000003_uid" AS "MPHPO_0000003_uid"
  FROM "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO HOSD beginning temporal information has temporal value ISO8601DateTime::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001" AS
  SELECT "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" AS "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004",  
    "MPHPO_0000009_uid" AS "MPHPO_0000009_uid"
  FROM "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO human birth date has temporal value ISO8601DateTime::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000004> <http://purl.obolibrary.org/obo/Ontorel-Core_0000001>)';

CREATE VIEW "MPHPO_iri"."MPHPO_0000002_Ontorel-Core_0000002_string" AS
  SELECT "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002",  
    "MPHPO_0000002_uid" AS "MPHPO_0000002_uid"
  FROM "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000002_Ontorel-Core_0000002_string" IS 'MPHPO pathological condition sub-group name  has textual value string::DataExactCardinality(1 <http://purl.obolibrary.org/obo/Ontorel-Core_0000002> xsd:string)';

CREATE VIEW "MPHPO_iri"."IOIO_0000014_IAO_0000219_NCBITaxon_9606" AS
  SELECT "IOIO_0000014_uid" AS "IOIO_0000014_uid",  
    "NCBITaxon_9606_uid" AS "NCBITaxon_9606_uid"
  FROM "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000014_IAO_0000219_NCBITaxon_9606" IS 'human identifier denotes Homo sapiens::null  null';

CREATE VIEW "MPHPO_iri"."HOSO_0000124_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid",  
    "HOSO_0000100_uid" AS "HOSO_0000100_uid"
  FROM "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000124_RO_0002180_HOSO_0000100" IS 'healthcare organization clinical visit pathological condition impact statement has component healthcare organization service delivery identifier::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000124_RO_0002180_HEPRO_0000017" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid",  
    "HEPRO_0000017_uid" AS "HEPRO_0000017_uid"
  FROM "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000124_RO_0002180_HEPRO_0000017" IS 'healthcare organization clinical visit pathological condition impact statement has component pathological condition sub-group name::null null We suppose that if an ICE is about a group of particular entities, it is also about each of these entities.';

CREATE VIEW "MPHPO_iri"."HOSO_0000124_RO_0002180_HOSO_0000126" AS
  SELECT "HOSO_0000124_uid" AS "HOSO_0000124_uid",  
    "HOSO_0000126_uid" AS "HOSO_0000126_uid"
  FROM "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000124_RO_0002180_HOSO_0000126" IS 'healthcare organization clinical visit pathological condition impact statement has component pathological condition impact type on clinical visit::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000138_IAO_0000219_HOSO_0000009" AS
  SELECT "HOSO_0000138_uid" AS "HOSO_0000138_uid",  
    "HOSO_0000009_uid" AS "HOSO_0000009_uid"
  FROM "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000138_IAO_0000219_HOSO_0000009" IS 'healthcare provider identifier denotes healthcare provider::null  null';

CREATE VIEW "MPHPO_iri"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" AS
  SELECT "IOIO_0000006_uid" AS "IOIO_0000006_uid",  
    "IOIO_0000003_uid" AS "IOIO_0000003_uid"
  FROM "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" IS 'human death temporal information component of human death statement::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000079_RO_0002350_HOSO_0000008" AS
  SELECT "HOSO_0000079_uid" AS "HOSO_0000079_uid",  
    "HOSO_0000008_uid" AS "HOSO_0000008_uid"
  FROM "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000079_RO_0002350_HOSO_0000008" IS 'healthcare physician service member of healthcare organization::It is often based on the specialty of its members (e.g. respirology), but not always (e.g. vascular service, which may include general internal medicine physician as well as vascular surgeon). null null';

CREATE VIEW "MPHPO_iri"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" AS
  SELECT "MPHPO_0000004_uid" AS "MPHPO_0000004_uid",  
    "HOSO_0000056_uid" AS "HOSO_0000056_uid"
  FROM "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" IS 'MPHPO HOSD ending temporal information  component of healthcare organization service delivery ending statement::Parent class with data property. null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000100_IAO_0000219_HOSO_0000011" AS
  SELECT "HOSO_0000100_uid" AS "HOSO_0000100_uid",  
    "HOSO_0000011_uid" AS "HOSO_0000011_uid"
  FROM "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000100_IAO_0000219_HOSO_0000011" IS 'healthcare organization service delivery identifier denotes healthcare organization service delivery::null  null';

CREATE VIEW "MPHPO_iri"."HOSO_0000055_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000055_uid" AS "HOSO_0000055_uid",  
    "HOSO_0000100_uid" AS "HOSO_0000100_uid"
  FROM "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000055_RO_0002180_HOSO_0000100" IS 'healthcare organization service delivery beginning statement has component healthcare organization service delivery identifier::null null null';

CREATE VIEW "MPHPO_iri"."IOIO_0000001_RO_0002180_IOIO_0000005" AS
  SELECT "IOIO_0000001_uid" AS "IOIO_0000001_uid",  
    "IOIO_0000005_uid" AS "IOIO_0000005_uid"
  FROM "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000001_RO_0002180_IOIO_0000005" IS 'human birth statement has component human birth temporal information::null null null';

CREATE VIEW "MPHPO_iri"."IOIO_0000001_RO_0002180_IOIO_0000014" AS
  SELECT "IOIO_0000001_uid" AS "IOIO_0000001_uid",  
    "IOIO_0000014_uid" AS "IOIO_0000014_uid"
  FROM "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000001_RO_0002180_IOIO_0000014" IS 'human birth statement has component human identifier::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000084_IAO_0000219_HOSO_0000079" AS
  SELECT "HOSO_0000084_uid" AS "HOSO_0000084_uid",  
    "HOSO_0000079_uid" AS "HOSO_0000079_uid"
  FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000084_IAO_0000219_HOSO_0000079" IS 'healthcare physician service identifier denotes healthcare physician service::null  It is often based on the specialty of its members (e.g. respirology), but not always (e.g. vascular service, which may include general internal medicine physician as well as vascular surgeon).';

CREATE VIEW "MPHPO_iri"."HOSO_0000084_IAO_0000219_HOSO_0000008" AS
  SELECT "HOSO_0000084_uid" AS "HOSO_0000084_uid",  
    "HOSO_0000008_uid" AS "HOSO_0000008_uid"
  FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000084_IAO_0000219_HOSO_0000008" IS 'healthcare physician service identifier denotes healthcare organization::null  null';

CREATE VIEW "MPHPO_iri"."IOIO_0000015_RO_0002180_IOIO_0000014" AS
  SELECT "IOIO_0000015_uid" AS "IOIO_0000015_uid",  
    "IOIO_0000014_uid" AS "IOIO_0000014_uid"
  FROM "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000015_RO_0002180_IOIO_0000014" IS 'human biological sex statement has component human identifier::null null null';

CREATE VIEW "MPHPO_iri"."IOIO_0000015_RO_0002180_IOIO_0000011" AS
  SELECT "IOIO_0000015_uid" AS "IOIO_0000015_uid",  
    "IOIO_0000011_uid" AS "IOIO_0000011_uid"
  FROM "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000015_RO_0002180_IOIO_0000011" IS 'human biological sex statement has component human biological sex information content entity::null null null';

CREATE VIEW "MPHPO_iri"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" AS
  SELECT "IOIO_0000005_uid" AS "IOIO_0000005_uid",  
    "IOIO_0000001_uid" AS "IOIO_0000001_uid"
  FROM "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" IS 'human birth temporal information component of human birth statement::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000080_RO_0002180_IOIO_0000023" AS
  SELECT "HOSO_0000080_uid" AS "HOSO_0000080_uid",  
    "IOIO_0000023_uid" AS "IOIO_0000023_uid"
  FROM "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000080_RO_0002180_IOIO_0000023" IS 'living environment type prior to clinical visit statement has component living environment type::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000080_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000080_uid" AS "HOSO_0000080_uid",  
    "HOSO_0000100_uid" AS "HOSO_0000100_uid"
  FROM "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000080_RO_0002180_HOSO_0000100" IS 'living environment type prior to clinical visit statement has component healthcare organization service delivery identifier::null null null';

CREATE VIEW "MPHPO_iri"."IOIO_0000003_RO_0002180_IOIO_0000006" AS
  SELECT "IOIO_0000003_uid" AS "IOIO_0000003_uid",  
    "IOIO_0000006_uid" AS "IOIO_0000006_uid"
  FROM "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000003_RO_0002180_IOIO_0000006" IS 'human death statement has component human death temporal information::null null null';

CREATE VIEW "MPHPO_iri"."IOIO_0000003_RO_0002180_IOIO_0000014" AS
  SELECT "IOIO_0000003_uid" AS "IOIO_0000003_uid",  
    "IOIO_0000014_uid" AS "IOIO_0000014_uid"
  FROM "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014";

COMMENT ON VIEW "MPHPO_iri"."IOIO_0000003_RO_0002180_IOIO_0000014" IS 'human death statement has component human identifier::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000137_IAO_0000235_HOSO_0000003" AS
  SELECT "HOSO_0000137_uid" AS "HOSO_0000137_uid",  
    "HOSO_0000003_uid" AS "HOSO_0000003_uid"
  FROM "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000137_IAO_0000235_HOSO_0000003" IS 'human clinical visit specified patient denoted by healthcare service organism specification::null null null';

CREATE VIEW "MPHPO_iri"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" AS
  SELECT "MPHPO_0000003_uid" AS "MPHPO_0000003_uid",  
    "HOSO_0000055_uid" AS "HOSO_0000055_uid"
  FROM "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055";

COMMENT ON VIEW "MPHPO_iri"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" IS 'MPHPO HOSD beginning temporal information component of healthcare organization service delivery beginning statement::Parent class with data property. null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" AS
  SELECT "HOSO_0000012_uid" AS "HOSO_0000012_uid",  
    "HOSO_0000074_uid" AS "HOSO_0000074_uid"
  FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" IS 'healthcare organization clinical visit is directed by clinical visit agreement specification::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" AS
  SELECT "HOSO_0000012_uid" AS "HOSO_0000012_uid",  
    "HOSO_0000003_uid" AS "HOSO_0000003_uid"
  FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" IS 'healthcare organization clinical visit is directed by healthcare service organism specification::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000012_RO_0002180_HOSO_0000012" AS
  SELECT "HOSO_0000012_uid_domain" AS "HOSO_0000012_uid_domain",  
    "HOSO_0000012_uid_range" AS "HOSO_0000012_uid_range"
  FROM "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000012_RO_0002180_HOSO_0000012" IS 'healthcare organization clinical visit has component healthcare organization clinical visit::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000056_RO_0002180_HOSO_0000100" AS
  SELECT "HOSO_0000056_uid" AS "HOSO_0000056_uid",  
    "HOSO_0000100_uid" AS "HOSO_0000100_uid"
  FROM "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000056_RO_0002180_HOSO_0000100" IS 'healthcare organization service delivery ending statement has component healthcare organization service delivery identifier::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000078_BFO_0000051_HOSO_0000138" AS
  SELECT "HOSO_0000078_uid" AS "HOSO_0000078_uid",  
    "HOSO_0000138_uid" AS "HOSO_0000138_uid"
  FROM "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000078_BFO_0000051_HOSO_0000138" IS 'hospitalization admitting physician specification has part healthcare provider identifier::null null null';

CREATE VIEW "MPHPO_iri"."HOSO_0000009_RO_0002350_HOSO_0000008" AS
  SELECT "HOSO_0000009_uid" AS "HOSO_0000009_uid",  
    "HOSO_0000008_uid" AS "HOSO_0000008_uid"
  FROM "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008";

COMMENT ON VIEW "MPHPO_iri"."HOSO_0000009_RO_0002350_HOSO_0000008" IS 'healthcare provider member of healthcare organization::null null null';

