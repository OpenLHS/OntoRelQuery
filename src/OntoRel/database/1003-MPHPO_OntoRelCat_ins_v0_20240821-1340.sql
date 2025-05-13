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
  Call procedure created to insert data into OntoRelCat schema
-- =========================================================================== A
*/

 call "ontorelcat_pub".ontorel_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','1.2.2','2024-08-21T13:40:25.287103797-04:00');

 call "ontorelcat_pub".onto_config_db_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb',
                            'uid',
                            'uid_domain',
                            'UUID',
                            'value',
                            'value_domain',
                            'TEXT',
                            '62',
                            'true',
                            'false',
                            'false',
                            'true',
                            'false');

 call "ontorelcat_pub".onto_schema_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','MPHPO','en','BASE');

 call "ontorelcat_pub".ontology_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO/MPHPO_ontorel-slim.owl','MPHPO_ontorel-slim.owl','MPHPO_ontorel-slim.owl','','2024-08-19T13:57:00.098652766Z');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000085','HOSO_0000085','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000085','en','hospitalization starting with ICU stay');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000031','HOSO_0000031','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000031','en','hospitalization');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000014','IOIO_0000014','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000014','en','human identifier');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000010','MPHPO_0000010','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000010','en','MPHPO human biological sex information content entity');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000010','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000124','HOSO_0000124','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000124','en','healthcare organization clinical visit pathological condition impact statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000003','HOSO_0000003','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000003','en','healthcare service organism specification');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000138','HOSO_0000138','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000138','en','healthcare provider identifier');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000006','IOIO_0000006','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000006','en','human death temporal information');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000126','HOSO_0000126','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000126','en','pathological condition impact type on clinical visit');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000002','MPHPO_0000002','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000002','en','MPHPO pathological condition sub-group name ');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000002','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000079','HOSO_0000079','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000079','en','healthcare physician service');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000079','en','It is often a sub-organization of a department. Ex: General internal medicine service is under the medicine department.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000004','MPHPO_0000004','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000004','en','MPHPO HOSD ending temporal information ');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000004','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000100','HOSO_0000100','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000100','en','healthcare organization service delivery identifier');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000011','HOSO_0000011','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000011','en','healthcare organization service delivery');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000055','HOSO_0000055','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000055','en','healthcare organization service delivery beginning statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000007','MPHPO_0000007','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000007','en','MPHPO hospitalization admission urgency level specification ');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000007','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000009','MPHPO_0000009','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000009','en','MPHPO human birth date');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000009','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/NCBITaxon_9606','NCBITaxon_9606','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/NCBITaxon_9606','en','Homo sapiens');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000008','HOSO_0000008','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000008','en','healthcare organization');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HEPRO_0000017','HEPRO_0000017','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HEPRO_0000017','en','pathological condition sub-group name');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HEPRO_0000017','en','We suppose that if an ICE is about a group of particular entities, it is also about each of these entities.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000074','HOSO_0000074','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000074','en','clinical visit agreement specification');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000011','IOIO_0000011','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000011','en','human biological sex information content entity');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000001','IOIO_0000001','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000001','en','human birth statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000023','IOIO_0000023','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000023','en','living environment type');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000072','HOSO_0000072','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000072','en','ED by ambulance initiated hospitalization');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000084','HOSO_0000084','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000084','en','healthcare physician service identifier');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000015','IOIO_0000015','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000015','en','human biological sex statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000005','IOIO_0000005','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000005','en','human birth temporal information');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000080','HOSO_0000080','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000080','en','living environment type prior to clinical visit statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000003','IOIO_0000003','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000003','en','human death statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000001','MPHPO_0000001','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000001','en','MPHPO pathological condition impact type on clinical visit ');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000001','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000137','HOSO_0000137','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000137','en','human clinical visit specified patient');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000011','MPHPO_0000011','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000011','en','MPHPO human death date');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000011','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000003','MPHPO_0000003','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000003','en','MPHPO HOSD beginning temporal information');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000003','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','HOSO_0000012','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','en','healthcare organization clinical visit');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000056','HOSO_0000056','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000056','en','healthcare organization service delivery ending statement');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000078','HOSO_0000078','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000078','en','hospitalization admitting physician specification');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000005','MPHPO_0000005','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000005','en','MPHPO living environment type ');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000005','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000032','HOSO_0000032','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000032','en','emergency department visit');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000006','MPHPO_0000006','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000006','en','MPHPO healthcare physician service identifier ');

 call "ontorelcat_pub".onto_definition_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000006','en','Parent class with data property.');

 call "ontorelcat_pub".onto_class_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000009','HOSO_0000009','DECLARED');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000009','en','healthcare provider');

 call "ontorelcat_pub".onto_data_type_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','','"MPHPO"."Ontorel-Core_0000001_domain"');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','en','ISO8601DateTime');

 call "ontorelcat_pub".onto_data_type_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://www.w3.org/1999/02/22-rdf-syntax-ns#langString','','"MPHPO"."langString_domain"');

 call "ontorelcat_pub".onto_data_type_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://www.w3.org/2001/XMLSchema#string','','"MPHPO"."string_domain"');

 call "ontorelcat_pub".onto_data_type_sql_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb',null,'uid_domain','UUID');

 call "ontorelcat_pub".onto_data_type_sql_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb',null,'value_domain','TEXT');

 call "ontorelcat_pub".onto_data_type_sql_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','Ontorel-Core_0000001_domain','TIMESTAMP');

 call "ontorelcat_pub".onto_data_type_sql_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://www.w3.org/1999/02/22-rdf-syntax-ns#langString','langString_domain','TEXT');

 call "ontorelcat_pub".onto_data_type_sql_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://www.w3.org/2001/XMLSchema#string','string_domain','TEXT');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/BFO_0000051', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/BFO_0000051','en','has part');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/BFO_0000054', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/BFO_0000054','en','realized in');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/BFO_0000055', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/BFO_0000055','en','realizes');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000001', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000001','en','has participating performer');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000002', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000002','en','has participating recipient');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000136', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000136','en','is about');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000219', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000219','en','denotes');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000235', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000235','en','denoted by');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/OBI_0000299', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/OBI_0000299','en','has_specified_output');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/OpenLHS-Core_0000004', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/OpenLHS-Core_0000004','en','is directed by');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/OpenLHS-Core_0000070', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/OpenLHS-Core_0000070','en','component of');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0000087', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0000087','en','has role');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002087', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002087','en','immediately preceded by');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002090', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002090','en','immediately precedes');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002180', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002180','en','has component');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002350', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002350','en','member of');

 call "ontorelcat_pub".onto_object_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002479', null);

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002479','en','has part that occurs in');

 call "ontorelcat_pub".onto_data_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000002');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','en','has textual value');

 call "ontorelcat_pub".onto_data_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000003');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000003','en','has numerical value');

 call "ontorelcat_pub".onto_data_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000004');

 call "ontorelcat_pub".onto_label_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/Ontorel-Core_0000004','en','has temporal value');

 call "ontorelcat_pub".onto_data_properties_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://www.w3.org/2002/07/owl#topDataProperty');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000011','http://purl.obolibrary.org/obo/MPHPO_0000010');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000074','http://purl.obolibrary.org/obo/MPHPO_0000007');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','http://purl.obolibrary.org/obo/HOSO_0000032');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000074','http://purl.obolibrary.org/obo/HOSO_0000078');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000023','http://purl.obolibrary.org/obo/MPHPO_0000005');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000005','http://purl.obolibrary.org/obo/MPHPO_0000009');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000084','http://purl.obolibrary.org/obo/MPHPO_0000006');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','http://purl.obolibrary.org/obo/HOSO_0000031');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000006','http://purl.obolibrary.org/obo/MPHPO_0000011');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000126','http://purl.obolibrary.org/obo/MPHPO_0000001');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000011','http://purl.obolibrary.org/obo/HOSO_0000012');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000008','http://purl.obolibrary.org/obo/HOSO_0000079');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/NCBITaxon_9606','http://purl.obolibrary.org/obo/HOSO_0000137');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000031','http://purl.obolibrary.org/obo/HOSO_0000072');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HEPRO_0000017','http://purl.obolibrary.org/obo/MPHPO_0000002');

 call "ontorelcat_pub".onto_class_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000031','http://purl.obolibrary.org/obo/HOSO_0000085');

 call "ontorelcat_pub".onto_object_property_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IAO_0000219','http://purl.obolibrary.org/obo/IAO_0000136');

 call "ontorelcat_pub".onto_object_property_inheritance_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/RO_0002180','http://purl.obolibrary.org/obo/BFO_0000051');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000055','http://purl.obolibrary.org/obo/HOSO_0000100','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000055_RO_0002180_HOSO_0000100');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000080','http://purl.obolibrary.org/obo/HOSO_0000100','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000080_RO_0002180_HOSO_0000100');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000078','http://purl.obolibrary.org/obo/HOSO_0000138','http://purl.obolibrary.org/obo/BFO_0000051','[1..*]','[0.. *]','DECLARED','HOSO_0000078_BFO_0000051_HOSO_0000138');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000015','http://purl.obolibrary.org/obo/IOIO_0000011','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','IOIO_0000015_RO_0002180_IOIO_0000011');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000015','http://purl.obolibrary.org/obo/IOIO_0000014','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','IOIO_0000015_RO_0002180_IOIO_0000014');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000124','http://purl.obolibrary.org/obo/HEPRO_0000017','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000124_RO_0002180_HEPRO_0000017');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000006','http://purl.obolibrary.org/obo/IOIO_0000003','http://purl.obolibrary.org/obo/OpenLHS-Core_0000070','[1..*]','[0.. *]','DECLARED','IOIO_0000006_OpenLHS-Core_0000070_IOIO_0000003');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000084','http://purl.obolibrary.org/obo/HOSO_0000008','http://purl.obolibrary.org/obo/IAO_0000219','[1..1]','[0.. *]','DECLARED','HOSO_0000084_IAO_0000219_HOSO_0000008');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000084','http://purl.obolibrary.org/obo/HOSO_0000079','http://purl.obolibrary.org/obo/IAO_0000219','[1..1]','[0.. *]','DECLARED','HOSO_0000084_IAO_0000219_HOSO_0000079');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000138','http://purl.obolibrary.org/obo/HOSO_0000009','http://purl.obolibrary.org/obo/IAO_0000219','[1..*]','[0.. *]','DECLARED','HOSO_0000138_IAO_0000219_HOSO_0000009');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000005','http://purl.obolibrary.org/obo/IOIO_0000001','http://purl.obolibrary.org/obo/OpenLHS-Core_0000070','[1..*]','[0.. *]','DECLARED','IOIO_0000005_OpenLHS-Core_0000070_IOIO_0000001');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000001','http://purl.obolibrary.org/obo/IOIO_0000005','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','IOIO_0000001_RO_0002180_IOIO_0000005');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000003','http://purl.obolibrary.org/obo/IOIO_0000014','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','IOIO_0000003_RO_0002180_IOIO_0000014');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000080','http://purl.obolibrary.org/obo/IOIO_0000023','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000080_RO_0002180_IOIO_0000023');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','http://purl.obolibrary.org/obo/HOSO_0000074','http://purl.obolibrary.org/obo/OpenLHS-Core_0000004','[1..*]','[0.. *]','DECLARED','HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000074');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000009','http://purl.obolibrary.org/obo/HOSO_0000008','http://purl.obolibrary.org/obo/RO_0002350','[1..*]','[0.. *]','DECLARED','HOSO_0000009_RO_0002350_HOSO_0000008');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000014','http://purl.obolibrary.org/obo/NCBITaxon_9606','http://purl.obolibrary.org/obo/IAO_0000219','[1..*]','[0.. *]','DECLARED','IOIO_0000014_IAO_0000219_NCBITaxon_9606');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000004','http://purl.obolibrary.org/obo/HOSO_0000056','http://purl.obolibrary.org/obo/OpenLHS-Core_0000070','[1..*]','[0.. *]','DECLARED','MPHPO_0000004_OpenLHS-Core_0000070_HOSO_0000056');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000003','http://purl.obolibrary.org/obo/IOIO_0000006','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','IOIO_0000003_RO_0002180_IOIO_0000006');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000079','http://purl.obolibrary.org/obo/HOSO_0000008','http://purl.obolibrary.org/obo/RO_0002350','[1..*]','[0.. *]','DECLARED','HOSO_0000079_RO_0002350_HOSO_0000008');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000100','http://purl.obolibrary.org/obo/HOSO_0000011','http://purl.obolibrary.org/obo/IAO_0000219','[1..*]','[0.. *]','DECLARED','HOSO_0000100_IAO_0000219_HOSO_0000011');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/IOIO_0000001','http://purl.obolibrary.org/obo/IOIO_0000014','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','IOIO_0000001_RO_0002180_IOIO_0000014');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000137','http://purl.obolibrary.org/obo/HOSO_0000003','http://purl.obolibrary.org/obo/IAO_0000235','[1..*]','[0.. *]','DECLARED','HOSO_0000137_IAO_0000235_HOSO_0000003');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000124','http://purl.obolibrary.org/obo/HOSO_0000126','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000124_RO_0002180_HOSO_0000126');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000003','http://purl.obolibrary.org/obo/HOSO_0000055','http://purl.obolibrary.org/obo/OpenLHS-Core_0000070','[1..*]','[0.. *]','DECLARED','MPHPO_0000003_OpenLHS-Core_0000070_HOSO_0000055');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000124','http://purl.obolibrary.org/obo/HOSO_0000100','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000124_RO_0002180_HOSO_0000100');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000056','http://purl.obolibrary.org/obo/HOSO_0000100','http://purl.obolibrary.org/obo/RO_0002180','[1..*]','[0.. *]','DECLARED','HOSO_0000056_RO_0002180_HOSO_0000100');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','http://purl.obolibrary.org/obo/HOSO_0000003','http://purl.obolibrary.org/obo/OpenLHS-Core_0000004','[1..1]','[0.. *]','DECLARED','HOSO_0000012_OpenLHS-Core_0000004_HOSO_0000003');

 call "ontorelcat_pub".onto_class_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/HOSO_0000012','http://purl.obolibrary.org/obo/HOSO_0000012','http://purl.obolibrary.org/obo/RO_0002180','[0..*]','[0.. *]','DECLARED','HOSO_0000012_RO_0002180_HOSO_0000012');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000003','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','http://purl.obolibrary.org/obo/Ontorel-Core_0000004','[1..1]','DECLARED','MPHPO_0000003_Ontorel-Core_0000004_Ontorel-Core_0000001');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000010','http://www.w3.org/2001/XMLSchema#string','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','[1..1]','DECLARED','MPHPO_0000010_Ontorel-Core_0000002_string');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000009','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','http://purl.obolibrary.org/obo/Ontorel-Core_0000004','[1..1]','DECLARED','MPHPO_0000009_Ontorel-Core_0000004_Ontorel-Core_0000001');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000011','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','http://purl.obolibrary.org/obo/Ontorel-Core_0000004','[1..1]','DECLARED','MPHPO_0000011_Ontorel-Core_0000004_Ontorel-Core_0000001');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000001','http://www.w3.org/2001/XMLSchema#string','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','[1..1]','DECLARED','MPHPO_0000001_Ontorel-Core_0000002_string');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000006','http://www.w3.org/2001/XMLSchema#string','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','[1..1]','DECLARED','MPHPO_0000006_Ontorel-Core_0000002_string');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000007','http://www.w3.org/2001/XMLSchema#string','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','[1..1]','DECLARED','MPHPO_0000007_Ontorel-Core_0000002_string');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000004','http://purl.obolibrary.org/obo/Ontorel-Core_0000001','http://purl.obolibrary.org/obo/Ontorel-Core_0000004','[1..1]','DECLARED','MPHPO_0000004_Ontorel-Core_0000004_Ontorel-Core_0000001');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000005','http://www.w3.org/2001/XMLSchema#string','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','[1..1]','DECLARED','MPHPO_0000005_Ontorel-Core_0000002_string');

 call "ontorelcat_pub".onto_data_axiom_ins ('8f937ca7-8bdc-40da-9548-ece5eca439cb','http://purl.obolibrary.org/obo/MPHPO_0000002','http://www.w3.org/2001/XMLSchema#string','http://purl.obolibrary.org/obo/Ontorel-Core_0000002','[1..1]','DECLARED','MPHPO_0000002_Ontorel-Core_0000002_string');

