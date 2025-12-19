-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  data_retention_policies

CREATE UNIQUE INDEX IF NOT EXISTS uq_drp_entity_scope ON data_retention_policies (entity_table, field_name, action, keep_for);

CREATE INDEX IF NOT EXISTS idx_drp_entity ON data_retention_policies (entity_table, field_name);

CREATE INDEX IF NOT EXISTS idx_drp_active ON data_retention_policies (active);
