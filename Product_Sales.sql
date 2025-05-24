
{{config(materialized='table')}}
with orders_profit as 
(
select category, subcategory, sum(amount), sum(profit)
from public.orders
group by 1,2
)
select* from orders_profit