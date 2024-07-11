with raw_events as (
    select
        timestamp,
        user_id,
        store_id,
        (digest::json)->>'Date' as event_date,
        (digest::json)->'payload'->>'change' as change_type,
        (digest::json)->'payload'->'products' as products
    from
        {{ source('raw_data_source', 'raw_data') }}
)

select
    timestamp,
    user_id,
    store_id,
    event_date,
    change_type,
    jsonb_array_elements_text(
        case
            when json_typeof(products::json) = 'array' then products::jsonb
            else jsonb_build_array(products::jsonb)
        end
    ) as product
from
    raw_events


