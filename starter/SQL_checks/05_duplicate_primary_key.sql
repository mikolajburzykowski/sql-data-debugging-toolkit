-- CHECK 05
-- Duplicate Primary Key Detection
-- Detects duplicated primary keys

SELECT
    primary_key_column,
    COUNT(*) AS duplicate_count
FROM dataset_table
GROUP BY primary_key_column
HAVING COUNT(*) > 1;

-- Expected result:
-- 0 rows

-- Interpretation:
-- If rows appear, records contain missing values in critical fields.
-- Investigate upstream pipeline logic or data ingestion.
