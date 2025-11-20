-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  data_retention_policies_due
-- Policies and when they become due (relative)
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_retention_due AS
-- NOTE: keep_for is stored as textual duration in MySQL, so due_from_now is emitted as NULL.
SELECT
  id,
  entity_table,
  field_name,
  action,
  keep_for,
  active,
  NULL AS due_from_now,
  notes,
  created_at
FROM data_retention_policies
WHERE active;

-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
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

