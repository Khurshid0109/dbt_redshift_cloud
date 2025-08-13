{{ config(materialized='view') }}

SELECT
    customer_id,
    first_name,
    last_name,
    total_amount
FROM {{ ref('customer_orders_summary') }}
WHERE total_amount > 100