-- CHECK 20
-- Metric Spike Detection
-- Detects sudden spikes in aggregated metrics.

-- Replace:
-- dataset_table
-- metric_column
-- date_column

SELECT
    date_column,
    SUM(metric_column) AS metric_total
FROM dataset_table
GROUP BY date_column
ORDER BY date_column DESC;

-- Interpretation:

-- Look for abnormal spikes or drops in metric_total.
-- Example:
-- Daily revenue normally ~10k -> suddenly 200k.