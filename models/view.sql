{{config(materialized= 'table')}}

with puja as
(
    select EMPLOYEE_ID, FIRST_NAME, sum(SALARY) as total , IS_ACTIVE
    from {{ref('Annu')}}
    where IS_ACTIVE= True
    group by EMPLOYEE_ID, FIRST_NAME, IS_ACTIVE
)
select *
from puja    