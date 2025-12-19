-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
-- engine: mysql
-- table:  data_retention_policies

-- Contract view for [data_retention_policies]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_data_retention_policies AS
SELECT
  id,
  entity_table,
  field_name,
  action,
  keep_for,
  active,
  notes,
  created_at
FROM data_retention_policies;
