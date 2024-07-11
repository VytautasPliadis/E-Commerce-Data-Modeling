with changes as (
    select
        store_id,
        (product::json)->>'Id' as product_id,
        (product::json)->>'name' as product_name,
        (product::json)->'properties' as product_properties,
        change_type,
        timestamp
    from
        {{ ref('stg_store_events') }}
)
, added_products as (
    select
        distinct on (store_id, product_id)
        store_id,
        product_id,
        product_name,
        product_properties,
        timestamp as added_at
    from
        changes
    where
        change_type = 'add'
    order by
        store_id, product_id, timestamp desc
)

, removed_products as (
    select
        distinct on (store_id, product_id)
        store_id,
        product_id,
        timestamp as removed_at
    from
        changes
    where
        change_type = 'remove'
    order by
        store_id, product_id, timestamp desc
)

select
    a.store_id,
    a.product_id,
    a.added_at,
    r.removed_at,
    a.product_name,
    a.product_properties,
    case
        when r.removed_at is null or a.added_at > r.removed_at then 'active'
        else 'removed'
    end as status
from
    added_products a
left join
    removed_products r
on
    a.store_id = r.store_id
    and a.product_id = r.product_id
