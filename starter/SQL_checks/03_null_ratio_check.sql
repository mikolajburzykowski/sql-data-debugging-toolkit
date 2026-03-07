-- CHECK 03
-- Null Ratio Check
-- Measures percentage of NULL values in a column

SELECT
    COUNT(*) AS total_rows,
    COUNT(column_name) AS non_null_rows,
    COUNT(*) - COUNT(column_name) AS null_rows,
    ROUND(
        (COUNT(*) - COUNT(column_name)) * 100.0 / COUNT(*),
        2
    ) AS null_percentage
FROM dataset_table;

-- Expected result:
-- Null percentage within acceptable threshold.

-- Interpretation:
-- Sudden increases in NULL percentage indicate potential pipeline issues.
