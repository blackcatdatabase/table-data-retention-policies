-- Auto-generated from joins-postgres.yaml (map@sha1:29CF395A3A4C8964482083733F8E613ABFBEF5CC)
-- engine: postgres
-- view:   retention_due

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
