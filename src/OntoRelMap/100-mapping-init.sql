CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
--
create or replace function "MPHPO"."getBaseUUID"()
    returns uuid
    language sql
    immutable strict
return '98208a37-f4c8-405b-a196-cf33cfcb1ac2'::uuid;

create or replace function "MPHPO"."individuation"(i_signature_id varchar, i_int integer)
    returns uuid
    language sql
    immutable strict
return "public"."uuid_generate_v5"("public"."uuid_generate_v5"("MPHPO"."getBaseUUID"(), i_signature_id), i_int::text);

create or replace function "MPHPO"."individuation"(i_signature_id varchar, i_varchar character varying)
    returns uuid
    language sql
    immutable strict
return "public"."uuid_generate_v5"("public"."uuid_generate_v5"("MPHPO"."getBaseUUID"(), i_signature_id), i_varchar);

create or replace function "MPHPO"."individuation"(i_signature_id varchar, i_int_1 integer, i_int_2 integer)
    returns uuid
    language sql
    immutable strict
return "public"."uuid_generate_v5"("MPHPO"."individuation"(i_signature_id, i_int_1), i_int_2::text);


-- Le script de création phppo-views.sql prend pour acquis que le schema courant est MPHPO
-- Il est prévu d'exécuter le présent script dans la même exécution
set search_path to "MPHPO";