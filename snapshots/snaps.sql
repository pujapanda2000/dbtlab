{% snapshot annu_snap %}
{{
    config(
        target_database= 'OUR_FIRST_DB'
        target_schema= 'DBT_PPANDA'
        unique_key= 'employee_id'
        strategy= 'timestamp'
        updated_at= 'updated_at'
    )
}}

select * from {{ref("annu")}}

{% endsnapshot %}