set schema 'MPHPO';
-- ========================================================
-- Classes
-- ========================================================
/*
human death statement
-- T77183c3000
*/
insert into "MPHPO"."IOIO_0000003"(
  "IOIO_0000003_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000003/{}', v1."subject_id") AS "IOIO_0000003_uid"
FROM (select distinct "subject_id"
      from "mimiciv_hosp"."patients"
      where "dod" is not null) v1
WHERE v1."subject_id" IS NOT NULL
)
select "IOIO_0000003_uid"
from mmec_query
;
/*
healthcare physician service identifier
-- Tfa45030000
*/
insert into "MPHPO"."HOSO_0000084"(
  "HOSO_0000084_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000006/{}', v1."curr_service") AS "MPHPO_0000006_uid"
FROM (select curr_service
      from mimiciv_hosp.services
      where prev_service is null
      group by curr_service) v1
WHERE v1."curr_service" IS NOT NULL
)
select "MPHPO_0000006_uid"
from mmec_query
;
/*
healthcare organization service delivery beginning statement
-- Tfa4502a400
*/
insert into "MPHPO"."HOSO_0000055"(
  "HOSO_0000055_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000055_uid" AS "HOSO_0000055_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000055_hosp/{}', v1."hadm_id") AS "HOSO_0000055_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000055_visites/{}', v3."transfer_id") AS "HOSO_0000055_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "HOSO_0000055_uid"
from mmec_query
;
/*
clinical visit agreement specification
-- Tfa4502e100
*/
insert into "MPHPO"."HOSO_0000074"(
  "HOSO_0000074_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000074_uid" AS "HOSO_0000074_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000078/{}', v1."hadm_id") AS "HOSO_0000074_uid"
FROM "mimiciv_hosp"."admissions" v1
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000007/{}', v3."hadm_id") AS "HOSO_0000074_uid"
FROM "mimiciv_hosp"."admissions" v3
)) v5
)
select "HOSO_0000074_uid"
from mmec_query
;
/*
human biological sex information content entity
-- T77183c4d00
*/
insert into "MPHPO"."IOIO_0000011"(
  "IOIO_0000011_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#MPHPO_0000010/{}', v1."subject_id") AS "MPHPO_0000010_uid"
FROM "mimiciv_hosp"."patients" v1
)
select "MPHPO_0000010_uid"
from mmec_query
;
/*
human birth statement
-- T77183c2e00
*/
insert into "MPHPO"."IOIO_0000001"(
  "IOIO_0000001_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000001/{}', v1."subject_id") AS "IOIO_0000001_uid"
FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) v1
WHERE v1."subject_id" IS NOT NULL
)
select "IOIO_0000001_uid"
from mmec_query
;
/*
living environment type
Empty mapping: insert not required
*/

