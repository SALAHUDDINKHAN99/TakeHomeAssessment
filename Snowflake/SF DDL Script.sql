USE ROLE ACCOUNTADMIN;

CREATE OR REPLACE WAREHOUSE THASSESSMENT_WH
WITH
    WAREHOUSE_SIZE = 'SMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE;

CREATE OR REPLACE DATABASE PARCH_AND_POSEY;
CREATE OR REPLACE SCHEMA THA;

USE PARCH_AND_POSEY;
USE SCHEMA THA;

  CREATE OR REPLACE TABLE top_customers_by_revenue (
  account_id INT,
  customer_name STRING,
  total_revenue DOUBLE,
  total_orders BIGINT
);

CREATE OR REPLACE TABLE gloss_qty_by_customer (
  account_id INT,
  name STRING,
  total_gloss_qty_purchased BIGINT,
  total_gloss_amount_usd DOUBLE
) ;


SHOW TABLES;