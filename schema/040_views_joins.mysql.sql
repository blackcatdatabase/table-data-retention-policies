-- Auto-generated from joins-mysql.psd1 (map@mtime:2025-11-27T17:49:37Z)
-- engine: mysql
-- view:   data_retention_policies_due
-- Policies and when they become due (relative)
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_retention_due AS
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
