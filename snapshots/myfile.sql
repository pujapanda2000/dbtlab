{% snapshot my_snapshot %}

{{
    config(
        target_schema='DBT_PPANDA',
        unique_key='SRC_PRODUCT_ID',
        strategy='check',
        check_cols=['PRICE','COUNTRY_NAME']
    )
}}
select *
from {{source('source','SRC_PRODUCT')}}

{% endsnapshot %}