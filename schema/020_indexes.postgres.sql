-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  data_retention_policies

CREATE UNIQUE INDEX IF NOT EXISTS uq_drp_entity_scope ON data_retention_policies (entity_table, field_name, action, keep_for);

CREATE INDEX IF NOT EXISTS idx_drp_entity ON data_retention_policies (entity_table, field_name);

CREATE INDEX IF NOT EXISTS idx_drp_active ON data_retention_policies (active);
