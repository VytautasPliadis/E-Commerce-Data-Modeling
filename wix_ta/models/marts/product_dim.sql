SELECT
    store_id,
    product_id,
    product_name,
    product_properties,
    latest_update_at,
    status
FROM
    {{ ref('int_store_current_status') }}
