-- Which product categories are most affected by having children?

with category_avg as(

select category,
round(avg(case when(kidhome+teenhome)> 0 then amount end),2) as with_kids,
round(avg(case when(kidhome + teenhome)=0 then amount end),2) As without_kids 
from (

select customers.customer_id, 'Wines' as category, spending.mnt_wines as amount, customers.teenhome, customers.kidhome 
from customers join spending 
on customers.customer_id = spending.customer_id

union all

select customers.customer_id, 'Fruits', spending.mnt_fruits, customers.teenhome, customers.kidhome 
from customers join spending 
on customers.customer_id = spending.customer_id

union all

select customers.customer_id, 'Meat' , spending.MNT_MEAT_PRODUCTS, customers.teenhome, customers.kidhome
from  customers join spending
on customers.customer_id = spending.customer_id

union all

select customers.customer_id, 'Fish' , spending.MNT_FISH_PRODUCTS, customers.teenhome, customers.kidhome
from  customers join spending
on customers.customer_id = spending.customer_id

union all

select customers.customer_id, 'Sweet' , spending.MNT_SWEET_PRODUCTS, customers.teenhome, customers.kidhome
from  customers join spending
on customers.customer_id = spending.customer_id

union all

select customers.customer_id, 'Gold' , spending.MNT_GOLD_PRODUCTS, customers.teenhome, customers.kidhome
from  customers join spending
on customers.customer_id = spending.customer_id

) t

group by category 

)

select * from category_avg;