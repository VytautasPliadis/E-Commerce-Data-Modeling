{% set execution_date = var('execution_date') %}
{% set execution_date_string = "'" ~ execution_date ~ "'" %}
{% set execution_date_condition = "event_date <= " ~ execution_date_string %}

{{ log(execution_date_condition, info=True) }}

{{ generate_store_status(execution_date_condition) }}
