-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  data_retention_policies_due
-- Policies and when they become due (relative)
CREATE OR REPLACE VIEW vw_retention_due AS
SELECT
  id,
  entity_table,
  field_name,
  action,
  keep_for,
  active,
  (CURRENT_TIMESTAMP(6) + keep_for) AS due_from_now,
  notes,
  created_at
FROM data_retention_policies
WHERE active;

-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  data_retention_policies
-- Contract view for [data_retention_policies]
CREATE OR REPLACE VIEW vw_data_retention_policies AS
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

