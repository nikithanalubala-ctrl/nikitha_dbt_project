

{{ config(
    materialized='incremental',
    unique_key='sales_id'
) }}

select *
from {{ source('source','fact_sales') }}

{% if is_incremental() %}

where sales_id >
(
    select max(sales_id)
    from {{ this }}
)

{% endif %}