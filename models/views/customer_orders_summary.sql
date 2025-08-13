{{ config(materialized='view') }}

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_amount
FROM {{ ref('customers') }} c
LEFT JOIN {{ ref('orders') }} o
    ON c.customer_id = o.customer_id
GROUP BY 1,2,3