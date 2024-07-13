-- Query to get store status
SELECT
    store_id,
    product_name,
    count(product_id) as quantity
FROM
    {{ ref('int_store_current_status') }}
WHERE
    status = 'active'
GROUP BY
    store_id, product_name