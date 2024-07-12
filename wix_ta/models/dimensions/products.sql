WITH products_data AS (
    SELECT
        DISTINCT ON (store_id,product_id)
        store_id,
        product_id,
        product_name,
        product_properties
    FROM {{ ref('int_store_current_status') }}
)
SELECT * FROM products_data