/*
healthcare organization service delivery identifier
-- Tfa4505c500
-- QUESTION CK : d'où vient les syffixes HOSO_0000100_hosp et HOSO_0000100_visites
*/
insert into "MPHPO"."HOSO_0000100"(
  "HOSO_0000100_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000100_uid" AS "HOSO_0000100_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000100_hosp/{}', v1."hadm_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000100_visites/{}', v3."transfer_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "HOSO_0000100_uid"
from mmec_query
;
/*
living environment type prior to clinical visit statement
Empty mapping: insert not required
*/
/*
MPHPO HOSD ending temporal information 
-- T5b22144900
*/
insert into "MPHPO"."MPHPO_0000004"(
  "MPHPO_0000004_uid"
)
with mmec_query as (
  SELECT v5."MPHPO_0000004_uid" AS "MPHPO_0000004_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000004_hosp/{}', v1."hadm_id") AS "MPHPO_0000004_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000004_visites/{}', v3."transfer_id") AS "MPHPO_0000004_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "MPHPO_0000004_uid"
from mmec_query
;
/*
healthcare service organism specification
-- Tfa45020700
*/
insert into "MPHPO"."HOSO_0000003"(
  "HOSO_0000003_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000003_uid" AS "HOSO_0000003_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000003/{}', v1."transfer_id") AS "HOSO_0000003_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000003_hosp/{}', v3."hadm_id") AS "HOSO_0000003_uid"
FROM "mimiciv_hosp"."admissions" v3
)) v5
)
select "HOSO_0000003_uid"
from mmec_query
;
/*
pathological condition sub-group name
-- Teda9511700
*/
insert into "MPHPO"."HEPRO_0000017"(
  "HEPRO_0000017_uid"
)
with mmec_query as (
  SELECT v9."MPHPO_0000002_uid" AS "MPHPO_0000002_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_ed/{}', v3."icd_code2m33") AS "MPHPO_0000002_uid"
FROM (SELECT DISTINCT v1."icd_code" AS "icd_code2m33"
FROM "mimiciv_ed"."diagnosis" v1
) v3
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_hosp/{}', v7."icd_code2m33") AS "MPHPO_0000002_uid"
FROM (SELECT DISTINCT v5."drg_code" AS "icd_code2m33"
FROM "mimiciv_hosp"."drgcodes" v5
WHERE 'HCFA' = v5."drg_type"
) v7
)) v9
)
select "MPHPO_0000002_uid"
from mmec_query
;
/*
healthcare organization clinical visit pathological condition impact statement
-- Tfa45060700
*/
insert into "MPHPO"."HOSO_0000124"(
  "HOSO_0000124_uid"
)
with mmec_query as (
  SELECT v11."HOSO_0000124_uid" AS "HOSO_0000124_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000124_hospitalization/{}', v1."hadm_id") AS "HOSO_0000124_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000124_edtest/{}/{}', v5."stay_id1m22", v5."seq_num1m22") AS "HOSO_0000124_uid"
FROM (SELECT DISTINCT v3."seq_num" AS "seq_num1m22", v3."stay_id" AS "stay_id1m22"
FROM "mimiciv_ed"."diagnosis" v3
) v5
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000124_ed/{}/{}', v9."stay_id6m22", v9."seq_num7m22") AS "HOSO_0000124_uid"
FROM (SELECT DISTINCT v7."seq_num" AS "seq_num7m22", v7."stay_id" AS "stay_id6m22"
FROM "mimiciv_ed"."diagnosis" v7
) v9
)) v11
)
select "HOSO_0000124_uid"
from mmec_query
;
/*
Homo sapiens
-- T2448628400
*/
insert into "MPHPO"."NCBITaxon_9606"(
  "NCBITaxon_9606_uid"
)
with mmec_query as (
  SELECT DISTINCT v9."HOSO_0000137_uid" AS "NCBITaxon_9606_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v3."subject_id0m39") AS "HOSO_0000137_uid"
FROM (SELECT DISTINCT v1."subject_id" AS "subject_id0m39"
FROM "mimiciv_hosp"."admissions" v1
) v3
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v7."subject_id0m39") AS "HOSO_0000137_uid"
FROM (SELECT DISTINCT v5."subject_id" AS "subject_id0m39"
FROM "mimiciv_hosp"."transfers" v5
) v7
)) v9
)
select "NCBITaxon_9606_uid"
from mmec_query
;
/*
human identifier
-- T77183c5000
*/
insert into "MPHPO"."IOIO_0000014"(
  "IOIO_0000014_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#IOIO_0000014/{}', v1."subject_id") AS "IOIO_0000014_uid"
FROM "mimiciv_hosp"."patients" v1
)
select "IOIO_0000014_uid"
from mmec_query
;
/*
human death temporal information
-- T77183c3300
*/
insert into "MPHPO"."IOIO_0000006"(
  "IOIO_0000006_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000011/{}', v1."subject_id") AS "MPHPO_0000011_uid"
FROM (select "subject_id", min("dod") as deathdate
      from "mimiciv_hosp"."patients"
      where "dod" is not null
      group by "subject_id") v1
WHERE v1."subject_id" IS NOT NULL
)
select "MPHPO_0000011_uid"
from mmec_query
;
/*
healthcare provider identifier
-- Tfa45062a00
*/
insert into "MPHPO"."HOSO_0000138"(
  "HOSO_0000138_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000138/{}', v1."hadm_id") AS "HOSO_0000138_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "HOSO_0000138_uid"
from mmec_query
;
/*
healthcare provider
-- Tfa45020d00
*/
insert into "MPHPO"."HOSO_0000009"(
  "HOSO_0000009_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000009/{}', v1."hadm_id") AS "HOSO_0000009_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "HOSO_0000009_uid"
from mmec_query
;
/*
human birth temporal information
-- T77183c3200
*/
insert into "MPHPO"."IOIO_0000005"(
  "IOIO_0000005_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000009/{}', v1."subject_id") AS "IOIO_0000005_uid"
FROM (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) v1
WHERE v1."subject_id" IS NOT NULL
)
select "IOIO_0000005_uid"
from mmec_query
;
/*
pathological condition impact type on clinical visit
-- Tfa45060900
*/
insert into "MPHPO"."HOSO_0000126"(
  "HOSO_0000126_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000001/{}/{}', v1."stay_id", v1."seq_num") AS "MPHPO_0000001_uid"
FROM "mimiciv_ed"."diagnosis" v1
)
select "MPHPO_0000001_uid"
from mmec_query
;
/*
human biological sex statement
-- T77183c5100
*/
insert into "MPHPO"."IOIO_0000015"(
  "IOIO_0000015_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#IOIO_0000015/{}', v1."subject_id") AS "IOIO_0000015_uid"
FROM "mimiciv_hosp"."patients" v1
)
select "IOIO_0000015_uid"
from mmec_query
;
/*
healthcare organization
-- Tfa45020c00
*/
insert into "MPHPO"."HOSO_0000008"(
  "HOSO_0000008_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000079/{}', v1."curr_service") AS "HOSO_0000079_uid"
FROM (select curr_service
      from mimiciv_hosp.services
      where prev_service is null
      group by curr_service) v1
WHERE v1."curr_service" IS NOT NULL
)
select "HOSO_0000079_uid"
from mmec_query
;
/*
healthcare organization service delivery ending statement
-- Tfa4502a500
*/
insert into "MPHPO"."HOSO_0000056"(
  "HOSO_0000056_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000056_uid" AS "HOSO_0000056_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000056_hosp/{}', v1."hadm_id") AS "HOSO_0000056_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000056_visites/{}', v3."transfer_id") AS "HOSO_0000056_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "HOSO_0000056_uid"
from mmec_query
;
/*
healthcare organization service delivery
-- Tfa45022400
*/
insert into "MPHPO"."HOSO_0000011"(
  "HOSO_0000011_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000011_uid" AS "HOSO_0000011_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000012/{}', v1."transfer_id") AS "HOSO_0000011_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v3."hadm_id") AS "HOSO_0000011_uid"
FROM "mimiciv_hosp"."admissions" v3
WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION')
)) v5
)
select "HOSO_0000011_uid"
from mmec_query
;
/*
MPHPO HOSD beginning temporal information
-- T5b22144800
*/
insert into "MPHPO"."MPHPO_0000003"(
  "MPHPO_0000003_uid"
)
with mmec_query as (
  SELECT v5."MPHPO_0000003_uid" AS "MPHPO_0000003_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000003_visites/{}', v1."transfer_id") AS "MPHPO_0000003_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000003_hosp/{}', v3."hadm_id") AS "MPHPO_0000003_uid"
FROM "mimiciv_hosp"."admissions" v3
WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION')
)) v5
)
select "MPHPO_0000003_uid"
from mmec_query
;
/*
healthcare physician service
-- Tfa4502e600
*/
insert into "MPHPO"."HOSO_0000079"(
  "HOSO_0000079_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000079/{}', v1."curr_service") AS "HOSO_0000079_uid"
FROM (select curr_service
      from mimiciv_hosp.services
      where prev_service is null
      group by curr_service) v1
WHERE v1."curr_service" IS NOT NULL
)
select "HOSO_0000079_uid"
from mmec_query
;
/*
MPHPO pathological condition sub-group name
-- T5b22144700
*/
insert into "MPHPO"."MPHPO_0000002"(
  "MPHPO_0000002_uid"
)
with mmec_query as (
  SELECT v9."MPHPO_0000002_uid" AS "MPHPO_0000002_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_ed/{}', v3."icd_code2m34") AS "MPHPO_0000002_uid"
FROM (SELECT DISTINCT v1."icd_code" AS "icd_code2m34"
FROM "mimiciv_ed"."diagnosis" v1
) v3
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_hosp/{}', v7."icd_code2m34") AS "MPHPO_0000002_uid"
FROM (SELECT DISTINCT v5."drg_code" AS "icd_code2m34"
FROM "mimiciv_hosp"."drgcodes" v5
WHERE 'HCFA' = v5."drg_type"
) v7
)) v9
)
select "MPHPO_0000002_uid"
from mmec_query
;
/*
MPHPO human biological sex information content entity
-- T5b22146400
*/
insert into "MPHPO"."MPHPO_0000010"(
  "MPHPO_0000010_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#MPHPO_0000010/{}', v1."subject_id") AS "MPHPO_0000010_uid"
FROM "mimiciv_hosp"."patients" v1
)
select "MPHPO_0000010_uid"
from mmec_query
;
/*
MPHPO healthcare physician service identifier 
-- T5b22144b00
*/
insert into "MPHPO"."MPHPO_0000006"(
  "MPHPO_0000006_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000006/{}', v1."curr_service") AS "MPHPO_0000006_uid"
FROM (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) v1
WHERE v1."curr_service" IS NOT NULL
)
select "MPHPO_0000006_uid"
from mmec_query
;
/*
human clinical visit specified patient
-- Tfa45062900
*/
insert into "MPHPO"."HOSO_0000137"(
  "HOSO_0000137_uid"
)
with mmec_query as (
  SELECT DISTINCT v9."HOSO_0000137_uid" AS "HOSO_0000137_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v3."subject_id0m40") AS "HOSO_0000137_uid"
FROM (SELECT DISTINCT v1."subject_id" AS "subject_id0m40"
FROM "mimiciv_hosp"."admissions" v1
) v3
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v7."subject_id0m40") AS "HOSO_0000137_uid"
FROM (SELECT DISTINCT v5."subject_id" AS "subject_id0m40"
FROM "mimiciv_hosp"."transfers" v5
) v7
)) v9
)
select "HOSO_0000137_uid"
from mmec_query
;
/*
healthcare organization clinical visit
-- Tfa45022500
*/
insert into "MPHPO"."HOSO_0000012"(
  "HOSO_0000012_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000012_uid" AS "HOSO_0000012_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000012/{}', v1."transfer_id") AS "HOSO_0000012_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v3."hadm_id") AS "HOSO_0000012_uid"
