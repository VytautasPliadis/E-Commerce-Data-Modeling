WITH changes AS (
    SELECT
        store_id,
        (product::json)->>'Id' AS product_id,
        (product::json)->>'name' AS product_name,
        (product::json)->'properties' AS product_properties,
        change_type,
        timestamp
    FROM
        {{ ref('stg_store_events') }}
),

added_products AS (
    SELECT
        DISTINCT ON (store_id, product_id)
        store_id,
        product_id,
        product_name,
        product_properties,
        timestamp AS added_at
    FROM
        changes
    WHERE
        change_type = 'add'
    ORDER BY
        store_id, product_id, timestamp DESC
),

removed_products AS (
    SELECT
        DISTINCT ON (store_id, product_id)
        store_id,
        product_id,
        timestamp AS removed_at
    FROM
        changes
    WHERE
        change_type = 'remove'
    ORDER BY
        store_id, product_id, timestamp DESC
)

SELECT
    a.store_id,
    a.product_id,
    a.added_at,
    r.removed_at,
    a.product_name,
    a.product_properties,
    CASE
        WHEN r.removed_at IS NULL OR a.added_at > r.removed_at THEN 'active'
        ELSE 'removed'
    END AS status
FROM
    added_products a
LEFT JOIN
    removed_products r
ON
    a.store_id = r.store_id
    AND a.product_id = r.product_id
