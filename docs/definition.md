<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – data_retention_policies

Declarative data-retention rules describing purge/anonymize actions.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO | — | Table affected by the policy. |  |
| field_name | VARCHAR(64) | YES | — | Optional column restricted by the policy. |  |
| action | TEXT | NO | — | Retention action. | enum: delete, anonymize, hash, truncate |
| active | BOOLEAN | NO | TRUE | Whether the policy is currently enforced. |  |
| notes | TEXT | YES | — | Operational notes or audit context. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |