-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  data_retention_policies

CREATE INDEX IF NOT EXISTS idx_drp_entity ON data_retention_policies (entity_table, field_name);

CREATE INDEX IF NOT EXISTS idx_drp_active ON data_retention_policies (active);
