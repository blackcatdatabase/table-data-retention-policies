-- Auto-generated from joins-mysql.yaml (map@85230ed)
-- engine: mysql
-- view:   retention_due

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