FROM "mimiciv_hosp"."admissions" v3
WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION')
)) v5
)
select "HOSO_0000012_uid"
from mmec_query
;
/*
hospitalization admitting physician specification
-- Tfa4502e500
*/
insert into "MPHPO"."HOSO_0000078"(
  "HOSO_0000078_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000078/{}', v1."hadm_id") AS "HOSO_0000078_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "HOSO_0000078_uid"
from mmec_query
;
/*
MPHPO pathological condition impact type on clinical visit 
-- T5b22144600
*/
insert into "MPHPO"."MPHPO_0000001"(
  "MPHPO_0000001_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000001/{}/{}', v1."stay_id", v1."seq_num") AS "MPHPO_0000001_uid"
FROM "mimiciv_ed"."diagnosis" v1
)
select "MPHPO_0000001_uid"
from mmec_query
;
/*
MPHPO human death date
-- T5b22146500
*/
insert into "MPHPO"."MPHPO_0000011"(
  "MPHPO_0000011_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000011/{}', v1."subject_id") AS "MPHPO_0000011_uid"
FROM (select "subject_id", min("dod") as deathdate
      from "mimiciv_hosp"."patients"
      where "dod" is not null
      group by "subject_id") v1
WHERE v1."subject_id" IS NOT NULL
)
select "MPHPO_0000011_uid"
from mmec_query
;
/*
MPHPO human birth date
-- T5b22144e00
*/
insert into "MPHPO"."MPHPO_0000009"(
  "MPHPO_0000009_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000009/{}', v1."subject_id") AS "MPHPO_0000009_uid"
FROM (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) v1
WHERE v1."subject_id" IS NOT NULL
)
select "MPHPO_0000009_uid"
from mmec_query
;
/*
MPHPO hospitalization admission urgency level specification 
-- T5b22144c00
*/
insert into "MPHPO"."MPHPO_0000007"(
  "MPHPO_0000007_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#MPHPO_0000007/{}', v1."hadm_id") AS "MPHPO_0000007_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "MPHPO_0000007_uid"
from mmec_query
;
/*
MPHPO living environment type 
Empty mapping: insert not required
*/
/*
emergency department visit
-- Tfa45026300
*/
insert into "MPHPO"."HOSO_0000032"(
  "HOSO_0000032_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000012/{}', v1."stay_id") AS "HOSO_0000032_uid"
FROM "mimiciv_ed"."edstays" v1
)
select "HOSO_0000032_uid"
from mmec_query
;
/*
hospitalization
-- Tfa45026200
*/
insert into "MPHPO"."HOSO_0000031"(
  "HOSO_0000031_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v1."hadm_id") AS "HOSO_0000031_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)
select "HOSO_0000031_uid"
from mmec_query
;
/*
hospitalization starting with ICU stay
-- Tfa45030100
*/
insert into "MPHPO"."HOSO_0000085"(
  "HOSO_0000085_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v1."hadm_id") AS "HOSO_0000085_uid"
FROM "mimiciv_hosp"."transfers" v1, "mimiciv_hosp"."admissions" v2
WHERE (v1."careunit" ~ ('(?' || REPLACE('i','s','n') || ')' || '.*cu\).*')
         AND v2."admission_type" <> 'AMBULATORY OBSERVATION'
         AND v2."admission_type" <> 'DIRECT OBSERVATION'
         AND v2."admission_type" <> 'EU OBSERVATION'
         AND v1."hadm_id" = v2."hadm_id" AND 'admit' = v1."eventtype")
)
select "HOSO_0000085_uid"
from mmec_query
;
/*
ED by ambulance initiated hospitalization
-- Tfa4502df00
*/
insert into "MPHPO"."HOSO_0000072"(
  "HOSO_0000072_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v1."hadm_id") AS "HOSO_0000072_uid"
FROM "mimiciv_ed"."edstays" v1, "mimiciv_hosp"."admissions" v2
WHERE (v2."admission_type" <> 'AMBULATORY OBSERVATION'
         AND v2."admission_type" <> 'DIRECT OBSERVATION'
         AND v2."admission_type" <> 'EU OBSERVATION'
         AND v1."hadm_id" = v2."hadm_id"
         AND 'AMBULANCE' = v1."arrival_transport")
)
select "HOSO_0000072_uid"
from mmec_query
;
-- ========================================================
-- ObjectProperties
-- ========================================================
/*
HOSO_0000100@'healthcare organization service delivery identifier' denotes [1..*] HOSO_0000012@'healthcare organization service delivery'
-- T528b9c8100
*/
insert into "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"(
  "HOSO_0000100_uid",
  "HOSO_0000011_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000011_uid" AS "HOSO_0000011_uid", v5."HOSO_0000100_uid" AS "HOSO_0000100_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v1."hadm_id") AS "HOSO_0000011_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000100_hosp/{}', v1."hadm_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000012/{}', v3."transfer_id") AS "HOSO_0000011_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000100_visites/{}', v3."transfer_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "HOSO_0000100_uid", "HOSO_0000011_uid"
from mmec_query
;
/*
HOSO_0000137@'human clinical visit specified patient' denoted by [1..*] HOSO_0000003@'healthcare service organism specification'
Tc68c9cba00
*/
insert into "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"(
  "HOSO_0000137_uid",
  "HOSO_0000003_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000003_uid" AS "HOSO_0000003_uid", v5."HOSO_0000137_uid" AS "HOSO_0000137_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000003/{}', v1."transfer_id") AS "HOSO_0000003_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v1."subject_id") AS "HOSO_0000137_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000003_hosp/{}', v3."hadm_id") AS "HOSO_0000003_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v3."subject_id") AS "HOSO_0000137_uid"
FROM "mimiciv_hosp"."admissions" v3
)) v5
)
select "HOSO_0000137_uid", "HOSO_0000003_uid"
from mmec_query
;
/*
IOIO_0000001@'human birth statement' has component [1..*] IOIO_0000014@'human identifier'
T346b07d500
*/
insert into "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"(
  "IOIO_0000001_uid",
  "IOIO_0000014_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000001/{}', v1."subject_id") AS "IOIO_0000001_uid",
                  individuation('http://www.griis.ca/projects#IOIO_0000014/{}', v2."subject_id") AS "IOIO_0000014_uid"
FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) v1, "mimiciv_hosp"."patients" v2, (SELECT CHILD."subject_id" AS "CHILD_subject_id", PARENT."subject_id" AS "PARENT_subject_id" FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) CHILD, (SELECT * FROM "mimiciv_hosp"."patients") PARENT WHERE CHILD. "subject_id"  = PARENT. "subject_id" ) v3
WHERE (v1."subject_id" = v3."CHILD_subject_id" AND v2."subject_id" = v3."PARENT_subject_id")
)
select "IOIO_0000001_uid", "IOIO_0000014_uid"
from mmec_query
;
/*
HOSO_0000138@'healthcare provider identifier' denotes [1..*] HOSO_0000009@'healthcare provider'
T346b07d500
*/
insert into "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"(
  "HOSO_0000138_uid",
  "HOSO_0000009_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000009/{}', v1."hadm_id") AS "HOSO_0000009_uid",
         individuation('http://www.griis.ca/projects#HOSO_0000138/{}', v1."hadm_id") AS "HOSO_0000138_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "HOSO_0000138_uid", "HOSO_0000009_uid"
from mmec_query
;
/*
HOSO_0000084@'healthcare physician service identifier' denotes [1..1] HOSO_0000079@'healthcare physician service'
Tec4545a800
MPHPO_0000006@MPHPO healthcare physician service identifier
*/
insert into "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"(
  "HOSO_0000084_uid",
  "HOSO_0000079_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000079/{}', v2."curr_service") AS "HOSO_0000079_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000006/{}', v1."curr_service") AS "HOSO_0000084_uid"
FROM (select curr_service
      from mimiciv_hosp.services
      where prev_service is null
      group by curr_service) v1,
     (select curr_service
      from mimiciv_hosp.services
      where prev_service is null
      group by curr_service) v2,
     (SELECT CHILD."curr_service" AS "CHILD_curr_service", PARENT."curr_service" AS "PARENT_curr_service"
      FROM (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) CHILD,
           (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) PARENT WHERE CHILD. "curr_service"  = PARENT. "curr_service" ) v3
WHERE (v1."curr_service" = v3."CHILD_curr_service" AND v2."curr_service" = v3."PARENT_curr_service")
)
select "HOSO_0000084_uid", "HOSO_0000079_uid"
from mmec_query
;
/*
IOIO_0000005@'human birth temporal information' component of [1..*] IOIO_0000001@'human birth statement'
MPHPO_0000009@MPHPO human birth date
Td52d1bfb00
*/
insert into "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"(
  "IOIO_0000005_uid",
  "IOIO_0000001_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000001/{}', v2."subject_id") AS "IOIO_0000001_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000009/{}', v1."subject_id") AS "MPHPO_0000009_uid"
FROM (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) v1, (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) v2, (SELECT CHILD."subject_id" AS "CHILD_subject_id", PARENT."subject_id" AS "PARENT_subject_id" FROM (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) CHILD, (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) PARENT WHERE CHILD. "subject_id"  = PARENT. "subject_id" ) v3
WHERE (v1."subject_id" = v3."CHILD_subject_id" AND v2."subject_id" = v3."PARENT_subject_id")
)
select "MPHPO_0000009_uid", "IOIO_0000001_uid"
from mmec_query
;
/*
IOIO_0000003@'human death statement' has component [1..*] MPHPO_0000011@'human death temporal information'
*/
insert into "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"(
  "IOIO_0000003_uid",
  "IOIO_0000006_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000003/{}', v1."subject_id") AS "IOIO_0000003_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000011/{}', v2."subject_id") AS "MPHPO_0000011_uid"
FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null) v1,
     (select "subject_id", min("dod") as deathdate
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null
                        group by "subject_id") v2,
     (SELECT CHILD."subject_id" AS "CHILD_subject_id", PARENT."subject_id" AS "PARENT_subject_id"
      FROM (select "subject_id", min("dod") as deathdate
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null
                        group by "subject_id") CHILD, (select distinct "subject_id"
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null) PARENT WHERE CHILD. "subject_id"  = PARENT. "subject_id" ) v3
WHERE (v2."subject_id" = v3."CHILD_subject_id" AND v1."subject_id" = v3."PARENT_subject_id")
)
select "IOIO_0000003_uid", "MPHPO_0000011_uid"
from mmec_query
;
/*
Tfa4502fc00@'living environment type prior to clinical visit statement' has component [1..*] T77183c6e00@'living environment type'
Empty mapping: insert not required
*/
/*
HOSO_0000012@'healthcare organization clinical visit' is directed by [1..1] HOSO_0000003@'healthcare service organism specification'
T69af2e7200
*/
insert into "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"(
  "HOSO_0000012_uid",
  "HOSO_0000003_uid"
)
with mmec_query as (
  SELECT v6."HOSO_0000003_uid" AS "HOSO_0000003_uid", v6."HOSO_0000012_uid" AS "HOSO_0000012_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000003/{}', v1."transfer_id") AS "HOSO_0000003_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000012/{}', v1."transfer_id") AS "HOSO_0000012_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000003/{}', v4."transfer_id") AS "HOSO_0000003_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v3."hadm_id") AS "HOSO_0000012_uid"
