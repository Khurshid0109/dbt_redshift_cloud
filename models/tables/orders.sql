{{ config(materialized='table') }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ ref('orders_seed') }}