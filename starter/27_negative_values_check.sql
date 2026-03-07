-- CHECK 27
-- Negative Values Detection
-- Detects negative values in metrics that should never be negative.

-- Why this matters:
-- Negative values may indicate calculation errors,
-- pipeline bugs or incorrect joins.

-- Replace:
-- dataset_table
-- metric_column

SELECT *
FROM dataset_table
WHERE metric_column < 0;

-- Expected result:
-- 0 rows

-- Interpretation:
-- If rows appear, investigate why the metric became negative.

-- Typical examples:
-- revenue
-- price
-- quantiy