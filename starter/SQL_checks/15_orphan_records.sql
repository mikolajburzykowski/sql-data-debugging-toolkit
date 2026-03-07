-- CHECK 15
-- Orphan Record Detection
-- Detects rows in a fact table that do not have a matching key
-- in the referenced dimension table.

-- Why this matters:
-- Orphan records can break joins and lead to missing data in dashboards.

-- Replace:
-- fact_table
-- dimension_table
-- foreign_key
-- dimension_key

SELECT
    f.foreign_key
FROM fact_table f
LEFT JOIN dimension_table d
ON f.foreign_key = d.dimension_key
WHERE d.dimension_key IS NULL;

-- Expected result:
-- 0 rows

-- Rows returned = orphan records.
