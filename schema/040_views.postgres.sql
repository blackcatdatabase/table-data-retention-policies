-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
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
