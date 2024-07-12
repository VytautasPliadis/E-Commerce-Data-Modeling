-- Query to get product change over time
SELECT
    store_id,
    product_id,
    product_name,
    added_at,
    latest_update_at,
    removed_at

FROM
    {{ ref('int_store_current_status') }}