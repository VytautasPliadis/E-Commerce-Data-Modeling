{{ config( materialized='table') }}

WITH raw_data AS (
    SELECT
        timestamp,
        user_id,
        store_id,
        event_date,
        change_type AS store_action,
        (product::json)->>'Id' AS product_id
    FROM {{ ref('stg_store_events') }}
)
SELECT
    timestamp,
    event_date,
    user_id,
    store_id,
    store_action,
    product_id
FROM raw_data
ORDER BY 2 ASC
