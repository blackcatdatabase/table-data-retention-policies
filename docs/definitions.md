# data_retention_policies

Declarative data-retention rules describing purge/anonymize actions.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| entity_table | VARCHAR(64) | NO |  | Table affected by the policy. |
| field_name | VARCHAR(64) | YES |  | Optional column restricted by the policy. |
| action | mysql: ENUM('delete','anonymize','hash','truncate') / postgres: TEXT | NO |  | Retention action. (enum: delete, anonymize, hash, truncate) |
| keep_for | VARCHAR(64) | NO |  | Retention window (interval / textual duration). |
| active | BOOLEAN | NO | TRUE | Whether the policy is currently enforced. |
| notes | TEXT | YES |  | Operational notes or audit context. |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_drp_entity_scope | entity_table, field_name, action, keep_for |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_drp_active | active | INDEX idx_drp_active (active) |
| idx_drp_entity | entity_table,field_name | INDEX idx_drp_entity (entity_table, field_name) |
| uq_drp_entity_scope | entity_table,field_name,action,keep_for | UNIQUE KEY uq_drp_entity_scope (entity_table, field_name, action, keep_for) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_drp_entity_scope | entity_table, field_name, action, keep_for |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_drp_active | active | CREATE INDEX IF NOT EXISTS idx_drp_active ON data_retention_policies (active) |
| idx_drp_entity | entity_table,field_name | CREATE INDEX IF NOT EXISTS idx_drp_entity ON data_retention_policies (entity_table, field_name) |
| uq_drp_entity_scope | entity_table,field_name,action,keep_for | CREATE UNIQUE INDEX IF NOT EXISTS uq_drp_entity_scope ON data_retention_policies (entity_table, field_name, action, keep_for) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_data_retention_policies | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_retention_due | mysql | algorithm=TEMPTABLE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_data_retention_policies | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
| vw_retention_due | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