FROM "mimiciv_hosp"."admissions" v3, "mimiciv_hosp"."transfers" v4
WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION' AND v4."eventtype" <> 'discharge' AND v3."hadm_id" = v4."hadm_id")
)) v6
)
select "HOSO_0000012_uid", "HOSO_0000003_uid"
from mmec_query
;
/*
IOIO_0000006@'human death temporal information' component of [1..*] IOIO_0000003@'human death statement'
MPHPO_0000011@MPHPO human death date
T4e44ffe000
*/
insert into "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"(
  "IOIO_0000006_uid",
  "IOIO_0000003_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000003/{}', v2."subject_id") AS "IOIO_0000003_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000011/{}', v1."subject_id") AS "MPHPO_0000011_uid"
FROM (select "subject_id", min("dod") as deathdate
      from "mimiciv_hosp"."patients"
      where "dod" is not null
      group by "subject_id") v1,
     (select distinct "subject_id"
      from "mimiciv_hosp"."patients"
      where "dod" is not null) v2,
     (SELECT CHILD."subject_id" AS "CHILD_subject_id", PARENT."subject_id" AS "PARENT_subject_id"
      FROM (select "subject_id", min("dod") as deathdate
            from "mimiciv_hosp"."patients"
            where "dod" is not null
            group by "subject_id") CHILD,
           (select distinct "subject_id"
            from "mimiciv_hosp"."patients"
            where "dod" is not null) PARENT
      WHERE CHILD. "subject_id"  = PARENT. "subject_id") v3
WHERE (v1."subject_id" = v3."CHILD_subject_id" AND v2."subject_id" = v3."PARENT_subject_id")
)
select "MPHPO_0000011_uid", "IOIO_0000003_uid"
from mmec_query
;
/*
IOIO_0000014@'human identifier' denotes [1..*] NCBITaxon_9606@'Homo sapiens'
*/
insert into "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"(
  "IOIO_0000014_uid",
  "NCBITaxon_9606_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000137/{}', v1."subject_id") AS "NCBITaxon_9606_uid",
                  individuation('http://www.griis.ca/projects#IOIO_0000014/{}', v1."subject_id") AS "IOIO_0000014_uid"
FROM "mimiciv_hosp"."transfers" v1
)
select "IOIO_0000014_uid", "NCBITaxon_9606_uid"
from mmec_query
;
/*
HOSO_0000079@'healthcare physician service' member of [1..*] HOSO_0000079/HOSO_0000008@'healthcare organization'
Empty mapping: insert not required
*/
/*
HOSO_0000055@'healthcare organization service delivery beginning statement' has component [1..*] HOSO_0000100@'healthcare organization service delivery identifier'
-- T5b5e0b4000
*/
insert into "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"(
  "HOSO_0000055_uid",
  "HOSO_0000100_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000055_uid" AS "HOSO_0000055_uid", v5."HOSO_0000100_uid" AS "HOSO_0000100_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000055_hosp/{}', v1."hadm_id") AS "HOSO_0000055_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000100_hosp/{}', v1."hadm_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000055_visites/{}', v3."transfer_id") AS "HOSO_0000055_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000100_visites/{}', v3."transfer_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "HOSO_0000055_uid", "HOSO_0000100_uid"
