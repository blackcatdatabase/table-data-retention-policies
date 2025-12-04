-- Auto-generated from joins-postgres.yaml (map@85230ed)
-- engine: postgres
-- view:   data_retention_policies_due

-- Policies and when they become due (relative)
CREATE OR REPLACE VIEW vw_retention_due AS
SELECT
  id,
  entity_table,
  field_name,
  action,
  keep_for,
  active,
  now() + CAST(keep_for AS interval) AS due_from_now,
  notes,
  created_at
FROM data_retention_policies
WHERE active;
