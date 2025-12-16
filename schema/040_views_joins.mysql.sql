-- Auto-generated from core\joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
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
