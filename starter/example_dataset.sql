-- ======================================================
-- SQL DATA DEBUGGING TOOLKIT - DEMO DATASET
-- ======================================================

-- This dataset intentionally contains multiple data quality issues
-- so that users can test the SQL checks included in the toolkit.

-- Issues intentionally included:

-- duplicate primary key
-- duplicate composite key
-- NULL values
-- negative metric values
-- invalid category values
-- impossible date relationships
-- metric spike
-- late arriving data
-- missing delivery date
-- stale historical data

-- ======================================================
-- STEP 1 - CREATE TABLE
-- ======================================================

CREATE TABLE orders_example (

    order_id INT,
    customer_id INT,
    order_date DATE,
    delivery_date DATE,
    order_status VARCHAR(50),
    revenue DECIMAL(10,2),
    ingestion_timestamp TIMESTAMP

);

-- ======================================================
-- STEP 2 - INSERT SAMPLE DATA
-- ======================================================

INSERT INTO orders_example VALUES

-- normal records
(1, 101, '2024-01-01', '2024-01-05', 'completed', 120.50, '2024-01-01 10:00:00'),
(2, 102, '2024-01-02', '2024-01-06', 'completed', 85.00, '2024-01-02 10:00:00'),
(3, 103, '2024-01-03', '2024-01-07', 'completed', 90.00, '2024-01-03 10:00:00'),

-- duplicate primary key
(3, 103, '2024-01-03', '2024-01-07', 'completed', 90.00, '2024-01-03 10:00:00'),

-- NULL critical field (customer_id)
(4, NULL, '2024-01-04', '2024-01-08', 'completed', 70.00, '2024-01-04 10:00:00'),

-- negative revenue (business logic issue)
(5, 105, '2024-01-05', '2024-01-09', 'completed', -20.00, '2024-01-05 10:00:00'),

-- invalid category value
(6, 106, '2024-01-06', '2024-01-10', 'unknown_status', 100.00, '2024-01-06 10:00:00'),

-- impossible date relationship (delivery before order)
(7, 107, '2024-01-10', '2024-01-05', 'completed', 130.00, '2024-01-10 10:00:00'),

-- late arriving data (ingestion much later than event)
(8, 108, '2024-01-02', '2024-01-06', 'completed', 150.00, '2024-01-15 10:00:00'),

-- duplicate composite key candidate (same customer + date)
(9, 109, '2024-01-08', '2024-01-12', 'completed', 200.00, '2024-01-08 10:00:00'),
(10, 109, '2024-01-08', '2024-01-12', 'completed', 200.00, '2024-01-08 10:00:00'),

-- NULL revenue (null ratio test)
(11, 110, '2024-01-09', '2024-01-13', 'completed', NULL, '2024-01-09 10:00:00'),

-- metric spike
(12, 111, '2024-01-10', '2024-01-14', 'completed', 50000.00, '2024-01-10 10:00:00'),

-- category distribution spike
(13, 112, '2024-01-10', '2024-01-14', 'completed', 50.00, '2024-01-10 10:00:00'),
(14, 113, '2024-01-10', '2024-01-14', 'completed', 60.00, '2024-01-10 10:00:00'),
(15, 114, '2024-01-10', '2024-01-14', 'completed', 70.00, '2024-01-10 10:00:00'),

-- stale historical record
(16, 115, '2019-01-01', '2019-01-05', 'completed', 40.00, '2019-01-01 10:00:00'),

-- missing delivery date
(17, 116, '2024-01-11', NULL, 'completed', 100.00, '2024-01-11 10:00:00');

-- ======================================================
-- STEP 3 - DATA QUALITY ISSUES PRESENT IN THIS DATASET
-- ======================================================

-- The dataset contains the following intentional problems:

-- duplicate primary key
-- duplicate composite key
-- NULL values in critical columns
-- NULL metric values
-- negative revenue
-- invalid category values
-- impossible date relationships
-- late arriving data
-- metric spike
-- category distribution spike
-- stale historical data
-- missing delivery date

-- Run the SQL checks in this toolkit to detect these issues.

-- NOTE:
-- Some data quality issues included in this dataset
-- may require SQL checks available in the full version
-- of the SQL Data Debugging Toolkit.