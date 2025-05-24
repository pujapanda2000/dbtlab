{% snapshot emp_snapshot02 %}

{{
    config(
      target_database='OUR_FIRST_DB',
      target_schema='DBT_PPANDA',
      unique_key='employee_id',

      strategy='check',
      check_cols=['employee_name', 'state'],
    )
}}

select * from DBT_PPANDA.STG_EMP012



{% endsnapshot %}