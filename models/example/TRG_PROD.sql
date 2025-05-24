{{
    config(
        materialized='incremental',
        unique_key='SRC_PRODUCT_ID'
    )
}}

select * from DBT_PPANDA.SRC_PRODUCT
{% if is_incremental() %}
where
   UPDATED_AT>(select max(UPDATED_AT) from {{this}})
{% endif %}   