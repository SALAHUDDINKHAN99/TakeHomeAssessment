-- Switch to the ACCOUNTADMIN role for full privileges
USE ROLE ACCOUNTADMIN;

-- Create or replace a virtual warehouse for compute
CREATE OR REPLACE WAREHOUSE THASSESSMENT_WH
WITH
    WAREHOUSE_SIZE = 'SMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE;


-- Create or replace the database
CREATE OR REPLACE DATABASE PARCH_AND_POSEY;

-- Create or replace a schema inside the database
CREATE OR REPLACE SCHEMA THA;

-- Set the current database and schema context
USE PARCH_AND_POSEY;
USE SCHEMA THA;

-- Create a table to store top customers by revenue
CREATE OR REPLACE TABLE top_customers_by_revenue (
  account_id INT,
  customer_name STRING, 
  total_revenue DOUBLE,
  total_orders BIGINT
);

-- Create a table to store quantity of glossy paper purchased by customer
CREATE OR REPLACE TABLE gloss_qty_by_customer (
  account_id INT,
  name STRING,
  total_gloss_qty_purchased BIGINT,
  total_gloss_amount_usd DOUBLE
) ;

-- Display all tables in the current schema
SHOW TABLES;