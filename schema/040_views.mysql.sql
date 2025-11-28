-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
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
