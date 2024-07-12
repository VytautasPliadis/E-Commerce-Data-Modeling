WITH stores_data AS (
    SELECT
        DISTINCT store_id
    FROM {{ source('raw_data_source', 'raw_data') }}
)
SELECT * FROM stores_data
