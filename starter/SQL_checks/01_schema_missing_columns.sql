-- CHECK 01
-- Missing Columns Detection
-- Detects if expected columns are missing from a table schema

-- Example use case:
-- When onboarding a new dataset or validating a pipeline output.

-- Replace:
-- dataset_table
-- expected_column_name

SELECT
    column_name
FROM information_schema.columns
WHERE table_name = 'dataset_table'

EXCEPT

SELECT 'expected_column_name';

-- Expected result:
-- 0 rows

-- Interpretation:
-- If rows appear, expected columns are missing from the dataset.
