# SQL Data Debugging Toolkit - Starter Edition

This folder contains the **free starter version** of the SQL Data Debugging Toolkit.

The toolkit provides a small set of SQL validation checks and a structured workflow for investigating data quality issues in analytics datasets.

---

# What’s included

• 6 SQL data validation checks
• Data debugging checklist (PDF)
• Example dataset with built-in data quality issues

The starter edition demonstrates the **debugging framework used in the full toolkit**.

---

# Folder structure

```
starter/

SQL_checks/
  01_schema_missing_columns.sql
  03_null_ratio_check.sql
  05_duplicate_primary_key.sql
  15_orphan_records.sql
  20_metric_spike_detection.sql
  27_negative_values_check.sql

example_dataset.sql
data_debugging_checklist.pdf
```

---

# Getting started

1. Load the **example_dataset.sql** into your SQL environment.
2. Run SQL checks from the **SQL_checks** folder.
3. Use the **data_debugging_checklist.pdf** to follow the debugging workflow.
4. Investigate the issues detected by the queries.

The example dataset contains intentionally inserted problems such as:

• duplicate records
• NULL values
• broken joins
• metric spikes
• inconsistent data

---

# Supported databases

The SQL queries follow **ANSI SQL principles** and should work with most modern warehouses:

• PostgreSQL
• Snowflake
• BigQuery
• Redshift
• DuckDB
• SQL Server

---

# Full toolkit

The full version includes:

• 30 SQL validation checks
• additional debugging templates
• extended documentation

You can get the full toolkit here:

https://burzykowskianalytics.gumroad.com/l/rpyrl?layout=profile

---

# Author

Created by **Mikolaj Burzykowski**
Analytics tools, SQL debugging workflows and data validation systems.
