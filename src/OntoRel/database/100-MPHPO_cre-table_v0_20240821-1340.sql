/*
-- =========================================================================== A
Schema : MPHPO
Creation Date : 20240821-1340
Encoding : UTF-8, sans BOM, fin de ligne Unix (LF)
Plateforme : PostgreSQL 9.6
Responsable : OntoRelA
Version : v0
Status : dev
Objet :
  Create domains and tables
-- =========================================================================== A
*/

CREATE SCHEMA IF NOT EXISTS "MPHPO";

COMMENT ON SCHEMA "MPHPO" IS 'Schéma MPHPO créé le 20240821-1340';

-- uid_domain domain definition
CREATE DOMAIN "MPHPO"."uid_domain" AS UUID;

-- value_domain domain definition
CREATE DOMAIN "MPHPO"."value_domain" AS TEXT;

-- Ontorel-Core_0000001_domain domain definition
CREATE DOMAIN "MPHPO"."Ontorel-Core_0000001_domain" AS TIMESTAMP;

-- langString_domain domain definition
CREATE DOMAIN "MPHPO"."langString_domain" AS TEXT;

-- string_domain domain definition
CREATE DOMAIN "MPHPO"."string_domain" AS TEXT;

-- table HOSO_0000085 definition
CREATE TABLE "MPHPO"."HOSO_0000085"
(
  "HOSO_0000085_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000085" PRIMARY KEY ("HOSO_0000085_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000085"."HOSO_0000085_uid" IS 'uid hospitalization starting with ICU stay::Default primary key of hospitalization starting with ICU stay';

-- table HOSO_0000031 definition
CREATE TABLE "MPHPO"."HOSO_0000031"
(
  "HOSO_0000031_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000031" PRIMARY KEY ("HOSO_0000031_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000031"."HOSO_0000031_uid" IS 'uid hospitalization::Default primary key of hospitalization';

-- table IOIO_0000014 definition
CREATE TABLE "MPHPO"."IOIO_0000014"
(
  "IOIO_0000014_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000014" PRIMARY KEY ("IOIO_0000014_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000014"."IOIO_0000014_uid" IS 'uid human identifier::Default primary key of human identifier';

-- table MPHPO_0000010 definition
CREATE TABLE "MPHPO"."MPHPO_0000010"
(
  "MPHPO_0000010_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000010" PRIMARY KEY ("MPHPO_0000010_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000010"."MPHPO_0000010_uid" IS 'uid MPHPO human biological sex information content entity::Default primary key of MPHPO human biological sex information content entity';

-- table HOSO_0000124 definition
CREATE TABLE "MPHPO"."HOSO_0000124"
(
  "HOSO_0000124_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000124" PRIMARY KEY ("HOSO_0000124_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000124"."HOSO_0000124_uid" IS 'uid healthcare organization clinical visit pathological condition impact statement::Default primary key of healthcare organization clinical visit pathological condition impact statement';

-- table HOSO_0000003 definition
CREATE TABLE "MPHPO"."HOSO_0000003"
(
  "HOSO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000003" PRIMARY KEY ("HOSO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000003"."HOSO_0000003_uid" IS 'uid healthcare service organism specification::Default primary key of healthcare service organism specification';

-- table HOSO_0000138 definition
CREATE TABLE "MPHPO"."HOSO_0000138"
(
  "HOSO_0000138_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000138" PRIMARY KEY ("HOSO_0000138_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000138"."HOSO_0000138_uid" IS 'uid healthcare provider identifier::Default primary key of healthcare provider identifier';

-- table IOIO_0000006 definition
CREATE TABLE "MPHPO"."IOIO_0000006"
(
  "IOIO_0000006_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000006" PRIMARY KEY ("IOIO_0000006_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000006"."IOIO_0000006_uid" IS 'uid human death temporal information::Default primary key of human death temporal information';

-- table HOSO_0000126 definition
CREATE TABLE "MPHPO"."HOSO_0000126"
(
  "HOSO_0000126_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000126" PRIMARY KEY ("HOSO_0000126_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000126"."HOSO_0000126_uid" IS 'uid pathological condition impact type on clinical visit::Default primary key of pathological condition impact type on clinical visit';

-- table MPHPO_0000002 definition
CREATE TABLE "MPHPO"."MPHPO_0000002"
(
  "MPHPO_0000002_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000002" PRIMARY KEY ("MPHPO_0000002_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000002"."MPHPO_0000002_uid" IS 'uid MPHPO pathological condition sub-group name ::Default primary key of MPHPO pathological condition sub-group name ';

-- table HOSO_0000079 definition
CREATE TABLE "MPHPO"."HOSO_0000079"
(
  "HOSO_0000079_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000079" PRIMARY KEY ("HOSO_0000079_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000079"."HOSO_0000079_uid" IS 'uid healthcare physician service::Default primary key of healthcare physician service';

-- table MPHPO_0000004 definition
CREATE TABLE "MPHPO"."MPHPO_0000004"
(
  "MPHPO_0000004_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000004" PRIMARY KEY ("MPHPO_0000004_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000004"."MPHPO_0000004_uid" IS 'uid MPHPO HOSD ending temporal information ::Default primary key of MPHPO HOSD ending temporal information ';

-- table HOSO_0000100 definition
CREATE TABLE "MPHPO"."HOSO_0000100"
(
  "HOSO_0000100_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000100" PRIMARY KEY ("HOSO_0000100_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000100"."HOSO_0000100_uid" IS 'uid healthcare organization service delivery identifier::Default primary key of healthcare organization service delivery identifier';

-- table HOSO_0000011 definition
CREATE TABLE "MPHPO"."HOSO_0000011"
(
  "HOSO_0000011_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000011" PRIMARY KEY ("HOSO_0000011_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000011"."HOSO_0000011_uid" IS 'uid healthcare organization service delivery::Default primary key of healthcare organization service delivery';

-- table HOSO_0000055 definition
CREATE TABLE "MPHPO"."HOSO_0000055"
(
  "HOSO_0000055_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000055" PRIMARY KEY ("HOSO_0000055_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000055"."HOSO_0000055_uid" IS 'uid healthcare organization service delivery beginning statement::Default primary key of healthcare organization service delivery beginning statement';

-- table MPHPO_0000007 definition
CREATE TABLE "MPHPO"."MPHPO_0000007"
(
  "MPHPO_0000007_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000007" PRIMARY KEY ("MPHPO_0000007_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000007"."MPHPO_0000007_uid" IS 'uid MPHPO hospitalization admission urgency level specification ::Default primary key of MPHPO hospitalization admission urgency level specification ';

-- table MPHPO_0000009 definition
CREATE TABLE "MPHPO"."MPHPO_0000009"
(
  "MPHPO_0000009_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000009" PRIMARY KEY ("MPHPO_0000009_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000009"."MPHPO_0000009_uid" IS 'uid MPHPO human birth date::Default primary key of MPHPO human birth date';

-- table NCBITaxon_9606 definition
CREATE TABLE "MPHPO"."NCBITaxon_9606"
(
  "NCBITaxon_9606_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_NCBITaxon_9606" PRIMARY KEY ("NCBITaxon_9606_uid")
);

COMMENT ON COLUMN "MPHPO"."NCBITaxon_9606"."NCBITaxon_9606_uid" IS 'uid Homo sapiens::Default primary key of Homo sapiens';

-- table HOSO_0000008 definition
CREATE TABLE "MPHPO"."HOSO_0000008"
(
  "HOSO_0000008_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000008" PRIMARY KEY ("HOSO_0000008_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000008"."HOSO_0000008_uid" IS 'uid healthcare organization::Default primary key of healthcare organization';

-- table HEPRO_0000017 definition
CREATE TABLE "MPHPO"."HEPRO_0000017"
(
  "HEPRO_0000017_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HEPRO_0000017" PRIMARY KEY ("HEPRO_0000017_uid")
);

COMMENT ON COLUMN "MPHPO"."HEPRO_0000017"."HEPRO_0000017_uid" IS 'uid pathological condition sub-group name::Default primary key of pathological condition sub-group name';

-- table HOSO_0000074 definition
CREATE TABLE "MPHPO"."HOSO_0000074"
(
  "HOSO_0000074_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000074" PRIMARY KEY ("HOSO_0000074_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000074"."HOSO_0000074_uid" IS 'uid clinical visit agreement specification::Default primary key of clinical visit agreement specification';

-- table IOIO_0000011 definition
CREATE TABLE "MPHPO"."IOIO_0000011"
(
  "IOIO_0000011_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000011" PRIMARY KEY ("IOIO_0000011_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000011"."IOIO_0000011_uid" IS 'uid human biological sex information content entity::Default primary key of human biological sex information content entity';

-- table IOIO_0000001 definition
CREATE TABLE "MPHPO"."IOIO_0000001"
(
  "IOIO_0000001_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000001" PRIMARY KEY ("IOIO_0000001_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000001"."IOIO_0000001_uid" IS 'uid human birth statement::Default primary key of human birth statement';

-- table IOIO_0000023 definition
CREATE TABLE "MPHPO"."IOIO_0000023"
(
  "IOIO_0000023_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000023" PRIMARY KEY ("IOIO_0000023_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000023"."IOIO_0000023_uid" IS 'uid living environment type::Default primary key of living environment type';

-- table HOSO_0000072 definition
CREATE TABLE "MPHPO"."HOSO_0000072"
(
  "HOSO_0000072_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000072" PRIMARY KEY ("HOSO_0000072_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000072"."HOSO_0000072_uid" IS 'uid ED by ambulance initiated hospitalization::Default primary key of ED by ambulance initiated hospitalization';

-- table HOSO_0000084 definition
CREATE TABLE "MPHPO"."HOSO_0000084"
(
  "HOSO_0000084_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000084" PRIMARY KEY ("HOSO_0000084_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000084"."HOSO_0000084_uid" IS 'uid healthcare physician service identifier::Default primary key of healthcare physician service identifier';

-- table IOIO_0000015 definition
CREATE TABLE "MPHPO"."IOIO_0000015"
(
  "IOIO_0000015_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000015" PRIMARY KEY ("IOIO_0000015_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000015"."IOIO_0000015_uid" IS 'uid human biological sex statement::Default primary key of human biological sex statement';

-- table IOIO_0000005 definition
CREATE TABLE "MPHPO"."IOIO_0000005"
(
  "IOIO_0000005_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000005" PRIMARY KEY ("IOIO_0000005_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000005"."IOIO_0000005_uid" IS 'uid human birth temporal information::Default primary key of human birth temporal information';

-- table HOSO_0000080 definition
CREATE TABLE "MPHPO"."HOSO_0000080"
(
  "HOSO_0000080_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000080" PRIMARY KEY ("HOSO_0000080_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000080"."HOSO_0000080_uid" IS 'uid living environment type prior to clinical visit statement::Default primary key of living environment type prior to clinical visit statement';

-- table IOIO_0000003 definition
CREATE TABLE "MPHPO"."IOIO_0000003"
(
  "IOIO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000003" PRIMARY KEY ("IOIO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000003"."IOIO_0000003_uid" IS 'uid human death statement::Default primary key of human death statement';

-- table MPHPO_0000001 definition
CREATE TABLE "MPHPO"."MPHPO_0000001"
(
  "MPHPO_0000001_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000001" PRIMARY KEY ("MPHPO_0000001_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000001"."MPHPO_0000001_uid" IS 'uid MPHPO pathological condition impact type on clinical visit ::Default primary key of MPHPO pathological condition impact type on clinical visit ';

-- table HOSO_0000137 definition
CREATE TABLE "MPHPO"."HOSO_0000137"
(
  "HOSO_0000137_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000137" PRIMARY KEY ("HOSO_0000137_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000137"."HOSO_0000137_uid" IS 'uid human clinical visit specified patient::Default primary key of human clinical visit specified patient';

-- table MPHPO_0000011 definition
CREATE TABLE "MPHPO"."MPHPO_0000011"
(
  "MPHPO_0000011_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000011" PRIMARY KEY ("MPHPO_0000011_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000011"."MPHPO_0000011_uid" IS 'uid MPHPO human death date::Default primary key of MPHPO human death date';

-- table MPHPO_0000003 definition
CREATE TABLE "MPHPO"."MPHPO_0000003"
(
  "MPHPO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000003" PRIMARY KEY ("MPHPO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000003"."MPHPO_0000003_uid" IS 'uid MPHPO HOSD beginning temporal information::Default primary key of MPHPO HOSD beginning temporal information';

-- table HOSO_0000012 definition
CREATE TABLE "MPHPO"."HOSO_0000012"
(
  "HOSO_0000012_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000012" PRIMARY KEY ("HOSO_0000012_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000012"."HOSO_0000012_uid" IS 'uid healthcare organization clinical visit::Default primary key of healthcare organization clinical visit';

-- table HOSO_0000056 definition
CREATE TABLE "MPHPO"."HOSO_0000056"
(
  "HOSO_0000056_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000056" PRIMARY KEY ("HOSO_0000056_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000056"."HOSO_0000056_uid" IS 'uid healthcare organization service delivery ending statement::Default primary key of healthcare organization service delivery ending statement';

-- table HOSO_0000078 definition
CREATE TABLE "MPHPO"."HOSO_0000078"
(
  "HOSO_0000078_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000078" PRIMARY KEY ("HOSO_0000078_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000078"."HOSO_0000078_uid" IS 'uid hospitalization admitting physician specification::Default primary key of hospitalization admitting physician specification';

-- table MPHPO_0000005 definition
CREATE TABLE "MPHPO"."MPHPO_0000005"
(
  "MPHPO_0000005_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000005" PRIMARY KEY ("MPHPO_0000005_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000005"."MPHPO_0000005_uid" IS 'uid MPHPO living environment type ::Default primary key of MPHPO living environment type ';

-- table HOSO_0000032 definition
CREATE TABLE "MPHPO"."HOSO_0000032"
(
  "HOSO_0000032_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000032" PRIMARY KEY ("HOSO_0000032_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000032"."HOSO_0000032_uid" IS 'uid emergency department visit::Default primary key of emergency department visit';

-- table MPHPO_0000006 definition
CREATE TABLE "MPHPO"."MPHPO_0000006"
(
  "MPHPO_0000006_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000006" PRIMARY KEY ("MPHPO_0000006_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000006"."MPHPO_0000006_uid" IS 'uid MPHPO healthcare physician service identifier ::Default primary key of MPHPO healthcare physician service identifier ';

-- table HOSO_0000009 definition
CREATE TABLE "MPHPO"."HOSO_0000009"
(
  "HOSO_0000009_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000009" PRIMARY KEY ("HOSO_0000009_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000009"."HOSO_0000009_uid" IS 'uid healthcare provider::Default primary key of healthcare provider';

-- table MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001 definition
CREATE TABLE "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"
(
  "MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" "MPHPO"."Ontorel-Core_0000001_domain"  NOT NULL, 
  "MPHPO_0000011_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001" PRIMARY KEY ("MPHPO_0000011_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" IS 'has temporal value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000011_uid" IS 'uid MPHPO human death date::Default primary key of MPHPO human death date';

-- table MPHPO_0000010_Ontorel-Core_0000002_string definition
CREATE TABLE "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"
(
  "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002" "MPHPO"."string_domain"  NOT NULL, 
  "MPHPO_0000010_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000010_Ontorel-Core_0000002_string" PRIMARY KEY ("MPHPO_0000010_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"."MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002" IS 'has textual value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"."MPHPO_0000010_uid" IS 'uid MPHPO human biological sex information content entity::Default primary key of MPHPO human biological sex information content entity';

-- table MPHPO_0000006_Ontorel-Core_0000002_string definition
CREATE TABLE "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"
(
  "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002" "MPHPO"."string_domain"  NOT NULL, 
  "MPHPO_0000006_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000006_Ontorel-Core_0000002_string" PRIMARY KEY ("MPHPO_0000006_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"."MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002" IS 'has textual value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"."MPHPO_0000006_uid" IS 'uid MPHPO healthcare physician service identifier ::Default primary key of MPHPO healthcare physician service identifier ';

-- table MPHPO_0000001_Ontorel-Core_0000002_string definition
CREATE TABLE "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"
(
  "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002" "MPHPO"."string_domain"  NOT NULL, 
  "MPHPO_0000001_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000001_Ontorel-Core_0000002_string" PRIMARY KEY ("MPHPO_0000001_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"."MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002" IS 'has textual value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"."MPHPO_0000001_uid" IS 'uid MPHPO pathological condition impact type on clinical visit ::Default primary key of MPHPO pathological condition impact type on clinical visit ';

-- table MPHPO_0000007_Ontorel-Core_0000002_string definition
CREATE TABLE "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"
(
  "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002" "MPHPO"."string_domain"  NOT NULL, 
  "MPHPO_0000007_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000007_Ontorel-Core_0000002_string" PRIMARY KEY ("MPHPO_0000007_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"."MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002" IS 'has textual value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"."MPHPO_0000007_uid" IS 'uid MPHPO hospitalization admission urgency level specification ::Default primary key of MPHPO hospitalization admission urgency level specification ';

-- table MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001 definition
CREATE TABLE "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"
(
  "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" "MPHPO"."Ontorel-Core_0000001_domain"  NOT NULL, 
  "MPHPO_0000004_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" PRIMARY KEY ("MPHPO_0000004_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" IS 'has temporal value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000004_uid" IS 'uid MPHPO HOSD ending temporal information ::Default primary key of MPHPO HOSD ending temporal information ';

-- table MPHPO_0000005_Ontorel-Core_0000002_string definition
CREATE TABLE "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string"
(
  "MPHPO_0000005_Ontorel-Core_0000002_string_Ontorel-Core_0000002" "MPHPO"."string_domain"  NOT NULL, 
  "MPHPO_0000005_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000005_Ontorel-Core_0000002_string" PRIMARY KEY ("MPHPO_0000005_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string"."MPHPO_0000005_Ontorel-Core_0000002_string_Ontorel-Core_0000002" IS 'has textual value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string"."MPHPO_0000005_uid" IS 'uid MPHPO living environment type ::Default primary key of MPHPO living environment type ';

-- table MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001 definition
CREATE TABLE "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"
(
  "MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" "MPHPO"."Ontorel-Core_0000001_domain"  NOT NULL, 
  "MPHPO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" PRIMARY KEY ("MPHPO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" IS 'has temporal value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000003_uid" IS 'uid MPHPO HOSD beginning temporal information::Default primary key of MPHPO HOSD beginning temporal information';

-- table MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001 definition
CREATE TABLE "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"
(
  "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" "MPHPO"."Ontorel-Core_0000001_domain"  NOT NULL, 
  "MPHPO_0000009_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001" PRIMARY KEY ("MPHPO_0000009_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel-Core_0000004" IS 'has temporal value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"."MPHPO_0000009_uid" IS 'uid MPHPO human birth date::Default primary key of MPHPO human birth date';

-- table MPHPO_0000002_Ontorel-Core_0000002_string definition
CREATE TABLE "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"
(
  "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002" "MPHPO"."string_domain"  NOT NULL, 
  "MPHPO_0000002_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000002_Ontorel-Core_0000002_string" PRIMARY KEY ("MPHPO_0000002_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"."MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002" IS 'has textual value::null';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"."MPHPO_0000002_uid" IS 'uid MPHPO pathological condition sub-group name ::Default primary key of MPHPO pathological condition sub-group name ';

-- table IOIO_0000014_IAO_0000219_NCBITaxon_9606 definition
CREATE TABLE "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"
(
  "IOIO_0000014_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "NCBITaxon_9606_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000014_IAO_0000219_NCBITaxon_9606" PRIMARY KEY ("IOIO_0000014_uid", "NCBITaxon_9606_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"."IOIO_0000014_uid" IS 'uid human identifier::Default primary key of human identifier';

COMMENT ON COLUMN "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"."NCBITaxon_9606_uid" IS 'uid Homo sapiens::Default primary key of Homo sapiens';

-- table HOSO_0000124_RO_0002180_HOSO_0000100 definition
CREATE TABLE "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"
(
  "HOSO_0000124_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000100_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000124_RO_0002180_HOSO_0000100" PRIMARY KEY ("HOSO_0000124_uid", "HOSO_0000100_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"."HOSO_0000124_uid" IS 'uid healthcare organization clinical visit pathological condition impact statement::Default primary key of healthcare organization clinical visit pathological condition impact statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"."HOSO_0000100_uid" IS 'uid healthcare organization service delivery identifier::Default primary key of healthcare organization service delivery identifier';

-- table HOSO_0000124_RO_0002180_HEPRO_0000017 definition
CREATE TABLE "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"
(
  "HOSO_0000124_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HEPRO_0000017_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000124_RO_0002180_HEPRO_0000017" PRIMARY KEY ("HOSO_0000124_uid", "HEPRO_0000017_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"."HOSO_0000124_uid" IS 'uid healthcare organization clinical visit pathological condition impact statement::Default primary key of healthcare organization clinical visit pathological condition impact statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"."HEPRO_0000017_uid" IS 'uid pathological condition sub-group name::Default primary key of pathological condition sub-group name';

-- table HOSO_0000124_RO_0002180_HOSO_0000126 definition
CREATE TABLE "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"
(
  "HOSO_0000124_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000126_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000124_RO_0002180_HOSO_0000126" PRIMARY KEY ("HOSO_0000124_uid", "HOSO_0000126_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"."HOSO_0000124_uid" IS 'uid healthcare organization clinical visit pathological condition impact statement::Default primary key of healthcare organization clinical visit pathological condition impact statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"."HOSO_0000126_uid" IS 'uid pathological condition impact type on clinical visit::Default primary key of pathological condition impact type on clinical visit';

-- table HOSO_0000138_IAO_0000219_HOSO_0000009 definition
CREATE TABLE "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"
(
  "HOSO_0000138_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000009_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000138_IAO_0000219_HOSO_0000009" PRIMARY KEY ("HOSO_0000138_uid", "HOSO_0000009_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"."HOSO_0000138_uid" IS 'uid healthcare provider identifier::Default primary key of healthcare provider identifier';

COMMENT ON COLUMN "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"."HOSO_0000009_uid" IS 'uid healthcare provider::Default primary key of healthcare provider';

-- table IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003 definition
CREATE TABLE "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"
(
  "IOIO_0000006_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" PRIMARY KEY ("IOIO_0000006_uid", "IOIO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"."IOIO_0000006_uid" IS 'uid human death temporal information::Default primary key of human death temporal information';

COMMENT ON COLUMN "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"."IOIO_0000003_uid" IS 'uid human death statement::Default primary key of human death statement';

-- table HOSO_0000079_RO_0002350_HOSO_0000008 definition
CREATE TABLE "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008"
(
  "HOSO_0000079_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000008_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000079_RO_0002350_HOSO_0000008" PRIMARY KEY ("HOSO_0000079_uid", "HOSO_0000008_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008"."HOSO_0000079_uid" IS 'uid healthcare physician service::Default primary key of healthcare physician service';

COMMENT ON COLUMN "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008"."HOSO_0000008_uid" IS 'uid healthcare organization::Default primary key of healthcare organization';

-- table MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056 definition
CREATE TABLE "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"
(
  "MPHPO_0000004_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000056_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" PRIMARY KEY ("MPHPO_0000004_uid", "HOSO_0000056_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"."MPHPO_0000004_uid" IS 'uid MPHPO HOSD ending temporal information ::Default primary key of MPHPO HOSD ending temporal information ';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"."HOSO_0000056_uid" IS 'uid healthcare organization service delivery ending statement::Default primary key of healthcare organization service delivery ending statement';

-- table HOSO_0000100_IAO_0000219_HOSO_0000011 definition
CREATE TABLE "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"
(
  "HOSO_0000100_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000011_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000100_IAO_0000219_HOSO_0000011" PRIMARY KEY ("HOSO_0000100_uid", "HOSO_0000011_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"."HOSO_0000100_uid" IS 'uid healthcare organization service delivery identifier::Default primary key of healthcare organization service delivery identifier';

COMMENT ON COLUMN "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"."HOSO_0000011_uid" IS 'uid healthcare organization service delivery::Default primary key of healthcare organization service delivery';

-- table HOSO_0000055_RO_0002180_HOSO_0000100 definition
CREATE TABLE "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"
(
  "HOSO_0000055_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000100_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000055_RO_0002180_HOSO_0000100" PRIMARY KEY ("HOSO_0000055_uid", "HOSO_0000100_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"."HOSO_0000055_uid" IS 'uid healthcare organization service delivery beginning statement::Default primary key of healthcare organization service delivery beginning statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"."HOSO_0000100_uid" IS 'uid healthcare organization service delivery identifier::Default primary key of healthcare organization service delivery identifier';

-- table IOIO_0000001_RO_0002180_IOIO_0000005 definition
CREATE TABLE "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"
(
  "IOIO_0000001_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000005_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000001_RO_0002180_IOIO_0000005" PRIMARY KEY ("IOIO_0000001_uid", "IOIO_0000005_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"."IOIO_0000001_uid" IS 'uid human birth statement::Default primary key of human birth statement';

COMMENT ON COLUMN "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"."IOIO_0000005_uid" IS 'uid human birth temporal information::Default primary key of human birth temporal information';

-- table IOIO_0000001_RO_0002180_IOIO_0000014 definition
CREATE TABLE "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"
(
  "IOIO_0000001_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000014_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000001_RO_0002180_IOIO_0000014" PRIMARY KEY ("IOIO_0000001_uid", "IOIO_0000014_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"."IOIO_0000001_uid" IS 'uid human birth statement::Default primary key of human birth statement';

COMMENT ON COLUMN "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"."IOIO_0000014_uid" IS 'uid human identifier::Default primary key of human identifier';

-- table HOSO_0000084_IAO_0000219_HOSO_0000079 definition
CREATE TABLE "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"
(
  "HOSO_0000084_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000079_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000084_IAO_0000219_HOSO_0000079" PRIMARY KEY ("HOSO_0000084_uid", "HOSO_0000079_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"."HOSO_0000084_uid" IS 'uid healthcare physician service identifier::Default primary key of healthcare physician service identifier';

COMMENT ON COLUMN "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"."HOSO_0000079_uid" IS 'uid healthcare physician service::Default primary key of healthcare physician service';

-- table HOSO_0000084_IAO_0000219_HOSO_0000008 definition
CREATE TABLE "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"
(
  "HOSO_0000084_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000008_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000084_IAO_0000219_HOSO_0000008" PRIMARY KEY ("HOSO_0000084_uid", "HOSO_0000008_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"."HOSO_0000084_uid" IS 'uid healthcare physician service identifier::Default primary key of healthcare physician service identifier';

COMMENT ON COLUMN "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"."HOSO_0000008_uid" IS 'uid healthcare organization::Default primary key of healthcare organization';

-- table IOIO_0000015_RO_0002180_IOIO_0000014 definition
CREATE TABLE "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"
(
  "IOIO_0000015_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000014_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000015_RO_0002180_IOIO_0000014" PRIMARY KEY ("IOIO_0000015_uid", "IOIO_0000014_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"."IOIO_0000015_uid" IS 'uid human biological sex statement::Default primary key of human biological sex statement';

COMMENT ON COLUMN "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"."IOIO_0000014_uid" IS 'uid human identifier::Default primary key of human identifier';

-- table IOIO_0000015_RO_0002180_IOIO_0000011 definition
CREATE TABLE "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"
(
  "IOIO_0000015_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000011_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000015_RO_0002180_IOIO_0000011" PRIMARY KEY ("IOIO_0000015_uid", "IOIO_0000011_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"."IOIO_0000015_uid" IS 'uid human biological sex statement::Default primary key of human biological sex statement';

COMMENT ON COLUMN "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"."IOIO_0000011_uid" IS 'uid human biological sex information content entity::Default primary key of human biological sex information content entity';

-- table IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001 definition
CREATE TABLE "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"
(
  "IOIO_0000005_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000001_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" PRIMARY KEY ("IOIO_0000005_uid", "IOIO_0000001_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"."IOIO_0000005_uid" IS 'uid human birth temporal information::Default primary key of human birth temporal information';

COMMENT ON COLUMN "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"."IOIO_0000001_uid" IS 'uid human birth statement::Default primary key of human birth statement';

-- table HOSO_0000080_RO_0002180_IOIO_0000023 definition
CREATE TABLE "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023"
(
  "HOSO_0000080_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000023_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000080_RO_0002180_IOIO_0000023" PRIMARY KEY ("HOSO_0000080_uid", "IOIO_0000023_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023"."HOSO_0000080_uid" IS 'uid living environment type prior to clinical visit statement::Default primary key of living environment type prior to clinical visit statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023"."IOIO_0000023_uid" IS 'uid living environment type::Default primary key of living environment type';

-- table HOSO_0000080_RO_0002180_HOSO_0000100 definition
CREATE TABLE "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100"
(
  "HOSO_0000080_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000100_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000080_RO_0002180_HOSO_0000100" PRIMARY KEY ("HOSO_0000080_uid", "HOSO_0000100_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100"."HOSO_0000080_uid" IS 'uid living environment type prior to clinical visit statement::Default primary key of living environment type prior to clinical visit statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100"."HOSO_0000100_uid" IS 'uid healthcare organization service delivery identifier::Default primary key of healthcare organization service delivery identifier';

-- table IOIO_0000003_RO_0002180_IOIO_0000006 definition
CREATE TABLE "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"
(
  "IOIO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000006_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000003_RO_0002180_IOIO_0000006" PRIMARY KEY ("IOIO_0000003_uid", "IOIO_0000006_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"."IOIO_0000003_uid" IS 'uid human death statement::Default primary key of human death statement';

COMMENT ON COLUMN "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"."IOIO_0000006_uid" IS 'uid human death temporal information::Default primary key of human death temporal information';

-- table IOIO_0000003_RO_0002180_IOIO_0000014 definition
CREATE TABLE "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"
(
  "IOIO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "IOIO_0000014_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_IOIO_0000003_RO_0002180_IOIO_0000014" PRIMARY KEY ("IOIO_0000003_uid", "IOIO_0000014_uid")
);

COMMENT ON COLUMN "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"."IOIO_0000003_uid" IS 'uid human death statement::Default primary key of human death statement';

COMMENT ON COLUMN "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"."IOIO_0000014_uid" IS 'uid human identifier::Default primary key of human identifier';

-- table HOSO_0000137_IAO_0000235_HOSO_0000003 definition
CREATE TABLE "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"
(
  "HOSO_0000137_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000137_IAO_0000235_HOSO_0000003" PRIMARY KEY ("HOSO_0000137_uid", "HOSO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"."HOSO_0000137_uid" IS 'uid human clinical visit specified patient::Default primary key of human clinical visit specified patient';

COMMENT ON COLUMN "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"."HOSO_0000003_uid" IS 'uid healthcare service organism specification::Default primary key of healthcare service organism specification';

-- table MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055 definition
CREATE TABLE "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"
(
  "MPHPO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000055_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" PRIMARY KEY ("MPHPO_0000003_uid", "HOSO_0000055_uid")
);

COMMENT ON COLUMN "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"."MPHPO_0000003_uid" IS 'uid MPHPO HOSD beginning temporal information::Default primary key of MPHPO HOSD beginning temporal information';

COMMENT ON COLUMN "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"."HOSO_0000055_uid" IS 'uid healthcare organization service delivery beginning statement::Default primary key of healthcare organization service delivery beginning statement';

-- table HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074 definition
CREATE TABLE "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"
(
  "HOSO_0000012_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000074_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" PRIMARY KEY ("HOSO_0000012_uid", "HOSO_0000074_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"."HOSO_0000012_uid" IS 'uid healthcare organization clinical visit::Default primary key of healthcare organization clinical visit';

COMMENT ON COLUMN "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"."HOSO_0000074_uid" IS 'uid clinical visit agreement specification::Default primary key of clinical visit agreement specification';

-- table HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003 definition
CREATE TABLE "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"
(
  "HOSO_0000012_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000003_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" PRIMARY KEY ("HOSO_0000012_uid", "HOSO_0000003_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"."HOSO_0000012_uid" IS 'uid healthcare organization clinical visit::Default primary key of healthcare organization clinical visit';

COMMENT ON COLUMN "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"."HOSO_0000003_uid" IS 'uid healthcare service organism specification::Default primary key of healthcare service organism specification';

-- table HOSO_0000012_RO_0002180_HOSO_0000012 definition
CREATE TABLE "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012"
(
  "HOSO_0000012_uid_domain" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000012_uid_range" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000012_RO_0002180_HOSO_0000012" PRIMARY KEY ("HOSO_0000012_uid_domain", "HOSO_0000012_uid_range")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012"."HOSO_0000012_uid_domain" IS 'uid healthcare organization clinical visit_domain::Default primary key of healthcare organization clinical visit';

COMMENT ON COLUMN "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012"."HOSO_0000012_uid_range" IS 'uid healthcare organization clinical visit_range::Default primary key of healthcare organization clinical visit';

-- table HOSO_0000056_RO_0002180_HOSO_0000100 definition
CREATE TABLE "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"
(
  "HOSO_0000056_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000100_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000056_RO_0002180_HOSO_0000100" PRIMARY KEY ("HOSO_0000056_uid", "HOSO_0000100_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"."HOSO_0000056_uid" IS 'uid healthcare organization service delivery ending statement::Default primary key of healthcare organization service delivery ending statement';

COMMENT ON COLUMN "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"."HOSO_0000100_uid" IS 'uid healthcare organization service delivery identifier::Default primary key of healthcare organization service delivery identifier';

-- table HOSO_0000078_BFO_0000051_HOSO_0000138 definition
CREATE TABLE "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"
(
  "HOSO_0000078_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000138_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000078_BFO_0000051_HOSO_0000138" PRIMARY KEY ("HOSO_0000078_uid", "HOSO_0000138_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"."HOSO_0000078_uid" IS 'uid hospitalization admitting physician specification::Default primary key of hospitalization admitting physician specification';

COMMENT ON COLUMN "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"."HOSO_0000138_uid" IS 'uid healthcare provider identifier::Default primary key of healthcare provider identifier';

-- table HOSO_0000009_RO_0002350_HOSO_0000008 definition
CREATE TABLE "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"
(
  "HOSO_0000009_uid" "MPHPO"."uid_domain"  NOT NULL, 
  "HOSO_0000008_uid" "MPHPO"."uid_domain"  NOT NULL,
  CONSTRAINT "key_HOSO_0000009_RO_0002350_HOSO_0000008" PRIMARY KEY ("HOSO_0000009_uid", "HOSO_0000008_uid")
);

COMMENT ON COLUMN "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"."HOSO_0000009_uid" IS 'uid healthcare provider::Default primary key of healthcare provider';

COMMENT ON COLUMN "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"."HOSO_0000008_uid" IS 'uid healthcare organization::Default primary key of healthcare organization';

-- Foreign key definition : HOSO_0000085 -> HOSO_0000031
ALTER TABLE "MPHPO"."HOSO_0000085"
  ADD CONSTRAINT "fk0_HOSO_0000085" FOREIGN KEY ("HOSO_0000085_uid")
    REFERENCES "MPHPO"."HOSO_0000031" ("HOSO_0000031_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000085" ON "MPHPO"."HOSO_0000085" IS 'hospitalization starting with ICU stay -> hospitalization';

-- Foreign key definition : MPHPO_0000006 -> HOSO_0000084
ALTER TABLE "MPHPO"."MPHPO_0000006"
  ADD CONSTRAINT "fk0_MPHPO_0000006" FOREIGN KEY ("MPHPO_0000006_uid")
    REFERENCES "MPHPO"."HOSO_0000084" ("HOSO_0000084_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000006" ON "MPHPO"."MPHPO_0000006" IS 'MPHPO healthcare physician service identifier  -> healthcare physician service identifier';

-- Foreign key definition : HOSO_0000032 -> HOSO_0000012
ALTER TABLE "MPHPO"."HOSO_0000032"
  ADD CONSTRAINT "fk0_HOSO_0000032" FOREIGN KEY ("HOSO_0000032_uid")
    REFERENCES "MPHPO"."HOSO_0000012" ("HOSO_0000012_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000032" ON "MPHPO"."HOSO_0000032" IS 'emergency department visit -> healthcare organization clinical visit';

-- Foreign key definition : MPHPO_0000007 -> HOSO_0000074
ALTER TABLE "MPHPO"."MPHPO_0000007"
  ADD CONSTRAINT "fk0_MPHPO_0000007" FOREIGN KEY ("MPHPO_0000007_uid")
    REFERENCES "MPHPO"."HOSO_0000074" ("HOSO_0000074_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000007" ON "MPHPO"."MPHPO_0000007" IS 'MPHPO hospitalization admission urgency level specification  -> clinical visit agreement specification';

-- Foreign key definition : HOSO_0000031 -> HOSO_0000012
ALTER TABLE "MPHPO"."HOSO_0000031"
  ADD CONSTRAINT "fk0_HOSO_0000031" FOREIGN KEY ("HOSO_0000031_uid")
    REFERENCES "MPHPO"."HOSO_0000012" ("HOSO_0000012_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000031" ON "MPHPO"."HOSO_0000031" IS 'hospitalization -> healthcare organization clinical visit';

-- Foreign key definition : HOSO_0000012 -> HOSO_0000011
ALTER TABLE "MPHPO"."HOSO_0000012"
  ADD CONSTRAINT "fk0_HOSO_0000012" FOREIGN KEY ("HOSO_0000012_uid")
    REFERENCES "MPHPO"."HOSO_0000011" ("HOSO_0000011_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000012" ON "MPHPO"."HOSO_0000012" IS 'healthcare organization clinical visit -> healthcare organization service delivery';

-- Foreign key definition : MPHPO_0000002 -> HEPRO_0000017
ALTER TABLE "MPHPO"."MPHPO_0000002"
  ADD CONSTRAINT "fk0_MPHPO_0000002" FOREIGN KEY ("MPHPO_0000002_uid")
    REFERENCES "MPHPO"."HEPRO_0000017" ("HEPRO_0000017_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000002" ON "MPHPO"."MPHPO_0000002" IS 'MPHPO pathological condition sub-group name  -> pathological condition sub-group name';

-- Foreign key definition : MPHPO_0000001 -> HOSO_0000126
ALTER TABLE "MPHPO"."MPHPO_0000001"
  ADD CONSTRAINT "fk0_MPHPO_0000001" FOREIGN KEY ("MPHPO_0000001_uid")
    REFERENCES "MPHPO"."HOSO_0000126" ("HOSO_0000126_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000001" ON "MPHPO"."MPHPO_0000001" IS 'MPHPO pathological condition impact type on clinical visit  -> pathological condition impact type on clinical visit';

-- Foreign key definition : HOSO_0000078 -> HOSO_0000074
ALTER TABLE "MPHPO"."HOSO_0000078"
  ADD CONSTRAINT "fk0_HOSO_0000078" FOREIGN KEY ("HOSO_0000078_uid")
    REFERENCES "MPHPO"."HOSO_0000074" ("HOSO_0000074_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000078" ON "MPHPO"."HOSO_0000078" IS 'hospitalization admitting physician specification -> clinical visit agreement specification';

-- Foreign key definition : MPHPO_0000005 -> IOIO_0000023
ALTER TABLE "MPHPO"."MPHPO_0000005"
  ADD CONSTRAINT "fk0_MPHPO_0000005" FOREIGN KEY ("MPHPO_0000005_uid")
    REFERENCES "MPHPO"."IOIO_0000023" ("IOIO_0000023_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000005" ON "MPHPO"."MPHPO_0000005" IS 'MPHPO living environment type  -> living environment type';

-- Foreign key definition : HOSO_0000079 -> HOSO_0000008
ALTER TABLE "MPHPO"."HOSO_0000079"
  ADD CONSTRAINT "fk0_HOSO_0000079" FOREIGN KEY ("HOSO_0000079_uid")
    REFERENCES "MPHPO"."HOSO_0000008" ("HOSO_0000008_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000079" ON "MPHPO"."HOSO_0000079" IS 'healthcare physician service -> healthcare organization';

-- Foreign key definition : HOSO_0000137 -> NCBITaxon_9606
ALTER TABLE "MPHPO"."HOSO_0000137"
  ADD CONSTRAINT "fk0_HOSO_0000137" FOREIGN KEY ("HOSO_0000137_uid")
    REFERENCES "MPHPO"."NCBITaxon_9606" ("NCBITaxon_9606_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000137" ON "MPHPO"."HOSO_0000137" IS 'human clinical visit specified patient -> Homo sapiens';

-- Foreign key definition : MPHPO_0000009 -> IOIO_0000005
ALTER TABLE "MPHPO"."MPHPO_0000009"
  ADD CONSTRAINT "fk0_MPHPO_0000009" FOREIGN KEY ("MPHPO_0000009_uid")
    REFERENCES "MPHPO"."IOIO_0000005" ("IOIO_0000005_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000009" ON "MPHPO"."MPHPO_0000009" IS 'MPHPO human birth date -> human birth temporal information';

-- Foreign key definition : HOSO_0000072 -> HOSO_0000031
ALTER TABLE "MPHPO"."HOSO_0000072"
  ADD CONSTRAINT "fk0_HOSO_0000072" FOREIGN KEY ("HOSO_0000072_uid")
    REFERENCES "MPHPO"."HOSO_0000031" ("HOSO_0000031_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000072" ON "MPHPO"."HOSO_0000072" IS 'ED by ambulance initiated hospitalization -> hospitalization';

-- Foreign key definition : MPHPO_0000010 -> IOIO_0000011
ALTER TABLE "MPHPO"."MPHPO_0000010"
  ADD CONSTRAINT "fk0_MPHPO_0000010" FOREIGN KEY ("MPHPO_0000010_uid")
    REFERENCES "MPHPO"."IOIO_0000011" ("IOIO_0000011_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000010" ON "MPHPO"."MPHPO_0000010" IS 'MPHPO human biological sex information content entity -> human biological sex information content entity';

-- Foreign key definition : MPHPO_0000011 -> IOIO_0000006
ALTER TABLE "MPHPO"."MPHPO_0000011"
  ADD CONSTRAINT "fk0_MPHPO_0000011" FOREIGN KEY ("MPHPO_0000011_uid")
    REFERENCES "MPHPO"."IOIO_0000006" ("IOIO_0000006_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000011" ON "MPHPO"."MPHPO_0000011" IS 'MPHPO human death date -> human death temporal information';

-- Foreign key definition : MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001 -> MPHPO_0000011
ALTER TABLE "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"
  ADD CONSTRAINT "fk0_MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001" FOREIGN KEY ("MPHPO_0000011_uid")
    REFERENCES "MPHPO"."MPHPO_0000011" ("MPHPO_0000011_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001" ON "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO human death date has temporal value ISO8601DateTime -> MPHPO human death date';

-- Foreign key definition : MPHPO_0000010_Ontorel-Core_0000002_string -> MPHPO_0000010
ALTER TABLE "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"
  ADD CONSTRAINT "fk0_MPHPO_0000010_Ontorel-Core_0000002_string" FOREIGN KEY ("MPHPO_0000010_uid")
    REFERENCES "MPHPO"."MPHPO_0000010" ("MPHPO_0000010_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000010_Ontorel-Core_0000002_string" ON "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string" IS 'MPHPO human biological sex information content entity has textual value string -> MPHPO human biological sex information content entity';

-- Foreign key definition : MPHPO_0000006_Ontorel-Core_0000002_string -> MPHPO_0000006
ALTER TABLE "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"
  ADD CONSTRAINT "fk0_MPHPO_0000006_Ontorel-Core_0000002_string" FOREIGN KEY ("MPHPO_0000006_uid")
    REFERENCES "MPHPO"."MPHPO_0000006" ("MPHPO_0000006_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000006_Ontorel-Core_0000002_string" ON "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string" IS 'MPHPO healthcare physician service identifier  has textual value string -> MPHPO healthcare physician service identifier ';

-- Foreign key definition : MPHPO_0000001_Ontorel-Core_0000002_string -> MPHPO_0000001
ALTER TABLE "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"
  ADD CONSTRAINT "fk0_MPHPO_0000001_Ontorel-Core_0000002_string" FOREIGN KEY ("MPHPO_0000001_uid")
    REFERENCES "MPHPO"."MPHPO_0000001" ("MPHPO_0000001_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000001_Ontorel-Core_0000002_string" ON "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string" IS 'MPHPO pathological condition impact type on clinical visit  has textual value string -> MPHPO pathological condition impact type on clinical visit ';

-- Foreign key definition : MPHPO_0000007_Ontorel-Core_0000002_string -> MPHPO_0000007
ALTER TABLE "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"
  ADD CONSTRAINT "fk0_MPHPO_0000007_Ontorel-Core_0000002_string" FOREIGN KEY ("MPHPO_0000007_uid")
    REFERENCES "MPHPO"."MPHPO_0000007" ("MPHPO_0000007_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000007_Ontorel-Core_0000002_string" ON "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string" IS 'MPHPO hospitalization admission urgency level specification  has textual value string -> MPHPO hospitalization admission urgency level specification ';

-- Foreign key definition : MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001 -> MPHPO_0000004
ALTER TABLE "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"
  ADD CONSTRAINT "fk0_MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" FOREIGN KEY ("MPHPO_0000004_uid")
    REFERENCES "MPHPO"."MPHPO_0000004" ("MPHPO_0000004_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" ON "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO HOSD ending temporal information  has temporal value ISO8601DateTime -> MPHPO HOSD ending temporal information ';

-- Foreign key definition : MPHPO_0000005_Ontorel-Core_0000002_string -> MPHPO_0000005
ALTER TABLE "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string"
  ADD CONSTRAINT "fk0_MPHPO_0000005_Ontorel-Core_0000002_string" FOREIGN KEY ("MPHPO_0000005_uid")
    REFERENCES "MPHPO"."MPHPO_0000005" ("MPHPO_0000005_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000005_Ontorel-Core_0000002_string" ON "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string" IS 'MPHPO living environment type  has textual value string -> MPHPO living environment type ';

-- Foreign key definition : MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001 -> MPHPO_0000003
ALTER TABLE "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"
  ADD CONSTRAINT "fk0_MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" FOREIGN KEY ("MPHPO_0000003_uid")
    REFERENCES "MPHPO"."MPHPO_0000003" ("MPHPO_0000003_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" ON "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO HOSD beginning temporal information has temporal value ISO8601DateTime -> MPHPO HOSD beginning temporal information';

-- Foreign key definition : MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001 -> MPHPO_0000009
ALTER TABLE "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"
  ADD CONSTRAINT "fk0_MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001" FOREIGN KEY ("MPHPO_0000009_uid")
    REFERENCES "MPHPO"."MPHPO_0000009" ("MPHPO_0000009_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001" ON "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001" IS 'MPHPO human birth date has temporal value ISO8601DateTime -> MPHPO human birth date';

-- Foreign key definition : MPHPO_0000002_Ontorel-Core_0000002_string -> MPHPO_0000002
ALTER TABLE "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"
  ADD CONSTRAINT "fk0_MPHPO_0000002_Ontorel-Core_0000002_string" FOREIGN KEY ("MPHPO_0000002_uid")
    REFERENCES "MPHPO"."MPHPO_0000002" ("MPHPO_0000002_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000002_Ontorel-Core_0000002_string" ON "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string" IS 'MPHPO pathological condition sub-group name  has textual value string -> MPHPO pathological condition sub-group name ';

-- Foreign key definition : IOIO_0000014_IAO_0000219_NCBITaxon_9606 -> IOIO_0000014
ALTER TABLE "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"
  ADD CONSTRAINT "fk0_IOIO_0000014_IAO_0000219_NCBITaxon_9606" FOREIGN KEY ("IOIO_0000014_uid")
    REFERENCES "MPHPO"."IOIO_0000014" ("IOIO_0000014_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000014_IAO_0000219_NCBITaxon_9606" ON "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606" IS 'human identifier denotes Homo sapiens -> human identifier';

-- Foreign key definition : IOIO_0000014_IAO_0000219_NCBITaxon_9606 -> NCBITaxon_9606
ALTER TABLE "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"
  ADD CONSTRAINT "fk1_IOIO_0000014_IAO_0000219_NCBITaxon_9606" FOREIGN KEY ("NCBITaxon_9606_uid")
    REFERENCES "MPHPO"."NCBITaxon_9606" ("NCBITaxon_9606_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000014_IAO_0000219_NCBITaxon_9606" ON "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606" IS 'human identifier denotes Homo sapiens -> Homo sapiens';

-- Foreign key definition : HOSO_0000124_RO_0002180_HOSO_0000100 -> HOSO_0000124
ALTER TABLE "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk0_HOSO_0000124_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000124_uid")
    REFERENCES "MPHPO"."HOSO_0000124" ("HOSO_0000124_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000124_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100" IS 'healthcare organization clinical visit pathological condition impact statement has component healthcare organization service delivery identifier -> healthcare organization clinical visit pathological condition impact statement';

-- Foreign key definition : HOSO_0000124_RO_0002180_HOSO_0000100 -> HOSO_0000100
ALTER TABLE "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk1_HOSO_0000124_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000100_uid")
    REFERENCES "MPHPO"."HOSO_0000100" ("HOSO_0000100_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000124_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100" IS 'healthcare organization clinical visit pathological condition impact statement has component healthcare organization service delivery identifier -> healthcare organization service delivery identifier';

-- Foreign key definition : HOSO_0000124_RO_0002180_HEPRO_0000017 -> HOSO_0000124
ALTER TABLE "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"
  ADD CONSTRAINT "fk0_HOSO_0000124_RO_0002180_HEPRO_0000017" FOREIGN KEY ("HOSO_0000124_uid")
    REFERENCES "MPHPO"."HOSO_0000124" ("HOSO_0000124_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000124_RO_0002180_HEPRO_0000017" ON "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017" IS 'healthcare organization clinical visit pathological condition impact statement has component pathological condition sub-group name -> healthcare organization clinical visit pathological condition impact statement';

-- Foreign key definition : HOSO_0000124_RO_0002180_HEPRO_0000017 -> HEPRO_0000017
ALTER TABLE "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"
  ADD CONSTRAINT "fk1_HOSO_0000124_RO_0002180_HEPRO_0000017" FOREIGN KEY ("HEPRO_0000017_uid")
    REFERENCES "MPHPO"."HEPRO_0000017" ("HEPRO_0000017_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000124_RO_0002180_HEPRO_0000017" ON "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017" IS 'healthcare organization clinical visit pathological condition impact statement has component pathological condition sub-group name -> pathological condition sub-group name';

-- Foreign key definition : HOSO_0000124_RO_0002180_HOSO_0000126 -> HOSO_0000124
ALTER TABLE "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"
  ADD CONSTRAINT "fk0_HOSO_0000124_RO_0002180_HOSO_0000126" FOREIGN KEY ("HOSO_0000124_uid")
    REFERENCES "MPHPO"."HOSO_0000124" ("HOSO_0000124_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000124_RO_0002180_HOSO_0000126" ON "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126" IS 'healthcare organization clinical visit pathological condition impact statement has component pathological condition impact type on clinical visit -> healthcare organization clinical visit pathological condition impact statement';

-- Foreign key definition : HOSO_0000124_RO_0002180_HOSO_0000126 -> HOSO_0000126
ALTER TABLE "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"
  ADD CONSTRAINT "fk1_HOSO_0000124_RO_0002180_HOSO_0000126" FOREIGN KEY ("HOSO_0000126_uid")
    REFERENCES "MPHPO"."HOSO_0000126" ("HOSO_0000126_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000124_RO_0002180_HOSO_0000126" ON "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126" IS 'healthcare organization clinical visit pathological condition impact statement has component pathological condition impact type on clinical visit -> pathological condition impact type on clinical visit';

-- Foreign key definition : HOSO_0000138_IAO_0000219_HOSO_0000009 -> HOSO_0000138
ALTER TABLE "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"
  ADD CONSTRAINT "fk0_HOSO_0000138_IAO_0000219_HOSO_0000009" FOREIGN KEY ("HOSO_0000138_uid")
    REFERENCES "MPHPO"."HOSO_0000138" ("HOSO_0000138_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000138_IAO_0000219_HOSO_0000009" ON "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009" IS 'healthcare provider identifier denotes healthcare provider -> healthcare provider identifier';

-- Foreign key definition : HOSO_0000138_IAO_0000219_HOSO_0000009 -> HOSO_0000009
ALTER TABLE "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"
  ADD CONSTRAINT "fk1_HOSO_0000138_IAO_0000219_HOSO_0000009" FOREIGN KEY ("HOSO_0000009_uid")
    REFERENCES "MPHPO"."HOSO_0000009" ("HOSO_0000009_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000138_IAO_0000219_HOSO_0000009" ON "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009" IS 'healthcare provider identifier denotes healthcare provider -> healthcare provider';

-- Foreign key definition : IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003 -> IOIO_0000006
ALTER TABLE "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"
  ADD CONSTRAINT "fk0_IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" FOREIGN KEY ("IOIO_0000006_uid")
    REFERENCES "MPHPO"."IOIO_0000006" ("IOIO_0000006_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" ON "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" IS 'human death temporal information component of human death statement -> human death temporal information';

-- Foreign key definition : IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003 -> IOIO_0000003
ALTER TABLE "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"
  ADD CONSTRAINT "fk1_IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" FOREIGN KEY ("IOIO_0000003_uid")
    REFERENCES "MPHPO"."IOIO_0000003" ("IOIO_0000003_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" ON "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003" IS 'human death temporal information component of human death statement -> human death statement';

-- Foreign key definition : HOSO_0000079_RO_0002350_HOSO_0000008 -> HOSO_0000079
ALTER TABLE "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008"
  ADD CONSTRAINT "fk0_HOSO_0000079_RO_0002350_HOSO_0000008" FOREIGN KEY ("HOSO_0000079_uid")
    REFERENCES "MPHPO"."HOSO_0000079" ("HOSO_0000079_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000079_RO_0002350_HOSO_0000008" ON "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008" IS 'healthcare physician service member of healthcare organization -> healthcare physician service';

-- Foreign key definition : HOSO_0000079_RO_0002350_HOSO_0000008 -> HOSO_0000008
ALTER TABLE "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008"
  ADD CONSTRAINT "fk1_HOSO_0000079_RO_0002350_HOSO_0000008" FOREIGN KEY ("HOSO_0000008_uid")
    REFERENCES "MPHPO"."HOSO_0000008" ("HOSO_0000008_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000079_RO_0002350_HOSO_0000008" ON "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008" IS 'healthcare physician service member of healthcare organization -> healthcare organization';

-- Foreign key definition : MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056 -> MPHPO_0000004
ALTER TABLE "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"
  ADD CONSTRAINT "fk0_MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" FOREIGN KEY ("MPHPO_0000004_uid")
    REFERENCES "MPHPO"."MPHPO_0000004" ("MPHPO_0000004_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" ON "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" IS 'MPHPO HOSD ending temporal information  component of healthcare organization service delivery ending statement -> MPHPO HOSD ending temporal information ';

-- Foreign key definition : MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056 -> HOSO_0000056
ALTER TABLE "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"
  ADD CONSTRAINT "fk1_MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" FOREIGN KEY ("HOSO_0000056_uid")
    REFERENCES "MPHPO"."HOSO_0000056" ("HOSO_0000056_uid");

COMMENT ON CONSTRAINT "fk1_MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" ON "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056" IS 'MPHPO HOSD ending temporal information  component of healthcare organization service delivery ending statement -> healthcare organization service delivery ending statement';

-- Foreign key definition : HOSO_0000100_IAO_0000219_HOSO_0000011 -> HOSO_0000100
ALTER TABLE "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"
  ADD CONSTRAINT "fk0_HOSO_0000100_IAO_0000219_HOSO_0000011" FOREIGN KEY ("HOSO_0000100_uid")
    REFERENCES "MPHPO"."HOSO_0000100" ("HOSO_0000100_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000100_IAO_0000219_HOSO_0000011" ON "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011" IS 'healthcare organization service delivery identifier denotes healthcare organization service delivery -> healthcare organization service delivery identifier';

-- Foreign key definition : HOSO_0000100_IAO_0000219_HOSO_0000011 -> HOSO_0000011
ALTER TABLE "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"
  ADD CONSTRAINT "fk1_HOSO_0000100_IAO_0000219_HOSO_0000011" FOREIGN KEY ("HOSO_0000011_uid")
    REFERENCES "MPHPO"."HOSO_0000011" ("HOSO_0000011_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000100_IAO_0000219_HOSO_0000011" ON "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011" IS 'healthcare organization service delivery identifier denotes healthcare organization service delivery -> healthcare organization service delivery';

-- Foreign key definition : HOSO_0000055_RO_0002180_HOSO_0000100 -> HOSO_0000055
ALTER TABLE "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk0_HOSO_0000055_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000055_uid")
    REFERENCES "MPHPO"."HOSO_0000055" ("HOSO_0000055_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000055_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100" IS 'healthcare organization service delivery beginning statement has component healthcare organization service delivery identifier -> healthcare organization service delivery beginning statement';

-- Foreign key definition : HOSO_0000055_RO_0002180_HOSO_0000100 -> HOSO_0000100
ALTER TABLE "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk1_HOSO_0000055_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000100_uid")
    REFERENCES "MPHPO"."HOSO_0000100" ("HOSO_0000100_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000055_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100" IS 'healthcare organization service delivery beginning statement has component healthcare organization service delivery identifier -> healthcare organization service delivery identifier';

-- Foreign key definition : IOIO_0000001_RO_0002180_IOIO_0000005 -> IOIO_0000001
ALTER TABLE "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"
  ADD CONSTRAINT "fk0_IOIO_0000001_RO_0002180_IOIO_0000005" FOREIGN KEY ("IOIO_0000001_uid")
    REFERENCES "MPHPO"."IOIO_0000001" ("IOIO_0000001_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000001_RO_0002180_IOIO_0000005" ON "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005" IS 'human birth statement has component human birth temporal information -> human birth statement';

-- Foreign key definition : IOIO_0000001_RO_0002180_IOIO_0000005 -> IOIO_0000005
ALTER TABLE "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"
  ADD CONSTRAINT "fk1_IOIO_0000001_RO_0002180_IOIO_0000005" FOREIGN KEY ("IOIO_0000005_uid")
    REFERENCES "MPHPO"."IOIO_0000005" ("IOIO_0000005_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000001_RO_0002180_IOIO_0000005" ON "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005" IS 'human birth statement has component human birth temporal information -> human birth temporal information';

-- Foreign key definition : IOIO_0000001_RO_0002180_IOIO_0000014 -> IOIO_0000001
ALTER TABLE "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"
  ADD CONSTRAINT "fk0_IOIO_0000001_RO_0002180_IOIO_0000014" FOREIGN KEY ("IOIO_0000001_uid")
    REFERENCES "MPHPO"."IOIO_0000001" ("IOIO_0000001_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000001_RO_0002180_IOIO_0000014" ON "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014" IS 'human birth statement has component human identifier -> human birth statement';

-- Foreign key definition : IOIO_0000001_RO_0002180_IOIO_0000014 -> IOIO_0000014
ALTER TABLE "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"
  ADD CONSTRAINT "fk1_IOIO_0000001_RO_0002180_IOIO_0000014" FOREIGN KEY ("IOIO_0000014_uid")
    REFERENCES "MPHPO"."IOIO_0000014" ("IOIO_0000014_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000001_RO_0002180_IOIO_0000014" ON "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014" IS 'human birth statement has component human identifier -> human identifier';

-- Foreign key definition : HOSO_0000084_IAO_0000219_HOSO_0000079 -> HOSO_0000084
ALTER TABLE "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"
  ADD CONSTRAINT "fk0_HOSO_0000084_IAO_0000219_HOSO_0000079" FOREIGN KEY ("HOSO_0000084_uid")
    REFERENCES "MPHPO"."HOSO_0000084" ("HOSO_0000084_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000084_IAO_0000219_HOSO_0000079" ON "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079" IS 'healthcare physician service identifier denotes healthcare physician service -> healthcare physician service identifier';

-- Foreign key definition : HOSO_0000084_IAO_0000219_HOSO_0000079 -> HOSO_0000079
ALTER TABLE "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"
  ADD CONSTRAINT "fk1_HOSO_0000084_IAO_0000219_HOSO_0000079" FOREIGN KEY ("HOSO_0000079_uid")
    REFERENCES "MPHPO"."HOSO_0000079" ("HOSO_0000079_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000084_IAO_0000219_HOSO_0000079" ON "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079" IS 'healthcare physician service identifier denotes healthcare physician service -> healthcare physician service';

-- Foreign key definition : HOSO_0000084_IAO_0000219_HOSO_0000008 -> HOSO_0000084
ALTER TABLE "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"
  ADD CONSTRAINT "fk0_HOSO_0000084_IAO_0000219_HOSO_0000008" FOREIGN KEY ("HOSO_0000084_uid")
    REFERENCES "MPHPO"."HOSO_0000084" ("HOSO_0000084_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000084_IAO_0000219_HOSO_0000008" ON "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008" IS 'healthcare physician service identifier denotes healthcare organization -> healthcare physician service identifier';

-- Foreign key definition : HOSO_0000084_IAO_0000219_HOSO_0000008 -> HOSO_0000008
ALTER TABLE "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"
  ADD CONSTRAINT "fk1_HOSO_0000084_IAO_0000219_HOSO_0000008" FOREIGN KEY ("HOSO_0000008_uid")
    REFERENCES "MPHPO"."HOSO_0000008" ("HOSO_0000008_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000084_IAO_0000219_HOSO_0000008" ON "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008" IS 'healthcare physician service identifier denotes healthcare organization -> healthcare organization';

-- Foreign key definition : IOIO_0000015_RO_0002180_IOIO_0000014 -> IOIO_0000015
ALTER TABLE "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"
  ADD CONSTRAINT "fk0_IOIO_0000015_RO_0002180_IOIO_0000014" FOREIGN KEY ("IOIO_0000015_uid")
    REFERENCES "MPHPO"."IOIO_0000015" ("IOIO_0000015_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000015_RO_0002180_IOIO_0000014" ON "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014" IS 'human biological sex statement has component human identifier -> human biological sex statement';

-- Foreign key definition : IOIO_0000015_RO_0002180_IOIO_0000014 -> IOIO_0000014
ALTER TABLE "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"
  ADD CONSTRAINT "fk1_IOIO_0000015_RO_0002180_IOIO_0000014" FOREIGN KEY ("IOIO_0000014_uid")
    REFERENCES "MPHPO"."IOIO_0000014" ("IOIO_0000014_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000015_RO_0002180_IOIO_0000014" ON "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014" IS 'human biological sex statement has component human identifier -> human identifier';

-- Foreign key definition : IOIO_0000015_RO_0002180_IOIO_0000011 -> IOIO_0000015
ALTER TABLE "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"
  ADD CONSTRAINT "fk0_IOIO_0000015_RO_0002180_IOIO_0000011" FOREIGN KEY ("IOIO_0000015_uid")
    REFERENCES "MPHPO"."IOIO_0000015" ("IOIO_0000015_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000015_RO_0002180_IOIO_0000011" ON "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011" IS 'human biological sex statement has component human biological sex information content entity -> human biological sex statement';

-- Foreign key definition : IOIO_0000015_RO_0002180_IOIO_0000011 -> IOIO_0000011
ALTER TABLE "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"
  ADD CONSTRAINT "fk1_IOIO_0000015_RO_0002180_IOIO_0000011" FOREIGN KEY ("IOIO_0000011_uid")
    REFERENCES "MPHPO"."IOIO_0000011" ("IOIO_0000011_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000015_RO_0002180_IOIO_0000011" ON "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011" IS 'human biological sex statement has component human biological sex information content entity -> human biological sex information content entity';

-- Foreign key definition : IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001 -> IOIO_0000005
ALTER TABLE "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"
  ADD CONSTRAINT "fk0_IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" FOREIGN KEY ("IOIO_0000005_uid")
    REFERENCES "MPHPO"."IOIO_0000005" ("IOIO_0000005_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" ON "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" IS 'human birth temporal information component of human birth statement -> human birth temporal information';

-- Foreign key definition : IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001 -> IOIO_0000001
ALTER TABLE "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"
  ADD CONSTRAINT "fk1_IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" FOREIGN KEY ("IOIO_0000001_uid")
    REFERENCES "MPHPO"."IOIO_0000001" ("IOIO_0000001_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" ON "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001" IS 'human birth temporal information component of human birth statement -> human birth statement';

-- Foreign key definition : HOSO_0000080_RO_0002180_IOIO_0000023 -> HOSO_0000080
ALTER TABLE "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023"
  ADD CONSTRAINT "fk0_HOSO_0000080_RO_0002180_IOIO_0000023" FOREIGN KEY ("HOSO_0000080_uid")
    REFERENCES "MPHPO"."HOSO_0000080" ("HOSO_0000080_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000080_RO_0002180_IOIO_0000023" ON "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023" IS 'living environment type prior to clinical visit statement has component living environment type -> living environment type prior to clinical visit statement';

-- Foreign key definition : HOSO_0000080_RO_0002180_IOIO_0000023 -> IOIO_0000023
ALTER TABLE "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023"
  ADD CONSTRAINT "fk1_HOSO_0000080_RO_0002180_IOIO_0000023" FOREIGN KEY ("IOIO_0000023_uid")
    REFERENCES "MPHPO"."IOIO_0000023" ("IOIO_0000023_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000080_RO_0002180_IOIO_0000023" ON "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023" IS 'living environment type prior to clinical visit statement has component living environment type -> living environment type';

-- Foreign key definition : HOSO_0000080_RO_0002180_HOSO_0000100 -> HOSO_0000080
ALTER TABLE "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk0_HOSO_0000080_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000080_uid")
    REFERENCES "MPHPO"."HOSO_0000080" ("HOSO_0000080_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000080_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100" IS 'living environment type prior to clinical visit statement has component healthcare organization service delivery identifier -> living environment type prior to clinical visit statement';

-- Foreign key definition : HOSO_0000080_RO_0002180_HOSO_0000100 -> HOSO_0000100
ALTER TABLE "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk1_HOSO_0000080_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000100_uid")
    REFERENCES "MPHPO"."HOSO_0000100" ("HOSO_0000100_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000080_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100" IS 'living environment type prior to clinical visit statement has component healthcare organization service delivery identifier -> healthcare organization service delivery identifier';

-- Foreign key definition : IOIO_0000003_RO_0002180_IOIO_0000006 -> IOIO_0000003
ALTER TABLE "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"
  ADD CONSTRAINT "fk0_IOIO_0000003_RO_0002180_IOIO_0000006" FOREIGN KEY ("IOIO_0000003_uid")
    REFERENCES "MPHPO"."IOIO_0000003" ("IOIO_0000003_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000003_RO_0002180_IOIO_0000006" ON "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006" IS 'human death statement has component human death temporal information -> human death statement';

-- Foreign key definition : IOIO_0000003_RO_0002180_IOIO_0000006 -> IOIO_0000006
ALTER TABLE "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"
  ADD CONSTRAINT "fk1_IOIO_0000003_RO_0002180_IOIO_0000006" FOREIGN KEY ("IOIO_0000006_uid")
    REFERENCES "MPHPO"."IOIO_0000006" ("IOIO_0000006_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000003_RO_0002180_IOIO_0000006" ON "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006" IS 'human death statement has component human death temporal information -> human death temporal information';

-- Foreign key definition : IOIO_0000003_RO_0002180_IOIO_0000014 -> IOIO_0000003
ALTER TABLE "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"
  ADD CONSTRAINT "fk0_IOIO_0000003_RO_0002180_IOIO_0000014" FOREIGN KEY ("IOIO_0000003_uid")
    REFERENCES "MPHPO"."IOIO_0000003" ("IOIO_0000003_uid");

COMMENT ON CONSTRAINT "fk0_IOIO_0000003_RO_0002180_IOIO_0000014" ON "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014" IS 'human death statement has component human identifier -> human death statement';

-- Foreign key definition : IOIO_0000003_RO_0002180_IOIO_0000014 -> IOIO_0000014
ALTER TABLE "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"
  ADD CONSTRAINT "fk1_IOIO_0000003_RO_0002180_IOIO_0000014" FOREIGN KEY ("IOIO_0000014_uid")
    REFERENCES "MPHPO"."IOIO_0000014" ("IOIO_0000014_uid");

COMMENT ON CONSTRAINT "fk1_IOIO_0000003_RO_0002180_IOIO_0000014" ON "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014" IS 'human death statement has component human identifier -> human identifier';

-- Foreign key definition : HOSO_0000137_IAO_0000235_HOSO_0000003 -> HOSO_0000137
ALTER TABLE "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"
  ADD CONSTRAINT "fk0_HOSO_0000137_IAO_0000235_HOSO_0000003" FOREIGN KEY ("HOSO_0000137_uid")
    REFERENCES "MPHPO"."HOSO_0000137" ("HOSO_0000137_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000137_IAO_0000235_HOSO_0000003" ON "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003" IS 'human clinical visit specified patient denoted by healthcare service organism specification -> human clinical visit specified patient';

-- Foreign key definition : HOSO_0000137_IAO_0000235_HOSO_0000003 -> HOSO_0000003
ALTER TABLE "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"
  ADD CONSTRAINT "fk1_HOSO_0000137_IAO_0000235_HOSO_0000003" FOREIGN KEY ("HOSO_0000003_uid")
    REFERENCES "MPHPO"."HOSO_0000003" ("HOSO_0000003_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000137_IAO_0000235_HOSO_0000003" ON "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003" IS 'human clinical visit specified patient denoted by healthcare service organism specification -> healthcare service organism specification';

-- Foreign key definition : MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055 -> MPHPO_0000003
ALTER TABLE "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"
  ADD CONSTRAINT "fk0_MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" FOREIGN KEY ("MPHPO_0000003_uid")
    REFERENCES "MPHPO"."MPHPO_0000003" ("MPHPO_0000003_uid");

COMMENT ON CONSTRAINT "fk0_MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" ON "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" IS 'MPHPO HOSD beginning temporal information component of healthcare organization service delivery beginning statement -> MPHPO HOSD beginning temporal information';

-- Foreign key definition : MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055 -> HOSO_0000055
ALTER TABLE "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"
  ADD CONSTRAINT "fk1_MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" FOREIGN KEY ("HOSO_0000055_uid")
    REFERENCES "MPHPO"."HOSO_0000055" ("HOSO_0000055_uid");

COMMENT ON CONSTRAINT "fk1_MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" ON "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055" IS 'MPHPO HOSD beginning temporal information component of healthcare organization service delivery beginning statement -> healthcare organization service delivery beginning statement';

-- Foreign key definition : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074 -> HOSO_0000012
ALTER TABLE "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"
  ADD CONSTRAINT "fk0_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" FOREIGN KEY ("HOSO_0000012_uid")
    REFERENCES "MPHPO"."HOSO_0000012" ("HOSO_0000012_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" ON "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" IS 'healthcare organization clinical visit is directed by clinical visit agreement specification -> healthcare organization clinical visit';

-- Foreign key definition : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074 -> HOSO_0000074
ALTER TABLE "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"
  ADD CONSTRAINT "fk1_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" FOREIGN KEY ("HOSO_0000074_uid")
    REFERENCES "MPHPO"."HOSO_0000074" ("HOSO_0000074_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" ON "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074" IS 'healthcare organization clinical visit is directed by clinical visit agreement specification -> clinical visit agreement specification';

-- Foreign key definition : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003 -> HOSO_0000012
ALTER TABLE "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"
  ADD CONSTRAINT "fk0_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" FOREIGN KEY ("HOSO_0000012_uid")
    REFERENCES "MPHPO"."HOSO_0000012" ("HOSO_0000012_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" ON "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" IS 'healthcare organization clinical visit is directed by healthcare service organism specification -> healthcare organization clinical visit';

-- Foreign key definition : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003 -> HOSO_0000003
ALTER TABLE "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"
  ADD CONSTRAINT "fk1_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" FOREIGN KEY ("HOSO_0000003_uid")
    REFERENCES "MPHPO"."HOSO_0000003" ("HOSO_0000003_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" ON "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003" IS 'healthcare organization clinical visit is directed by healthcare service organism specification -> healthcare service organism specification';

-- Foreign key definition : HOSO_0000012_RO_0002180_HOSO_0000012 -> HOSO_0000012
ALTER TABLE "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012"
  ADD CONSTRAINT "fk0_HOSO_0000012_RO_0002180_HOSO_0000012" FOREIGN KEY ("HOSO_0000012_uid_domain")
    REFERENCES "MPHPO"."HOSO_0000012" ("HOSO_0000012_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000012_RO_0002180_HOSO_0000012" ON "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012" IS 'healthcare organization clinical visit has component healthcare organization clinical visit -> healthcare organization clinical visit';

-- Foreign key definition : HOSO_0000012_RO_0002180_HOSO_0000012 -> HOSO_0000012
ALTER TABLE "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012"
  ADD CONSTRAINT "fk1_HOSO_0000012_RO_0002180_HOSO_0000012" FOREIGN KEY ("HOSO_0000012_uid_range")
    REFERENCES "MPHPO"."HOSO_0000012" ("HOSO_0000012_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000012_RO_0002180_HOSO_0000012" ON "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012" IS 'healthcare organization clinical visit has component healthcare organization clinical visit -> healthcare organization clinical visit';

-- Foreign key definition : HOSO_0000056_RO_0002180_HOSO_0000100 -> HOSO_0000056
ALTER TABLE "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk0_HOSO_0000056_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000056_uid")
    REFERENCES "MPHPO"."HOSO_0000056" ("HOSO_0000056_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000056_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100" IS 'healthcare organization service delivery ending statement has component healthcare organization service delivery identifier -> healthcare organization service delivery ending statement';

-- Foreign key definition : HOSO_0000056_RO_0002180_HOSO_0000100 -> HOSO_0000100
ALTER TABLE "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"
  ADD CONSTRAINT "fk1_HOSO_0000056_RO_0002180_HOSO_0000100" FOREIGN KEY ("HOSO_0000100_uid")
    REFERENCES "MPHPO"."HOSO_0000100" ("HOSO_0000100_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000056_RO_0002180_HOSO_0000100" ON "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100" IS 'healthcare organization service delivery ending statement has component healthcare organization service delivery identifier -> healthcare organization service delivery identifier';

-- Foreign key definition : HOSO_0000078_BFO_0000051_HOSO_0000138 -> HOSO_0000078
ALTER TABLE "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"
  ADD CONSTRAINT "fk0_HOSO_0000078_BFO_0000051_HOSO_0000138" FOREIGN KEY ("HOSO_0000078_uid")
    REFERENCES "MPHPO"."HOSO_0000078" ("HOSO_0000078_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000078_BFO_0000051_HOSO_0000138" ON "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138" IS 'hospitalization admitting physician specification has part healthcare provider identifier -> hospitalization admitting physician specification';

-- Foreign key definition : HOSO_0000078_BFO_0000051_HOSO_0000138 -> HOSO_0000138
ALTER TABLE "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"
  ADD CONSTRAINT "fk1_HOSO_0000078_BFO_0000051_HOSO_0000138" FOREIGN KEY ("HOSO_0000138_uid")
    REFERENCES "MPHPO"."HOSO_0000138" ("HOSO_0000138_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000078_BFO_0000051_HOSO_0000138" ON "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138" IS 'hospitalization admitting physician specification has part healthcare provider identifier -> healthcare provider identifier';

-- Foreign key definition : HOSO_0000009_RO_0002350_HOSO_0000008 -> HOSO_0000009
ALTER TABLE "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"
  ADD CONSTRAINT "fk0_HOSO_0000009_RO_0002350_HOSO_0000008" FOREIGN KEY ("HOSO_0000009_uid")
    REFERENCES "MPHPO"."HOSO_0000009" ("HOSO_0000009_uid");

COMMENT ON CONSTRAINT "fk0_HOSO_0000009_RO_0002350_HOSO_0000008" ON "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008" IS 'healthcare provider member of healthcare organization -> healthcare provider';

-- Foreign key definition : HOSO_0000009_RO_0002350_HOSO_0000008 -> HOSO_0000008
ALTER TABLE "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"
  ADD CONSTRAINT "fk1_HOSO_0000009_RO_0002350_HOSO_0000008" FOREIGN KEY ("HOSO_0000008_uid")
    REFERENCES "MPHPO"."HOSO_0000008" ("HOSO_0000008_uid");

COMMENT ON CONSTRAINT "fk1_HOSO_0000009_RO_0002350_HOSO_0000008" ON "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008" IS 'healthcare provider member of healthcare organization -> healthcare organization';

