WITH changes AS (
    SELECT
        store_id,
        (product::json)->>'Id' AS product_id,
        (product::json)->>'name' AS product_name,
        (product::json)->'properties' AS product_properties,
        change_type,
        event_date
    FROM
        {{ ref('stg_store_events') }}
),

added_products AS (
    SELECT
        store_id,
        product_id,
        product_name,
        product_properties,
        event_date AS added_at
    FROM
        changes
    WHERE
        change_type = 'add'
),

removed_products AS (
    SELECT
        store_id,
        product_id,
        event_date AS removed_at
    FROM
        changes
    WHERE
        change_type = 'remove'
)

SELECT
    a.store_id,
    a.product_id,
    a.added_at,
    r.removed_at,
    a.product_name,
    a.product_properties,
    CASE
        WHEN r.removed_at IS NULL THEN 'active'
        WHEN a.added_at > r.removed_at THEN 'active'
        ELSE 'removed'
    END AS status
FROM
    added_products AS a
LEFT JOIN
    removed_products AS r
ON
    a.store_id = r.store_id
    AND a.product_id = r.product_id
ORDER BY
    a.store_id, a.product_id, status