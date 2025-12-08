-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  data_retention_policies

CREATE TABLE IF NOT EXISTS data_retention_policies (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entity_table VARCHAR(64) NOT NULL,
  field_name VARCHAR(64) NULL,
  action ENUM('delete','anonymize','hash','truncate') NOT NULL,
  keep_for VARCHAR(64) NOT NULL,   -- e.g. "90 days"
  active BOOLEAN NOT NULL DEFAULT TRUE,
  notes TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_drp_entity_scope (entity_table, field_name, action, keep_for),
  INDEX idx_drp_entity (entity_table, field_name),
  INDEX idx_drp_active (active)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