from mmec_query
;
/*
HOSO_0000124/MPHPO_0000002@'healthcare organization clinical visit pathological condition impact statement' has component [1..*]
MPHPO_0000001@'pathological condition impact type on clinical visit'
HOSO_0000124/Tfa45060700 -> HOSO_0000126/Tfa45060900
Taecd7aa700
*/
insert into "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"(
  "HOSO_0000124_uid",
  "HOSO_0000126_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000124_ed/{}/{}', v1."stay_id", v1."seq_num") AS "HOSO_0000124_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000001/{}/{}', v1."stay_id", v1."seq_num") AS "MPHPO_0000001_uid"
FROM "mimiciv_ed"."diagnosis" v1
)
select "HOSO_0000124_uid", "MPHPO_0000001_uid"
from mmec_query
;
/*
MPHPO_0000003@'MPHPO HOSD beginning temporal information' component of [1..*] HOSO_0000055@'healthcare organization service delivery beginning statement'
-- Tbe02328700
*/
insert into "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"(
  "MPHPO_0000003_uid",
  "HOSO_0000055_uid"
)
with mmec_query as (
  SELECT v5."MPHPO_0000003_uid" AS "MPHPO_0000003_uid", v5."HOSO_0000055_uid" AS "HOSO_0000055_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000003_visites/{}', v1."transfer_id") AS "MPHPO_0000003_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000055_visites/{}', v1."transfer_id") AS "HOSO_0000055_uid"
FROM "mimiciv_hosp"."transfers" v1
WHERE v1."eventtype" <> 'discharge'
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000003_hosp/{}', v3."hadm_id") AS "MPHPO_0000003_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000055_hosp/{}', v3."hadm_id") AS "HOSO_0000055_uid"
FROM "mimiciv_hosp"."admissions" v3
WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION')
)) v5
)
select "MPHPO_0000003_uid", "HOSO_0000055_uid"
from mmec_query
;
/*
HOSO_0000012@'healthcare organization clinical visit' has component [0..*] HOSO_0000012@'healthcare organization clinical visit'
-- T865c786100
*/
insert into "MPHPO"."HOSO_0000012_RO_0002180_HOSO_0000012"(
  "HOSO_0000012_uid_domain",
  "HOSO_0000012_uid_range"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v1."hadm_id") AS "HOSO_0000012_uid_domain",
         individuation('http://www.griis.ca/projects#HOSO_0000012/{}', v2."transfer_id") AS "HOSO_0000012_uid_range"
FROM "mimiciv_hosp"."admissions" v1, "mimiciv_hosp"."transfers" v2
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION'
         AND v1."admission_type" <> 'DIRECT OBSERVATION'
         AND v1."admission_type" <> 'EU OBSERVATION'
         AND v2."eventtype" <> 'discharge'
         AND v2."eventtype" <> 'ED'
         AND v1."hadm_id" = v2."hadm_id")
)
select "HOSO_0000012_uid_domain", "HOSO_0000012_uid_range"
from mmec_query
;
/*
HOSO_0000124/MPHPO_0000002@'healthcare organization clinical visit pathological condition impact statement' has component [1..*] HOSO_0000100@'healthcare organization service delivery identifier'
*/
insert into "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"(
  "HOSO_0000124_uid",
  "HOSO_0000100_uid"
)
with mmec_query as (
  SELECT v8."HOSO_0000100_uid" AS "HOSO_0000100_uid", v8."MPHPO_0000002_uid" AS "MPHPO_0000002_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000100_hosp/{}', v1."hadm_id") AS "HOSO_0000100_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000124_hospitalization/{}', v1."hadm_id") AS "MPHPO_0000002_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000100_visites/{}', v6."hadm_id2m44") AS "HOSO_0000100_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000124_ed/{}/{}', v6."hadm_id2m44", v6."seq_num7m22") AS "MPHPO_0000002_uid"
FROM (SELECT DISTINCT v3."transfer_id" AS "hadm_id2m44", v4."seq_num" AS "seq_num7m22"
FROM "mimiciv_hosp"."transfers" v3, "mimiciv_ed"."diagnosis" v4
WHERE (v3."eventtype" <> 'discharge' AND v3."transfer_id" = v4."stay_id")
) v6
)) v8
)
select "MPHPO_0000002_uid", "HOSO_0000100_uid"
from mmec_query
;
/*
IOIO_0000001@'human birth statement' has component [1..*] IOIO_0000005/MPHPO_0000009@'human birth temporal information'
-- T346b07b700
*/
insert into "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"(
  "IOIO_0000001_uid",
  "IOIO_0000005_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000001/{}', v1."subject_id") AS "IOIO_0000001_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000009/{}', v2."subject_id") AS "IOIO_0000005_uid"
FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) v1, (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) v2, (SELECT CHILD."subject_id" AS "CHILD_subject_id", PARENT."subject_id" AS "PARENT_subject_id" FROM (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) CHILD, (select distinct "subject_id"
                        from "mimiciv_hosp"."transfers"
                        join "mimiciv_hosp"."patients" using ("subject_id")
                        where "anchor_age" is not null
                          and "anchor_year" is not null
                          and "intime" is not null) PARENT WHERE CHILD. "subject_id"  = PARENT. "subject_id" ) v3
