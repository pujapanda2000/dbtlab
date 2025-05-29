
with Product as
(
select PRODUCT_NAME,state,Region, Unit_SOLD,Sum(Amount)
from Dim_Product A inner join Fact_Sales B
on A.PRODUCT_ID=B.PRODUCT_ID
group by 1,2,3,4
)
select * from Product

