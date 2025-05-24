with code as(
    select * from {{ref('country')}}
)
select * from code