WHERE (v2."subject_id" = v3."CHILD_subject_id" AND v1."subject_id" = v3."PARENT_subject_id")
)
select "IOIO_0000001_uid", "IOIO_0000005_uid"
from mmec_query
;
/*
HOSO_0000056@'healthcare organization service delivery ending statement' has component [1..*] HOSO_0000100@'healthcare organization service delivery identifier'
Tc9e51c8100
*/
insert into "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"(
  "HOSO_0000056_uid",
  "HOSO_0000100_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000056_uid" AS "HOSO_0000056_uid", v5."HOSO_0000100_uid" AS "HOSO_0000100_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000056_hosp/{}', v1."hadm_id") AS "HOSO_0000056_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000100_hosp/{}', v1."hadm_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000056_visites/{}', v3."transfer_id") AS "HOSO_0000056_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000100_visites/{}', v3."transfer_id") AS "HOSO_0000100_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "HOSO_0000056_uid", "HOSO_0000100_uid"
from mmec_query
;
/*
IOIO_0000003@'human death statement' has component [1..*] IOIO_0000014@'human identifier'
T11792a5700
*/
insert into "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"(
  "IOIO_0000003_uid",
  "IOIO_0000014_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#IOIO_0000003/{}', v1."subject_id") AS "IOIO_0000003_uid",
                  individuation('http://www.griis.ca/projects#IOIO_0000014/{}', v2."subject_id") AS "IOIO_0000014_uid"
FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null) v1, "mimiciv_hosp"."patients" v2, (SELECT CHILD."subject_id" AS "CHILD_subject_id", PARENT."subject_id" AS "PARENT_subject_id" FROM (select distinct "subject_id"
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null) CHILD, (SELECT * FROM "mimiciv_hosp"."patients") PARENT WHERE CHILD. "subject_id"  = PARENT. "subject_id" ) v3
WHERE (v1."subject_id" = v3."CHILD_subject_id" AND v2."subject_id" = v3."PARENT_subject_id")
)
select "IOIO_0000003_uid", "IOIO_0000014_uid"
from mmec_query
;
/*
HOSO_0000012@'healthcare organization clinical visit' is directed by [1..*] HOSO_0000074@'clinical visit agreement specification'
T69af2f4c00
*/
insert into "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"(
  "HOSO_0000012_uid",
  "HOSO_0000074_uid"
)
with mmec_query as (
  SELECT v5."HOSO_0000012_uid" AS "HOSO_0000012_uid", v5."HOSO_0000074_uid" AS "HOSO_0000074_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v1."hadm_id") AS "HOSO_0000012_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000078/{}', v1."hadm_id") AS "HOSO_0000074_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#HOSO_0000031/{}', v3."hadm_id") AS "HOSO_0000012_uid",
        individuation('http://www.griis.ca/projects#MPHPO_0000007/{}', v3."hadm_id") AS "HOSO_0000074_uid"
