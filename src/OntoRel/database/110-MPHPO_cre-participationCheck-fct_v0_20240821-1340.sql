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
  Create check participation functions
-- =========================================================================== A
*/

-- Minimum participation ckeck on : MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMin"("_MPHPO_0000011_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000011_uid" = "_MPHPO_0000011_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMax"("_MPHPO_0000011_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000011_uid" = "_MPHPO_0000011_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000010_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string_checkParticipationMin"("_MPHPO_0000010_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000010_uid" = "_MPHPO_0000010_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000010_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000010_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string_checkParticipationMax"("_MPHPO_0000010_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000010_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000010_uid" = "_MPHPO_0000010_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000010_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000006_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string_checkParticipationMin"("_MPHPO_0000006_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000006_uid" = "_MPHPO_0000006_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000006_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000006_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string_checkParticipationMax"("_MPHPO_0000006_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000006_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000006_uid" = "_MPHPO_0000006_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000006_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000001_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string_checkParticipationMin"("_MPHPO_0000001_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000001_uid" = "_MPHPO_0000001_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000001_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000001_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string_checkParticipationMax"("_MPHPO_0000001_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000001_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000001_uid" = "_MPHPO_0000001_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000001_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000007_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string_checkParticipationMin"("_MPHPO_0000007_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000007_uid" = "_MPHPO_0000007_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000007_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000007_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string_checkParticipationMax"("_MPHPO_0000007_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000007_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000007_uid" = "_MPHPO_0000007_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000007_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMin"("_MPHPO_0000004_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000004_uid" = "_MPHPO_0000004_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMax"("_MPHPO_0000004_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000004_uid" = "_MPHPO_0000004_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000005_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string_checkParticipationMin"("_MPHPO_0000005_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000005_uid" = "_MPHPO_0000005_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000005_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000005_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string_checkParticipationMax"("_MPHPO_0000005_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000005_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000005_uid" = "_MPHPO_0000005_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000005_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMin"("_MPHPO_0000003_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000003_uid" = "_MPHPO_0000003_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMax"("_MPHPO_0000003_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000003_uid" = "_MPHPO_0000003_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMin"("_MPHPO_0000009_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000009_uid" = "_MPHPO_0000009_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001_checkParticipationMax"("_MPHPO_0000009_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001"
      WHERE "MPHPO_0000009_uid" = "_MPHPO_0000009_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000002_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string_checkParticipationMin"("_MPHPO_0000002_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000002_uid" = "_MPHPO_0000002_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000002_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : MPHPO_0000002_Ontorel-Core_0000002_string
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string_checkParticipationMax"("_MPHPO_0000002_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000002_Ontorel-Core_0000002_string"
      WHERE "MPHPO_0000002_uid" = "_MPHPO_0000002_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'MPHPO_0000002_Ontorel-Core_0000002_string', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000014_IAO_0000219_NCBITaxon_9606
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606_checkParticipationMin"("_IOIO_0000014_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000014_IAO_0000219_NCBITaxon_9606"
      WHERE "IOIO_0000014_uid" = "_IOIO_0000014_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000014_IAO_0000219_NCBITaxon_9606', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000124_RO_0002180_HOSO_0000100
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100_checkParticipationMin"("_HOSO_0000124_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000100"
      WHERE "HOSO_0000124_uid" = "_HOSO_0000124_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000124_RO_0002180_HOSO_0000100', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000124_RO_0002180_HEPRO_0000017
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017_checkParticipationMin"("_HOSO_0000124_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000124_RO_0002180_HEPRO_0000017"
      WHERE "HOSO_0000124_uid" = "_HOSO_0000124_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000124_RO_0002180_HEPRO_0000017', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000124_RO_0002180_HOSO_0000126
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126_checkParticipationMin"("_HOSO_0000124_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000124_RO_0002180_HOSO_0000126"
      WHERE "HOSO_0000124_uid" = "_HOSO_0000124_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000124_RO_0002180_HOSO_0000126', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000138_IAO_0000219_HOSO_0000009
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009_checkParticipationMin"("_HOSO_0000138_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000138_IAO_0000219_HOSO_0000009"
      WHERE "HOSO_0000138_uid" = "_HOSO_0000138_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000138_IAO_0000219_HOSO_0000009', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003_checkParticipationMin"("_IOIO_0000006_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003"
      WHERE "IOIO_0000006_uid" = "_IOIO_0000006_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000079_RO_0002350_HOSO_0000008
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008_checkParticipationMin"("_HOSO_0000079_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000079_RO_0002350_HOSO_0000008"
      WHERE "HOSO_0000079_uid" = "_HOSO_0000079_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000079_RO_0002350_HOSO_0000008', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056_checkParticipationMin"("_MPHPO_0000004_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056"
      WHERE "MPHPO_0000004_uid" = "_MPHPO_0000004_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000100_IAO_0000219_HOSO_0000011
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011_checkParticipationMin"("_HOSO_0000100_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000100_IAO_0000219_HOSO_0000011"
      WHERE "HOSO_0000100_uid" = "_HOSO_0000100_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000100_IAO_0000219_HOSO_0000011', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000055_RO_0002180_HOSO_0000100
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100_checkParticipationMin"("_HOSO_0000055_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000055_RO_0002180_HOSO_0000100"
      WHERE "HOSO_0000055_uid" = "_HOSO_0000055_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000055_RO_0002180_HOSO_0000100', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000001_RO_0002180_IOIO_0000005
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005_checkParticipationMin"("_IOIO_0000001_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000005"
      WHERE "IOIO_0000001_uid" = "_IOIO_0000001_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000001_RO_0002180_IOIO_0000005', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000001_RO_0002180_IOIO_0000014
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014_checkParticipationMin"("_IOIO_0000001_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000001_RO_0002180_IOIO_0000014"
      WHERE "IOIO_0000001_uid" = "_IOIO_0000001_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000001_RO_0002180_IOIO_0000014', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000084_IAO_0000219_HOSO_0000079
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079_checkParticipationMin"("_HOSO_0000084_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"
      WHERE "HOSO_0000084_uid" = "_HOSO_0000084_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000084_IAO_0000219_HOSO_0000079', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : HOSO_0000084_IAO_0000219_HOSO_0000079
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079_checkParticipationMax"("_HOSO_0000084_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000079"
      WHERE "HOSO_0000084_uid" = "_HOSO_0000084_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'HOSO_0000084_IAO_0000219_HOSO_0000079', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000084_IAO_0000219_HOSO_0000008
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008_checkParticipationMin"("_HOSO_0000084_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"
      WHERE "HOSO_0000084_uid" = "_HOSO_0000084_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000084_IAO_0000219_HOSO_0000008', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : HOSO_0000084_IAO_0000219_HOSO_0000008
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008_checkParticipationMax"("_HOSO_0000084_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000084_IAO_0000219_HOSO_0000008"
      WHERE "HOSO_0000084_uid" = "_HOSO_0000084_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'HOSO_0000084_IAO_0000219_HOSO_0000008', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000015_RO_0002180_IOIO_0000014
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014_checkParticipationMin"("_IOIO_0000015_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000014"
      WHERE "IOIO_0000015_uid" = "_IOIO_0000015_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000015_RO_0002180_IOIO_0000014', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000015_RO_0002180_IOIO_0000011
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011_checkParticipationMin"("_IOIO_0000015_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000015_RO_0002180_IOIO_0000011"
      WHERE "IOIO_0000015_uid" = "_IOIO_0000015_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000015_RO_0002180_IOIO_0000011', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001_checkParticipationMin"("_IOIO_0000005_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001"
      WHERE "IOIO_0000005_uid" = "_IOIO_0000005_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000080_RO_0002180_IOIO_0000023
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023_checkParticipationMin"("_HOSO_0000080_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000080_RO_0002180_IOIO_0000023"
      WHERE "HOSO_0000080_uid" = "_HOSO_0000080_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000080_RO_0002180_IOIO_0000023', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000080_RO_0002180_HOSO_0000100
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100_checkParticipationMin"("_HOSO_0000080_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000080_RO_0002180_HOSO_0000100"
      WHERE "HOSO_0000080_uid" = "_HOSO_0000080_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000080_RO_0002180_HOSO_0000100', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000003_RO_0002180_IOIO_0000006
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006_checkParticipationMin"("_IOIO_0000003_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000006"
      WHERE "IOIO_0000003_uid" = "_IOIO_0000003_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000003_RO_0002180_IOIO_0000006', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : IOIO_0000003_RO_0002180_IOIO_0000014
CREATE OR REPLACE FUNCTION "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014_checkParticipationMin"("_IOIO_0000003_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."IOIO_0000003_RO_0002180_IOIO_0000014"
      WHERE "IOIO_0000003_uid" = "_IOIO_0000003_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'IOIO_0000003_RO_0002180_IOIO_0000014', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000137_IAO_0000235_HOSO_0000003
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003_checkParticipationMin"("_HOSO_0000137_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000137_IAO_0000235_HOSO_0000003"
      WHERE "HOSO_0000137_uid" = "_HOSO_0000137_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000137_IAO_0000235_HOSO_0000003', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055
CREATE OR REPLACE FUNCTION "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055_checkParticipationMin"("_MPHPO_0000003_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055"
      WHERE "MPHPO_0000003_uid" = "_MPHPO_0000003_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074_checkParticipationMin"("_HOSO_0000012_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074"
      WHERE "HOSO_0000012_uid" = "_HOSO_0000012_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003_checkParticipationMin"("_HOSO_0000012_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"
      WHERE "HOSO_0000012_uid" = "_HOSO_0000012_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Maximum participqtion ckeck on : HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003_checkParticipationMax"("_HOSO_0000012_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003"
      WHERE "HOSO_0000012_uid" = "_HOSO_0000012_uid"
    ) <= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect maximal value %', 'HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000056_RO_0002180_HOSO_0000100
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100_checkParticipationMin"("_HOSO_0000056_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000056_RO_0002180_HOSO_0000100"
      WHERE "HOSO_0000056_uid" = "_HOSO_0000056_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000056_RO_0002180_HOSO_0000100', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000078_BFO_0000051_HOSO_0000138
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138_checkParticipationMin"("_HOSO_0000078_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000078_BFO_0000051_HOSO_0000138"
      WHERE "HOSO_0000078_uid" = "_HOSO_0000078_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000078_BFO_0000051_HOSO_0000138', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

-- Minimum participation ckeck on : HOSO_0000009_RO_0002350_HOSO_0000008
CREATE OR REPLACE FUNCTION "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008_checkParticipationMin"("_HOSO_0000009_uid" "MPHPO"."uid_domain")
  RETURNS BOOLEAN AS
$$
BEGIN
  IF
  (
    (
      SELECT COUNT(*)
      FROM "MPHPO"."HOSO_0000009_RO_0002350_HOSO_0000008"
      WHERE "HOSO_0000009_uid" = "_HOSO_0000009_uid"
    ) >= 1
  )
  THEN
    RETURN TRUE;
  ELSE
    RAISE NOTICE 'Participation  %  does not respect minimum value %', 'HOSO_0000009_RO_0002350_HOSO_0000008', 1;
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