FROM "mimiciv_hosp"."admissions" v3
WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION')
)) v5
)
select "HOSO_0000012_uid", "HOSO_0000074_uid"
from mmec_query
;
/*
HOSO_0000009@'healthcare provider' member of [1..*] HOSO_0000079/HOSO_0000008@'healthcare organization'
Te8407dd500
*/
insert into "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"(
  "HOSO_0000009_uid",
  "HOSO_0000008_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000079/{}', v2."curr_service") AS "HOSO_0000008_uid",
                  individuation('http://www.griis.ca/projects#HOSO_0000009/{}', v1."hadm_id") AS "HOSO_0000009_uid"
FROM "mimiciv_hosp"."admissions" v1, (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) v2, (SELECT CHILD."hadm_id" AS "CHILD_hadm_id", PARENT."curr_service" AS "PARENT_curr_service" FROM (SELECT *
FROM ( select hadm_id, curr_service
                                      from "mimiciv_hosp"."services"
                                      where prev_service is null ) AS child
JOIN (SELECT * FROM "mimiciv_hosp"."admissions") AS parent
  USING ("hadm_id")) CHILD, (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) PARENT WHERE CHILD. "curr_service"  = PARENT. "curr_service" ) v3
WHERE (v1."hadm_id" = v3."CHILD_hadm_id" AND v2."curr_service" = v3."PARENT_curr_service")
)
select "HOSO_0000009_uid", "HOSO_0000008_uid"
from mmec_query
;
/*
HOSO_0000124/MPHPO_0000002@'healthcare organization clinical visit pathological condition impact statement' has component [1..*]
  HEPRO_0000017/MPHPO_0000002@'pathological condition sub-group name'
Tca2f703900
*/
insert into "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"(
  "HOSO_0000124_uid",
  "HEPRO_0000017_uid"
)
with mmec_query as (
  SELECT v10."HOSO_0000124_uid" AS "HOSO_0000124_uid", v10."HEPRO_0000017_uid" AS "HEPRO_0000017_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_hosp/{}', v4."icd_code2m33") AS "HEPRO_0000017_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000124_hospitalization/{}', v4."hadm_id1m22") AS "HOSO_0000124_uid"
FROM (SELECT DISTINCT v1."hadm_id" AS "hadm_id1m22", v2."drg_code" AS "icd_code2m33"
FROM "mimiciv_hosp"."admissions" v1, "mimiciv_hosp"."drgcodes" v2
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION'
         AND v1."admission_type" <> 'DIRECT OBSERVATION'
         AND v1."admission_type" <> 'EU OBSERVATION'
         AND v1."hadm_id" = v2."hadm_id"
         AND 'HCFA' = v2."drg_type")
) v4
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_ed/{}', v8."icd_code2m33") AS "HEPRO_0000017_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000124_ed/{}/{}', v8."stay_id6m22", v8."seq_num7m22") AS "HOSO_0000124_uid"
FROM (SELECT DISTINCT v6."icd_code" AS "icd_code2m33", v6."seq_num" AS "seq_num7m22", v6."stay_id" AS "stay_id6m22"
FROM "mimiciv_ed"."diagnosis" v6
) v8
)) v10
)
select "HOSO_0000124_uid", "HEPRO_0000017_uid"
from mmec_query
;
/*
HOSO_0000078@'hospitalization admitting physician specification' has part [1..*] HOSO_0000138@'healthcare provider identifier'
*/
insert into "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"(
  "HOSO_0000078_uid",
  "HOSO_0000138_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#HOSO_0000078/{}', v1."hadm_id") AS "HOSO_0000078_uid",
         individuation('http://www.griis.ca/projects#HOSO_0000138/{}', v1."hadm_id") AS "HOSO_0000138_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "HOSO_0000078_uid", "HOSO_0000138_uid"
from mmec_query
;
/*
MPHPO_0000004@'MPHPO HOSD ending temporal information' component of [1..*] HOSO_0000056@'healthcare organization service delivery ending statement'
*/
insert into "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"(
  "MPHPO_0000004_uid",
  "HOSO_0000056_uid"
)
with mmec_query as (
  SELECT v5."MPHPO_0000004_uid" AS "MPHPO_0000004_uid", v5."HOSO_0000056_uid" AS "HOSO_0000056_uid"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000004_hosp/{}', v1."hadm_id") AS "MPHPO_0000004_uid",
              individuation('http://www.griis.ca/projects#HOSO_0000056_hosp/{}', v1."hadm_id") AS "HOSO_0000056_uid"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION')
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000004_visites/{}', v3."transfer_id") AS "MPHPO_0000004_uid",
        individuation('http://www.griis.ca/projects#HOSO_0000056_visites/{}', v3."transfer_id") AS "HOSO_0000056_uid"
FROM "mimiciv_hosp"."transfers" v3
WHERE v3."eventtype" <> 'discharge'
)) v5
)
select "MPHPO_0000004_uid", "HOSO_0000056_uid"
from mmec_query
;
/*
Tfa4502fc00@'living environment type prior to clinical visit statement' has component [1..*] HOSO_0000100@'healthcare organization service delivery identifier'
Empty mapping: insert not required
*/
/*
IOIO_0000015@'human biological sex statement' has component [1..*] IOIO_0000014@'human identifier'
-- T50e263b800
*/
insert into "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"(
  "IOIO_0000015_uid",
  "IOIO_0000014_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#IOIO_0000014/{}', v1."subject_id") AS "IOIO_0000014_uid",
         individuation('http://www.griis.ca/projects#IOIO_0000015/{}', v1."subject_id") AS "IOIO_0000015_uid"
FROM "mimiciv_hosp"."patients" v1
)
select "IOIO_0000015_uid", "IOIO_0000014_uid"
from mmec_query
;
/*
IOIO_0000015@'human biological sex statement' has component [1..*] IOIO_0000011/MPHPO_0000010@'human biological sex information content entity'
*/
insert into "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"(
  "IOIO_0000015_uid",
  "IOIO_0000011_uid"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#MPHPO_0000010/{}', v1."subject_id") AS "IOIO_0000011_uid",
         individuation('http://www.griis.ca/projects#IOIO_0000015/{}', v1."subject_id") AS "IOIO_0000015_uid"
FROM "mimiciv_hosp"."patients" v1
)
select "IOIO_0000015_uid", "IOIO_0000011_uid"
from mmec_query
;
/*
HOSO_0000084/MPHPO_0000006@'healthcare physician service identifier' denotes [1..1] HOSO_0000079/HOSO_0000008@'healthcare organization'
Tec4544ce00
*/
insert into "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"(
  "HOSO_0000084_uid",
  "HOSO_0000008_uid"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#HOSO_0000079/{}', v2."curr_service") AS "HOSO_0000008_uid",
                  individuation('http://www.griis.ca/projects#MPHPO_0000006/{}', v1."curr_service") AS "HOSO_0000084_uid"
FROM (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) v1,
    (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) v2,
      (SELECT CHILD."curr_service" AS "CHILD_curr_service", PARENT."curr_service" AS "PARENT_curr_service"
       FROM (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) CHILD,
         (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) PARENT WHERE CHILD. "curr_service"  = PARENT. "curr_service" ) v3
WHERE (v1."curr_service" = v3."CHILD_curr_service" AND v2."curr_service" = v3."PARENT_curr_service")
)
select "HOSO_0000084_uid", "HOSO_0000008_uid"
from mmec_query
;
-- ========================================================
-- DataProperties
-- ========================================================
/*
MPHPO_0000007@'MPHPO hospitalization admission urgency level specification ' has textual value [1..1] @'http://www.w3.org/2001/XMLSchema#string'
T2fb0d1f600
*/
insert into "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"(
  "MPHPO_0000007_uid",
  "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
)
with mmec_query as (
  SELECT CAST(v1."admission_type" AS "MPHPO"."string_domain") AS "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002",
         individuation('http://www.griis.ca/projects#MPHPO_0000007/{}', v1."hadm_id") AS "MPHPO_0000007_uid"
FROM "mimiciv_hosp"."admissions" v1
)
select "MPHPO_0000007_uid", "MPHPO_0000007_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
from mmec_query
;
/*
MPHPO_0000001@'MPHPO pathological condition impact type on clinical visit ' has textual value [1..1] @'http://www.w3.org/2001/XMLSchema#string'
Tcdaca6f000
*/
insert into "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"(
  "MPHPO_0000001_uid",
  "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000001/{}/{}', v1."stay_id", v1."seq_num") AS "MPHPO_0000001_uid", CAST(v1."seq_num" AS "MPHPO"."string_domain") AS "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
FROM "mimiciv_ed"."diagnosis" v1
)
select "MPHPO_0000001_uid", "MPHPO_0000001_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
from mmec_query
;
/*
MPHPO_0000003@'MPHPO HOSD beginning temporal information' has temporal value [1..1] @'ISO8601DateTime'
Tcee93e6b00
*/
insert into "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"(
  "MPHPO_0000003_uid",
  "MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
)
with mmec_query as (
  SELECT v5."MPHPO_0000003_uid" AS "MPHPO_0000003_uid", v5."Tcee93e6b00_Ontorel-Core_0000004" AS "Tcee93e6b00_Ontorel-Core_0000004"
  FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000003_visites/{}', v1."transfer_id") AS "MPHPO_0000003_uid",
              CAST(v1."intime" AS "MPHPO"."Ontorel-Core_0000001_domain") AS "Tcee93e6b00_Ontorel-Core_0000004"
  FROM "mimiciv_hosp"."transfers" v1
  WHERE (v1."eventtype" <> 'discharge' AND CAST(v1."intime" AS "MPHPO"."Ontorel-Core_0000001_domain") IS NOT NULL)
  )
  UNION ALL
 (SELECT individuation('http://www.griis.ca/projects#MPHPO_0000003_hosp/{}', v3."hadm_id") AS "MPHPO_0000003_uid", CAST(v3."admittime" AS "MPHPO"."Ontorel-Core_0000001_domain") AS "Tcee93e6b00_Ontorel-Core_0000004"
  FROM "mimiciv_hosp"."admissions" v3
  WHERE (v3."admission_type" <> 'AMBULATORY OBSERVATION' AND v3."admission_type" <> 'DIRECT OBSERVATION' AND v3."admission_type" <> 'EU OBSERVATION')
 )) v5
)
select "MPHPO_0000003_uid", "Tcee93e6b00_Ontorel-Core_0000004"
from mmec_query
;
/*
MPHPO_0000002@'MPHPO pathological condition sub-group name ' has textual value [1..1] @'http://www.w3.org/2001/XMLSchema#string'
Tb358037100
*/
insert into "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"(
  "MPHPO_0000002_uid",
  "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
)
with mmec_query as (
  SELECT v9."MPHPO_0000002_uid" AS "MPHPO_0000002_uid", v9."MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002" AS "Tb358037100_Ontorel-Core_0000002"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_ed/{}', v3."icd_code2m34") AS "MPHPO_0000002_uid", CAST(v3."icd_code2m34" AS "MPHPO"."string_domain") AS "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
FROM (SELECT DISTINCT v1."icd_code" AS "icd_code2m34"
FROM "mimiciv_ed"."diagnosis" v1
) v3
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000002_hosp/{}', v7."icd_code2m34") AS "MPHPO_0000002_uid", CAST(v7."icd_code2m34" AS "MPHPO"."string_domain") AS "MPHPO_0000002_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
FROM (SELECT DISTINCT v5."drg_code" AS "icd_code2m34"
FROM "mimiciv_hosp"."drgcodes" v5
WHERE 'HCFA' = v5."drg_type"
) v7
)) v9
)
select "MPHPO_0000002_uid", "Tb358037100_Ontorel-Core_0000002"
from mmec_query
;
/*
T5b22144a00@'MPHPO living environment type ' has textual value [1..1] @'http://www.w3.org/2001/XMLSchema#string'
Empty mapping: insert not required
*/
/*
MPHPO_0000004@'MPHPO HOSD ending temporal information ' has temporal value [1..1] @'ISO8601DateTime'
-- Td270e16c00
*/
insert into "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"(
  "MPHPO_0000004_uid",
  "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
)
with mmec_query as (
  SELECT v5."MPHPO_0000004_uid" AS "MPHPO_0000004_uid", v5."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel" AS "Td270e16c00_Ontorel-Core_0000004"
FROM ((SELECT individuation('http://www.griis.ca/projects#MPHPO_0000004_hosp/{}', v1."hadm_id") AS "MPHPO_0000004_uid",
              CAST(v1."dischtime" AS "MPHPO"."Ontorel-Core_0000001_domain") AS "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
FROM "mimiciv_hosp"."admissions" v1
WHERE (v1."admission_type" <> 'AMBULATORY OBSERVATION' AND v1."admission_type" <> 'DIRECT OBSERVATION' AND v1."admission_type" <> 'EU OBSERVATION' AND CAST(v1."dischtime" AS "MPHPO"."Ontorel-Core_0000001_domain") IS NOT NULL)
)UNION ALL 
(SELECT individuation('http://www.griis.ca/projects#MPHPO_0000004_visites/{}', v3."transfer_id") AS "MPHPO_0000004_uid", CAST(v3."outtime" AS "MPHPO"."Ontorel-Core_0000001_domain") AS "MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
FROM "mimiciv_hosp"."transfers" v3
WHERE (v3."eventtype" <> 'discharge' AND CAST(v3."outtime" AS "MPHPO"."Ontorel-Core_0000001_domain") IS NOT NULL)
)) v5
)
select "MPHPO_0000004_uid", "Td270e16c00_Ontorel-Core_0000004"
from mmec_query
;
/*
MPHPO_0000009@'MPHPO human birth date' has temporal value [1..1] @'ISO8601DateTime'
Te417107100
*/
insert into "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"(
  "MPHPO_0000009_uid",
  "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
)
with mmec_query as (
  SELECT DISTINCT individuation('http://www.griis.ca/projects#MPHPO_0000009/{}', v1."subject_id") AS "MPHPO_0000009_uid", CAST(v1."birth_date" AS "MPHPO"."Ontorel-Core_0000001_domain") AS "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
FROM (with min_admittime as (select "subject_id", "anchor_age", "anchor_year", min("intime") "first_admittime"
                                              from "mimiciv_hosp"."transfers"
                                                        join "mimiciv_hosp"."patients" using ("subject_id")
                                              group by "subject_id", "anchor_age", "anchor_year")
                        select "subject_id",
                               make_date("anchor_year" - "anchor_age"::int, extract(month from "first_admittime")::int,
                                         least(28, extract(day from "first_admittime")::int)) as "birth_date"
                        from min_admittime) v1
WHERE (CAST(v1."birth_date" AS "MPHPO"."Ontorel-Core_0000001_domain") IS NOT NULL AND v1."subject_id" IS NOT NULL)
)
select "MPHPO_0000009_uid", "MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
from mmec_query
;
/*
MPHPO_0000006@'MPHPO healthcare physician service identifier ' has textual value [1..1] @'http://www.w3.org/2001/XMLSchema#string'
T4a05757500
*/
insert into "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"(
  "MPHPO_0000006_uid",
  "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
)
with mmec_query as (
  SELECT DISTINCT CAST(v1."curr_service" AS "MPHPO"."string_domain") AS "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002",
                  individuation('http://www.griis.ca/projects#MPHPO_0000006/{}', v1."curr_service") AS "MPHPO_0000006_uid"
FROM (select curr_service
                        from mimiciv_hosp.services
                        where prev_service is null
                        group by curr_service) v1
WHERE (CAST(v1."curr_service" AS "MPHPO"."string_domain") IS NOT NULL AND v1."curr_service" IS NOT NULL)
)
select "MPHPO_0000006_uid", "MPHPO_0000006_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
from mmec_query
;
/*
MPHPO_0000010@'MPHPO human biological sex information content entity' has textual value [1..1] @'http://www.w3.org/2001/XMLSchema#string'
Tb7c17e0e00
*/
insert into "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"(
  "MPHPO_0000010_uid",
  "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
)
with mmec_query as (
  SELECT individuation('http://www.griis.ca/projects#MPHPO_0000010/{}', v1."subject_id") AS "MPHPO_0000010_uid",
         CAST(v1."gender" AS "MPHPO"."string_domain") AS "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
FROM "mimiciv_hosp"."patients" v1
)
select "MPHPO_0000010_uid", "MPHPO_0000010_Ontorel-Core_0000002_string_Ontorel-Core_0000002"
from mmec_query
;
/*
MPHPO_0000011@'MPHPO human death date' has temporal value [1..1] @'ISO8601DateTime'
T3546b58800
*/
insert into "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"(
  "MPHPO_0000011_uid",
  "MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_Ontorel"
)
with mmec_query as (
  SELECT DISTINCT CAST(v1."deathdate" AS "MPHPO"."Ontorel-Core_0000001_domain") AS "T3546b58800_Ontorel-Core_0000004",
                  individuation('http://www.griis.ca/projects#MPHPO_0000011/{}', v1."subject_id") AS "MPHPO_0000011_uid"
FROM (select "subject_id", min("dod") as deathdate
                        from "mimiciv_hosp"."patients"
                        where "dod" is not null
                        group by "subject_id") v1
WHERE (CAST(v1."deathdate" AS "MPHPO"."Ontorel-Core_0000001_domain") IS NOT NULL AND v1."subject_id" IS NOT NULL)
)
select "MPHPO_0000011_uid", "T3546b58800_Ontorel-Core_0000004"
from mmec_query
;
